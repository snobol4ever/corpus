                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__q:
                        sub              rsp, 2192
                        mov              qword ptr [rsp + 2184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 2096
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lq_α_0_247
                        .section         .rodata
.Licn_trace_nm0:        .string          "q"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm0]
                        mov              esi, 1
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lq_α_0_247:            mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
q_α_body:
                        .type            n1_disjunction_bx, @function
n1_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_disjunction_α:       mov              r11, 1
                        mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1480], 0
                        mov              dword ptr [rbp + 1488], 0;           jmp   n2_var_ref_α
.Ldisjunction_γ_1_as:   mov              r11, 1
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_113_0
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n31_lit_integer_α
.Ldisjunction_α_113_0:                                                        jmp   n31_lit_integer_α
n1_disjunction_β:       mov              r11, 1
                        mov              eax, dword ptr [rbp + 1488];         jmp   n31_lit_integer_α
.Ldisjunction_γ_1_af:   mov              r11, 1
.Ldisjunction_ω_1_af:   mov              r11, 1
                        add              dword ptr [rbp + 1488], 1
                        mov              eax, dword ptr [rbp + 1488];         jmp   n31_lit_integer_α
                        .size            n1_disjunction_bx, .-n1_disjunction_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        mov              rdx, 1879052416                      # q__INITFLAG__0
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n3_nulltest_var_α
n2_var_ref_β:           mov              r11, 2;                              jmp   .Ldisjunction_ω_1_af
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_nulltest_var_bx, @function
n3_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_nulltest_var_α:      mov              r11, 3
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1_af
                        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1_af
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n4_lit_integer_α
                        .size            n3_nulltest_var_bx, .-n3_nulltest_var_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_117_0]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n5_assign_var_α
.Llit_integer_α_117_0:  .quad            1
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_assign_var_bx, @function
n5_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_var_α:        mov              r11, 5
                        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              rcx, qword ptr [rbp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1_af
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx;         jmp   n6_lit_integer_α
                        .size            n5_assign_var_bx, .-n5_assign_var_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_119_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n7_var_α
.Llit_integer_α_119_0:  .quad            2
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_var_bx, @function
n7_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_α:               mov              r11, 7
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1984], rax          # result
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n8_coerce_numeric_α
                        .size            n7_var_bx, .-n7_var_bx
                        .type            n8_coerce_numeric_bx, @function
n8_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_coerce_numeric_α:    mov              r11, 8
                        mov              eax, dword ptr [rbp + 1984]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_122_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_122_0
                        mov              eax, dword ptr [rbp + 1968]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_122_0
.Lcoerce_numeric_α_122_1:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n9_binop_α
.Lcoerce_numeric_α_122_0:
                        lea              rdi, [rbp + 1984]
                        lea              rsi, [rbp + 1968]
                        lea              rdx, [rbp + 1952]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              al, 104;                             je    n16_lit_integer_α
                                                                              jmp   n9_binop_α
                        .size            n8_coerce_numeric_bx, .-n8_coerce_numeric_bx
                        .type            n9_binop_bx, @function
n9_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_binop_α:             mov              r11, 9
                        mov              eax, 3
                        mov              ecx, dword ptr [rbp + 1952]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_123_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 1960]
                        imul             rax, rdx;                            jo    .Lbinop_α_123_0
                        mov              qword ptr [rbp + 1936], 3
                        mov              qword ptr [rbp + 1944], rax;         jmp   .Lbinop_α_123_7
.Lbinop_α_123_2:        and              edx, 1;                              jz    .Lbinop_α_123_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 1960]
                        cmp              al, 5;                               je    .Lbinop_α_123_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_123_4
.Lbinop_α_123_3:        movq             xmm0, rsi
.Lbinop_α_123_4:        cmp              cl, 5;                               je    .Lbinop_α_123_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_123_6
.Lbinop_α_123_5:        movq             xmm1, rdi
.Lbinop_α_123_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_123_0
                        mov              qword ptr [rbp + 1936], 5
                        mov              qword ptr [rbp + 1944], rax
.Lbinop_α_123_7:                                                              jmp   n10_lit_integer_α
.Lbinop_α_123_0:        mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n16_lit_integer_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n10_lit_integer_α
                        .size            n9_binop_bx, .-n9_binop_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 10
                        mov              qword ptr [rbp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_124_0]
                        mov              qword ptr [rbp + 2008], rax;         jmp   n11_coerce_numeric_α
.Llit_integer_α_124_0:  .quad            1
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_coerce_numeric_bx, @function
n11_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   mov              r11, 11
                        mov              eax, dword ptr [rbp + 1936]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_126_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_126_0
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_126_0
.Lcoerce_numeric_α_126_1:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n12_binop_α
.Lcoerce_numeric_α_126_0:
                        lea              rdi, [rbp + 1936]
                        lea              rsi, [rbp + 2000]
                        lea              rdx, [rbp + 1920]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              al, 104;                             je    n16_lit_integer_α
                                                                              jmp   n12_binop_α
                        .size            n11_coerce_numeric_bx, .-n11_coerce_numeric_bx
                        .type            n12_binop_bx, @function
n12_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:            mov              r11, 12
                        mov              eax, dword ptr [rbp + 1920]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_127_2
                        mov              rax, qword ptr [rbp + 1928]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_127_0
                        mov              qword ptr [rbp + 1904], 3
                        mov              qword ptr [rbp + 1912], rax;         jmp   .Lbinop_α_127_7
.Lbinop_α_127_2:        and              edx, 1;                              jz    .Lbinop_α_127_0
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_127_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_127_4
.Lbinop_α_127_3:        movq             xmm0, rsi
.Lbinop_α_127_4:        cmp              cl, 5;                               je    .Lbinop_α_127_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_127_6
.Lbinop_α_127_5:        movq             xmm1, rdi
.Lbinop_α_127_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_127_0
                        mov              qword ptr [rbp + 1904], 5
                        mov              qword ptr [rbp + 1912], rax
.Lbinop_α_127_7:                                                              jmp   n13_lit_integer_α
.Lbinop_α_127_0:        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 2000]
                        mov              rcx, qword ptr [rbp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n16_lit_integer_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n13_lit_integer_α
                        .size            n12_binop_bx, .-n12_binop_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rbp + 2016], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_128_0]
                        mov              qword ptr [rbp + 2024], rax;         jmp   n14_call_icon_α
.Llit_integer_α_128_0:  .quad            0
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_call_icon_bx, @function
n14_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_icon_α:        mov              r11, 14
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lcall_icon_α_rkfn130:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn130]
                        lea              rsi, [rbp + 1856]
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
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              al, 104;                             je    n16_lit_integer_α
                                                                              jmp   n15_assign_α
n14_call_icon_β:        mov              r11, 14;                             jmp   n16_lit_integer_α
                        .size            n14_call_icon_bx, .-n14_call_icon_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [r9 + 80], rax             # q__STATIC__up
                        mov              qword ptr [r9 + 88], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_131_0]
                        .section         .rodata
.Lassign_α_131_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_131_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n16_lit_integer_α
.Lassign_α_131_0:       .quad            .Lassign_α_131_0_s
.Lassign_α_131_0_s:     .string          "q__STATIC__up"
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rbp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_132_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n17_var_α
.Llit_integer_α_132_0:  .quad            2
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 17
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1792], rax          # result
                        mov              qword ptr [rbp + 1800], rdx;         jmp   n18_coerce_numeric_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_coerce_numeric_bx, @function
n18_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_coerce_numeric_α:   mov              r11, 18
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_135_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_135_0
                        mov              eax, dword ptr [rbp + 1776]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_135_0
.Lcoerce_numeric_α_135_1:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n19_binop_α
.Lcoerce_numeric_α_135_0:
                        lea              rdi, [rbp + 1792]
                        lea              rsi, [rbp + 1776]
                        lea              rdx, [rbp + 1760]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1760]
                        cmp              al, 104;                             je    n26_var_α
                                                                              jmp   n19_binop_α
                        .size            n18_coerce_numeric_bx, .-n18_coerce_numeric_bx
                        .type            n19_binop_bx, @function
n19_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            mov              r11, 19
                        mov              eax, 3
                        mov              ecx, dword ptr [rbp + 1760]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_136_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 1768]
                        imul             rax, rdx;                            jo    .Lbinop_α_136_0
                        mov              qword ptr [rbp + 1744], 3
                        mov              qword ptr [rbp + 1752], rax;         jmp   .Lbinop_α_136_7
.Lbinop_α_136_2:        and              edx, 1;                              jz    .Lbinop_α_136_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 1768]
                        cmp              al, 5;                               je    .Lbinop_α_136_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_136_4
.Lbinop_α_136_3:        movq             xmm0, rsi
.Lbinop_α_136_4:        cmp              cl, 5;                               je    .Lbinop_α_136_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_136_6
.Lbinop_α_136_5:        movq             xmm1, rdi
.Lbinop_α_136_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_136_0
                        mov              qword ptr [rbp + 1744], 5
                        mov              qword ptr [rbp + 1752], rax
.Lbinop_α_136_7:                                                              jmp   n20_lit_integer_α
.Lbinop_α_136_0:        mov              rdi, qword ptr [rbp + 1776]
                        mov              rsi, qword ptr [rbp + 1784]
                        mov              rdx, qword ptr [rbp + 1760]
                        mov              rcx, qword ptr [rbp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_var_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n20_lit_integer_α
                        .size            n19_binop_bx, .-n19_binop_bx
                        .type            n20_lit_integer_bx, @function
n20_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rbp + 1808], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_137_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n21_coerce_numeric_α
.Llit_integer_α_137_0:  .quad            1
                        .size            n20_lit_integer_bx, .-n20_lit_integer_bx
                        .type            n21_coerce_numeric_bx, @function
n21_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_coerce_numeric_α:   mov              r11, 21
                        mov              eax, dword ptr [rbp + 1744]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_139_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_139_0
                        mov              eax, dword ptr [rbp + 1808]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_139_0
.Lcoerce_numeric_α_139_1:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n22_binop_α
.Lcoerce_numeric_α_139_0:
                        lea              rdi, [rbp + 1744]
                        lea              rsi, [rbp + 1808]
                        lea              rdx, [rbp + 1728]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1728]
                        cmp              al, 104;                             je    n26_var_α
                                                                              jmp   n22_binop_α
                        .size            n21_coerce_numeric_bx, .-n21_coerce_numeric_bx
                        .type            n22_binop_bx, @function
n22_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_binop_α:            mov              r11, 22
                        mov              eax, dword ptr [rbp + 1728]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_140_2
                        mov              rax, qword ptr [rbp + 1736]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_140_0
                        mov              qword ptr [rbp + 1712], 3
                        mov              qword ptr [rbp + 1720], rax;         jmp   .Lbinop_α_140_7
.Lbinop_α_140_2:        and              edx, 1;                              jz    .Lbinop_α_140_0
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_140_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_140_4
.Lbinop_α_140_3:        movq             xmm0, rsi
.Lbinop_α_140_4:        cmp              cl, 5;                               je    .Lbinop_α_140_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_140_6
.Lbinop_α_140_5:        movq             xmm1, rdi
.Lbinop_α_140_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_140_0
                        mov              qword ptr [rbp + 1712], 5
                        mov              qword ptr [rbp + 1720], rax
.Lbinop_α_140_7:                                                              jmp   n23_lit_integer_α
.Lbinop_α_140_0:        mov              rdi, qword ptr [rbp + 1728]
                        mov              rsi, qword ptr [rbp + 1736]
                        mov              rdx, qword ptr [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_var_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n23_lit_integer_α
                        .size            n22_binop_bx, .-n22_binop_bx
                        .type            n23_lit_integer_bx, @function
n23_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rbp + 1824], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n24_call_icon_α
.Llit_integer_α_141_0:  .quad            0
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_call_icon_bx, @function
n24_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_icon_α:        mov              r11, 24
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lcall_icon_α_rkfn143:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn143]
                        lea              rsi, [rbp + 1664]
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
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              al, 104;                             je    n26_var_α
                                                                              jmp   n25_assign_α
n24_call_icon_β:        mov              r11, 24;                             jmp   n26_var_α
                        .size            n24_call_icon_bx, .-n24_call_icon_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [r9 + 96], rax             # q__STATIC__down
                        mov              qword ptr [r9 + 104], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_144_0]
                        .section         .rodata
.Lassign_α_144_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_144_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n26_var_α
.Lassign_α_144_0:       .quad            .Lassign_α_144_0_s
.Lassign_α_144_0_s:     .string          "q__STATIC__down"
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_var_bx, @function
n26_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              mov              r11, 26
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1600], rax          # result
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n27_lit_integer_α
                        .size            n26_var_bx, .-n26_var_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_146_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n28_call_icon_α
.Llit_integer_α_146_0:  .quad            0
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_call_icon_bx, @function
n28_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_icon_α:        mov              r11, 28
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        .section         .rodata
.Lcall_icon_α_rkfn148:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn148]
                        lea              rsi, [rbp + 1552]
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
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    n31_lit_integer_α
                                                                              jmp   n29_assign_α
n28_call_icon_β:        mov              r11, 28;                             jmp   n31_lit_integer_α
                        .size            n28_call_icon_bx, .-n28_call_icon_bx
                        .type            n29_assign_bx, @function
n29_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [r9 + 112], rax            # q__STATIC__rows
                        mov              qword ptr [r9 + 120], rdx
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_149_0]
                        .section         .rodata
.Lassign_α_149_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_149_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n30_conjunction_α
.Lassign_α_149_0:       .quad            .Lassign_α_149_0_s
.Lassign_α_149_0_s:     .string          "q__STATIC__rows"
                        .size            n29_assign_bx, .-n29_assign_bx
                        .type            n30_conjunction_bx, @function
n30_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_conjunction_α:      mov              r11, 30
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1512], rax;         jmp   .Ldisjunction_γ_1_as
n30_conjunction_β:      mov              r11, 30;                             jmp   n31_lit_integer_α
                        .size            n30_conjunction_bx, .-n30_conjunction_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_151_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n32_var_ref_α
.Llit_integer_α_151_0:  .quad            0
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # q__STATIC__rows
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n33_lit_integer_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_154_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n34_var_α
.Llit_integer_α_154_0:  .quad            1
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 34
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 688], rax           # result
                        mov              qword ptr [rbp + 696], rdx;          jmp   n35_to_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_to_bx, @function
n35_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_to_α:               mov              r11, 35
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                        mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], 3
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 656], rax
.Lto_α_157_0:           mov              rax, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 696]
                        cmp              rax, rcx;                            jg    q_ω
                        mov              qword ptr [rbp + 640], 3
                        mov              qword ptr [rbp + 648], rax;          jmp   n36_assign_α
n35_to_β:               mov              r11, 35
                        inc              qword ptr [rbp + 656];               jmp   .Lto_α_157_0
                        .size            n35_to_bx, .-n35_to_bx
                        .type            n36_assign_bx, @function
n36_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_α:           mov              r11, 36
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n37_subscript_α
                        .size            n36_assign_bx, .-n36_assign_bx
                        .type            n37_subscript_bx, @function
n37_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_subscript_α:        mov              r11, 37
                        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n38_deref_α
                        .size            n37_subscript_bx, .-n37_subscript_bx
                        .type            n38_deref_bx, @function
n38_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_deref_α:            mov              r11, 38
                        mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n39_binop_test_α
                        .size            n38_deref_bx, .-n38_deref_bx
                        .type            n39_binop_test_bx, @function
n39_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_binop_test_α:       mov              r11, 39
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 112;                             je    .Lbinop_test_α_161_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              al, 112;                             je    .Lbinop_test_α_161_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 3;                               jne   .Lbinop_test_α_161_2
                        mov              eax, dword ptr [rbp + 720]
                        cmp              al, 3;                               jne   .Lbinop_test_α_161_2
.Lbinop_test_α_161_1:   mov              rax, qword ptr [rbp + 600]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx;                            jne   n35_to_β
                        mov              rcx, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rcx
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rcx;          jmp   n40_var_ref_α
.Lbinop_test_α_161_0:   mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 9
                        lea              r9, [rbp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_161_1
                        cmp              eax, 1;                              je    n35_to_β
                                                                              jmp   n40_var_ref_α
.Lbinop_test_α_161_2:   mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n35_to_β
                        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        lea              r8, [rbp + 576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n40_var_ref_α
                        .size            n39_binop_test_bx, .-n39_binop_test_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__STATIC__up
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n41_var_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_var_bx, @function
n41_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              mov              r11, 41
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 848], rax           # result
                        mov              qword ptr [rbp + 856], rdx;          jmp   n42_var_α
                        .size            n41_var_bx, .-n41_var_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 42
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 872], rax;          jmp   n43_coerce_numeric_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_coerce_numeric_bx, @function
n43_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   mov              r11, 43
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_168_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_168_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_168_0
.Lcoerce_numeric_α_168_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 840], rax;          jmp   n44_coerce_numeric_α
.Lcoerce_numeric_α_168_0:
                        lea              rdi, [rbp + 848]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 832]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 832]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n44_coerce_numeric_α
                        .size            n43_coerce_numeric_bx, .-n43_coerce_numeric_bx
                        .type            n44_coerce_numeric_bx, @function
n44_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:   mov              r11, 44
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_170_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_170_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_170_0
.Lcoerce_numeric_α_170_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 824], rax;          jmp   n45_binop_α
.Lcoerce_numeric_α_170_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 816]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 816]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n45_binop_α
                        .size            n44_coerce_numeric_bx, .-n44_coerce_numeric_bx
                        .type            n45_binop_bx, @function
n45_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_binop_α:            mov              r11, 45
                        mov              eax, dword ptr [rbp + 832]
                        mov              ecx, dword ptr [rbp + 816]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_171_2
                        mov              rax, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 824]
                        add              rax, rdx;                            jo    .Lbinop_α_171_0
                        mov              qword ptr [rbp + 800], 3
                        mov              qword ptr [rbp + 808], rax;          jmp   .Lbinop_α_171_7
.Lbinop_α_171_2:        and              edx, 1;                              jz    .Lbinop_α_171_0
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdi, qword ptr [rbp + 824]
                        cmp              al, 5;                               je    .Lbinop_α_171_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_171_4
.Lbinop_α_171_3:        movq             xmm0, rsi
.Lbinop_α_171_4:        cmp              cl, 5;                               je    .Lbinop_α_171_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_171_6
.Lbinop_α_171_5:        movq             xmm1, rdi
.Lbinop_α_171_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_171_0
                        mov              qword ptr [rbp + 800], 5
                        mov              qword ptr [rbp + 808], rax
.Lbinop_α_171_7:                                                              jmp   n46_var_α
.Lbinop_α_171_0:        mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 816]
                        mov              rcx, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n46_var_α
                        .size            n45_binop_bx, .-n45_binop_bx
                        .type            n46_var_bx, @function
n46_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 46
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 888], rax;          jmp   n47_coerce_numeric_α
                        .size            n46_var_bx, .-n46_var_bx
                        .type            n47_coerce_numeric_bx, @function
n47_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:   mov              r11, 47
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_175_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_175_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_175_0
.Lcoerce_numeric_α_175_1:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax;          jmp   n48_coerce_numeric_α
.Lcoerce_numeric_α_175_0:
                        lea              rdi, [rbp + 800]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 784]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 784]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n48_coerce_numeric_α
                        .size            n47_coerce_numeric_bx, .-n47_coerce_numeric_bx
                        .type            n48_coerce_numeric_bx, @function
n48_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_coerce_numeric_α:   mov              r11, 48
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_177_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_177_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_177_0
.Lcoerce_numeric_α_177_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rax;          jmp   n49_binop_α
.Lcoerce_numeric_α_177_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 800]
                        lea              rdx, [rbp + 768]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 768]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n49_binop_α
                        .size            n48_coerce_numeric_bx, .-n48_coerce_numeric_bx
                        .type            n49_binop_bx, @function
n49_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_binop_α:            mov              r11, 49
                        mov              eax, dword ptr [rbp + 784]
                        mov              ecx, dword ptr [rbp + 768]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_178_2
                        mov              rax, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 776]
                        sub              rax, rdx;                            jo    .Lbinop_α_178_0
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax;          jmp   .Lbinop_α_178_7
.Lbinop_α_178_2:        and              edx, 1;                              jz    .Lbinop_α_178_0
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdi, qword ptr [rbp + 776]
                        cmp              al, 5;                               je    .Lbinop_α_178_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_178_4
.Lbinop_α_178_3:        movq             xmm0, rsi
.Lbinop_α_178_4:        cmp              cl, 5;                               je    .Lbinop_α_178_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_178_6
.Lbinop_α_178_5:        movq             xmm1, rdi
.Lbinop_α_178_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_178_0
                        mov              qword ptr [rbp + 752], 5
                        mov              qword ptr [rbp + 760], rax
.Lbinop_α_178_7:                                                              jmp   n50_subscript_α
.Lbinop_α_178_0:        mov              rdi, qword ptr [rbp + 784]
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 768]
                        mov              rcx, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n50_subscript_α
                        .size            n49_binop_bx, .-n49_binop_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              r11, 50
                        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n51_deref_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_deref_bx, @function
n51_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            mov              r11, 51
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n52_binop_test_α
                        .size            n51_deref_bx, .-n51_deref_bx
                        .type            n52_binop_test_bx, @function
n52_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_test_α:       mov              r11, 52
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 112;                             je    .Lbinop_test_α_181_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 112;                             je    .Lbinop_test_α_181_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 3;                               jne   .Lbinop_test_α_181_2
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 3;                               jne   .Lbinop_test_α_181_2
.Lbinop_test_α_181_1:   mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 920]
                        cmp              rax, rcx;                            jne   n35_to_β
                        mov              rcx, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 560], rcx
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 568], rcx;          jmp   n53_var_ref_α
.Lbinop_test_α_181_0:   mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              r8d, 9
                        lea              r9, [rbp + 560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_181_1
                        cmp              eax, 1;                              je    n35_to_β
                                                                              jmp   n53_var_ref_α
.Lbinop_test_α_181_2:   mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n35_to_β
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        lea              r8, [rbp + 560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n53_var_ref_α
                        .size            n52_binop_test_bx, .-n52_binop_test_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # q__STATIC__down
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n54_var_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              r11, 54
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n55_var_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              r11, 55
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n56_coerce_numeric_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_coerce_numeric_bx, @function
n56_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              r11, 56
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_189_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_189_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_189_0
.Lcoerce_numeric_α_189_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n57_coerce_numeric_α
.Lcoerce_numeric_α_189_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n57_coerce_numeric_α
                        .size            n56_coerce_numeric_bx, .-n56_coerce_numeric_bx
                        .type            n57_coerce_numeric_bx, @function
n57_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   mov              r11, 57
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_191_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_191_0
.Lcoerce_numeric_α_191_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n58_binop_α
.Lcoerce_numeric_α_191_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 992]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 992]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n58_binop_α
                        .size            n57_coerce_numeric_bx, .-n57_coerce_numeric_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            mov              r11, 58
                        mov              eax, dword ptr [rbp + 1008]
                        mov              ecx, dword ptr [rbp + 992]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_192_2
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1000]
                        add              rax, rdx;                            jo    .Lbinop_α_192_0
                        mov              qword ptr [rbp + 976], 3
                        mov              qword ptr [rbp + 984], rax;          jmp   .Lbinop_α_192_7
.Lbinop_α_192_2:        and              edx, 1;                              jz    .Lbinop_α_192_0
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdi, qword ptr [rbp + 1000]
                        cmp              al, 5;                               je    .Lbinop_α_192_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_192_4
.Lbinop_α_192_3:        movq             xmm0, rsi
.Lbinop_α_192_4:        cmp              cl, 5;                               je    .Lbinop_α_192_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_192_6
.Lbinop_α_192_5:        movq             xmm1, rdi
.Lbinop_α_192_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_192_0
                        mov              qword ptr [rbp + 976], 5
                        mov              qword ptr [rbp + 984], rax
.Lbinop_α_192_7:                                                              jmp   n59_lit_integer_α
.Lbinop_α_192_0:        mov              rdi, qword ptr [rbp + 1008]
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 992]
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n59_lit_integer_α
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_lit_integer_bx, @function
n59_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n60_coerce_numeric_α
.Llit_integer_α_193_0:  .quad            1
                        .size            n59_lit_integer_bx, .-n59_lit_integer_bx
                        .type            n60_coerce_numeric_bx, @function
n60_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:   mov              r11, 60
                        mov              eax, dword ptr [rbp + 976]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_195_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_195_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_195_0
.Lcoerce_numeric_α_195_1:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 968], rax;          jmp   n61_binop_α
.Lcoerce_numeric_α_195_0:
                        lea              rdi, [rbp + 976]
                        lea              rsi, [rbp + 1056]
                        lea              rdx, [rbp + 960]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 960]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n61_binop_α
                        .size            n60_coerce_numeric_bx, .-n60_coerce_numeric_bx
                        .type            n61_binop_bx, @function
n61_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            mov              r11, 61
                        mov              eax, dword ptr [rbp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_196_2
                        mov              rax, qword ptr [rbp + 968]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_196_0
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax;          jmp   .Lbinop_α_196_7
.Lbinop_α_196_2:        and              edx, 1;                              jz    .Lbinop_α_196_0
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_196_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_196_4
.Lbinop_α_196_3:        movq             xmm0, rsi
.Lbinop_α_196_4:        cmp              cl, 5;                               je    .Lbinop_α_196_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_196_6
.Lbinop_α_196_5:        movq             xmm1, rdi
.Lbinop_α_196_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_196_0
                        mov              qword ptr [rbp + 944], 5
                        mov              qword ptr [rbp + 952], rax
.Lbinop_α_196_7:                                                              jmp   n62_subscript_α
.Lbinop_α_196_0:        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n62_subscript_α
                        .size            n61_binop_bx, .-n61_binop_bx
                        .type            n62_subscript_bx, @function
n62_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:        mov              r11, 62
                        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n63_deref_α
                        .size            n62_subscript_bx, .-n62_subscript_bx
                        .type            n63_deref_bx, @function
n63_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_deref_α:            mov              r11, 63
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n64_binop_test_α
                        .size            n63_deref_bx, .-n63_deref_bx
                        .type            n64_binop_test_bx, @function
n64_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_test_α:       mov              r11, 64
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 112;                             je    .Lbinop_test_α_199_0
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              al, 112;                             je    .Lbinop_test_α_199_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 3;                               jne   .Lbinop_test_α_199_2
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              al, 3;                               jne   .Lbinop_test_α_199_2
.Lbinop_test_α_199_1:   mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 1096]
                        cmp              rax, rcx;                            jne   n35_to_β
                        mov              rcx, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 552], rcx;          jmp   n65_var_ref_α
.Lbinop_test_α_199_0:   mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 9
                        lea              r9, [rbp + 544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_199_1
                        cmp              eax, 1;                              je    n35_to_β
                                                                              jmp   n65_var_ref_α
.Lbinop_test_α_199_2:   mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n35_to_β
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        lea              r8, [rbp + 544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n65_var_ref_α
                        .size            n64_binop_test_bx, .-n64_binop_test_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # q__STATIC__rows
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n66_var_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              mov              r11, 66
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 72], rax;           jmp   n67_subscript_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_subscript_bx, @function
n67_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_subscript_α:        mov              r11, 67
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n68_var_ref_α
                        .size            n67_subscript_bx, .-n67_subscript_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__STATIC__up
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n69_var_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              mov              r11, 69
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 240], rax           # result
                        mov              qword ptr [rbp + 248], rdx;          jmp   n70_var_α
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_var_bx, @function
n70_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              mov              r11, 70
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 264], rax;          jmp   n71_coerce_numeric_α
                        .size            n70_var_bx, .-n70_var_bx
                        .type            n71_coerce_numeric_bx, @function
n71_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:   mov              r11, 71
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_211_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_211_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_211_0
.Lcoerce_numeric_α_211_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 232], rax;          jmp   n72_coerce_numeric_α
.Lcoerce_numeric_α_211_0:
                        lea              rdi, [rbp + 240]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 224]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n72_coerce_numeric_α
                        .size            n71_coerce_numeric_bx, .-n71_coerce_numeric_bx
                        .type            n72_coerce_numeric_bx, @function
n72_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_coerce_numeric_α:   mov              r11, 72
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_213_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_213_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_213_0
.Lcoerce_numeric_α_213_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 216], rax;          jmp   n73_binop_α
.Lcoerce_numeric_α_213_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 208]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n73_binop_α
                        .size            n72_coerce_numeric_bx, .-n72_coerce_numeric_bx
                        .type            n73_binop_bx, @function
n73_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            mov              r11, 73
                        mov              eax, dword ptr [rbp + 224]
                        mov              ecx, dword ptr [rbp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_214_2
                        mov              rax, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 216]
                        add              rax, rdx;                            jo    .Lbinop_α_214_0
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax;          jmp   .Lbinop_α_214_7
.Lbinop_α_214_2:        and              edx, 1;                              jz    .Lbinop_α_214_0
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdi, qword ptr [rbp + 216]
                        cmp              al, 5;                               je    .Lbinop_α_214_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_214_4
.Lbinop_α_214_3:        movq             xmm0, rsi
.Lbinop_α_214_4:        cmp              cl, 5;                               je    .Lbinop_α_214_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_214_6
.Lbinop_α_214_5:        movq             xmm1, rdi
.Lbinop_α_214_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_214_0
                        mov              qword ptr [rbp + 192], 5
                        mov              qword ptr [rbp + 200], rax
.Lbinop_α_214_7:                                                              jmp   n74_var_α
.Lbinop_α_214_0:        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n74_var_α
                        .size            n73_binop_bx, .-n73_binop_bx
                        .type            n74_var_bx, @function
n74_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_var_α:              mov              r11, 74
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax;          jmp   n75_coerce_numeric_α
                        .size            n74_var_bx, .-n74_var_bx
                        .type            n75_coerce_numeric_bx, @function
n75_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_coerce_numeric_α:   mov              r11, 75
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_218_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_218_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_218_0
.Lcoerce_numeric_α_218_1:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax;          jmp   n76_coerce_numeric_α
.Lcoerce_numeric_α_218_0:
                        lea              rdi, [rbp + 192]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 176]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 176]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n76_coerce_numeric_α
                        .size            n75_coerce_numeric_bx, .-n75_coerce_numeric_bx
                        .type            n76_coerce_numeric_bx, @function
n76_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_coerce_numeric_α:   mov              r11, 76
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_220_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_220_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_220_0
.Lcoerce_numeric_α_220_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax;          jmp   n77_binop_α
.Lcoerce_numeric_α_220_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 192]
                        lea              rdx, [rbp + 160]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 160]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n77_binop_α
                        .size            n76_coerce_numeric_bx, .-n76_coerce_numeric_bx
                        .type            n77_binop_bx, @function
n77_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_α:            mov              r11, 77
                        mov              eax, dword ptr [rbp + 176]
                        mov              ecx, dword ptr [rbp + 160]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_221_2
                        mov              rax, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 168]
                        sub              rax, rdx;                            jo    .Lbinop_α_221_0
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax;          jmp   .Lbinop_α_221_7
.Lbinop_α_221_2:        and              edx, 1;                              jz    .Lbinop_α_221_0
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdi, qword ptr [rbp + 168]
                        cmp              al, 5;                               je    .Lbinop_α_221_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_221_4
.Lbinop_α_221_3:        movq             xmm0, rsi
.Lbinop_α_221_4:        cmp              cl, 5;                               je    .Lbinop_α_221_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_221_6
.Lbinop_α_221_5:        movq             xmm1, rdi
.Lbinop_α_221_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_221_0
                        mov              qword ptr [rbp + 144], 5
                        mov              qword ptr [rbp + 152], rax
.Lbinop_α_221_7:                                                              jmp   n78_subscript_α
.Lbinop_α_221_0:        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n78_subscript_α
                        .size            n77_binop_bx, .-n77_binop_bx
                        .type            n78_subscript_bx, @function
n78_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:        mov              r11, 78
                        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n79_var_ref_α
                        .size            n78_subscript_bx, .-n78_subscript_bx
                        .type            n79_var_ref_bx, @function
n79_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        mov              rdx, 1879052384                      # q__STATIC__down
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n80_var_α
                        .size            n79_var_ref_bx, .-n79_var_ref_bx
                        .type            n80_var_bx, @function
n80_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              r11, 80
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 440], rax;          jmp   n81_var_α
                        .size            n80_var_bx, .-n80_var_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 81
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax;          jmp   n82_coerce_numeric_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_coerce_numeric_bx, @function
n82_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:   mov              r11, 82
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_230_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_230_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_230_0
.Lcoerce_numeric_α_230_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 424], rax;          jmp   n83_coerce_numeric_α
.Lcoerce_numeric_α_230_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 416]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 416]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n83_coerce_numeric_α
                        .size            n82_coerce_numeric_bx, .-n82_coerce_numeric_bx
                        .type            n83_coerce_numeric_bx, @function
n83_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_coerce_numeric_α:   mov              r11, 83
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_232_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_232_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_232_0
.Lcoerce_numeric_α_232_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax;          jmp   n84_binop_α
.Lcoerce_numeric_α_232_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 400]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 400]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n84_binop_α
                        .size            n83_coerce_numeric_bx, .-n83_coerce_numeric_bx
                        .type            n84_binop_bx, @function
n84_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            mov              r11, 84
                        mov              eax, dword ptr [rbp + 416]
                        mov              ecx, dword ptr [rbp + 400]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_233_2
                        mov              rax, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 408]
                        add              rax, rdx;                            jo    .Lbinop_α_233_0
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax;          jmp   .Lbinop_α_233_7
.Lbinop_α_233_2:        and              edx, 1;                              jz    .Lbinop_α_233_0
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdi, qword ptr [rbp + 408]
                        cmp              al, 5;                               je    .Lbinop_α_233_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_233_4
.Lbinop_α_233_3:        movq             xmm0, rsi
.Lbinop_α_233_4:        cmp              cl, 5;                               je    .Lbinop_α_233_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_233_6
.Lbinop_α_233_5:        movq             xmm1, rdi
.Lbinop_α_233_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_233_0
                        mov              qword ptr [rbp + 384], 5
                        mov              qword ptr [rbp + 392], rax
.Lbinop_α_233_7:                                                              jmp   n85_lit_integer_α
.Lbinop_α_233_0:        mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n85_lit_integer_α
                        .size            n84_binop_bx, .-n84_binop_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              r11, 85
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_234_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n86_coerce_numeric_α
.Llit_integer_α_234_0:  .quad            1
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_coerce_numeric_bx, @function
n86_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:   mov              r11, 86
                        mov              eax, dword ptr [rbp + 384]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_236_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_236_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_236_0
.Lcoerce_numeric_α_236_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax;          jmp   n87_binop_α
.Lcoerce_numeric_α_236_0:
                        lea              rdi, [rbp + 384]
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 368]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 368]
                        cmp              al, 104;                             je    n35_to_β
                                                                              jmp   n87_binop_α
                        .size            n86_coerce_numeric_bx, .-n86_coerce_numeric_bx
                        .type            n87_binop_bx, @function
n87_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_binop_α:            mov              r11, 87
                        mov              eax, dword ptr [rbp + 368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_237_2
                        mov              rax, qword ptr [rbp + 376]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_237_0
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax;          jmp   .Lbinop_α_237_7
.Lbinop_α_237_2:        and              edx, 1;                              jz    .Lbinop_α_237_0
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_237_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_237_4
.Lbinop_α_237_3:        movq             xmm0, rsi
.Lbinop_α_237_4:        cmp              cl, 5;                               je    .Lbinop_α_237_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_237_6
.Lbinop_α_237_5:        movq             xmm1, rdi
.Lbinop_α_237_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_237_0
                        mov              qword ptr [rbp + 352], 5
                        mov              qword ptr [rbp + 360], rax
.Lbinop_α_237_7:                                                              jmp   n88_subscript_α
.Lbinop_α_237_0:        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n88_subscript_α
                        .size            n87_binop_bx, .-n87_binop_bx
                        .type            n88_subscript_bx, @function
n88_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_subscript_α:        mov              r11, 88
                        mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n89_lit_integer_α
                        .size            n88_subscript_bx, .-n88_subscript_bx
                        .type            n89_lit_integer_bx, @function
n89_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              r11, 89
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_239_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n90_rev_assign_var_α
.Llit_integer_α_239_0:  .quad            1
                        .size            n89_lit_integer_bx, .-n89_lit_integer_bx
                        .type            n90_rev_assign_var_bx, @function
n90_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_rev_assign_var_α:   mov              r11, 90
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n35_to_β
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n91_rev_assign_var_α
n90_rev_assign_var_β:   mov              r11, 90
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n35_to_β
                        .size            n90_rev_assign_var_bx, .-n90_rev_assign_var_bx
                        .type            n91_rev_assign_var_bx, @function
n91_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_rev_assign_var_α:   mov              r11, 91
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n90_rev_assign_var_β
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n92_rev_assign_var_α
n91_rev_assign_var_β:   mov              r11, 91
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n90_rev_assign_var_β
                        .size            n91_rev_assign_var_bx, .-n91_rev_assign_var_bx
                        .type            n92_rev_assign_var_bx, @function
n92_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_rev_assign_var_α:   mov              r11, 92
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n91_rev_assign_var_β
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n93_conjunction_α
n92_rev_assign_var_β:   mov              r11, 92
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n91_rev_assign_var_β
                        .size            n92_rev_assign_var_bx, .-n92_rev_assign_var_bx
                        .type            n93_conjunction_bx, @function
n93_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_conjunction_α:      mov              r11, 93
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax;           jmp   n94_bound_α
n93_conjunction_β:      mov              r11, 93;                             jmp   q_ω
                        .size            n93_conjunction_bx, .-n93_conjunction_bx
                        .type            n94_bound_bx, @function
n94_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_bound_α:            mov              r11, 94
                        mov              qword ptr [rbp + 1104], rsp;         jmp   n95_var_ref_α
                        .size            n94_bound_bx, .-n94_bound_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 95
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # solution
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n96_var_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              mov              r11, 96
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n97_subscript_α
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_subscript_bx, @function
n97_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_subscript_α:        mov              r11, 97
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_disjunction_α
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n98_var_α
                        .size            n97_subscript_bx, .-n97_subscript_bx
                        .type            n98_var_bx, @function
n98_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              mov              r11, 98
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n99_assign_var_α
                        .size            n98_var_bx, .-n98_var_bx
                        .type            n99_assign_var_bx, @function
n99_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_assign_var_α:       mov              r11, 99
                        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00001_disjunction_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n00001_disjunction_α
                        .size            n99_assign_var_bx, .-n99_assign_var_bx
                        .type            n00001_disjunction_bx, @function
n00001_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_disjunction_α:     mov              r11, 100
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0;           jmp   n00002_var_α
.Ldisjunction_γ_100_as: mov              r11, 100
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_255_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00003_conjunction_α
.Ldisjunction_α_255_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_255_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00003_conjunction_α
.Ldisjunction_α_255_1:                                                        jmp   n00003_conjunction_α
n00001_disjunction_β:     mov              r11, 100
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              je    n00004_unmark_α
                                                                              jmp   n00004_unmark_α
.Ldisjunction_γ_100_af: mov              r11, 100
.Ldisjunction_ω_100_af: mov              r11, 100
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1;                              je    n00005_var_α
                                                                              jmp   n00004_unmark_α
                        .size            n00001_disjunction_bx, .-n00001_disjunction_bx
                        .type            n00003_conjunction_bx, @function
n00003_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_conjunction_α:     mov              r11, 101
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n00004_unmark_α
n00003_conjunction_β:     mov              r11, 101;                            jmp   n00004_unmark_α
                        .size            n00003_conjunction_bx, .-n00003_conjunction_bx
                        .type            n00005_var_bx, @function
n00005_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00006_lit_integer_α
n00005_var_β:             mov              r11, 102;                            jmp   n00004_unmark_α
                        .size            n00005_var_bx, .-n00005_var_bx
                        .type            n00006_lit_integer_bx, @function
n00006_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rbp + 1376], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_259_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00007_coerce_numeric_α
.Llit_integer_α_259_0:  .quad            1
                        .size            n00006_lit_integer_bx, .-n00006_lit_integer_bx
                        .type            n00007_coerce_numeric_bx, @function
n00007_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_coerce_numeric_α:  mov              r11, 104
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_261_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_261_0
                        mov              eax, dword ptr [rbp + 1376]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_261_0
.Lcoerce_numeric_α_261_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n00008_binop_α
.Lcoerce_numeric_α_261_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 1376]
                        lea              rdx, [rbp + 1344]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 1344]
                        cmp              al, 104;                             je    n00004_unmark_α
                                                                              jmp   n00008_binop_α
                        .size            n00007_coerce_numeric_bx, .-n00007_coerce_numeric_bx
                        .type            n00008_binop_bx, @function
n00008_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_binop_α:           mov              r11, 105
                        mov              eax, dword ptr [rbp + 1344]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_262_2
                        mov              rax, qword ptr [rbp + 1352]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_262_0
                        mov              qword ptr [rbp + 1328], 3
                        mov              qword ptr [rbp + 1336], rax;         jmp   .Lbinop_α_262_7
.Lbinop_α_262_2:        and              edx, 1;                              jz    .Lbinop_α_262_0
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_262_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_262_4
.Lbinop_α_262_3:        movq             xmm0, rsi
.Lbinop_α_262_4:        cmp              cl, 5;                               je    .Lbinop_α_262_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_262_6
.Lbinop_α_262_5:        movq             xmm1, rdi
.Lbinop_α_262_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_262_0
                        mov              qword ptr [rbp + 1328], 5
                        mov              qword ptr [rbp + 1336], rax
.Lbinop_α_262_7:                                                              jmp   n00009_call_proc_staged_α
.Lbinop_α_262_0:        mov              rdi, qword ptr [rbp + 1344]
                        mov              rsi, qword ptr [rbp + 1352]
                        mov              rdx, qword ptr [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00004_unmark_α
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n00009_call_proc_staged_α
                        .size            n00008_binop_bx, .-n00008_binop_bx
                        .type            n00009_call_proc_staged_bx, @function
n00009_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_call_proc_staged_α:
                        mov              r11, 106
                        lea              rsi, [rbp + 1328]
                        call             q_dcα;                               jmp   .Lcall_proc_staged_α_264_2
.Lcall_proc_staged_α_264_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_264_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
.Lcall_proc_staged_α_264_29:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    n00004_unmark_α
                                                                              jmp   .Ldisjunction_γ_100_as
n00009_call_proc_staged_β:
                        mov              r11, 106;                            jmp   n00004_unmark_α
.Lcall_proc_staged_β_264_0:
                        .quad            .Lcall_proc_staged_β_264_0_s
.Lcall_proc_staged_β_264_0_s:
                        .string          "q"
                        .size            n00009_call_proc_staged_bx, .-n00009_call_proc_staged_bx
                        .type            n00002_var_bx, @function
n00002_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n00010_var_α
n00002_var_β:             mov              r11, 107;                            jmp   .Ldisjunction_ω_100_af
                        .size            n00002_var_bx, .-n00002_var_bx
                        .type            n00010_var_bx, @function
n00010_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_var_α:             mov              r11, 108
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1264], rax          # result
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n00011_binop_test_α
                        .size            n00010_var_bx, .-n00010_var_bx
                        .type            n00011_binop_test_bx, @function
n00011_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_binop_test_α:      mov              r11, 109
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 112;                             je    .Lbinop_test_α_268_0
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              al, 112;                             je    .Lbinop_test_α_268_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_268_2
                        mov              eax, dword ptr [rbp + 1264]
                        cmp              al, 3;                               jne   .Lbinop_test_α_268_2
.Lbinop_test_α_268_1:   mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 1272]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_100_af
                        mov              rcx, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rcx
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rcx;         jmp   n00012_call_proc_staged_α
.Lbinop_test_α_268_0:   mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              r8d, 9
                        lea              r9, [rbp + 1232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_268_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_100_af
                                                                              jmp   n00012_call_proc_staged_α
.Lbinop_test_α_268_2:   mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              r8d, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_100_af
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        lea              r8, [rbp + 1232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00012_call_proc_staged_α
                        .size            n00011_binop_test_bx, .-n00011_binop_test_bx
                        .type            n00012_call_proc_staged_bx, @function
n00012_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_call_proc_staged_α:
                        mov              r11, 110
                        call             show_dcα;                            jmp   .Lcall_proc_staged_α_270_2
.Lcall_proc_staged_α_270_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_270_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
.Lcall_proc_staged_α_270_29:
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    n00004_unmark_α
                                                                              jmp   .Ldisjunction_γ_100_as
n00012_call_proc_staged_β:
                        mov              r11, 110;                            jmp   n00004_unmark_α
.Lcall_proc_staged_β_270_0:
                        .quad            .Lcall_proc_staged_β_270_0_s
.Lcall_proc_staged_β_270_0_s:
                        .string          "show"
                        .size            n00012_call_proc_staged_bx, .-n00012_call_proc_staged_bx
                        .type            n00004_unmark_bx, @function
n00004_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_unmark_α:          mov              r11, 111
                        mov              rsp, qword ptr [rbp + 1104];         jmp   n92_rev_assign_var_β
                        .size            n00004_unmark_bx, .-n00004_unmark_bx
#-----------------------------------------------------------------------------------------------------------------------
q_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q_β:
                                                                              jmp   q_ω
#-----------------------------------------------------------------------------------------------------------------------
q_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lq_α_272_248
                        .section         .rodata
.Licn_trace_nm273:      .string          "q"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm273]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lq_α_272_248:          mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 2192]
                        mov              rbp, qword ptr [rbp + 2184];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
q_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lq_α_272_249
                        .section         .rodata
.Licn_trace_nm274:      .string          "q"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm274]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lq_α_272_249:          mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 2192]
                        mov              rbp, qword ptr [rbp + 2184];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lq_α_275_3]
                        push             rcx
                        lea              rcx, [rip + .Lq_α_275_2]
                        push             rcx;                                 jmp   FN__q
.Lq_α_275_2:            add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lq_α_275_3:            add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1424
                        mov              qword ptr [rsp + 1416], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshow_α_275_247
                        .section         .rodata
.Licn_trace_nm276:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm276]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshow_α_275_247:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
show_α_body:
                        .type            n00013_disjunction_bx, @function
n00013_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_disjunction_α:     mov              r11, 112
                        mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0;            jmp   n00014_var_ref_α
.Ldisjunction_γ_277_as: mov              r11, 112
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_333_0
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00015_lit_string_α
.Ldisjunction_α_333_0:                                                        jmp   n00015_lit_string_α
n00013_disjunction_β:     mov              r11, 112
                        mov              eax, dword ptr [rbp + 912];          jmp   n00015_lit_string_α
.Ldisjunction_γ_277_af: mov              r11, 112
.Ldisjunction_ω_277_af: mov              r11, 112
                        add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912];          jmp   n00015_lit_string_α
                        .size            n00013_disjunction_bx, .-n00013_disjunction_bx
                        .type            n00014_var_ref_bx, @function
n00014_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        mov              rdx, 1879052480                      # show__INITFLAG__0
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n00016_nulltest_var_α
n00014_var_ref_β:         mov              r11, 113;                            jmp   .Ldisjunction_ω_277_af
                        .size            n00014_var_ref_bx, .-n00014_var_ref_bx
                        .type            n00016_nulltest_var_bx, @function
n00016_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_nulltest_var_α:    mov              r11, 114
                        mov              eax, dword ptr [rbp + 1312]
                        cmp              al, 104;                             je    .Ldisjunction_ω_277_af
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_277_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_277_af
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n00017_lit_integer_α
                        .size            n00016_nulltest_var_bx, .-n00016_nulltest_var_bx
                        .type            n00017_lit_integer_bx, @function
n00017_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rbp + 1360], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_337_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00018_assign_var_α
.Llit_integer_α_337_0:  .quad            1
                        .size            n00017_lit_integer_bx, .-n00017_lit_integer_bx
                        .type            n00018_assign_var_bx, @function
n00018_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_assign_var_α:      mov              r11, 116
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1360]
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_277_af
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n00019_lit_integer_α
                        .size            n00018_assign_var_bx, .-n00018_assign_var_bx
                        .type            n00019_lit_integer_bx, @function
n00019_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rbp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_339_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n00020_assign_α
.Llit_integer_α_339_0:  .quad            0
                        .size            n00019_lit_integer_bx, .-n00019_lit_integer_bx
                        .type            n00020_assign_bx, @function
n00020_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_assign_α:          mov              r11, 118
                        mov              rax, qword ptr [rbp + 1296]
                        mov              rdx, qword ptr [rbp + 1304]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_340_0]
                        .section         .rodata
.Lassign_α_340_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_340_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00021_lit_string_α
.Lassign_α_340_0:       .quad            .Lassign_α_340_0_s
.Lassign_α_340_0_s:     .string          "show__STATIC__count"
                        .size            n00020_assign_bx, .-n00020_assign_bx
                        .type            n00021_lit_string_bx, @function
n00021_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_341_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n00022_var_α
.Llit_string_α_341_0:   .quad            .Llit_string_α_341_0_s
.Llit_string_α_341_0_s: .string          "|   "
                        .size            n00021_lit_string_bx, .-n00021_lit_string_bx
                        .type            n00022_var_bx, @function
n00022_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_var_α:             mov              r11, 120
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1248], rax          # result
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00023_call_icon_α
                        .size            n00022_var_bx, .-n00022_var_bx
                        .type            n00023_call_icon_bx, @function
n00023_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_call_icon_α:       mov              r11, 121
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lcall_icon_α_rkfn344:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn344]
                        lea              rsi, [rbp + 1168]
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
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    n00024_lit_string_α
                                                                              jmp   n00025_lit_string_α
n00023_call_icon_β:       mov              r11, 121;                            jmp   n00024_lit_string_α
                        .size            n00023_call_icon_bx, .-n00023_call_icon_bx
                        .type            n00025_lit_string_bx, @function
n00025_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rbp + 1264], 2            # result
                        mov              dword ptr [rbp + 1268], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_345_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00026_binop_α
.Llit_string_α_345_0:   .quad            .Llit_string_α_345_0_s
.Llit_string_α_345_0_s: .string          "|"
                        .size            n00025_lit_string_bx, .-n00025_lit_string_bx
                        .type            n00026_binop_bx, @function
n00026_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_binop_α:           mov              r11, 123
                        mov              rdi, qword ptr [rbp + 1152]
                        mov              rsi, qword ptr [rbp + 1160]
                        mov              rdx, qword ptr [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00027_assign_α
                        .size            n00026_binop_bx, .-n00026_binop_bx
                        .type            n00027_assign_bx, @function
n00027_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_assign_α:          mov              r11, 124
                        mov              rax, qword ptr [rbp + 1136]
                        mov              rdx, qword ptr [rbp + 1144]
                        mov              qword ptr [r9 + 160], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_347_0]
                        .section         .rodata
.Lassign_α_347_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_347_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00024_lit_string_α
.Lassign_α_347_0:       .quad            .Lassign_α_347_0_s
.Lassign_α_347_0_s:     .string          "show__STATIC__line"
                        .size            n00027_assign_bx, .-n00027_assign_bx
                        .type            n00024_lit_string_bx, @function
n00024_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rbp + 1040], 2            # result
                        mov              dword ptr [rbp + 1044], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_348_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n00028_var_α
.Llit_string_α_348_0:   .quad            .Llit_string_α_348_0_s
.Llit_string_α_348_0_s: .string          "----"
                        .size            n00024_lit_string_bx, .-n00024_lit_string_bx
                        .type            n00028_var_bx, @function
n00028_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_α:             mov              r11, 126
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1072], rax          # result
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n00029_call_icon_α
                        .size            n00028_var_bx, .-n00028_var_bx
                        .type            n00029_call_icon_bx, @function
n00029_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_call_icon_α:       mov              r11, 127
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_icon_α_rkfn351:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn351]
                        lea              rsi, [rbp + 992]
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
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n00015_lit_string_α
                                                                              jmp   n00030_lit_string_α
n00029_call_icon_β:       mov              r11, 127;                            jmp   n00015_lit_string_α
                        .size            n00029_call_icon_bx, .-n00029_call_icon_bx
                        .type            n00030_lit_string_bx, @function
n00030_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_352_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n00031_binop_α
.Llit_string_α_352_0:   .quad            .Llit_string_α_352_0_s
.Llit_string_α_352_0_s: .string          "-"
                        .size            n00030_lit_string_bx, .-n00030_lit_string_bx
                        .type            n00031_binop_bx, @function
n00031_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_binop_α:           mov              r11, 129
                        mov              rdi, qword ptr [rbp + 976]
                        mov              rsi, qword ptr [rbp + 984]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00032_assign_α
                        .size            n00031_binop_bx, .-n00031_binop_bx
                        .type            n00032_assign_bx, @function
n00032_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_assign_α:          mov              r11, 130
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [r9 + 176], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 184], rdx
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_354_0]
                        .section         .rodata
.Lassign_α_354_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_354_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00033_conjunction_α
.Lassign_α_354_0:       .quad            .Lassign_α_354_0_s
.Lassign_α_354_0_s:     .string          "show__STATIC__border"
                        .size            n00032_assign_bx, .-n00032_assign_bx
                        .type            n00033_conjunction_bx, @function
n00033_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_conjunction_α:     mov              r11, 131
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 936], rax;          jmp   .Ldisjunction_γ_277_as
n00033_conjunction_β:     mov              r11, 131;                            jmp   n00015_lit_string_α
                        .size            n00033_conjunction_bx, .-n00033_conjunction_bx
                        .type            n00015_lit_string_bx, @function
n00015_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_356_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00034_var_α
.Llit_string_α_356_0:   .quad            .Llit_string_α_356_0_s
.Llit_string_α_356_0_s: .string          "solution: "
                        .size            n00015_lit_string_bx, .-n00015_lit_string_bx
                        .type            n00034_var_bx, @function
n00034_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_var_α:             mov              r11, 133
                        mov              rax, qword ptr [r9 + 144]            # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rbp + 864], rax           # result
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00035_lit_integer_α
                        .size            n00034_var_bx, .-n00034_var_bx
                        .type            n00035_lit_integer_bx, @function
n00035_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_358_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00036_coerce_numeric_α
.Llit_integer_α_358_0:  .quad            1
                        .size            n00035_lit_integer_bx, .-n00035_lit_integer_bx
                        .type            n00036_coerce_numeric_bx, @function
n00036_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_coerce_numeric_α:  mov              r11, 135
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_360_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_360_0
                        mov              eax, dword ptr [rbp + 880]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_360_0
.Lcoerce_numeric_α_360_1:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00037_binop_α
.Lcoerce_numeric_α_360_0:
                        lea              rdi, [rbp + 864]
                        lea              rsi, [rbp + 880]
                        lea              rdx, [rbp + 848]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 104;                             je    n00038_lit_string_α
                                                                              jmp   n00037_binop_α
                        .size            n00036_coerce_numeric_bx, .-n00036_coerce_numeric_bx
                        .type            n00037_binop_bx, @function
n00037_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_binop_α:           mov              r11, 136
                        mov              eax, dword ptr [rbp + 848]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_361_2
                        mov              rax, qword ptr [rbp + 856]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_361_0
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax;          jmp   .Lbinop_α_361_7
.Lbinop_α_361_2:        and              edx, 1;                              jz    .Lbinop_α_361_0
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_361_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_361_4
.Lbinop_α_361_3:        movq             xmm0, rsi
.Lbinop_α_361_4:        cmp              cl, 5;                               je    .Lbinop_α_361_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_361_6
.Lbinop_α_361_5:        movq             xmm1, rdi
.Lbinop_α_361_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_361_0
                        mov              qword ptr [rbp + 832], 5
                        mov              qword ptr [rbp + 840], rax
.Lbinop_α_361_7:                                                              jmp   n00039_assign_α
.Lbinop_α_361_0:        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              rdx, qword ptr [rbp + 880]
                        mov              rcx, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00038_lit_string_α
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n00039_assign_α
                        .size            n00037_binop_bx, .-n00037_binop_bx
                        .type            n00039_assign_bx, @function
n00039_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [r9 + 144], rax            # show__STATIC__count
                        mov              qword ptr [r9 + 152], rdx
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_362_0]
                        .section         .rodata
.Lassign_α_362_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_362_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00040_call_icon_α
.Lassign_α_362_0:       .quad            .Lassign_α_362_0_s
.Lassign_α_362_0_s:     .string          "show__STATIC__count"
                        .size            n00039_assign_bx, .-n00039_assign_bx
                        .type            n00040_call_icon_bx, @function
n00040_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_call_icon_α:       mov              r11, 138
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        .section         .rodata
.Lcall_icon_α_rkfn364:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn364]
                        lea              rsi, [rbp + 736]
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
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    n00038_lit_string_α
                                                                              jmp   n00038_lit_string_α
n00040_call_icon_β:       mov              r11, 138;                            jmp   n00038_lit_string_α
                        .size            n00040_call_icon_bx, .-n00040_call_icon_bx
                        .type            n00038_lit_string_bx, @function
n00038_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_365_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n00041_var_α
.Llit_string_α_365_0:   .quad            .Llit_string_α_365_0_s
.Llit_string_α_365_0_s: .string          "  "
                        .size            n00038_lit_string_bx, .-n00038_lit_string_bx
                        .type            n00041_var_bx, @function
n00041_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_α:             mov              r11, 140
                        mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 704], rax           # result
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00042_call_icon_α
                        .size            n00041_var_bx, .-n00041_var_bx
                        .type            n00042_call_icon_bx, @function
n00042_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_call_icon_α:       mov              r11, 141
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        .section         .rodata
.Lcall_icon_α_rkfn368:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn368]
                        lea              rsi, [rbp + 624]
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
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    n00043_var_ref_α
                                                                              jmp   n00043_var_ref_α
n00042_call_icon_β:       mov              r11, 141;                            jmp   n00043_var_ref_α
                        .size            n00042_call_icon_bx, .-n00042_call_icon_bx
                        .type            n00043_var_ref_bx, @function
n00043_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        mov              rdx, 1879052448                      # show__STATIC__line
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx;           jmp   n00044_lit_integer_α
                        .size            n00043_var_ref_bx, .-n00043_var_ref_bx
                        .type            n00044_lit_integer_bx, @function
n00044_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_371_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00045_var_α
.Llit_integer_α_371_0:  .quad            4
                        .size            n00044_lit_integer_bx, .-n00044_lit_integer_bx
                        .type            n00045_var_bx, @function
n00045_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_var_α:             mov              r11, 144
                        mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 192], rax           # result
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00046_iterate_α
                        .size            n00045_var_bx, .-n00045_var_bx
                        .type            n00046_iterate_bx, @function
n00046_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_iterate_α:         mov              r11, 145
                        mov              qword ptr [rbp + 176], 0
.Literate_α_374_0:      mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              rdx, qword ptr [rbp + 176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_list_bang_at@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00047_call_icon_α
                                                                              jmp   n00048_lit_integer_α
n00046_iterate_β:         mov              r11, 145
                        inc              qword ptr [rbp + 176];               jmp   .Literate_α_374_0
                        .size            n00046_iterate_bx, .-n00046_iterate_bx
                        .type            n00048_lit_integer_bx, @function
n00048_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_lit_integer_α:     mov              r11, 146
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_375_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00049_coerce_numeric_α
.Llit_integer_α_375_0:  .quad            1
                        .size            n00048_lit_integer_bx, .-n00048_lit_integer_bx
                        .type            n00049_coerce_numeric_bx, @function
n00049_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_coerce_numeric_α:  mov              r11, 147
                        mov              eax, dword ptr [rbp + 160]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_377_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_377_0
                        mov              eax, dword ptr [rbp + 208]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_377_0
.Lcoerce_numeric_α_377_1:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax;          jmp   n00050_binop_α
.Lcoerce_numeric_α_377_0:
                        lea              rdi, [rbp + 160]
                        lea              rsi, [rbp + 208]
                        lea              rdx, [rbp + 144]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 144]
                        cmp              al, 104;                             je    n00047_call_icon_α
                                                                              jmp   n00050_binop_α
                        .size            n00049_coerce_numeric_bx, .-n00049_coerce_numeric_bx
                        .type            n00050_binop_bx, @function
n00050_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_binop_α:           mov              r11, 148
                        mov              eax, dword ptr [rbp + 144]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_378_2
                        mov              rax, qword ptr [rbp + 152]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_378_0
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax;          jmp   .Lbinop_α_378_7
.Lbinop_α_378_2:        and              edx, 1;                              jz    .Lbinop_α_378_0
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_378_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_378_4
.Lbinop_α_378_3:        movq             xmm0, rsi
.Lbinop_α_378_4:        cmp              cl, 5;                               je    .Lbinop_α_378_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_378_6
.Lbinop_α_378_5:        movq             xmm1, rdi
.Lbinop_α_378_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_378_0
                        mov              qword ptr [rbp + 128], 5
                        mov              qword ptr [rbp + 136], rax
.Lbinop_α_378_7:                                                              jmp   n00051_coerce_numeric_α
.Lbinop_α_378_0:        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rbp + 208]
                        mov              rcx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00047_call_icon_α
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00051_coerce_numeric_α
                        .size            n00050_binop_bx, .-n00050_binop_bx
                        .type            n00051_coerce_numeric_bx, @function
n00051_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_coerce_numeric_α:  mov              r11, 149
                        mov              eax, dword ptr [rbp + 128]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_380_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_380_0
                        mov              eax, dword ptr [rbp + 112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_380_0
.Lcoerce_numeric_α_380_1:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 104], rax;          jmp   n00052_binop_α
.Lcoerce_numeric_α_380_0:
                        lea              rdi, [rbp + 128]
                        lea              rsi, [rbp + 112]
                        lea              rdx, [rbp + 96]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 104;                             je    n00047_call_icon_α
                                                                              jmp   n00052_binop_α
                        .size            n00051_coerce_numeric_bx, .-n00051_coerce_numeric_bx
                        .type            n00052_binop_bx, @function
n00052_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_binop_α:           mov              r11, 150
                        mov              eax, 3
                        mov              ecx, dword ptr [rbp + 96]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_381_2
                        mov              rax, 4
                        mov              rdx, qword ptr [rbp + 104]
                        imul             rax, rdx;                            jo    .Lbinop_α_381_0
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax;           jmp   .Lbinop_α_381_7
.Lbinop_α_381_2:        and              edx, 1;                              jz    .Lbinop_α_381_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rbp + 104]
                        cmp              al, 5;                               je    .Lbinop_α_381_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_381_4
.Lbinop_α_381_3:        movq             xmm0, rsi
.Lbinop_α_381_4:        cmp              cl, 5;                               je    .Lbinop_α_381_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_381_6
.Lbinop_α_381_5:        movq             xmm1, rdi
.Lbinop_α_381_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_381_0
                        mov              qword ptr [rbp + 80], 5
                        mov              qword ptr [rbp + 88], rax
.Lbinop_α_381_7:                                                              jmp   n00053_lit_integer_α
.Lbinop_α_381_0:        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00047_call_icon_α
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00053_lit_integer_α
                        .size            n00052_binop_bx, .-n00052_binop_bx
                        .type            n00053_lit_integer_bx, @function
n00053_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_382_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00054_coerce_numeric_α
.Llit_integer_α_382_0:  .quad            3
                        .size            n00053_lit_integer_bx, .-n00053_lit_integer_bx
                        .type            n00054_coerce_numeric_bx, @function
n00054_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_coerce_numeric_α:  mov              r11, 152
                        mov              eax, dword ptr [rbp + 80]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_384_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_384_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_384_0
.Lcoerce_numeric_α_384_1:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00055_binop_α
.Lcoerce_numeric_α_384_0:
                        lea              rdi, [rbp + 80]
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 64]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 64]
                        cmp              al, 104;                             je    n00047_call_icon_α
                                                                              jmp   n00055_binop_α
                        .size            n00054_coerce_numeric_bx, .-n00054_coerce_numeric_bx
                        .type            n00055_binop_bx, @function
n00055_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_binop_α:           mov              r11, 153
                        mov              eax, dword ptr [rbp + 64]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_385_2
                        mov              rax, qword ptr [rbp + 72]
                        mov              rdx, 3
                        add              rax, rdx;                            jo    .Lbinop_α_385_0
                        mov              qword ptr [rbp + 48], 3
                        mov              qword ptr [rbp + 56], rax;           jmp   .Lbinop_α_385_7
.Lbinop_α_385_2:        and              edx, 1;                              jz    .Lbinop_α_385_0
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_385_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_385_4
.Lbinop_α_385_3:        movq             xmm0, rsi
.Lbinop_α_385_4:        cmp              cl, 5;                               je    .Lbinop_α_385_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_385_6
.Lbinop_α_385_5:        movq             xmm1, rdi
.Lbinop_α_385_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_385_0
                        mov              qword ptr [rbp + 48], 5
                        mov              qword ptr [rbp + 56], rax
.Lbinop_α_385_7:                                                              jmp   n00056_subscript_α
.Lbinop_α_385_0:        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00047_call_icon_α
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00056_subscript_α
                        .size            n00055_binop_bx, .-n00055_binop_bx
                        .type            n00056_subscript_bx, @function
n00056_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_subscript_α:       mov              r11, 154
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00046_iterate_β
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n00057_lit_string_α
                        .size            n00056_subscript_bx, .-n00056_subscript_bx
                        .type            n00057_lit_string_bx, @function
n00057_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_387_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00058_rev_assign_var_α
.Llit_string_α_387_0:   .quad            .Llit_string_α_387_0_s
.Llit_string_α_387_0_s: .string          "Q"
                        .size            n00057_lit_string_bx, .-n00057_lit_string_bx
                        .type            n00058_rev_assign_var_bx, @function
n00058_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_rev_assign_var_α:  mov              r11, 156
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00046_iterate_β
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00059_bound_α
n00058_rev_assign_var_β:  mov              r11, 156
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00046_iterate_β
                        .size            n00058_rev_assign_var_bx, .-n00058_rev_assign_var_bx
                        .type            n00059_bound_bx, @function
n00059_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_bound_α:           mov              r11, 157
                        mov              qword ptr [rbp + 320], rsp;          jmp   n00060_lit_string_α
                        .size            n00059_bound_bx, .-n00059_bound_bx
                        .type            n00060_lit_string_bx, @function
n00060_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_391_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00061_var_α
.Llit_string_α_391_0:   .quad            .Llit_string_α_391_0_s
.Llit_string_α_391_0_s: .string          "  "
                        .size            n00060_lit_string_bx, .-n00060_lit_string_bx
                        .type            n00061_var_bx, @function
n00061_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_var_α:             mov              r11, 159
                        mov              rax, qword ptr [r9 + 160]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rbp + 592], rax           # result
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00062_call_icon_α
                        .size            n00061_var_bx, .-n00061_var_bx
                        .type            n00062_call_icon_bx, @function
n00062_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_call_icon_α:       mov              r11, 160
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        .section         .rodata
.Lcall_icon_α_rkfn394:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn394]
                        lea              rsi, [rbp + 512]
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
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    n00063_lit_string_α
                                                                              jmp   n00063_lit_string_α
n00062_call_icon_β:       mov              r11, 160;                            jmp   n00063_lit_string_α
                        .size            n00062_call_icon_bx, .-n00062_call_icon_bx
                        .type            n00063_lit_string_bx, @function
n00063_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_395_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00064_var_α
.Llit_string_α_395_0:   .quad            .Llit_string_α_395_0_s
.Llit_string_α_395_0_s: .string          "  "
                        .size            n00063_lit_string_bx, .-n00063_lit_string_bx
                        .type            n00064_var_bx, @function
n00064_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_var_α:             mov              r11, 162
                        mov              rax, qword ptr [r9 + 176]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rbp + 480], rax           # result
                        mov              qword ptr [rbp + 488], rdx;          jmp   n00065_call_icon_α
                        .size            n00064_var_bx, .-n00064_var_bx
                        .type            n00065_call_icon_bx, @function
n00065_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_call_icon_α:       mov              r11, 163
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn398:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn398]
                        lea              rsi, [rbp + 400]
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
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n00066_unmark_α
                                                                              jmp   n00067_conjunction_α
n00065_call_icon_β:       mov              r11, 163;                            jmp   n00066_unmark_α
                        .size            n00065_call_icon_bx, .-n00065_call_icon_bx
                        .type            n00067_conjunction_bx, @function
n00067_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_conjunction_α:     mov              r11, 164
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00066_unmark_α
n00067_conjunction_β:     mov              r11, 164;                            jmp   n00066_unmark_α
                        .size            n00067_conjunction_bx, .-n00067_conjunction_bx
                        .type            n00066_unmark_bx, @function
n00066_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_unmark_α:          mov              r11, 165
                        mov              rsp, qword ptr [rbp + 320];          jmp   n00058_rev_assign_var_β
                        .size            n00066_unmark_bx, .-n00066_unmark_bx
                        .type            n00047_call_icon_bx, @function
n00047_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_call_icon_α:       mov              r11, 166
                        .section         .rodata
.Lcall_icon_α_rkfn403:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn403]
                        lea              rsi, [rbp + 16]
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
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    show_ω
                                                                              jmp   show_ω
n00047_call_icon_β:       mov              r11, 166;                            jmp   show_ω
                        .size            n00047_call_icon_bx, .-n00047_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
show_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
show_β:
                                                                              jmp   show_ω
#-----------------------------------------------------------------------------------------------------------------------
show_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshow_α_402_248
                        .section         .rodata
.Licn_trace_nm404:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm404]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshow_α_402_248:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1424]
                        mov              rbp, qword ptr [rbp + 1416];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lshow_α_402_249
                        .section         .rodata
.Licn_trace_nm405:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm405]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lshow_α_402_249:       mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1424]
                        mov              rbp, qword ptr [rbp + 1416];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
show_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lshow_α_406_3]
                        push             rcx
                        lea              rcx, [rip + .Lshow_α_406_2]
                        push             rcx;                                 jmp   FN__show
.Lshow_α_406_2:         add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshow_α_406_3:         add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3248
                        mov              qword ptr [rsp + 3240], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 2896
                        xor              eax, eax
                        mov              ecx, 144
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 8
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_406_247
                        .section         .rodata
.Licn_trace_nm407:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm407]
                        mov              esi, 2
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_406_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
options_α_body:
                        .type            n00068_var_ref_bx, @function
n00068_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n00069_nulltest_var_α
                        .size            n00068_var_ref_bx, .-n00068_var_ref_bx
                        .type            n00069_nulltest_var_bx, @function
n00069_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_nulltest_var_α:    mov              r11, 168
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 104;                             je    n00070_call_icon_α
                        mov              rdi, qword ptr [rbp + 2768]
                        mov              rsi, qword ptr [rbp + 2776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00070_call_icon_α
                        cmp              eax, 0;                              jne   n00070_call_icon_α
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2792], rax;         jmp   n00071_lit_charset_α
                        .size            n00069_nulltest_var_bx, .-n00069_nulltest_var_bx
                        .type            n00071_lit_charset_bx, @function
n00071_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_lit_charset_α:     mov              r11, 169
                        mov              qword ptr [rbp + 2864], 2            # result
                        mov              dword ptr [rbp + 2868], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_521_0]
                        mov              qword ptr [rbp + 2872], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_521_0]
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
                        pop              rax;                                 jmp   n00072_call_icon_α
.Llit_charset_α_521_0:  .quad            .Llit_charset_α_521_0_s
.Llit_charset_α_521_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00071_lit_charset_bx, .-n00071_lit_charset_bx
                        .type            n00072_call_icon_bx, @function
n00072_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_call_icon_α:       mov              r11, 170
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2840], rax
                        .section         .rodata
.Lcall_icon_α_rkfn523:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn523]
                        lea              rsi, [rbp + 2832]
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
                        mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx
                        cmp              al, 104;                             je    n00070_call_icon_α
                                                                              jmp   n00073_assign_var_α
n00072_call_icon_β:       mov              r11, 170;                            jmp   n00070_call_icon_α
                        .size            n00072_call_icon_bx, .-n00072_call_icon_bx
                        .type            n00073_assign_var_bx, @function
n00073_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_assign_var_α:      mov              r11, 171
                        mov              rdi, qword ptr [rbp + 2784]
                        mov              rsi, qword ptr [rbp + 2792]
                        mov              rdx, qword ptr [rbp + 2816]
                        mov              rcx, qword ptr [rbp + 2824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00070_call_icon_α
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n00070_call_icon_α
                        .size            n00073_assign_var_bx, .-n00073_assign_var_bx
                        .type            n00070_call_icon_bx, @function
n00070_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_call_icon_α:       mov              r11, 172
                        .section         .rodata
.Lcall_icon_α_rkfn526:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn526]
                        lea              rsi, [rbp + 2752]
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
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    n00074_make_list_α
                                                                              jmp   n00075_assign_α
n00070_call_icon_β:       mov              r11, 172;                            jmp   n00074_make_list_α
                        .size            n00070_call_icon_bx, .-n00070_call_icon_bx
                        .type            n00075_assign_bx, @function
n00075_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_assign_α:          mov              r11, 173
                        mov              rax, qword ptr [rbp + 2736]
                        mov              rdx, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n00074_make_list_α
                        .size            n00075_assign_bx, .-n00075_assign_bx
                        .type            n00074_make_list_bx, @function
n00074_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_make_list_α:       mov              r11, 174
                        lea              rdi, [rbp + 2736]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx;         jmp   n00076_assign_α
                        .size            n00074_make_list_bx, .-n00074_make_list_bx
                        .type            n00076_assign_bx, @function
n00076_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_assign_α:          mov              r11, 175
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx;         jmp   n00077_var_α
                        .size            n00076_assign_bx, .-n00076_assign_bx
                        .type            n00077_var_bx, @function
n00077_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_α:             mov              r11, 176
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00078_call_icon_α
                        .size            n00077_var_bx, .-n00077_var_bx
                        .type            n00078_call_icon_bx, @function
n00078_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_call_icon_α:       mov              r11, 177
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn534:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn534]
                        lea              rsi, [rbp + 256]
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
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n00079_var_α
                                                                              jmp   n00080_assign_α
n00078_call_icon_β:       mov              r11, 177;                            jmp   n00079_var_α
                        .size            n00078_call_icon_bx, .-n00078_call_icon_bx
                        .type            n00080_assign_bx, @function
n00080_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_assign_α:          mov              r11, 178
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx;         jmp   n00081_var_α
                        .size            n00080_assign_bx, .-n00080_assign_bx
                        .type            n00081_var_bx, @function
n00081_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:             mov              r11, 179
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n00082_scan_enter_α
                        .size            n00081_var_bx, .-n00081_var_bx
                        .type            n00082_scan_enter_bx, @function
n00082_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_scan_enter_α:      mov              r11, 180
                        mov              qword ptr [rbp + 320], r13
                        mov              qword ptr [rbp + 328], r14
                        mov              qword ptr [rbp + 336], r15
                        mov              rdi, qword ptr [rbp + 2704]
                        mov              rsi, qword ptr [rbp + 2712]
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
                        mov              r14, 0;                              jmp   n00083_disjunction_α
                        .size            n00082_scan_enter_bx, .-n00082_scan_enter_bx
                        .type            n00083_disjunction_bx, @function
n00083_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_disjunction_α:     mov              r11, 181
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0
                        mov              dword ptr [rbp + 400], 0;            jmp   n00084_lit_string_α
.Ldisjunction_γ_422_as: mov              r11, 181
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_541_0
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00085_scan_α
.Ldisjunction_α_541_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_541_1
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00085_scan_α
.Ldisjunction_α_541_1:                                                        jmp   n00085_scan_α
n00083_disjunction_β:     mov              r11, 181
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 0;                              je    n00086_disjunction_β
                                                                              jmp   n00087_scan_α
.Ldisjunction_γ_422_af: mov              r11, 181
.Ldisjunction_ω_422_af: mov              r11, 181
                        add              dword ptr [rbp + 400], 1
                        mov              eax, dword ptr [rbp + 400]
                        cmp              eax, 1;                              je    n00088_var_α
                                                                              jmp   n00087_scan_α
                        .size            n00083_disjunction_bx, .-n00083_disjunction_bx
                        .type            n00085_scan_bx, @function
n00085_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_scan_α:            mov              r11, 182
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 320]
                        mov              r14, qword ptr [rbp + 328]
                        mov              r15, qword ptr [rbp + 336];          jmp   n00077_var_α
n00085_scan_β:            mov              r11, 182
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
                        mov              r14, rax;                            jmp   n00083_disjunction_β
                                                                              jmp   n00077_var_α
                        .size            n00085_scan_bx, .-n00085_scan_bx
                        .type            n00089_conjunction_bx, @function
n00089_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_conjunction_α:     mov              r11, 183;                            jmp   .Ldisjunction_γ_422_as
n00089_conjunction_β:     mov              r11, 183;                            jmp   n00087_scan_α
                        .size            n00089_conjunction_bx, .-n00089_conjunction_bx
                        .type            n00088_var_bx, @function
n00088_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n00090_var_α
n00088_var_β:             mov              r11, 184;                            jmp   n00087_scan_α
                        .size            n00088_var_bx, .-n00088_var_bx
                        .type            n00090_var_bx, @function
n00090_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2696], rax;         jmp   n00091_call_icon_α
                        .size            n00090_var_bx, .-n00090_var_bx
                        .type            n00091_call_icon_bx, @function
n00091_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_call_icon_α:       mov              r11, 186
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2640], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2648], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2632], rax
                        .section         .rodata
.Lcall_icon_α_rkfn550:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn550]
                        lea              rsi, [rbp + 2624]
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
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        cmp              al, 104;                             je    n00087_scan_α
                                                                              jmp   .Ldisjunction_γ_422_as
n00091_call_icon_β:       mov              r11, 186;                            jmp   n00087_scan_α
                        .size            n00091_call_icon_bx, .-n00091_call_icon_bx
                        .type            n00084_lit_string_bx, @function
n00084_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rbp + 2576], 2            # result
                        mov              dword ptr [rbp + 2580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_551_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n00092_scan_match_α
n00084_lit_string_β:      mov              r11, 187;                            jmp   .Ldisjunction_ω_422_af
.Llit_string_α_551_0:   .quad            .Llit_string_α_551_0_s
.Llit_string_α_551_0_s: .string          "-"
                        .size            n00084_lit_string_bx, .-n00084_lit_string_bx
                        .type            n00092_scan_match_bx, @function
n00092_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_scan_match_α:      mov              r11, 188
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_422_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_553_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_422_af
                        mov              qword ptr [rbp + 2544], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2552], rax;         jmp   n00093_scan_tab_α
.Lscan_match_α_553_0:   .quad            .Lscan_match_α_553_0_s
.Lscan_match_α_553_0_s: .string          "-"
                        .size            n00092_scan_match_bx, .-n00092_scan_match_bx
                        .type            n00093_scan_tab_bx, @function
n00093_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_scan_tab_α:        mov              r11, 189
                        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_555_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_555_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_422_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_422_af
                        mov              qword ptr [rbp + 2528], r14
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
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n00094_lit_integer_α
n00093_scan_tab_β:        mov              r11, 189
                        mov              r14, qword ptr [rbp + 2528];         jmp   .Ldisjunction_ω_422_af
                        .size            n00093_scan_tab_bx, .-n00093_scan_tab_bx
                        .type            n00094_lit_integer_bx, @function
n00094_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rbp + 2496], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_556_0]
                        mov              qword ptr [rbp + 2504], rax;         jmp   n00095_scan_pos_α
.Llit_integer_α_556_0:  .quad            0
                        .size            n00094_lit_integer_bx, .-n00094_lit_integer_bx
                        .type            n00095_scan_pos_bx, @function
n00095_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_scan_pos_α:        mov              r11, 191
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_558_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_558_0:     cmp              rax, 1;                              jl    n00096_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00096_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00096_var_α
                        mov              qword ptr [rbp + 2480], 3
                        mov              qword ptr [rbp + 2488], rax;         jmp   n00093_scan_tab_β
                        .size            n00095_scan_pos_bx, .-n00095_scan_pos_bx
                        .type            n00096_var_bx, @function
n00096_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_var_α:             mov              r11, 192
                        mov              qword ptr [rbp + 2464], 0
                        mov              qword ptr [rbp + 2472], 0;           jmp   n00097_conjunction_α
n00096_var_β:             mov              r11, 192;                            jmp   n00093_scan_tab_β
                        .size            n00096_var_bx, .-n00096_var_bx
                        .type            n00097_conjunction_bx, @function
n00097_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_conjunction_α:     mov              r11, 193
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n00098_disjunction_α
n00097_conjunction_β:     mov              r11, 193;                            jmp   .Ldisjunction_ω_422_af
                        .size            n00097_conjunction_bx, .-n00097_conjunction_bx
                        .type            n00098_disjunction_bx, @function
n00098_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_disjunction_α:     mov              r11, 194
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              dword ptr [rbp + 2256], 0;           jmp   n00099_lit_string_α
.Ldisjunction_γ_435_as: mov              r11, 194
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_562_0
                                                                              jmp   n00100_lit_integer_α
.Ldisjunction_α_562_0:                                                        jmp   n00100_lit_integer_α
n00098_disjunction_β:     mov              r11, 194
                        mov              eax, dword ptr [rbp + 2256];         jmp   n00100_lit_integer_α
.Ldisjunction_γ_435_af: mov              r11, 194
.Ldisjunction_ω_435_af: mov              r11, 194
                        add              dword ptr [rbp + 2256], 1
                        mov              eax, dword ptr [rbp + 2256];         jmp   n00100_lit_integer_α
                        .size            n00098_disjunction_bx, .-n00098_disjunction_bx
                        .type            n00100_lit_integer_bx, @function
n00100_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rbp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_563_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00101_scan_move_α
.Llit_integer_α_563_0:  .quad            1
                        .size            n00100_lit_integer_bx, .-n00100_lit_integer_bx
                        .type            n00101_scan_move_bx, @function
n00101_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_scan_move_α:       mov              r11, 196
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00087_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00087_scan_α
                        mov              qword ptr [rbp + 464], r14
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
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00102_assign_α
n00101_scan_move_β:       mov              r11, 196
                        mov              r14, qword ptr [rbp + 464];          jmp   n00087_scan_α
                        .size            n00101_scan_move_bx, .-n00101_scan_move_bx
                        .type            n00102_assign_bx, @function
n00102_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_assign_α:          mov              r11, 197
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx;         jmp   n00086_disjunction_α
                        .size            n00102_assign_bx, .-n00102_assign_bx
                        .type            n00086_disjunction_bx, @function
n00086_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_disjunction_α:     mov              r11, 198
                        mov              qword ptr [rbp + 496], 0
                        mov              qword ptr [rbp + 504], 0
                        mov              dword ptr [rbp + 512], 0;            jmp   n00103_var_α
.Ldisjunction_γ_439_as: mov              r11, 198
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_568_0
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00100_lit_integer_α
.Ldisjunction_α_568_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_568_1
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00100_lit_integer_α
.Ldisjunction_α_568_1:                                                        jmp   n00100_lit_integer_α
n00086_disjunction_β:     mov              r11, 198
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 0;                              je    n00104_disjunction_β
                                                                              jmp   n00100_lit_integer_α
.Ldisjunction_γ_439_af: mov              r11, 198
.Ldisjunction_ω_439_af: mov              r11, 198
                        add              dword ptr [rbp + 512], 1
                        mov              eax, dword ptr [rbp + 512]
                        cmp              eax, 1;                              je    n00105_lit_string_α
                                                                              jmp   n00100_lit_integer_α
                        .size            n00086_disjunction_bx, .-n00086_disjunction_bx
                        .type            n00105_lit_string_bx, @function
n00105_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rbp + 2192], 2            # result
                        mov              dword ptr [rbp + 2196], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_569_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n00106_var_α
n00105_lit_string_β:      mov              r11, 199;                            jmp   n00100_lit_integer_α
.Llit_string_α_569_0:   .quad            .Llit_string_α_569_0_s
.Llit_string_α_569_0_s: .string          "Unrecognized option: -"
                        .size            n00105_lit_string_bx, .-n00105_lit_string_bx
                        .type            n00106_var_bx, @function
n00106_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_var_α:             mov              r11, 200
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n00107_call_icon_α
                        .size            n00106_var_bx, .-n00106_var_bx
                        .type            n00107_call_icon_bx, @function
n00107_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_call_icon_α:       mov              r11, 201
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn573:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn573]
                        lea              rsi, [rbp + 2144]
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
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              al, 104;                             je    n00100_lit_integer_α
                                                                              jmp   .Ldisjunction_γ_439_as
n00107_call_icon_β:       mov              r11, 201;                            jmp   n00100_lit_integer_α
                        .size            n00107_call_icon_bx, .-n00107_call_icon_bx
                        .type            n00103_var_bx, @function
n00103_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n00108_var_α
n00103_var_β:             mov              r11, 202;                            jmp   .Ldisjunction_ω_439_af
                        .size            n00103_var_bx, .-n00103_var_bx
                        .type            n00108_var_bx, @function
n00108_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_var_α:             mov              r11, 203
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n00109_call_builtin_gen_α
                        .size            n00108_var_bx, .-n00108_var_bx
                        .type            n00109_call_builtin_gen_bx, @function
n00109_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_call_builtin_gen_α:
                        mov              r11, 204
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        mov              qword ptr [rbp + 2064], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_578_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn204: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn204]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 2
                        lea              rcx, [rbp + 2064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_439_af
                                                                              jmp   n00110_lit_integer_α
n00109_call_builtin_gen_β:
                        mov              r11, 204;                            jmp   .Lcall_builtin_gen_α_578_60
                        .size            n00109_call_builtin_gen_bx, .-n00109_call_builtin_gen_bx
                        .type            n00110_lit_integer_bx, @function
n00110_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_579_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n00111_coerce_numeric_α
.Llit_integer_α_579_0:  .quad            1
                        .size            n00110_lit_integer_bx, .-n00110_lit_integer_bx
                        .type            n00111_coerce_numeric_bx, @function
n00111_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_coerce_numeric_α:  mov              r11, 206
                        mov              eax, dword ptr [rbp + 2016]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_581_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_581_0
                        mov              eax, dword ptr [rbp + 2112]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_581_0
.Lcoerce_numeric_α_581_1:
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2008], rax;         jmp   n00112_binop_α
.Lcoerce_numeric_α_581_0:
                        lea              rdi, [rbp + 2016]
                        lea              rsi, [rbp + 2112]
                        lea              rdx, [rbp + 2000]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 2000]
                        cmp              al, 104;                             je    .Ldisjunction_ω_439_af
                                                                              jmp   n00112_binop_α
                        .size            n00111_coerce_numeric_bx, .-n00111_coerce_numeric_bx
                        .type            n00112_binop_bx, @function
n00112_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_binop_α:           mov              r11, 207
                        mov              eax, dword ptr [rbp + 2000]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_582_2
                        mov              rax, qword ptr [rbp + 2008]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_582_0
                        mov              qword ptr [rbp + 1984], 3
                        mov              qword ptr [rbp + 1992], rax;         jmp   .Lbinop_α_582_7
.Lbinop_α_582_2:        and              edx, 1;                              jz    .Lbinop_α_582_0
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_582_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_582_4
.Lbinop_α_582_3:        movq             xmm0, rsi
.Lbinop_α_582_4:        cmp              cl, 5;                               je    .Lbinop_α_582_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_582_6
.Lbinop_α_582_5:        movq             xmm1, rdi
.Lbinop_α_582_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_582_0
                        mov              qword ptr [rbp + 1984], 5
                        mov              qword ptr [rbp + 1992], rax
.Lbinop_α_582_7:                                                              jmp   n00113_assign_α
.Lbinop_α_582_0:        mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_439_af
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx;         jmp   n00113_assign_α
                        .size            n00112_binop_bx, .-n00112_binop_bx
                        .type            n00113_assign_bx, @function
n00113_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_assign_α:          mov              r11, 208
                        mov              rax, qword ptr [rbp + 1984]
                        mov              rdx, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00114_var_ref_α
                        .size            n00113_assign_bx, .-n00113_assign_bx
                        .type            n00114_var_ref_bx, @function
n00114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2896]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00115_var_α
                        .size            n00114_var_ref_bx, .-n00114_var_ref_bx
                        .type            n00115_var_bx, @function
n00115_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_var_α:             mov              r11, 210
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00116_subscript_α
                        .size            n00115_var_bx, .-n00115_var_bx
                        .type            n00116_subscript_bx, @function
n00116_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_subscript_α:       mov              r11, 211
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00100_lit_integer_α
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n00104_disjunction_α
                        .size            n00116_subscript_bx, .-n00116_subscript_bx
                        .type            n00104_disjunction_bx, @function
n00104_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_disjunction_α:     mov              r11, 212
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0;            jmp   n00117_lit_charset_α
.Ldisjunction_γ_453_as: mov              r11, 212
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_590_0
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00118_assign_var_α
.Ldisjunction_α_590_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_590_1
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00118_assign_var_α
.Ldisjunction_α_590_1:                                                        jmp   n00118_assign_var_α
n00104_disjunction_β:     mov              r11, 212
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              je    n00100_lit_integer_α
                                                                              jmp   n00100_lit_integer_α
.Ldisjunction_γ_453_af: mov              r11, 212
.Ldisjunction_ω_453_af: mov              r11, 212
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1;                              je    n00119_lit_integer_α
                                                                              jmp   n00100_lit_integer_α
                        .size            n00104_disjunction_bx, .-n00104_disjunction_bx
                        .type            n00118_assign_var_bx, @function
n00118_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_assign_var_α:      mov              r11, 213
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00100_lit_integer_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   .Ldisjunction_γ_439_as
n00118_assign_var_β:      mov              r11, 213;                            jmp   n00100_lit_integer_α
                        .size            n00118_assign_var_bx, .-n00118_assign_var_bx
                        .type            n00119_lit_integer_bx, @function
n00119_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_592_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   .Ldisjunction_γ_453_as
n00119_lit_integer_β:     mov              r11, 214;                            jmp   n00100_lit_integer_α
.Llit_integer_α_592_0:  .quad            1
                        .size            n00119_lit_integer_bx, .-n00119_lit_integer_bx
                        .type            n00117_lit_charset_bx, @function
n00117_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_lit_charset_α:     mov              r11, 215
                        mov              qword ptr [rbp + 1856], 2            # result
                        mov              dword ptr [rbp + 1860], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_593_0]
                        mov              qword ptr [rbp + 1864], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_593_0]
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
                        pop              rax;                                 jmp   n00120_var_ref_α
n00117_lit_charset_β:     mov              r11, 215;                            jmp   .Ldisjunction_ω_453_af
.Llit_charset_α_593_0:  .quad            .Llit_charset_α_593_0_s
.Llit_charset_α_593_0_s:
                        .string          "+.:"
                        .size            n00117_lit_charset_bx, .-n00117_lit_charset_bx
                        .type            n00120_var_ref_bx, @function
n00120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n00121_var_α
                        .size            n00120_var_ref_bx, .-n00120_var_ref_bx
                        .type            n00121_var_bx, @function
n00121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_var_α:             mov              r11, 217
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n00122_subscript_α
                        .size            n00121_var_bx, .-n00121_var_bx
                        .type            n00122_subscript_bx, @function
n00122_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_subscript_α:       mov              r11, 218
                        mov              rdi, qword ptr [rbp + 1904]
                        mov              rsi, qword ptr [rbp + 1912]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_453_af
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n00123_deref_α
                        .size            n00122_subscript_bx, .-n00122_subscript_bx
                        .type            n00123_deref_bx, @function
n00123_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_deref_α:           mov              r11, 219
                        mov              rdi, qword ptr [rbp + 1936]
                        mov              rsi, qword ptr [rbp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_453_af
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n00124_assign_α
                        .size            n00123_deref_bx, .-n00123_deref_bx
                        .type            n00124_assign_bx, @function
n00124_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_assign_α:          mov              r11, 220
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n00125_call_icon_α
                        .size            n00124_assign_bx, .-n00124_assign_bx
                        .type            n00125_call_icon_bx, @function
n00125_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_call_icon_α:       mov              r11, 221
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
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
                        lea              rsi, [rbp + 1808]
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
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_453_af
                                                                              jmp   n00126_disjunction_α
n00125_call_icon_β:       mov              r11, 221;                            jmp   .Ldisjunction_ω_453_af
                        .size            n00125_call_icon_bx, .-n00125_call_icon_bx
                        .type            n00126_disjunction_bx, @function
n00126_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_disjunction_α:     mov              r11, 222
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                        mov              dword ptr [rbp + 1504], 0;           jmp   n00127_lit_string_α
.Ldisjunction_γ_463_as: mov              r11, 222
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_603_0
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00128_assign_α
.Ldisjunction_α_603_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_603_1
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00128_assign_α
.Ldisjunction_α_603_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_603_2
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00128_assign_α
.Ldisjunction_α_603_2:                                                        jmp   n00128_assign_α
n00126_disjunction_β:     mov              r11, 222
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 0;                              je    n00129_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_463_af
                                                                              jmp   .Ldisjunction_ω_463_af
.Ldisjunction_γ_463_af: mov              r11, 222
.Ldisjunction_ω_463_af: mov              r11, 222
                        add              dword ptr [rbp + 1504], 1
                        mov              eax, dword ptr [rbp + 1504]
                        cmp              eax, 1;                              je    n00130_var_α
                        cmp              eax, 2;                              je    n00131_lit_string_α
                                                                              jmp   n00132_var_α
                        .size            n00126_disjunction_bx, .-n00126_disjunction_bx
                        .type            n00128_assign_bx, @function
n00128_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_assign_α:          mov              r11, 223
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n00132_var_α
                        .size            n00128_assign_bx, .-n00128_assign_bx
                        .type            n00132_var_bx, @function
n00132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00133_lit_string_α
                        .size            n00132_var_bx, .-n00132_var_bx
                        .type            n00133_lit_string_bx, @function
n00133_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rbp + 1376], 2            # result
                        mov              dword ptr [rbp + 1380], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_607_0]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00134_call_builtin_α
.Llit_string_α_607_0:   .quad            .Llit_string_α_607_0_s
.Llit_string_α_607_0_s: .string          ":"
                        .size            n00133_lit_string_bx, .-n00133_lit_string_bx
                        .type            n00134_call_builtin_bx, @function
n00134_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_call_builtin_α:    mov              r11, 226
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn609: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn609]
                        lea              rsi, [rbp + 1440]
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
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              al, 104;                             je    n00135_lit_string_α
                                                                              jmp   n00136_var_α
n00134_call_builtin_β:    mov              r11, 226;                            jmp   n00135_lit_string_α
                        .size            n00134_call_builtin_bx, .-n00134_call_builtin_bx
                        .type            n00136_var_bx, @function
n00136_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n00137_assign_α
                        .size            n00136_var_bx, .-n00136_var_bx
                        .type            n00137_assign_bx, @function
n00137_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_assign_α:          mov              r11, 228
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n00138_var_α
                        .size            n00137_assign_bx, .-n00137_assign_bx
                        .type            n00135_lit_string_bx, @function
n00135_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_lit_string_α:      mov              r11, 229
                        mov              qword ptr [rbp + 1024], 2            # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_613_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n00139_call_builtin_α
.Llit_string_α_613_0:   .quad            .Llit_string_α_613_0_s
.Llit_string_α_613_0_s: .string          "+"
                        .size            n00135_lit_string_bx, .-n00135_lit_string_bx
                        .type            n00139_call_builtin_bx, @function
n00139_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_call_builtin_α:    mov              r11, 230
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 1336], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn615: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn615]
                        lea              rsi, [rbp + 1328]
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
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n00140_lit_string_α
                                                                              jmp   n00141_disjunction_α
n00139_call_builtin_β:    mov              r11, 230;                            jmp   n00140_lit_string_α
                        .size            n00139_call_builtin_bx, .-n00139_call_builtin_bx
                        .type            n00141_disjunction_bx, @function
n00141_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_disjunction_α:     mov              r11, 231
                        mov              qword ptr [rbp + 1056], 0
                        mov              qword ptr [rbp + 1064], 0
                        mov              dword ptr [rbp + 1072], 0;           jmp   n00142_var_α
.Ldisjunction_γ_472_as: mov              r11, 231
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_617_0
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00143_assign_α
.Ldisjunction_α_617_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_617_1
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n00143_assign_α
.Ldisjunction_α_617_1:                                                        jmp   n00143_assign_α
n00141_disjunction_β:     mov              r11, 231
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_472_af
                                                                              jmp   .Ldisjunction_ω_472_af
.Ldisjunction_γ_472_af: mov              r11, 231
.Ldisjunction_ω_472_af: mov              r11, 231
                        add              dword ptr [rbp + 1072], 1
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              eax, 1;                              je    n00144_lit_string_α
                                                                              jmp   n00100_lit_integer_α
                        .size            n00141_disjunction_bx, .-n00141_disjunction_bx
                        .type            n00143_assign_bx, @function
n00143_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_assign_α:          mov              r11, 232
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n00138_var_α
                        .size            n00143_assign_bx, .-n00143_assign_bx
                        .type            n00144_lit_string_bx, @function
n00144_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_lit_string_α:      mov              r11, 233
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_619_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n00145_var_α
n00144_lit_string_β:      mov              r11, 233;                            jmp   .Ldisjunction_ω_472_af
.Llit_string_α_619_0:   .quad            .Llit_string_α_619_0_s
.Llit_string_α_619_0_s: .string          "-"
                        .size            n00144_lit_string_bx, .-n00144_lit_string_bx
                        .type            n00145_var_bx, @function
n00145_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_var_α:             mov              r11, 234
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00146_lit_string_α
                        .size            n00145_var_bx, .-n00145_var_bx
                        .type            n00146_lit_string_bx, @function
n00146_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rbp + 1280], 2            # result
                        mov              dword ptr [rbp + 1284], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_622_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n00147_call_icon_α
.Llit_string_α_622_0:   .quad            .Llit_string_α_622_0_s
.Llit_string_α_622_0_s: .string          " needs numeric parameter"
                        .size            n00146_lit_string_bx, .-n00146_lit_string_bx
                        .type            n00147_call_icon_bx, @function
n00147_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_call_icon_α:       mov              r11, 236
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        .section         .rodata
.Lcall_icon_α_rkfn624:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn624]
                        lea              rsi, [rbp + 1168]
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
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                                                                              jmp   .Ldisjunction_γ_472_as
n00147_call_icon_β:       mov              r11, 236;                            jmp   .Ldisjunction_ω_472_af
                        .size            n00147_call_icon_bx, .-n00147_call_icon_bx
                        .type            n00142_var_bx, @function
n00142_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00148_call_icon_α
n00142_var_β:             mov              r11, 237;                            jmp   .Ldisjunction_ω_472_af
                        .size            n00142_var_bx, .-n00142_var_bx
                        .type            n00148_call_icon_bx, @function
n00148_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_call_icon_α:       mov              r11, 238
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn628:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn628]
                        lea              rsi, [rbp + 1104]
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
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_472_af
                                                                              jmp   .Ldisjunction_γ_472_as
n00148_call_icon_β:       mov              r11, 238;                            jmp   .Ldisjunction_ω_472_af
                        .size            n00148_call_icon_bx, .-n00148_call_icon_bx
                        .type            n00140_lit_string_bx, @function
n00140_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_629_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n00149_call_builtin_α
.Llit_string_α_629_0:   .quad            .Llit_string_α_629_0_s
.Llit_string_α_629_0_s: .string          "."
                        .size            n00140_lit_string_bx, .-n00140_lit_string_bx
                        .type            n00149_call_builtin_bx, @function
n00149_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_call_builtin_α:    mov              r11, 240
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 984], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn631: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn631]
                        lea              rsi, [rbp + 976]
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
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    n00100_lit_integer_α
                                                                              jmp   n00150_disjunction_α
n00149_call_builtin_β:    mov              r11, 240;                            jmp   n00100_lit_integer_α
                        .size            n00149_call_builtin_bx, .-n00149_call_builtin_bx
                        .type            n00150_disjunction_bx, @function
n00150_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_disjunction_α:     mov              r11, 241
                        mov              qword ptr [rbp + 704], 0
                        mov              qword ptr [rbp + 712], 0
                        mov              dword ptr [rbp + 720], 0;            jmp   n00151_var_α
.Ldisjunction_γ_482_as: mov              r11, 241
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_633_0
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00152_assign_α
.Ldisjunction_α_633_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_633_1
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00152_assign_α
.Ldisjunction_α_633_1:                                                        jmp   n00152_assign_α
n00150_disjunction_β:     mov              r11, 241
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_482_af
                                                                              jmp   .Ldisjunction_ω_482_af
.Ldisjunction_γ_482_af: mov              r11, 241
.Ldisjunction_ω_482_af: mov              r11, 241
                        add              dword ptr [rbp + 720], 1
                        mov              eax, dword ptr [rbp + 720]
                        cmp              eax, 1;                              je    n00153_lit_string_α
                                                                              jmp   n00100_lit_integer_α
                        .size            n00150_disjunction_bx, .-n00150_disjunction_bx
                        .type            n00152_assign_bx, @function
n00152_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_assign_α:          mov              r11, 242
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 2976], rax
                        mov              qword ptr [rbp + 2984], rdx;         jmp   n00138_var_α
                        .size            n00152_assign_bx, .-n00152_assign_bx
                        .type            n00138_var_bx, @function
n00138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_var_α:             mov              r11, 243
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00154_conjunction_α
                        .size            n00138_var_bx, .-n00138_var_bx
                        .type            n00154_conjunction_bx, @function
n00154_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_conjunction_α:     mov              r11, 244
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 632], rax;          jmp   .Ldisjunction_γ_453_as
n00154_conjunction_β:     mov              r11, 244;                            jmp   n00100_lit_integer_α
                        .size            n00154_conjunction_bx, .-n00154_conjunction_bx
                        .type            n00153_lit_string_bx, @function
n00153_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_lit_string_α:      mov              r11, 245
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_638_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00155_var_α
n00153_lit_string_β:      mov              r11, 245;                            jmp   .Ldisjunction_ω_482_af
.Llit_string_α_638_0:   .quad            .Llit_string_α_638_0_s
.Llit_string_α_638_0_s: .string          "-"
                        .size            n00153_lit_string_bx, .-n00153_lit_string_bx
                        .type            n00155_var_bx, @function
n00155_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_var_α:             mov              r11, 246
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00156_lit_string_α
                        .size            n00155_var_bx, .-n00155_var_bx
                        .type            n00156_lit_string_bx, @function
n00156_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_lit_string_α:      mov              r11, 247
                        mov              qword ptr [rbp + 928], 2             # result
                        mov              dword ptr [rbp + 932], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_641_0]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00157_call_icon_α
.Llit_string_α_641_0:   .quad            .Llit_string_α_641_0_s
.Llit_string_α_641_0_s: .string          " needs numeric parameter"
                        .size            n00156_lit_string_bx, .-n00156_lit_string_bx
                        .type            n00157_call_icon_bx, @function
n00157_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_call_icon_α:       mov              r11, 248
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn643:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn643]
                        lea              rsi, [rbp + 816]
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
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_482_af
                                                                              jmp   .Ldisjunction_γ_482_as
n00157_call_icon_β:       mov              r11, 248;                            jmp   .Ldisjunction_ω_482_af
                        .size            n00157_call_icon_bx, .-n00157_call_icon_bx
                        .type            n00151_var_bx, @function
n00151_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00158_call_icon_α
n00151_var_β:             mov              r11, 249;                            jmp   .Ldisjunction_ω_482_af
                        .size            n00151_var_bx, .-n00151_var_bx
                        .type            n00158_call_icon_bx, @function
n00158_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_call_icon_α:       mov              r11, 250
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_icon_α_rkfn647:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn647]
                        lea              rsi, [rbp + 752]
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_482_af
                                                                              jmp   .Ldisjunction_γ_482_as
n00158_call_icon_β:       mov              r11, 250;                            jmp   .Ldisjunction_ω_482_af
                        .size            n00158_call_icon_bx, .-n00158_call_icon_bx
                        .type            n00131_lit_string_bx, @function
n00131_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rbp + 1744], 2            # result
                        mov              dword ptr [rbp + 1748], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_648_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n00159_var_α
n00131_lit_string_β:      mov              r11, 251;                            jmp   .Ldisjunction_ω_463_af
.Llit_string_α_648_0:   .quad            .Llit_string_α_648_0_s
.Llit_string_α_648_0_s: .string          "No parameter following -"
                        .size            n00131_lit_string_bx, .-n00131_lit_string_bx
                        .type            n00159_var_bx, @function
n00159_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_var_α:             mov              r11, 252
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n00160_call_icon_α
                        .size            n00159_var_bx, .-n00159_var_bx
                        .type            n00160_call_icon_bx, @function
n00160_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_call_icon_α:       mov              r11, 253
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        .section         .rodata
.Lcall_icon_α_rkfn652:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn652]
                        lea              rsi, [rbp + 1696]
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
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_463_af
                                                                              jmp   .Ldisjunction_γ_463_as
n00160_call_icon_β:       mov              r11, 253;                            jmp   .Ldisjunction_ω_463_af
                        .size            n00160_call_icon_bx, .-n00160_call_icon_bx
                        .type            n00130_var_bx, @function
n00130_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n00161_call_icon_α
n00130_var_β:             mov              r11, 254;                            jmp   .Ldisjunction_ω_463_af
                        .size            n00130_var_bx, .-n00130_var_bx
                        .type            n00161_call_icon_bx, @function
n00161_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_call_icon_α:       mov              r11, 255
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn656:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn656]
                        lea              rsi, [rbp + 1632]
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
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_463_af
                                                                              jmp   .Ldisjunction_γ_463_as
n00161_call_icon_β:       mov              r11, 255;                            jmp   .Ldisjunction_ω_463_af
                        .size            n00161_call_icon_bx, .-n00161_call_icon_bx
                        .type            n00127_lit_string_bx, @function
n00127_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_657_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00162_lit_integer_α
n00127_lit_string_β:      mov              r11, 256;                            jmp   .Ldisjunction_ω_463_af
.Llit_string_α_657_0:   .quad            .Llit_string_α_657_0_s
.Llit_string_α_657_0_s: .string          ""
                        .size            n00127_lit_string_bx, .-n00127_lit_string_bx
                        .type            n00162_lit_integer_bx, @function
n00162_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_lit_integer_α:     mov              r11, 257
                        mov              qword ptr [rbp + 1600], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_658_0]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00129_scan_tab_α
.Llit_integer_α_658_0:  .quad            0
                        .size            n00162_lit_integer_bx, .-n00162_lit_integer_bx
                        .type            n00129_scan_tab_bx, @function
n00129_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_scan_tab_α:        mov              r11, 258
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_660_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_660_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_463_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_463_af
                        mov              qword ptr [rbp + 1584], r14
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
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n00163_binop_test_α
n00129_scan_tab_β:        mov              r11, 258
                        mov              r14, qword ptr [rbp + 1584];         jmp   .Ldisjunction_ω_463_af
                        .size            n00129_scan_tab_bx, .-n00129_scan_tab_bx
                        .type            n00163_binop_test_bx, @function
n00163_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_binop_test_α:      mov              r11, 259
                        mov              rdi, qword ptr [rbp + 1536]
                        mov              rsi, qword ptr [rbp + 1544]
                        mov              rdx, qword ptr [rbp + 1568]
                        mov              rcx, qword ptr [rbp + 1576]
                        mov              r8d, 17
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00129_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1568]
                        mov              rsi, qword ptr [rbp + 1576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_str_coerce@PLT
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Ldisjunction_γ_463_as
n00163_binop_test_β:      mov              r11, 259;                            jmp   n00129_scan_tab_β
                        .size            n00163_binop_test_bx, .-n00163_binop_test_bx
                        .type            n00087_scan_bx, @function
n00087_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_scan_α:            mov              r11, 260
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 320]
                        mov              r14, qword ptr [rbp + 328]
                        mov              r15, qword ptr [rbp + 336];          jmp   n00077_var_α
n00087_scan_β:            mov              r11, 260;                            jmp   n00077_var_α
                        .size            n00087_scan_bx, .-n00087_scan_bx
                        .type            n00099_lit_string_bx, @function
n00099_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_string_α:      mov              r11, 261
                        mov              qword ptr [rbp + 2416], 2            # result
                        mov              dword ptr [rbp + 2420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_664_0]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n00164_scan_match_α
n00099_lit_string_β:      mov              r11, 261;                            jmp   .Ldisjunction_ω_435_af
.Llit_string_α_664_0:   .quad            .Llit_string_α_664_0_s
.Llit_string_α_664_0_s: .string          "-"
                        .size            n00099_lit_string_bx, .-n00099_lit_string_bx
                        .type            n00164_scan_match_bx, @function
n00164_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_scan_match_α:      mov              r11, 262
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_435_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_666_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_435_af
                        mov              qword ptr [rbp + 2384], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2392], rax;         jmp   n00165_scan_tab_α
.Lscan_match_α_666_0:   .quad            .Lscan_match_α_666_0_s
.Lscan_match_α_666_0_s: .string          "-"
                        .size            n00164_scan_match_bx, .-n00164_scan_match_bx
                        .type            n00165_scan_tab_bx, @function
n00165_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_scan_tab_α:        mov              r11, 263
                        mov              rdi, qword ptr [rbp + 2384]
                        mov              rsi, qword ptr [rbp + 2392]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        cmp              rax, 1;                              jge   .Lscan_tab_α_668_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_668_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_435_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_435_af
                        mov              qword ptr [rbp + 2368], r14
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
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n00166_lit_integer_α
n00165_scan_tab_β:        mov              r11, 263
                        mov              r14, qword ptr [rbp + 2368];         jmp   .Ldisjunction_ω_435_af
                        .size            n00165_scan_tab_bx, .-n00165_scan_tab_bx
                        .type            n00166_lit_integer_bx, @function
n00166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_integer_α:     mov              r11, 264
                        mov              qword ptr [rbp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_669_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n00167_scan_pos_α
.Llit_integer_α_669_0:  .quad            0
                        .size            n00166_lit_integer_bx, .-n00166_lit_integer_bx
                        .type            n00167_scan_pos_bx, @function
n00167_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_scan_pos_α:        mov              r11, 265
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_671_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_671_0:     cmp              rax, 1;                              jl    n00165_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00165_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00165_scan_tab_β
                        mov              qword ptr [rbp + 2320], 3
                        mov              qword ptr [rbp + 2328], rax;         jmp   n00168_conjunction_α
                        .size            n00167_scan_pos_bx, .-n00167_scan_pos_bx
                        .type            n00168_conjunction_bx, @function
n00168_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_conjunction_α:     mov              r11, 266
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n00169_scan_α
n00168_conjunction_β:     mov              r11, 266;                            jmp   .Ldisjunction_ω_435_af
                        .size            n00168_conjunction_bx, .-n00168_conjunction_bx
                        .type            n00169_scan_bx, @function
n00169_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_scan_α:            mov              r11, 267
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 320]
                        mov              r14, qword ptr [rbp + 328]
                        mov              r15, qword ptr [rbp + 336];          jmp   n00170_var_α
n00169_scan_β:            mov              r11, 267;                            jmp   n00170_var_α
                        .size            n00169_scan_bx, .-n00169_scan_bx
                        .type            n00170_var_bx, @function
n00170_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_var_α:             mov              r11, 268
                        mov              qword ptr [rbp + 2272], 0
                        mov              qword ptr [rbp + 2280], 0;           jmp   n00171_assign_α
n00170_var_β:             mov              r11, 268;                            jmp   n00172_var_α
                        .size            n00170_var_bx, .-n00170_var_bx
                        .type            n00171_assign_bx, @function
n00171_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_assign_α:          mov              r11, 269
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx;         jmp   n00172_var_α
                        .size            n00171_assign_bx, .-n00171_assign_bx
                        .type            n00172_var_bx, @function
n00172_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_var_α:             mov              r11, 270
                        mov              rax, qword ptr [rbp + 2928]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2936]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00079_var_α
                        .size            n00172_var_bx, .-n00172_var_bx
                        .type            n00079_var_bx, @function
n00079_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_var_α:             mov              r11, 271
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00173_var_α
                        .size            n00079_var_bx, .-n00079_var_bx
                        .type            n00173_var_bx, @function
n00173_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_var_α:             mov              r11, 272
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 200], rax;          jmp   n00174_call_icon_α
                        .size            n00173_var_bx, .-n00173_var_bx
                        .type            n00174_call_icon_bx, @function
n00174_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_call_icon_α:       mov              r11, 273
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lcall_icon_α_rkfn684:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn684]
                        lea              rsi, [rbp + 160]
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
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n00175_var_α
                                                                              jmp   n00176_call_icon_α
n00174_call_icon_β:       mov              r11, 273;                            jmp   n00175_var_α
                        .size            n00174_call_icon_bx, .-n00174_call_icon_bx
                        .type            n00176_call_icon_bx, @function
n00176_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_call_icon_α:       mov              r11, 274
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        .section         .rodata
.Lcall_icon_α_rkfn686:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn686]
                        lea              rsi, [rbp + 80]
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
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n00175_var_α
                                                                              jmp   n00079_var_α
n00176_call_icon_β:       mov              r11, 274;                            jmp   n00175_var_α
                        .size            n00176_call_icon_bx, .-n00176_call_icon_bx
                        .type            n00175_var_bx, @function
n00175_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_α:             mov              r11, 275
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00177_return_α
                        .size            n00175_var_bx, .-n00175_var_bx
                        .type            n00177_return_bx, @function
n00177_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_return_α:          mov              r11, 276
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00177_return_bx, .-n00177_return_bx
#-----------------------------------------------------------------------------------------------------------------------
options_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
options_β:
                                                                              jmp   options_ω
#-----------------------------------------------------------------------------------------------------------------------
options_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_689_248
                        .section         .rodata
.Licn_trace_nm690:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm690]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_689_248:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 3248]
                        mov              rbp, qword ptr [rbp + 3240];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Loptions_α_689_249
                        .section         .rodata
.Licn_trace_nm691:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm691]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Loptions_α_689_249:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 3248]
                        mov              rbp, qword ptr [rbp + 3240];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_692_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_692_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_692_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_692_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Init__:
                        sub              rsp, 528
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 432
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LInit___α_692_247
                        .section         .rodata
.Licn_trace_nm693:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm693]
                        mov              esi, 1
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_692_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Init___α_body:
                        .type            n00178_var_bx, @function
n00178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_var_α:             mov              r11, 277
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00179_assign_α
                        .size            n00178_var_bx, .-n00178_var_bx
                        .type            n00179_assign_bx, @function
n00179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_assign_α:          mov              r11, 278
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [r9 + 64], rax             # Name__
                        mov              qword ptr [r9 + 72], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_716_0]
                        .section         .rodata
.Lassign_α_716_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_716_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00180_call_proc_staged_α
.Lassign_α_716_0:       .quad            .Lassign_α_716_0_s
.Lassign_α_716_0_s:     .string          "Name__"
                        .size            n00179_assign_bx, .-n00179_assign_bx
                        .type            n00180_call_proc_staged_bx, @function
n00180_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_call_proc_staged_α:
                        mov              r11, 279
                        call             Signature___dcα;                     jmp   .Lcall_proc_staged_α_718_2
.Lcall_proc_staged_α_718_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_718_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
.Lcall_proc_staged_α_718_29:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n00181_call_proc_staged_α
                                                                              jmp   n00181_call_proc_staged_α
n00180_call_proc_staged_β:
                        mov              r11, 279;                            jmp   n00181_call_proc_staged_α
.Lcall_proc_staged_β_718_0:
                        .quad            .Lcall_proc_staged_β_718_0_s
.Lcall_proc_staged_β_718_0_s:
                        .string          "Signature__"
                        .size            n00180_call_proc_staged_bx, .-n00180_call_proc_staged_bx
                        .type            n00181_call_proc_staged_bx, @function
n00181_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_call_proc_staged_α:
                        mov              r11, 280
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_720_2
.Lcall_proc_staged_α_720_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_720_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
.Lcall_proc_staged_α_720_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n00182_call_proc_staged_α
                                                                              jmp   n00182_call_proc_staged_α
n00181_call_proc_staged_β:
                        mov              r11, 280;                            jmp   n00182_call_proc_staged_α
.Lcall_proc_staged_β_720_0:
                        .quad            .Lcall_proc_staged_β_720_0_s
.Lcall_proc_staged_β_720_0_s:
                        .string          "Regions__"
                        .size            n00181_call_proc_staged_bx, .-n00181_call_proc_staged_bx
                        .type            n00182_call_proc_staged_bx, @function
n00182_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_call_proc_staged_α:
                        mov              r11, 281
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_722_2
.Lcall_proc_staged_α_722_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_722_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
.Lcall_proc_staged_α_722_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n00183_disjunction_α
                                                                              jmp   n00183_disjunction_α
n00182_call_proc_staged_β:
                        mov              r11, 281;                            jmp   n00183_disjunction_α
.Lcall_proc_staged_β_722_0:
                        .quad            .Lcall_proc_staged_β_722_0_s
.Lcall_proc_staged_β_722_0_s:
                        .string          "Time__"
                        .size            n00182_call_proc_staged_bx, .-n00182_call_proc_staged_bx
                        .type            n00183_disjunction_bx, @function
n00183_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_disjunction_α:     mov              r11, 282
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0;            jmp   n00184_lit_string_α
.Ldisjunction_γ_699_as: mov              r11, 282
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_724_0
                                                                              jmp   n00185_var_α
.Ldisjunction_α_724_0:                                                        jmp   n00185_var_α
n00183_disjunction_β:     mov              r11, 282
                        mov              eax, dword ptr [rbp + 128];          jmp   n00185_var_α
.Ldisjunction_γ_699_af: mov              r11, 282
.Ldisjunction_ω_699_af: mov              r11, 282
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128];          jmp   n00185_var_α
                        .size            n00183_disjunction_bx, .-n00183_disjunction_bx
                        .type            n00185_var_bx, @function
n00185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_var_α:             mov              r11, 283
                        mov              rdi, qword ptr [rip + .Lvar_α_725_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00186_var_α
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00187_assign_α
.Lvar_α_725_0:          .quad            .Lvar_α_725_0_s
.Lvar_α_725_0_s:        .string          "write"
                        .size            n00185_var_bx, .-n00185_var_bx
                        .type            n00187_assign_bx, @function
n00187_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_assign_α:          mov              r11, 284
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                        mov              qword ptr [r9 + 32], rax             # Save__
                        mov              qword ptr [r9 + 40], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_726_0]
                        .section         .rodata
.Lassign_α_726_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_726_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00186_var_α
.Lassign_α_726_0:       .quad            .Lassign_α_726_0_s
.Lassign_α_726_0_s:     .string          "Save__"
                        .size            n00187_assign_bx, .-n00187_assign_bx
                        .type            n00186_var_bx, @function
n00186_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_var_α:             mov              r11, 285
                        mov              rdi, qword ptr [rip + .Lvar_α_727_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_GET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00188_lit_integer_α
                        mov              qword ptr [rbp + 80], rax            # result
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00189_assign_α
.Lvar_α_727_0:          .quad            .Lvar_α_727_0_s
.Lvar_α_727_0_s:        .string          "writes"
                        .size            n00186_var_bx, .-n00186_var_bx
                        .type            n00189_assign_bx, @function
n00189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [r9 + 48], rax             # Saves__
                        mov              qword ptr [r9 + 56], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_728_0]
                        .section         .rodata
.Lassign_α_728_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_728_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00188_lit_integer_α
.Lassign_α_728_0:       .quad            .Lassign_α_728_0_s
.Lassign_α_728_0_s:     .string          "Saves__"
                        .size            n00189_assign_bx, .-n00189_assign_bx
                        .type            n00188_lit_integer_bx, @function
n00188_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_lit_integer_α:     mov              r11, 287
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_729_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00190_assign_α
.Llit_integer_α_729_0:  .quad            1
                        .size            n00188_lit_integer_bx, .-n00188_lit_integer_bx
                        .type            n00190_assign_bx, @function
n00190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_assign_α:          mov              r11, 288
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_730_0]
                        .section         .rodata
.Lassign_α_730_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_730_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_730_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00191_assign_α
.Lassign_α_730_0:       .quad            .Lassign_α_730_0_s
.Lassign_α_730_0_s:     .string          "writes"
                        .size            n00190_assign_bx, .-n00190_assign_bx
                        .type            n00191_assign_bx, @function
n00191_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_assign_α:          mov              r11, 289
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_731_0]
                        .section         .rodata
.Lassign_α_731_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_731_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_731_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00192_return_α
.Lassign_α_731_0:       .quad            .Lassign_α_731_0_s
.Lassign_α_731_0_s:     .string          "write"
                        .size            n00191_assign_bx, .-n00191_assign_bx
                        .type            n00192_return_bx, @function
n00192_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_return_α:          mov              r11, 290
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Init___γ
                        .size            n00192_return_bx, .-n00192_return_bx
                        .type            n00193_conjunction_bx, @function
n00193_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_conjunction_α:     mov              r11, 291;                            jmp   .Ldisjunction_γ_699_as
n00193_conjunction_β:     mov              r11, 291;                            jmp   n00185_var_α
                        .size            n00193_conjunction_bx, .-n00193_conjunction_bx
                        .type            n00184_lit_string_bx, @function
n00184_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_lit_string_α:      mov              r11, 292
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_734_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00194_call_icon_α
n00184_lit_string_β:      mov              r11, 292;                            jmp   .Ldisjunction_ω_699_af
.Llit_string_α_734_0:   .quad            .Llit_string_α_734_0_s
.Llit_string_α_734_0_s: .string          "OUTPUT"
                        .size            n00184_lit_string_bx, .-n00184_lit_string_bx
                        .type            n00194_call_icon_bx, @function
n00194_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_call_icon_α:       mov              r11, 293
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        .section         .rodata
.Lcall_icon_α_rkfn736:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn736]
                        lea              rsi, [rbp + 256]
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
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_699_af
                                                                              jmp   n00195_lit_string_α
n00194_call_icon_β:       mov              r11, 293;                            jmp   .Ldisjunction_ω_699_af
                        .size            n00194_call_icon_bx, .-n00194_call_icon_bx
                        .type            n00195_lit_string_bx, @function
n00195_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_lit_string_α:      mov              r11, 294
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 32
                        mov              rax, qword ptr [rip + .Llit_string_α_737_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00196_call_icon_α
.Llit_string_α_737_0:   .quad            .Llit_string_α_737_0_s
.Llit_string_α_737_0_s: .string          "*** Benchmarking with output ***"
                        .size            n00195_lit_string_bx, .-n00195_lit_string_bx
                        .type            n00196_call_icon_bx, @function
n00196_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_call_icon_α:       mov              r11, 295
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn739:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn739]
                        lea              rsi, [rbp + 176]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00197_return_α
                                                                              jmp   n00197_return_α
n00196_call_icon_β:       mov              r11, 295;                            jmp   n00197_return_α
                        .size            n00196_call_icon_bx, .-n00196_call_icon_bx
                        .type            n00197_return_bx, @function
n00197_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_return_α:          mov              r11, 296
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Init___γ
                        .size            n00197_return_bx, .-n00197_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Init___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Init___β:
                                                                              jmp   Init___ω
#-----------------------------------------------------------------------------------------------------------------------
Init___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LInit___α_740_248
                        .section         .rodata
.Licn_trace_nm741:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm741]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_740_248:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 528]
                        mov              rbp, qword ptr [rbp + 520];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Init___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LInit___α_740_249
                        .section         .rodata
.Licn_trace_nm742:      .string          "Init__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm742]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LInit___α_740_249:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 528]
                        mov              rbp, qword ptr [rbp + 520];          jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .LInit___α_743_3]
                        push             rcx
                        lea              rcx, [rip + .LInit___α_743_2]
                        push             rcx;                                 jmp   FN__Init__
.LInit___α_743_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LInit___α_743_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Term__:
                        sub              rsp, 560
                        mov              qword ptr [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 480
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_743_247
                        .section         .rodata
.Licn_trace_nm744:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm744]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_743_247:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Term___α_body:
                        .type            n00198_disjunction_bx, @function
n00198_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_disjunction_α:     mov              r11, 297
                        mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0;            jmp   n00199_lit_string_α
.Ldisjunction_γ_745_as: mov              r11, 297
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_763_0
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00200_var_α
.Ldisjunction_α_763_0:                                                        jmp   n00200_var_α
n00198_disjunction_β:     mov              r11, 297
                        mov              eax, dword ptr [rbp + 288];          jmp   n00200_var_α
.Ldisjunction_γ_745_af: mov              r11, 297
.Ldisjunction_ω_745_af: mov              r11, 297
                        add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288];          jmp   n00200_var_α
                        .size            n00198_disjunction_bx, .-n00198_disjunction_bx
                        .type            n00199_lit_string_bx, @function
n00199_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_764_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00201_call_icon_α
n00199_lit_string_β:      mov              r11, 298;                            jmp   n00202_var_α
.Llit_string_α_764_0:   .quad            .Llit_string_α_764_0_s
.Llit_string_α_764_0_s: .string          "OUTPUT"
                        .size            n00199_lit_string_bx, .-n00199_lit_string_bx
                        .type            n00201_call_icon_bx, @function
n00201_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_call_icon_α:       mov              r11, 299
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn766:  .string          "getenv"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn766]
                        lea              rsi, [rbp + 416]
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
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n00202_var_α
                                                                              jmp   .Ldisjunction_γ_745_af
n00201_call_icon_β:       mov              r11, 299;                            jmp   n00202_var_α
                        .size            n00201_call_icon_bx, .-n00201_call_icon_bx
                        .type            n00202_var_bx, @function
n00202_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_α:             mov              r11, 300
                        mov              qword ptr [rbp + 384], 0
                        mov              qword ptr [rbp + 392], 0;            jmp   n00203_var_α
n00202_var_β:             mov              r11, 300;                            jmp   .Ldisjunction_ω_745_af
                        .size            n00202_var_bx, .-n00202_var_bx
                        .type            n00203_var_bx, @function
n00203_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_var_α:             mov              r11, 301
                        mov              rax, qword ptr [r9 + 32]             # Save__
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rbp + 368], rax           # result
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00204_assign_α
                        .size            n00203_var_bx, .-n00203_var_bx
                        .type            n00204_assign_bx, @function
n00204_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_assign_α:          mov              r11, 302
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_769_0]
                        .section         .rodata
.Lassign_α_769_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_769_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_769_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00205_var_α
.Lassign_α_769_0:       .quad            .Lassign_α_769_0_s
.Lassign_α_769_0_s:     .string          "write"
                        .size            n00204_assign_bx, .-n00204_assign_bx
                        .type            n00205_var_bx, @function
n00205_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_var_α:             mov              r11, 303
                        mov              rax, qword ptr [r9 + 48]             # Saves__
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rbp + 336], rax           # result
                        mov              qword ptr [rbp + 344], rdx;          jmp   n00206_assign_α
                        .size            n00205_var_bx, .-n00205_var_bx
                        .type            n00206_assign_bx, @function
n00206_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_assign_α:          mov              r11, 304
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_771_0]
                        .section         .rodata
.Lassign_α_771_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_771_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_771_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00207_conjunction_α
.Lassign_α_771_0:       .quad            .Lassign_α_771_0_s
.Lassign_α_771_0_s:     .string          "writes"
                        .size            n00206_assign_bx, .-n00206_assign_bx
                        .type            n00207_conjunction_bx, @function
n00207_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_conjunction_α:     mov              r11, 305
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax;          jmp   .Ldisjunction_γ_745_as
n00207_conjunction_β:     mov              r11, 305;                            jmp   n00200_var_α
                        .size            n00207_conjunction_bx, .-n00207_conjunction_bx
                        .type            n00200_var_bx, @function
n00200_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_var_α:             mov              r11, 306
                        mov              rax, qword ptr [r9 + 64]             # Name__
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rbp + 192], rax           # result
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00208_lit_string_α
                        .size            n00200_var_bx, .-n00200_var_bx
                        .type            n00208_lit_string_bx, @function
n00208_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_lit_string_α:      mov              r11, 307
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 16
                        mov              rax, qword ptr [rip + .Llit_string_α_774_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00209_call_proc_staged_α
.Llit_string_α_774_0:   .quad            .Llit_string_α_774_0_s
.Llit_string_α_774_0_s: .string          " elapsed time = "
                        .size            n00208_lit_string_bx, .-n00208_lit_string_bx
                        .type            n00209_call_proc_staged_bx, @function
n00209_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_call_proc_staged_α:
                        mov              r11, 308
                        call             Time___dcα;                          jmp   .Lcall_proc_staged_α_776_2
.Lcall_proc_staged_α_776_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_776_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
.Lcall_proc_staged_α_776_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n00210_call_proc_staged_α
                                                                              jmp   n00211_call_icon_α
n00209_call_proc_staged_β:
                        mov              r11, 308;                            jmp   n00210_call_proc_staged_α
.Lcall_proc_staged_β_776_0:
                        .quad            .Lcall_proc_staged_β_776_0_s
.Lcall_proc_staged_β_776_0_s:
                        .string          "Time__"
                        .size            n00209_call_proc_staged_bx, .-n00209_call_proc_staged_bx
                        .type            n00211_call_icon_bx, @function
n00211_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_icon_α:       mov              r11, 309
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn778:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn778]
                        lea              rsi, [rbp + 128]
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
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n00210_call_proc_staged_α
                                                                              jmp   n00210_call_proc_staged_α
n00211_call_icon_β:       mov              r11, 309;                            jmp   n00210_call_proc_staged_α
                        .size            n00211_call_icon_bx, .-n00211_call_icon_bx
                        .type            n00210_call_proc_staged_bx, @function
n00210_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_call_proc_staged_α:
                        mov              r11, 310
                        call             Regions___dcα;                       jmp   .Lcall_proc_staged_α_780_2
.Lcall_proc_staged_α_780_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_780_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_780_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n00212_call_proc_staged_α
                                                                              jmp   n00212_call_proc_staged_α
n00210_call_proc_staged_β:
                        mov              r11, 310;                            jmp   n00212_call_proc_staged_α
.Lcall_proc_staged_β_780_0:
                        .quad            .Lcall_proc_staged_β_780_0_s
.Lcall_proc_staged_β_780_0_s:
                        .string          "Regions__"
                        .size            n00210_call_proc_staged_bx, .-n00210_call_proc_staged_bx
                        .type            n00212_call_proc_staged_bx, @function
n00212_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_call_proc_staged_α:
                        mov              r11, 311
                        call             Storage___dcα;                       jmp   .Lcall_proc_staged_α_782_2
.Lcall_proc_staged_α_782_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_782_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
.Lcall_proc_staged_α_782_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n00213_call_proc_staged_α
                                                                              jmp   n00213_call_proc_staged_α
n00212_call_proc_staged_β:
                        mov              r11, 311;                            jmp   n00213_call_proc_staged_α
.Lcall_proc_staged_β_782_0:
                        .quad            .Lcall_proc_staged_β_782_0_s
.Lcall_proc_staged_β_782_0_s:
                        .string          "Storage__"
                        .size            n00212_call_proc_staged_bx, .-n00212_call_proc_staged_bx
                        .type            n00213_call_proc_staged_bx, @function
n00213_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_call_proc_staged_α:
                        mov              r11, 312
                        call             Collections___dcα;                   jmp   .Lcall_proc_staged_α_784_2
.Lcall_proc_staged_α_784_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_784_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
.Lcall_proc_staged_α_784_29:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    n00214_return_α
                                                                              jmp   n00214_return_α
n00213_call_proc_staged_β:
                        mov              r11, 312;                            jmp   n00214_return_α
.Lcall_proc_staged_β_784_0:
                        .quad            .Lcall_proc_staged_β_784_0_s
.Lcall_proc_staged_β_784_0_s:
                        .string          "Collections__"
                        .size            n00213_call_proc_staged_bx, .-n00213_call_proc_staged_bx
                        .type            n00214_return_bx, @function
n00214_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_return_α:          mov              r11, 313
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Term___γ
                        .size            n00214_return_bx, .-n00214_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Term___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Term___β:
                                                                              jmp   Term___ω
#-----------------------------------------------------------------------------------------------------------------------
Term___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_785_248
                        .section         .rodata
.Licn_trace_nm786:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm786]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_785_248:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 560]
                        mov              rbp, qword ptr [rbp + 552];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Term___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTerm___α_785_249
                        .section         .rodata
.Licn_trace_nm787:      .string          "Term__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm787]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTerm___α_785_249:     mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 560]
                        mov              rbp, qword ptr [rbp + 552];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Term___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTerm___α_788_3]
                        push             rcx
                        lea              rcx, [rip + .LTerm___α_788_2]
                        push             rcx;                                 jmp   FN__Term__
.LTerm___α_788_2:       add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTerm___α_788_3:       add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Collections__:
                        sub              rsp, 1088
                        mov              qword ptr [rsp + 1080], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 960
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_788_247
                        .section         .rodata
.Licn_trace_nm789:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm789]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_788_247:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Collections___α_body:
                        .type            n00215_disjunction_bx, @function
n00215_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_disjunction_α:     mov              r11, 314
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0;            jmp   n00216_var_ref_α
.Ldisjunction_γ_790_as: mov              r11, 314
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_828_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00217_make_list_α
.Ldisjunction_α_828_0:                                                        jmp   n00217_make_list_α
n00215_disjunction_β:     mov              r11, 314
                        mov              eax, dword ptr [rbp + 656];          jmp   n00217_make_list_α
.Ldisjunction_γ_790_af: mov              r11, 314
.Ldisjunction_ω_790_af: mov              r11, 314
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656];          jmp   n00217_make_list_α
                        .size            n00215_disjunction_bx, .-n00215_disjunction_bx
                        .type            n00217_make_list_bx, @function
n00217_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_make_list_α:       mov              r11, 315
                        lea              rdi, [rbp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00218_assign_α
                        .size            n00217_make_list_bx, .-n00217_make_list_bx
                        .type            n00218_assign_bx, @function
n00218_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_assign_α:          mov              r11, 316
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n00219_var_α
                        .size            n00218_assign_bx, .-n00218_assign_bx
                        .type            n00219_var_bx, @function
n00219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_var_α:             mov              r11, 317
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00220_kw_icon_gen_α
                        .size            n00219_var_bx, .-n00219_var_bx
                        .type            n00220_kw_icon_gen_bx, @function
n00220_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_kw_icon_gen_α:     mov              r11, 318
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_834_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_834_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00221_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00222_call_icon_α
n00220_kw_icon_gen_β:     mov              r11, 318;                            jmp   .Lkw_icon_gen_α_834_1
.Lkw_icon_gen_α_834_0:  .quad            .Lkw_icon_gen_α_834_0_s
.Lkw_icon_gen_α_834_0_s:
                        .string          "&collections"
                        .size            n00220_kw_icon_gen_bx, .-n00220_kw_icon_gen_bx
                        .type            n00222_call_icon_bx, @function
n00222_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_icon_α:       mov              r11, 319
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn836:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn836]
                        lea              rsi, [rbp + 528]
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n00220_kw_icon_gen_β
                                                                              jmp   n00220_kw_icon_gen_β
n00222_call_icon_β:       mov              r11, 319;                            jmp   n00220_kw_icon_gen_β
                        .size            n00222_call_icon_bx, .-n00222_call_icon_bx
                        .type            n00221_lit_string_bx, @function
n00221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_string_α:      mov              r11, 320
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 11
                        mov              rax, qword ptr [rip + .Llit_string_α_837_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00223_call_icon_α
.Llit_string_α_837_0:   .quad            .Llit_string_α_837_0_s
.Llit_string_α_837_0_s: .string          "collections"
                        .size            n00221_lit_string_bx, .-n00221_lit_string_bx
                        .type            n00223_call_icon_bx, @function
n00223_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_call_icon_α:       mov              r11, 321
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn839:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn839]
                        lea              rsi, [rbp + 448]
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00224_lit_integer_α
                                                                              jmp   n00224_lit_integer_α
n00223_call_icon_β:       mov              r11, 321;                            jmp   n00224_lit_integer_α
                        .size            n00223_call_icon_bx, .-n00223_call_icon_bx
                        .type            n00224_lit_integer_bx, @function
n00224_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_lit_integer_α:     mov              r11, 322
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_840_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00225_var_α
.Llit_integer_α_840_0:  .quad            1
                        .size            n00224_lit_integer_bx, .-n00224_lit_integer_bx
                        .type            n00225_var_bx, @function
n00225_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_var_α:             mov              r11, 323
                        mov              rax, qword ptr [r9 + 208]            # Collections____STATIC__labels
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00226_unop_α
                        .size            n00225_var_bx, .-n00225_var_bx
                        .type            n00226_unop_bx, @function
n00226_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_unop_α:            mov              r11, 324
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00227_to_α
                        .size            n00226_unop_bx, .-n00226_unop_bx
                        .type            n00227_to_bx, @function
n00227_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_to_α:              mov              r11, 325
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_844_0:           mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00228_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00229_assign_α
n00227_to_β:              mov              r11, 325
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_844_0
                        .size            n00227_to_bx, .-n00227_to_bx
                        .type            n00229_assign_bx, @function
n00229_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_assign_α:          mov              r11, 326
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n00230_bound_α
                        .size            n00229_assign_bx, .-n00229_assign_bx
                        .type            n00230_bound_bx, @function
n00230_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_bound_α:           mov              r11, 327
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00231_var_ref_α
                        .size            n00230_bound_bx, .-n00230_bound_bx
                        .type            n00231_var_ref_bx, @function
n00231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_var_ref_α:         mov              r11, 328
                        mov              rax, 4294967336
                        mov              rdx, 1879052496                      # Collections____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00232_var_α
                        .size            n00231_var_ref_bx, .-n00231_var_ref_bx
                        .type            n00232_var_bx, @function
n00232_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_var_α:             mov              r11, 329
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00233_subscript_α
                        .size            n00232_var_bx, .-n00232_var_bx
                        .type            n00233_subscript_bx, @function
n00233_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_subscript_α:       mov              r11, 330
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00234_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00235_deref_α
                        .size            n00233_subscript_bx, .-n00233_subscript_bx
                        .type            n00235_deref_bx, @function
n00235_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_deref_α:           mov              r11, 331
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00234_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00236_var_ref_α
                        .size            n00235_deref_bx, .-n00235_deref_bx
                        .type            n00236_var_ref_bx, @function
n00236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_var_ref_α:         mov              r11, 332
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00237_var_α
                        .size            n00236_var_ref_bx, .-n00236_var_ref_bx
                        .type            n00237_var_bx, @function
n00237_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_var_α:             mov              r11, 333
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00238_subscript_α
                        .size            n00237_var_bx, .-n00237_var_bx
                        .type            n00238_subscript_bx, @function
n00238_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_subscript_α:       mov              r11, 334
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00234_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00239_deref_α
                        .size            n00238_subscript_bx, .-n00238_subscript_bx
                        .type            n00239_deref_bx, @function
n00239_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_deref_α:           mov              r11, 335
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00234_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00240_lit_integer_α
                        .size            n00239_deref_bx, .-n00239_deref_bx
                        .type            n00240_lit_integer_bx, @function
n00240_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_lit_integer_α:     mov              r11, 336
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_860_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00241_call_icon_α
.Llit_integer_α_860_0:  .quad            8
                        .size            n00240_lit_integer_bx, .-n00240_lit_integer_bx
                        .type            n00241_call_icon_bx, @function
n00241_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_call_icon_α:       mov              r11, 337
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn862:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn862]
                        lea              rsi, [rbp + 304]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n00234_unmark_α
                                                                              jmp   n00242_call_icon_α
n00241_call_icon_β:       mov              r11, 337;                            jmp   n00234_unmark_α
                        .size            n00241_call_icon_bx, .-n00241_call_icon_bx
                        .type            n00242_call_icon_bx, @function
n00242_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_call_icon_α:       mov              r11, 338
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn864:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn864]
                        lea              rsi, [rbp + 176]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00234_unmark_α
                                                                              jmp   n00234_unmark_α
n00242_call_icon_β:       mov              r11, 338;                            jmp   n00234_unmark_α
                        .size            n00242_call_icon_bx, .-n00242_call_icon_bx
                        .type            n00234_unmark_bx, @function
n00234_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_unmark_α:          mov              r11, 339
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00227_to_β
                        .size            n00234_unmark_bx, .-n00234_unmark_bx
                        .type            n00228_return_bx, @function
n00228_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_return_α:          mov              r11, 340
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Collections___γ
                        .size            n00228_return_bx, .-n00228_return_bx
                        .type            n00216_var_ref_bx, @function
n00216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        mov              rdx, 1879052512                      # Collections____INITFLAG__0
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00243_nulltest_var_α
n00216_var_ref_β:         mov              r11, 341;                            jmp   .Ldisjunction_ω_790_af
                        .size            n00216_var_ref_bx, .-n00216_var_ref_bx
                        .type            n00243_nulltest_var_bx, @function
n00243_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_nulltest_var_α:    mov              r11, 342
                        mov              eax, dword ptr [rbp + 896]
                        cmp              al, 104;                             je    .Ldisjunction_ω_790_af
                        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_790_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_790_af
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 920], rax;          jmp   n00244_lit_integer_α
                        .size            n00243_nulltest_var_bx, .-n00243_nulltest_var_bx
                        .type            n00244_lit_integer_bx, @function
n00244_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_lit_integer_α:     mov              r11, 343
                        mov              qword ptr [rbp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_871_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00245_assign_var_α
.Llit_integer_α_871_0:  .quad            1
                        .size            n00244_lit_integer_bx, .-n00244_lit_integer_bx
                        .type            n00245_assign_var_bx, @function
n00245_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_assign_var_α:      mov              r11, 344
                        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_790_af
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00246_lit_string_α
                        .size            n00245_assign_var_bx, .-n00245_assign_var_bx
                        .type            n00246_lit_string_bx, @function
n00246_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_lit_string_α:      mov              r11, 345
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_873_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00247_lit_string_α
.Llit_string_α_873_0:   .quad            .Llit_string_α_873_0_s
.Llit_string_α_873_0_s: .string          "total"
                        .size            n00246_lit_string_bx, .-n00246_lit_string_bx
                        .type            n00247_lit_string_bx, @function
n00247_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_874_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00248_lit_string_α
.Llit_string_α_874_0:   .quad            .Llit_string_α_874_0_s
.Llit_string_α_874_0_s: .string          "static"
                        .size            n00247_lit_string_bx, .-n00247_lit_string_bx
                        .type            n00248_lit_string_bx, @function
n00248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_lit_string_α:      mov              r11, 347
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_875_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00249_lit_string_α
.Llit_string_α_875_0:   .quad            .Llit_string_α_875_0_s
.Llit_string_α_875_0_s: .string          "string"
                        .size            n00248_lit_string_bx, .-n00248_lit_string_bx
                        .type            n00249_lit_string_bx, @function
n00249_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_876_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00250_make_list_α
.Llit_string_α_876_0:   .quad            .Llit_string_α_876_0_s
.Llit_string_α_876_0_s: .string          "block"
                        .size            n00249_lit_string_bx, .-n00249_lit_string_bx
                        .type            n00250_make_list_bx, @function
n00250_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_make_list_α:       mov              r11, 349
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00251_assign_α
                        .size            n00250_make_list_bx, .-n00250_make_list_bx
                        .type            n00251_assign_bx, @function
n00251_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_assign_α:          mov              r11, 350
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [r9 + 208], rax            # Collections____STATIC__labels
                        mov              qword ptr [r9 + 216], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_879_0]
                        .section         .rodata
.Lassign_α_879_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_879_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_790_as
n00251_assign_β:          mov              r11, 350;                            jmp   n00217_make_list_α
.Lassign_α_879_0:       .quad            .Lassign_α_879_0_s
.Lassign_α_879_0_s:     .string          "Collections____STATIC__labels"
                        .size            n00251_assign_bx, .-n00251_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
Collections___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Collections___β:
                                                                              jmp   Collections___ω
#-----------------------------------------------------------------------------------------------------------------------
Collections___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_879_248
                        .section         .rodata
.Licn_trace_nm880:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm880]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_879_248:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Collections___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LCollections___α_879_249
                        .section         .rodata
.Licn_trace_nm881:      .string          "Collections__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm881]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LCollections___α_879_249:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1088]
                        mov              rbp, qword ptr [rbp + 1080];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Collections___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LCollections___α_882_3]
                        push             rcx
                        lea              rcx, [rip + .LCollections___α_882_2]
                        push             rcx;                                 jmp   FN__Collections__
.LCollections___α_882_2:
                        add              rsp, 24
                        pop              r12;                                 jmp   r12
.LCollections___α_882_3:
                        add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Regions__:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_882_247
                        .section         .rodata
.Licn_trace_nm883:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm883]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_882_247:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Regions___α_body:
                        .type            n00252_disjunction_bx, @function
n00252_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_disjunction_α:     mov              r11, 351
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0;            jmp   n00253_var_ref_α
.Ldisjunction_γ_884_as: mov              r11, 351
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_921_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00254_make_list_α
.Ldisjunction_α_921_0:                                                        jmp   n00254_make_list_α
n00252_disjunction_β:     mov              r11, 351
                        mov              eax, dword ptr [rbp + 656];          jmp   n00254_make_list_α
.Ldisjunction_γ_884_af: mov              r11, 351
.Ldisjunction_ω_884_af: mov              r11, 351
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656];          jmp   n00254_make_list_α
                        .size            n00252_disjunction_bx, .-n00252_disjunction_bx
                        .type            n00254_make_list_bx, @function
n00254_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_make_list_α:       mov              r11, 352
                        lea              rdi, [rbp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00255_assign_α
                        .size            n00254_make_list_bx, .-n00254_make_list_bx
                        .type            n00255_assign_bx, @function
n00255_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_assign_α:          mov              r11, 353
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00256_var_α
                        .size            n00255_assign_bx, .-n00255_assign_bx
                        .type            n00256_var_bx, @function
n00256_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_var_α:             mov              r11, 354
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00257_kw_icon_gen_α
                        .size            n00256_var_bx, .-n00256_var_bx
                        .type            n00257_kw_icon_gen_bx, @function
n00257_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_kw_icon_gen_α:     mov              r11, 355
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_927_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_927_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00258_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00259_call_icon_α
n00257_kw_icon_gen_β:     mov              r11, 355;                            jmp   .Lkw_icon_gen_α_927_1
.Lkw_icon_gen_α_927_0:  .quad            .Lkw_icon_gen_α_927_0_s
.Lkw_icon_gen_α_927_0_s:
                        .string          "&regions"
                        .size            n00257_kw_icon_gen_bx, .-n00257_kw_icon_gen_bx
                        .type            n00259_call_icon_bx, @function
n00259_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_call_icon_α:       mov              r11, 356
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn929:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn929]
                        lea              rsi, [rbp + 528]
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n00257_kw_icon_gen_β
                                                                              jmp   n00257_kw_icon_gen_β
n00259_call_icon_β:       mov              r11, 356;                            jmp   n00257_kw_icon_gen_β
                        .size            n00259_call_icon_bx, .-n00259_call_icon_bx
                        .type            n00258_lit_string_bx, @function
n00258_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_lit_string_α:      mov              r11, 357
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_930_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00260_call_icon_α
.Llit_string_α_930_0:   .quad            .Llit_string_α_930_0_s
.Llit_string_α_930_0_s: .string          "regions"
                        .size            n00258_lit_string_bx, .-n00258_lit_string_bx
                        .type            n00260_call_icon_bx, @function
n00260_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_call_icon_α:       mov              r11, 358
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn932:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn932]
                        lea              rsi, [rbp + 448]
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00261_lit_integer_α
                                                                              jmp   n00261_lit_integer_α
n00260_call_icon_β:       mov              r11, 358;                            jmp   n00261_lit_integer_α
                        .size            n00260_call_icon_bx, .-n00260_call_icon_bx
                        .type            n00261_lit_integer_bx, @function
n00261_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_lit_integer_α:     mov              r11, 359
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_933_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00262_var_α
.Llit_integer_α_933_0:  .quad            1
                        .size            n00261_lit_integer_bx, .-n00261_lit_integer_bx
                        .type            n00262_var_bx, @function
n00262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_var_α:             mov              r11, 360
                        mov              rax, qword ptr [r9 + 240]            # Regions____STATIC__labels
                        mov              rdx, qword ptr [r9 + 248]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00263_unop_α
                        .size            n00262_var_bx, .-n00262_var_bx
                        .type            n00263_unop_bx, @function
n00263_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_unop_α:            mov              r11, 361
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00264_to_α
                        .size            n00263_unop_bx, .-n00263_unop_bx
                        .type            n00264_to_bx, @function
n00264_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_to_α:              mov              r11, 362
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_937_0:           mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00265_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00266_assign_α
n00264_to_β:              mov              r11, 362
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_937_0
                        .size            n00264_to_bx, .-n00264_to_bx
                        .type            n00266_assign_bx, @function
n00266_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_assign_α:          mov              r11, 363
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n00267_bound_α
                        .size            n00266_assign_bx, .-n00266_assign_bx
                        .type            n00267_bound_bx, @function
n00267_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_bound_α:           mov              r11, 364
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00268_var_ref_α
                        .size            n00267_bound_bx, .-n00267_bound_bx
                        .type            n00268_var_ref_bx, @function
n00268_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_ref_α:         mov              r11, 365
                        mov              rax, 4294967336
                        mov              rdx, 1879052528                      # Regions____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00269_var_α
                        .size            n00268_var_ref_bx, .-n00268_var_ref_bx
                        .type            n00269_var_bx, @function
n00269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_var_α:             mov              r11, 366
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00270_subscript_α
                        .size            n00269_var_bx, .-n00269_var_bx
                        .type            n00270_subscript_bx, @function
n00270_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_subscript_α:       mov              r11, 367
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00271_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00272_deref_α
                        .size            n00270_subscript_bx, .-n00270_subscript_bx
                        .type            n00272_deref_bx, @function
n00272_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_deref_α:           mov              r11, 368
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00271_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00273_var_ref_α
                        .size            n00272_deref_bx, .-n00272_deref_bx
                        .type            n00273_var_ref_bx, @function
n00273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_var_ref_α:         mov              r11, 369
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00274_var_α
                        .size            n00273_var_ref_bx, .-n00273_var_ref_bx
                        .type            n00274_var_bx, @function
n00274_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_var_α:             mov              r11, 370
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00275_subscript_α
                        .size            n00274_var_bx, .-n00274_var_bx
                        .type            n00275_subscript_bx, @function
n00275_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_subscript_α:       mov              r11, 371
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00271_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00276_deref_α
                        .size            n00275_subscript_bx, .-n00275_subscript_bx
                        .type            n00276_deref_bx, @function
n00276_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_deref_α:           mov              r11, 372
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00271_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00277_lit_integer_α
                        .size            n00276_deref_bx, .-n00276_deref_bx
                        .type            n00277_lit_integer_bx, @function
n00277_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_lit_integer_α:     mov              r11, 373
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_953_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00278_call_icon_α
.Llit_integer_α_953_0:  .quad            8
                        .size            n00277_lit_integer_bx, .-n00277_lit_integer_bx
                        .type            n00278_call_icon_bx, @function
n00278_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_call_icon_α:       mov              r11, 374
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn955:  .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn955]
                        lea              rsi, [rbp + 304]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n00271_unmark_α
                                                                              jmp   n00279_call_icon_α
n00278_call_icon_β:       mov              r11, 374;                            jmp   n00271_unmark_α
                        .size            n00278_call_icon_bx, .-n00278_call_icon_bx
                        .type            n00279_call_icon_bx, @function
n00279_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_call_icon_α:       mov              r11, 375
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn957:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn957]
                        lea              rsi, [rbp + 176]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00271_unmark_α
                                                                              jmp   n00271_unmark_α
n00279_call_icon_β:       mov              r11, 375;                            jmp   n00271_unmark_α
                        .size            n00279_call_icon_bx, .-n00279_call_icon_bx
                        .type            n00271_unmark_bx, @function
n00271_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_unmark_α:          mov              r11, 376
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00264_to_β
                        .size            n00271_unmark_bx, .-n00271_unmark_bx
                        .type            n00265_return_bx, @function
n00265_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_return_α:          mov              r11, 377
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Regions___γ
                        .size            n00265_return_bx, .-n00265_return_bx
                        .type            n00253_var_ref_bx, @function
n00253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        mov              rdx, 1879052544                      # Regions____INITFLAG__0
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00280_nulltest_var_α
n00253_var_ref_β:         mov              r11, 378;                            jmp   .Ldisjunction_ω_884_af
                        .size            n00253_var_ref_bx, .-n00253_var_ref_bx
                        .type            n00280_nulltest_var_bx, @function
n00280_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_nulltest_var_α:    mov              r11, 379
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_884_af
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_884_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_884_af
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00281_lit_integer_α
                        .size            n00280_nulltest_var_bx, .-n00280_nulltest_var_bx
                        .type            n00281_lit_integer_bx, @function
n00281_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_lit_integer_α:     mov              r11, 380
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_964_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00282_assign_var_α
.Llit_integer_α_964_0:  .quad            1
                        .size            n00281_lit_integer_bx, .-n00281_lit_integer_bx
                        .type            n00282_assign_var_bx, @function
n00282_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_assign_var_α:      mov              r11, 381
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_884_af
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00283_lit_string_α
                        .size            n00282_assign_var_bx, .-n00282_assign_var_bx
                        .type            n00283_lit_string_bx, @function
n00283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_lit_string_α:      mov              r11, 382
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_966_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00284_lit_string_α
.Llit_string_α_966_0:   .quad            .Llit_string_α_966_0_s
.Llit_string_α_966_0_s: .string          "static"
                        .size            n00283_lit_string_bx, .-n00283_lit_string_bx
                        .type            n00284_lit_string_bx, @function
n00284_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_lit_string_α:      mov              r11, 383
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_967_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00285_lit_string_α
.Llit_string_α_967_0:   .quad            .Llit_string_α_967_0_s
.Llit_string_α_967_0_s: .string          "string"
                        .size            n00284_lit_string_bx, .-n00284_lit_string_bx
                        .type            n00285_lit_string_bx, @function
n00285_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_968_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00286_make_list_α
.Llit_string_α_968_0:   .quad            .Llit_string_α_968_0_s
.Llit_string_α_968_0_s: .string          "block"
                        .size            n00285_lit_string_bx, .-n00285_lit_string_bx
                        .type            n00286_make_list_bx, @function
n00286_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_make_list_α:       mov              r11, 385
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00287_assign_α
                        .size            n00286_make_list_bx, .-n00286_make_list_bx
                        .type            n00287_assign_bx, @function
n00287_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_assign_α:          mov              r11, 386
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [r9 + 240], rax            # Regions____STATIC__labels
                        mov              qword ptr [r9 + 248], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_971_0]
                        .section         .rodata
.Lassign_α_971_1_s:     .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_971_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_884_as
n00287_assign_β:          mov              r11, 386;                            jmp   n00254_make_list_α
.Lassign_α_971_0:       .quad            .Lassign_α_971_0_s
.Lassign_α_971_0_s:     .string          "Regions____STATIC__labels"
                        .size            n00287_assign_bx, .-n00287_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
Regions___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Regions___β:
                                                                              jmp   Regions___ω
#-----------------------------------------------------------------------------------------------------------------------
Regions___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_971_248
                        .section         .rodata
.Licn_trace_nm972:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm972]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_971_248:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Regions___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LRegions___α_971_249
                        .section         .rodata
.Licn_trace_nm973:      .string          "Regions__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm973]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LRegions___α_971_249:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Regions___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LRegions___α_974_3]
                        push             rcx
                        lea              rcx, [rip + .LRegions___α_974_2]
                        push             rcx;                                 jmp   FN__Regions__
.LRegions___α_974_2:    add              rsp, 24
                        pop              r12;                                 jmp   r12
.LRegions___α_974_3:    add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Signature__:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LSignature___α_974_247
                        .section         .rodata
.Licn_trace_nm975:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm975]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_974_247:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Signature___α_body:
                        .type            n00288_kw_icon_bx, @function
n00288_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_kw_icon_α:         mov              r11, 387
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_983_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00289_kw_icon_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00290_call_icon_α
n00288_kw_icon_β:         mov              r11, 387;                            jmp   n00289_kw_icon_α
.Lkw_icon_α_983_0:      .quad            .Lkw_icon_α_983_0_s
.Lkw_icon_α_983_0_s:    .string          "&version"
                        .size            n00288_kw_icon_bx, .-n00288_kw_icon_bx
                        .type            n00290_call_icon_bx, @function
n00290_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_call_icon_α:       mov              r11, 388
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        .section         .rodata
.Lcall_icon_α_rkfn985:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn985]
                        lea              rsi, [rbp + 192]
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
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00289_kw_icon_α
                                                                              jmp   n00289_kw_icon_α
n00290_call_icon_β:       mov              r11, 388;                            jmp   n00289_kw_icon_α
                        .size            n00290_call_icon_bx, .-n00290_call_icon_bx
                        .type            n00289_kw_icon_bx, @function
n00289_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_kw_icon_α:         mov              r11, 389
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_986_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00291_kw_icon_gen_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00292_call_icon_α
n00289_kw_icon_β:         mov              r11, 389;                            jmp   n00291_kw_icon_gen_α
.Lkw_icon_α_986_0:      .quad            .Lkw_icon_α_986_0_s
.Lkw_icon_α_986_0_s:    .string          "&host"
                        .size            n00289_kw_icon_bx, .-n00289_kw_icon_bx
                        .type            n00292_call_icon_bx, @function
n00292_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_call_icon_α:       mov              r11, 390
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn988:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn988]
                        lea              rsi, [rbp + 112]
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
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    n00291_kw_icon_gen_α
                                                                              jmp   n00291_kw_icon_gen_α
n00292_call_icon_β:       mov              r11, 390;                            jmp   n00291_kw_icon_gen_α
                        .size            n00292_call_icon_bx, .-n00292_call_icon_bx
                        .type            n00291_kw_icon_gen_bx, @function
n00291_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_kw_icon_gen_α:     mov              r11, 391
                        mov              qword ptr [rbp + 80], 0
.Lkw_icon_gen_α_989_1:  mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_989_0]
                        mov              rsi, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00293_return_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              rax, qword ptr [rbp + 80]
                        add              rax, 1
                        mov              qword ptr [rbp + 80], rax;           jmp   n00294_call_icon_α
n00291_kw_icon_gen_β:     mov              r11, 391;                            jmp   .Lkw_icon_gen_α_989_1
.Lkw_icon_gen_α_989_0:  .quad            .Lkw_icon_gen_α_989_0_s
.Lkw_icon_gen_α_989_0_s:
                        .string          "&features"
                        .size            n00291_kw_icon_gen_bx, .-n00291_kw_icon_gen_bx
                        .type            n00294_call_icon_bx, @function
n00294_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_call_icon_α:       mov              r11, 392
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn991:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn991]
                        lea              rsi, [rbp + 32]
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
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    n00291_kw_icon_gen_β
                                                                              jmp   n00291_kw_icon_gen_β
n00294_call_icon_β:       mov              r11, 392;                            jmp   n00291_kw_icon_gen_β
                        .size            n00294_call_icon_bx, .-n00294_call_icon_bx
                        .type            n00293_return_bx, @function
n00293_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_return_α:          mov              r11, 393
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Signature___γ
                        .size            n00293_return_bx, .-n00293_return_bx
#-----------------------------------------------------------------------------------------------------------------------
Signature___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Signature___β:
                                                                              jmp   Signature___ω
#-----------------------------------------------------------------------------------------------------------------------
Signature___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LSignature___α_992_248
                        .section         .rodata
.Licn_trace_nm993:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm993]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_992_248:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Signature___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LSignature___α_992_249
                        .section         .rodata
.Licn_trace_nm994:      .string          "Signature__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm994]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LSignature___α_992_249:
                        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 352]
                        mov              rbp, qword ptr [rbp + 344];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Signature___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LSignature___α_995_3]
                        push             rcx
                        lea              rcx, [rip + .LSignature___α_995_2]
                        push             rcx;                                 jmp   FN__Signature__
.LSignature___α_995_2:  add              rsp, 24
                        pop              r12;                                 jmp   r12
.LSignature___α_995_3:  add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Storage__:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 912
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_995_247
                        .section         .rodata
.Licn_trace_nm996:      .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm996]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_995_247:  mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Storage___α_body:
                        .type            n00295_disjunction_bx, @function
n00295_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_disjunction_α:     mov              r11, 394
                        mov              qword ptr [rbp + 640], 0
                        mov              qword ptr [rbp + 648], 0
                        mov              dword ptr [rbp + 656], 0;            jmp   n00296_var_ref_α
.Ldisjunction_γ_997_as: mov              r11, 394
                        mov              eax, dword ptr [rbp + 656]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1034_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00297_make_list_α
.Ldisjunction_α_1034_0:                                                       jmp   n00297_make_list_α
n00295_disjunction_β:     mov              r11, 394
                        mov              eax, dword ptr [rbp + 656];          jmp   n00297_make_list_α
.Ldisjunction_γ_997_af: mov              r11, 394
.Ldisjunction_ω_997_af: mov              r11, 394
                        add              dword ptr [rbp + 656], 1
                        mov              eax, dword ptr [rbp + 656];          jmp   n00297_make_list_α
                        .size            n00295_disjunction_bx, .-n00295_disjunction_bx
                        .type            n00297_make_list_bx, @function
n00297_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_make_list_α:       mov              r11, 395
                        lea              rdi, [rbp + 640]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00298_assign_α
                        .size            n00297_make_list_bx, .-n00297_make_list_bx
                        .type            n00298_assign_bx, @function
n00298_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_assign_α:          mov              r11, 396
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00299_var_α
                        .size            n00298_assign_bx, .-n00298_assign_bx
                        .type            n00299_var_bx, @function
n00299_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_var_α:            mov              r11, 397
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00300_kw_icon_gen_α
                        .size            n00299_var_bx, .-n00299_var_bx
                        .type            n00300_kw_icon_gen_bx, @function
n00300_kw_icon_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_kw_icon_gen_α:    mov              r11, 398
                        mov              qword ptr [rbp + 608], 0
.Lkw_icon_gen_α_1040_1: mov              rdi, qword ptr [rip + .Lkw_icon_gen_α_1040_0]
                        mov              rsi, qword ptr [rbp + 608]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_gen@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00301_lit_string_α
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        mov              rax, qword ptr [rbp + 608]
                        add              rax, 1
                        mov              qword ptr [rbp + 608], rax;          jmp   n00302_call_icon_α
n00300_kw_icon_gen_β:    mov              r11, 398;                            jmp   .Lkw_icon_gen_α_1040_1
.Lkw_icon_gen_α_1040_0: .quad            .Lkw_icon_gen_α_1040_0_s
.Lkw_icon_gen_α_1040_0_s:
                        .string          "&storage"
                        .size            n00300_kw_icon_gen_bx, .-n00300_kw_icon_gen_bx
                        .type            n00302_call_icon_bx, @function
n00302_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_call_icon_α:      mov              r11, 399
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1042: .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1042]
                        lea              rsi, [rbp + 528]
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
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n00300_kw_icon_gen_β
                                                                              jmp   n00300_kw_icon_gen_β
n00302_call_icon_β:      mov              r11, 399;                            jmp   n00300_kw_icon_gen_β
                        .size            n00302_call_icon_bx, .-n00302_call_icon_bx
                        .type            n00301_lit_string_bx, @function
n00301_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_lit_string_α:     mov              r11, 400
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_1043_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00303_call_icon_α
.Llit_string_α_1043_0:  .quad            .Llit_string_α_1043_0_s
.Llit_string_α_1043_0_s:
                        .string          "storage"
                        .size            n00301_lit_string_bx, .-n00301_lit_string_bx
                        .type            n00303_call_icon_bx, @function
n00303_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_call_icon_α:      mov              r11, 401
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1045: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1045]
                        lea              rsi, [rbp + 448]
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
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n00304_lit_integer_α
                                                                              jmp   n00304_lit_integer_α
n00303_call_icon_β:      mov              r11, 401;                            jmp   n00304_lit_integer_α
                        .size            n00303_call_icon_bx, .-n00303_call_icon_bx
                        .type            n00304_lit_integer_bx, @function
n00304_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_lit_integer_α:    mov              r11, 402
                        mov              qword ptr [rbp + 64], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1046_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n00305_var_α
.Llit_integer_α_1046_0: .quad            1
                        .size            n00304_lit_integer_bx, .-n00304_lit_integer_bx
                        .type            n00305_var_bx, @function
n00305_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_var_α:            mov              r11, 403
                        mov              rax, qword ptr [r9 + 272]            # Storage____STATIC__labels
                        mov              rdx, qword ptr [r9 + 280]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00306_unop_α
                        .size            n00305_var_bx, .-n00305_var_bx
                        .type            n00306_unop_bx, @function
n00306_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_unop_α:           mov              r11, 404
                        mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00307_to_α
                        .size            n00306_unop_bx, .-n00306_unop_bx
                        .type            n00307_to_bx, @function
n00307_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_to_α:             mov              r11, 405
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax
                        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             to_int@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 3
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 48], rax
.Lto_α_1050_0:          mov              rax, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 88]
                        cmp              rax, rcx;                            jg    n00308_return_α
                        mov              qword ptr [rbp + 32], 3
                        mov              qword ptr [rbp + 40], rax;           jmp   n00309_assign_α
n00307_to_β:             mov              r11, 405
                        inc              qword ptr [rbp + 48];                jmp   .Lto_α_1050_0
                        .size            n00307_to_bx, .-n00307_to_bx
                        .type            n00309_assign_bx, @function
n00309_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_assign_α:         mov              r11, 406
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n00310_bound_α
                        .size            n00309_assign_bx, .-n00309_assign_bx
                        .type            n00310_bound_bx, @function
n00310_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_bound_α:          mov              r11, 407
                        mov              qword ptr [rbp + 112], rsp;          jmp   n00311_var_ref_α
                        .size            n00310_bound_bx, .-n00310_bound_bx
                        .type            n00311_var_ref_bx, @function
n00311_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_var_ref_α:        mov              r11, 408
                        mov              rax, 4294967336
                        mov              rdx, 1879052560                      # Storage____STATIC__labels
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00312_var_α
                        .size            n00311_var_ref_bx, .-n00311_var_ref_bx
                        .type            n00312_var_bx, @function
n00312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_var_α:            mov              r11, 409
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00313_subscript_α
                        .size            n00312_var_bx, .-n00312_var_bx
                        .type            n00313_subscript_bx, @function
n00313_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_subscript_α:      mov              r11, 410
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00314_unmark_α
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n00315_deref_α
                        .size            n00313_subscript_bx, .-n00313_subscript_bx
                        .type            n00315_deref_bx, @function
n00315_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_deref_α:          mov              r11, 411
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00314_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n00316_var_ref_α
                        .size            n00315_deref_bx, .-n00315_deref_bx
                        .type            n00316_var_ref_bx, @function
n00316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_var_ref_α:        mov              r11, 412
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00317_var_α
                        .size            n00316_var_ref_bx, .-n00316_var_ref_bx
                        .type            n00317_var_bx, @function
n00317_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_var_α:            mov              r11, 413
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00318_subscript_α
                        .size            n00317_var_bx, .-n00317_var_bx
                        .type            n00318_subscript_bx, @function
n00318_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_subscript_α:      mov              r11, 414
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00314_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n00319_deref_α
                        .size            n00318_subscript_bx, .-n00318_subscript_bx
                        .type            n00319_deref_bx, @function
n00319_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_deref_α:          mov              r11, 415
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00314_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00320_lit_integer_α
                        .size            n00319_deref_bx, .-n00319_deref_bx
                        .type            n00320_lit_integer_bx, @function
n00320_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_lit_integer_α:    mov              r11, 416
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1066_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n00321_call_icon_α
.Llit_integer_α_1066_0: .quad            8
                        .size            n00320_lit_integer_bx, .-n00320_lit_integer_bx
                        .type            n00321_call_icon_bx, @function
n00321_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_icon_α:      mov              r11, 417
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1068: .string          "right"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1068]
                        lea              rsi, [rbp + 304]
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
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n00314_unmark_α
                                                                              jmp   n00322_call_icon_α
n00321_call_icon_β:      mov              r11, 417;                            jmp   n00314_unmark_α
                        .size            n00321_call_icon_bx, .-n00321_call_icon_bx
                        .type            n00322_call_icon_bx, @function
n00322_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_call_icon_α:      mov              r11, 418
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1070: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1070]
                        lea              rsi, [rbp + 176]
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
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00314_unmark_α
                                                                              jmp   n00314_unmark_α
n00322_call_icon_β:      mov              r11, 418;                            jmp   n00314_unmark_α
                        .size            n00322_call_icon_bx, .-n00322_call_icon_bx
                        .type            n00314_unmark_bx, @function
n00314_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_unmark_α:         mov              r11, 419
                        mov              rsp, qword ptr [rbp + 112];          jmp   n00307_to_β
                        .size            n00314_unmark_bx, .-n00314_unmark_bx
                        .type            n00308_return_bx, @function
n00308_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_return_α:         mov              r11, 420
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8];            jmp   Storage___γ
                        .size            n00308_return_bx, .-n00308_return_bx
                        .type            n00296_var_ref_bx, @function
n00296_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_var_ref_α:        mov              r11, 421
                        mov              rax, 4294967336
                        mov              rdx, 1879052576                      # Storage____INITFLAG__0
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00323_nulltest_var_α
n00296_var_ref_β:        mov              r11, 421;                            jmp   .Ldisjunction_ω_997_af
                        .size            n00296_var_ref_bx, .-n00296_var_ref_bx
                        .type            n00323_nulltest_var_bx, @function
n00323_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_nulltest_var_α:   mov              r11, 422
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 104;                             je    .Ldisjunction_ω_997_af
                        mov              rdi, qword ptr [rbp + 848]
                        mov              rsi, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_997_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_997_af
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00324_lit_integer_α
                        .size            n00323_nulltest_var_bx, .-n00323_nulltest_var_bx
                        .type            n00324_lit_integer_bx, @function
n00324_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_lit_integer_α:    mov              r11, 423
                        mov              qword ptr [rbp + 896], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1077_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00325_assign_var_α
.Llit_integer_α_1077_0: .quad            1
                        .size            n00324_lit_integer_bx, .-n00324_lit_integer_bx
                        .type            n00325_assign_var_bx, @function
n00325_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_assign_var_α:     mov              r11, 424
                        mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_997_af
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00326_lit_string_α
                        .size            n00325_assign_var_bx, .-n00325_assign_var_bx
                        .type            n00326_lit_string_bx, @function
n00326_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_lit_string_α:     mov              r11, 425
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1079_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00327_lit_string_α
.Llit_string_α_1079_0:  .quad            .Llit_string_α_1079_0_s
.Llit_string_α_1079_0_s:
                        .string          "static"
                        .size            n00326_lit_string_bx, .-n00326_lit_string_bx
                        .type            n00327_lit_string_bx, @function
n00327_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_lit_string_α:     mov              r11, 426
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_1080_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00328_lit_string_α
.Llit_string_α_1080_0:  .quad            .Llit_string_α_1080_0_s
.Llit_string_α_1080_0_s:
                        .string          "string"
                        .size            n00327_lit_string_bx, .-n00327_lit_string_bx
                        .type            n00328_lit_string_bx, @function
n00328_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00328_lit_string_α:     mov              r11, 427
                        mov              qword ptr [rbp + 816], 2             # result
                        mov              dword ptr [rbp + 820], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_1081_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n00329_make_list_α
.Llit_string_α_1081_0:  .quad            .Llit_string_α_1081_0_s
.Llit_string_α_1081_0_s:
                        .string          "block"
                        .size            n00328_lit_string_bx, .-n00328_lit_string_bx
                        .type            n00329_make_list_bx, @function
n00329_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00329_make_list_α:      mov              r11, 428
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n00330_assign_α
                        .size            n00329_make_list_bx, .-n00329_make_list_bx
                        .type            n00330_assign_bx, @function
n00330_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_assign_α:         mov              r11, 429
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [r9 + 272], rax            # Storage____STATIC__labels
                        mov              qword ptr [r9 + 280], rdx
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1084_0]
                        .section         .rodata
.Lassign_α_1084_1_s:    .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1084_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_997_as
n00330_assign_β:         mov              r11, 429;                            jmp   n00297_make_list_α
.Lassign_α_1084_0:      .quad            .Lassign_α_1084_0_s
.Lassign_α_1084_0_s:    .string          "Storage____STATIC__labels"
                        .size            n00330_assign_bx, .-n00330_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
Storage___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Storage___β:
                                                                              jmp   Storage___ω
#-----------------------------------------------------------------------------------------------------------------------
Storage___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_1084_248
                        .section         .rodata
.Licn_trace_nm1085:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1085]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_1084_248: mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Storage___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LStorage___α_1084_249
                        .section         .rodata
.Licn_trace_nm1086:     .string          "Storage__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1086]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LStorage___α_1084_249: mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1032];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Storage___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LStorage___α_1087_3]
                        push             rcx
                        lea              rcx, [rip + .LStorage___α_1087_2]
                        push             rcx;                                 jmp   FN__Storage__
.LStorage___α_1087_2:   add              rsp, 24
                        pop              r12;                                 jmp   r12
.LStorage___α_1087_3:   add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__Time__:
                        sub              rsp, 320
                        mov              qword ptr [rsp + 312], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTime___α_1087_247
                        .section         .rodata
.Licn_trace_nm1088:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1088]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1087_247:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
Time___α_body:
                        .type            n00331_disjunction_bx, @function
n00331_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_disjunction_α:    mov              r11, 430
                        mov              qword ptr [rbp + 112], 0
                        mov              qword ptr [rbp + 120], 0
                        mov              dword ptr [rbp + 128], 0;            jmp   n00332_var_ref_α
.Ldisjunction_γ_1089_as:
                        mov              r11, 430
                        mov              eax, dword ptr [rbp + 128]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1103_0
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00333_kw_icon_α
.Ldisjunction_α_1103_0:                                                       jmp   n00333_kw_icon_α
n00331_disjunction_β:    mov              r11, 430
                        mov              eax, dword ptr [rbp + 128];          jmp   n00333_kw_icon_α
.Ldisjunction_γ_1089_af:
                        mov              r11, 430
.Ldisjunction_ω_1089_af:
                        mov              r11, 430
                        add              dword ptr [rbp + 128], 1
                        mov              eax, dword ptr [rbp + 128];          jmp   n00333_kw_icon_α
                        .size            n00331_disjunction_bx, .-n00331_disjunction_bx
                        .type            n00333_kw_icon_bx, @function
n00333_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_kw_icon_α:        mov              r11, 431
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1104_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00334_var_α
n00333_kw_icon_β:        mov              r11, 431;                            jmp   Time___ω
.Lkw_icon_α_1104_0:     .quad            .Lkw_icon_α_1104_0_s
.Lkw_icon_α_1104_0_s:   .string          "&time"
                        .size            n00333_kw_icon_bx, .-n00333_kw_icon_bx
                        .type            n00334_var_bx, @function
n00334_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_var_α:            mov              r11, 432
                        mov              rax, qword ptr [r9 + 304]            # Time____STATIC__lasttime
                        mov              rdx, qword ptr [r9 + 312]
                        mov              qword ptr [rbp + 96], rax            # result
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00335_coerce_numeric_α
                        .size            n00334_var_bx, .-n00334_var_bx
                        .type            n00335_coerce_numeric_bx, @function
n00335_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_coerce_numeric_α: mov              r11, 433
                        mov              eax, dword ptr [rbp + 64]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1107_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1107_0
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1107_0
.Lcoerce_numeric_α_1107_1:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00336_coerce_numeric_α
.Lcoerce_numeric_α_1107_0:
                        lea              rdi, [rbp + 64]
                        lea              rsi, [rbp + 96]
                        lea              rdx, [rbp + 48]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 48]
                        cmp              al, 104;                             je    Time___ω
                                                                              jmp   n00336_coerce_numeric_α
                        .size            n00335_coerce_numeric_bx, .-n00335_coerce_numeric_bx
                        .type            n00336_coerce_numeric_bx, @function
n00336_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_coerce_numeric_α: mov              r11, 434
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_1109_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1109_0
                        mov              eax, dword ptr [rbp + 64]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_1109_0
.Lcoerce_numeric_α_1109_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00337_binop_α
.Lcoerce_numeric_α_1109_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 64]
                        lea              rdx, [rbp + 32]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 32]
                        cmp              al, 104;                             je    Time___ω
                                                                              jmp   n00337_binop_α
                        .size            n00336_coerce_numeric_bx, .-n00336_coerce_numeric_bx
                        .type            n00337_binop_bx, @function
n00337_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_binop_α:          mov              r11, 435
                        mov              eax, dword ptr [rbp + 48]
                        mov              ecx, dword ptr [rbp + 32]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_1110_2
                        mov              rax, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 40]
                        sub              rax, rdx;                            jo    .Lbinop_α_1110_0
                        mov              qword ptr [rbp + 16], 3
                        mov              qword ptr [rbp + 24], rax;           jmp   .Lbinop_α_1110_7
.Lbinop_α_1110_2:       and              edx, 1;                              jz    .Lbinop_α_1110_0
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdi, qword ptr [rbp + 40]
                        cmp              al, 5;                               je    .Lbinop_α_1110_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_1110_4
.Lbinop_α_1110_3:       movq             xmm0, rsi
.Lbinop_α_1110_4:       cmp              cl, 5;                               je    .Lbinop_α_1110_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_1110_6
.Lbinop_α_1110_5:       movq             xmm1, rdi
.Lbinop_α_1110_6:       subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_1110_0
                        mov              qword ptr [rbp + 16], 5
                        mov              qword ptr [rbp + 24], rax
.Lbinop_α_1110_7:                                                             jmp   n00338_return_α
.Lbinop_α_1110_0:       mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 32]
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    Time___ω
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx;           jmp   n00338_return_α
                        .size            n00337_binop_bx, .-n00337_binop_bx
                        .type            n00338_return_bx, @function
n00338_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_return_α:         mov              r11, 436
                        mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   Time___γ
                        .size            n00338_return_bx, .-n00338_return_bx
                        .type            n00332_var_ref_bx, @function
n00332_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00332_var_ref_α:        mov              r11, 437
                        mov              rax, 4294967336
                        mov              rdx, 1879052608                      # Time____INITFLAG__0
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00339_nulltest_var_α
n00332_var_ref_β:        mov              r11, 437;                            jmp   .Ldisjunction_ω_1089_af
                        .size            n00332_var_ref_bx, .-n00332_var_ref_bx
                        .type            n00339_nulltest_var_bx, @function
n00339_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00339_nulltest_var_α:   mov              r11, 438
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1089_af
                        mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1089_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_1089_af
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00340_lit_integer_α
                        .size            n00339_nulltest_var_bx, .-n00339_nulltest_var_bx
                        .type            n00340_lit_integer_bx, @function
n00340_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00340_lit_integer_α:    mov              r11, 439
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1115_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00341_assign_var_α
.Llit_integer_α_1115_0: .quad            1
                        .size            n00340_lit_integer_bx, .-n00340_lit_integer_bx
                        .type            n00341_assign_var_bx, @function
n00341_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00341_assign_var_α:     mov              r11, 440
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1089_af
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n00342_kw_icon_α
                        .size            n00341_assign_var_bx, .-n00341_assign_var_bx
                        .type            n00342_kw_icon_bx, @function
n00342_kw_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00342_kw_icon_α:        mov              r11, 441
                        mov              rdi, qword ptr [rip + .Lkw_icon_α_1117_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_keyword_read@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00333_kw_icon_α
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00343_assign_α
n00342_kw_icon_β:        mov              r11, 441;                            jmp   n00333_kw_icon_α
.Lkw_icon_α_1117_0:     .quad            .Lkw_icon_α_1117_0_s
.Lkw_icon_α_1117_0_s:   .string          "&time"
                        .size            n00342_kw_icon_bx, .-n00342_kw_icon_bx
                        .type            n00343_assign_bx, @function
n00343_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00343_assign_α:         mov              r11, 442
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [r9 + 304], rax            # Time____STATIC__lasttime
                        mov              qword ptr [r9 + 312], rdx
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1118_0]
                        .section         .rodata
.Lassign_α_1118_1_s:    .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1118_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   .Ldisjunction_γ_1089_as
n00343_assign_β:         mov              r11, 442;                            jmp   n00333_kw_icon_α
.Lassign_α_1118_0:      .quad            .Lassign_α_1118_0_s
.Lassign_α_1118_0_s:    .string          "Time____STATIC__lasttime"
                        .size            n00343_assign_bx, .-n00343_assign_bx
#-----------------------------------------------------------------------------------------------------------------------
Time___res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
Time___β:
                                                                              jmp   Time___ω
#-----------------------------------------------------------------------------------------------------------------------
Time___γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTime___α_1118_248
                        .section         .rodata
.Licn_trace_nm1119:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1119]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1118_248:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
Time___ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .LTime___α_1118_249
                        .section         .rodata
.Licn_trace_nm1120:     .string          "Time__"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.LTime___α_1118_249:    mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
                        lea              rsp, [rbp + 320]
                        mov              rbp, qword ptr [rbp + 312];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
Time___dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .LTime___α_1121_3]
                        push             rcx
                        lea              rcx, [rip + .LTime___α_1121_2]
                        push             rcx;                                 jmp   FN__Time__
.LTime___α_1121_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.LTime___α_1121_3:      add              rsp, 24
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
                        call             rt_main_args_bind@PLT
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
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
                        mov              qword ptr [rsp + 872], rbp
                        mov              rbp, rsp
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
                        .type            n00344_call_proc_staged_bx, @function
n00344_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00344_call_proc_staged_α:
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1151_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1151_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1151_3]
                        push             rcx;                                 jmp   rax
.Lcall_proc_staged_α_1151_3:
                        add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1151_2
.Lcall_proc_staged_α_1151_4:
                        add              rsp, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_1151_2
.Lcall_proc_staged_α_1151_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
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
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
.Lcall_proc_staged_α_1151_29:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n00345_var_α
                                                                              jmp   n00345_var_α
n00344_call_proc_staged_β:
                        mov              r11, 443;                            jmp   n00345_var_α
.Lcall_proc_staged_β_1151_0:
                        .quad            .Lcall_proc_staged_β_1151_0_s
.Lcall_proc_staged_β_1151_0_s:
                        .string          "Init__"
                        .size            n00344_call_proc_staged_bx, .-n00344_call_proc_staged_bx
                        .type            n00345_var_bx, @function
n00345_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00345_var_α:            mov              r11, 444
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00346_lit_string_α
                        .size            n00345_var_bx, .-n00345_var_bx
                        .type            n00346_lit_string_bx, @function
n00346_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00346_lit_string_α:     mov              r11, 445
                        mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1154_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n00347_call_proc_staged_α
.Llit_string_α_1154_0:  .quad            .Llit_string_α_1154_0_s
.Llit_string_α_1154_0_s:
                        .string          "n+"
                        .size            n00346_lit_string_bx, .-n00346_lit_string_bx
                        .type            n00347_call_proc_staged_bx, @function
n00347_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00347_call_proc_staged_α:
                        mov              r11, 446
                        lea              rsi, [rbp + 688]
                        lea              rdx, [rbp + 704]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_1156_2
.Lcall_proc_staged_α_1156_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1156_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
.Lcall_proc_staged_α_1156_29:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n00348_disjunction_α
                                                                              jmp   n00349_assign_α
n00347_call_proc_staged_β:
                        mov              r11, 446;                            jmp   n00348_disjunction_α
.Lcall_proc_staged_β_1156_0:
                        .quad            .Lcall_proc_staged_β_1156_0_s
.Lcall_proc_staged_β_1156_0_s:
                        .string          "options"
                        .size            n00347_call_proc_staged_bx, .-n00347_call_proc_staged_bx
                        .type            n00349_assign_bx, @function
n00349_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00349_assign_α:         mov              r11, 447
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00348_disjunction_α
                        .size            n00349_assign_bx, .-n00349_assign_bx
                        .type            n00348_disjunction_bx, @function
n00348_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00348_disjunction_α:    mov              r11, 448
                        mov              qword ptr [rbp + 480], 0
                        mov              qword ptr [rbp + 488], 0
                        mov              dword ptr [rbp + 496], 0;            jmp   n00350_var_ref_α
.Ldisjunction_γ_1127_as:
                        mov              r11, 448
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1159_0
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00351_assign_α
.Ldisjunction_α_1159_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1159_1
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00351_assign_α
.Ldisjunction_α_1159_1:                                                       jmp   n00351_assign_α
n00348_disjunction_β:    mov              r11, 448
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1127_af
                                                                              jmp   .Ldisjunction_ω_1127_af
.Ldisjunction_γ_1127_af:
                        mov              r11, 448
.Ldisjunction_ω_1127_af:
                        mov              r11, 448
                        add              dword ptr [rbp + 496], 1
                        mov              eax, dword ptr [rbp + 496]
                        cmp              eax, 1;                              je    n00352_lit_integer_α
                                                                              jmp   n00353_disjunction_α
                        .size            n00348_disjunction_bx, .-n00348_disjunction_bx
                        .type            n00351_assign_bx, @function
n00351_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00351_assign_α:         mov              r11, 449
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1160_0]
                        .section         .rodata
.Lassign_α_1160_1_s:    .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1160_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00353_disjunction_α
.Lassign_α_1160_0:      .quad            .Lassign_α_1160_0_s
.Lassign_α_1160_0_s:    .string          "n"
                        .size            n00351_assign_bx, .-n00351_assign_bx
                        .type            n00353_disjunction_bx, @function
n00353_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00353_disjunction_α:    mov              r11, 450
                        mov              qword ptr [rbp + 320], 0
                        mov              qword ptr [rbp + 328], 0
                        mov              dword ptr [rbp + 336], 0;            jmp   n00354_var_α
.Ldisjunction_γ_1129_as:
                        mov              r11, 450
                        mov              eax, dword ptr [rbp + 336]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1162_0
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax;          jmp   n00355_var_α
.Ldisjunction_α_1162_0:                                                       jmp   n00355_var_α
n00353_disjunction_β:    mov              r11, 450
                        mov              eax, dword ptr [rbp + 336];          jmp   n00355_var_α
.Ldisjunction_γ_1129_af:
                        mov              r11, 450
.Ldisjunction_ω_1129_af:
                        mov              r11, 450
                        add              dword ptr [rbp + 336], 1
                        mov              eax, dword ptr [rbp + 336];          jmp   n00355_var_α
                        .size            n00353_disjunction_bx, .-n00353_disjunction_bx
                        .type            n00354_var_bx, @function
n00354_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00354_var_α:            mov              r11, 451
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 448], rax           # result
                        mov              qword ptr [rbp + 456], rdx;          jmp   n00356_lit_integer_α
n00354_var_β:            mov              r11, 451;                            jmp   .Ldisjunction_ω_1129_af
                        .size            n00354_var_bx, .-n00354_var_bx
                        .type            n00356_lit_integer_bx, @function
n00356_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00356_lit_integer_α:    mov              r11, 452
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1164_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00357_binop_test_α
.Llit_integer_α_1164_0: .quad            0
                        .size            n00356_lit_integer_bx, .-n00356_lit_integer_bx
                        .type            n00357_binop_test_bx, @function
n00357_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00357_binop_test_α:     mov              r11, 453
                        mov              eax, dword ptr [rbp + 448]
                        cmp              al, 112;                             je    .Lbinop_test_α_1165_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              al, 112;                             je    .Lbinop_test_α_1165_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1165_2
                        mov              eax, dword ptr [rbp + 464]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1165_2
.Lbinop_test_α_1165_1:  mov              rax, qword ptr [rbp + 456]
                        mov              rcx, qword ptr [rbp + 472]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_1129_af
                        mov              rcx, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rcx
                        mov              rcx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rcx;          jmp   n00358_lit_string_α
.Lbinop_test_α_1165_0:  mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              r8d, 6
                        lea              r9, [rbp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_1165_1
                        cmp              eax, 1;                              je    .Ldisjunction_ω_1129_af
                                                                              jmp   n00358_lit_string_α
.Lbinop_test_α_1165_2:  mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              r8d, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_jct_relop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    .Ldisjunction_ω_1129_af
                        mov              rdi, qword ptr [rbp + 448]
                        mov              rsi, qword ptr [rbp + 456]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        lea              r8, [rbp + 432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00358_lit_string_α
                        .size            n00357_binop_test_bx, .-n00357_binop_test_bx
                        .type            n00358_lit_string_bx, @function
n00358_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00358_lit_string_α:     mov              r11, 454
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 37
                        mov              rax, qword ptr [rip + .Llit_string_α_1166_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00359_call_icon_α
.Llit_string_α_1166_0:  .quad            .Llit_string_α_1166_0_s
.Llit_string_α_1166_0_s:
                        .string          "-n needs a positive numeric parameter"
                        .size            n00358_lit_string_bx, .-n00358_lit_string_bx
                        .type            n00359_call_icon_bx, @function
n00359_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00359_call_icon_α:      mov              r11, 455
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1168: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1168]
                        lea              rsi, [rbp + 368]
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
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n00355_var_α
                                                                              jmp   .Ldisjunction_γ_1129_as
n00359_call_icon_β:      mov              r11, 455;                            jmp   n00355_var_α
                        .size            n00359_call_icon_bx, .-n00359_call_icon_bx
                        .type            n00355_var_bx, @function
n00355_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00355_var_α:            mov              r11, 456
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 304], rax           # result
                        mov              qword ptr [rbp + 312], rdx;          jmp   n00360_call_icon_α
                        .size            n00355_var_bx, .-n00355_var_bx
                        .type            n00360_call_icon_bx, @function
n00360_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00360_call_icon_α:      mov              r11, 457
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1171: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1171]
                        lea              rsi, [rbp + 272]
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
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    n00361_var_α
                                                                              jmp   n00362_assign_α
n00360_call_icon_β:      mov              r11, 457;                            jmp   n00361_var_α
                        .size            n00360_call_icon_bx, .-n00360_call_icon_bx
                        .type            n00362_assign_bx, @function
n00362_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00362_assign_α:         mov              r11, 458
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_1172_0]
                        .section         .rodata
.Lassign_α_1172_1_s:    .string          "/home/claude_cfo/corpus/benchmarks/icon/queens.icn"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_1172_1_s]
                        mov              r8, 0
                        mov              r9, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n00361_var_α
.Lassign_α_1172_0:      .quad            .Lassign_α_1172_0_s
.Lassign_α_1172_0_s:    .string          "solution"
                        .size            n00362_assign_bx, .-n00362_assign_bx
                        .type            n00361_var_bx, @function
n00361_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00361_var_α:            mov              r11, 459
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 192], rax           # result
                        mov              qword ptr [rbp + 200], rdx;          jmp   n00363_lit_string_α
                        .size            n00361_var_bx, .-n00361_var_bx
                        .type            n00363_lit_string_bx, @function
n00363_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00363_lit_string_α:     mov              r11, 460
                        mov              qword ptr [rbp + 208], 2             # result
                        mov              dword ptr [rbp + 212], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_1174_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n00364_call_icon_α
.Llit_string_α_1174_0:  .quad            .Llit_string_α_1174_0_s
.Llit_string_α_1174_0_s:
                        .string          "-Queens:"
                        .size            n00363_lit_string_bx, .-n00363_lit_string_bx
                        .type            n00364_call_icon_bx, @function
n00364_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00364_call_icon_α:      mov              r11, 461
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1176: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1176]
                        lea              rsi, [rbp + 144]
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n00365_lit_integer_α
                                                                              jmp   n00365_lit_integer_α
n00364_call_icon_β:      mov              r11, 461;                            jmp   n00365_lit_integer_α
                        .size            n00364_call_icon_bx, .-n00364_call_icon_bx
                        .type            n00365_lit_integer_bx, @function
n00365_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00365_lit_integer_α:    mov              r11, 462
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1177_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00366_call_proc_staged_α
.Llit_integer_α_1177_0: .quad            1
                        .size            n00365_lit_integer_bx, .-n00365_lit_integer_bx
                        .type            n00366_call_proc_staged_bx, @function
n00366_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00366_call_proc_staged_α:
                        mov              r11, 463
                        lea              rsi, [rbp + 112]
                        call             q_dcα;                               jmp   .Lcall_proc_staged_α_1179_2
.Lcall_proc_staged_α_1179_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1179_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
.Lcall_proc_staged_α_1179_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n00367_call_proc_staged_α
                                                                              jmp   n00367_call_proc_staged_α
n00366_call_proc_staged_β:
                        mov              r11, 463;                            jmp   n00367_call_proc_staged_α
.Lcall_proc_staged_β_1179_0:
                        .quad            .Lcall_proc_staged_β_1179_0_s
.Lcall_proc_staged_β_1179_0_s:
                        .string          "q"
                        .size            n00366_call_proc_staged_bx, .-n00366_call_proc_staged_bx
                        .type            n00367_call_proc_staged_bx, @function
n00367_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00367_call_proc_staged_α:
                        mov              r11, 464
                        call             Term___dcα;                          jmp   .Lcall_proc_staged_α_1181_2
.Lcall_proc_staged_α_1181_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1181_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
.Lcall_proc_staged_α_1181_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00367_call_proc_staged_β:
                        mov              r11, 464;                            jmp   main_ω
.Lcall_proc_staged_β_1181_0:
                        .quad            .Lcall_proc_staged_β_1181_0_s
.Lcall_proc_staged_β_1181_0_s:
                        .string          "Term__"
                        .size            n00367_call_proc_staged_bx, .-n00367_call_proc_staged_bx
                        .type            n00352_lit_integer_bx, @function
n00352_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00352_lit_integer_α:    mov              r11, 465
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1182_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   .Ldisjunction_γ_1127_as
n00352_lit_integer_β:    mov              r11, 465;                            jmp   .Ldisjunction_ω_1127_af
.Llit_integer_α_1182_0: .quad            6
                        .size            n00352_lit_integer_bx, .-n00352_lit_integer_bx
                        .type            n00350_var_ref_bx, @function
n00350_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00350_var_ref_α:        mov              r11, 466
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00368_lit_string_α
n00350_var_ref_β:        mov              r11, 466;                            jmp   .Ldisjunction_ω_1127_af
                        .size            n00350_var_ref_bx, .-n00350_var_ref_bx
                        .type            n00368_lit_string_bx, @function
n00368_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00368_lit_string_α:     mov              r11, 467
                        mov              qword ptr [rbp + 544], 2             # result
                        mov              dword ptr [rbp + 548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1185_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00369_subscript_α
.Llit_string_α_1185_0:  .quad            .Llit_string_α_1185_0_s
.Llit_string_α_1185_0_s:
                        .string          "n"
                        .size            n00368_lit_string_bx, .-n00368_lit_string_bx
                        .type            n00369_subscript_bx, @function
n00369_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00369_subscript_α:      mov              r11, 468
                        mov              rdi, qword ptr [rbp + 528]
                        mov              rsi, qword ptr [rbp + 536]
                        mov              rdx, qword ptr [rbp + 544]
                        mov              rcx, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1127_af
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n00370_deref_α
                        .size            n00369_subscript_bx, .-n00369_subscript_bx
                        .type            n00370_deref_bx, @function
n00370_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00370_deref_α:          mov              r11, 469
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1127_af
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00371_unop_test_α
                        .size            n00370_deref_bx, .-n00370_deref_bx
                        .type            n00371_unop_test_bx, @function
n00371_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00371_unop_test_α:      mov              r11, 470
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 104;                             je    .Ldisjunction_ω_1127_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1127_af
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 520], rax;          jmp   .Ldisjunction_γ_1127_as
n00371_unop_test_β:      mov              r11, 470;                            jmp   .Ldisjunction_ω_1127_af
                        .size            n00371_unop_test_bx, .-n00371_unop_test_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_1188_248
                        .section         .rodata
.Licn_trace_nm1189:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1189]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1188_248:      mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        mov              rax, qword ptr [rip + g_trace@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        cmp              rax, 0;                              je    .Lmain_α_1188_249
                        .section         .rodata
.Licn_trace_nm1190:     .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm1190]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_1188_249:      mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
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
