                        .intel_syntax    noprefix
                        .text
                        .file            1 "queens.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__q:
                        sub              rsp, 2384
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2376
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_q]
                        mov              qword ptr [rsp + 2296], rax
                        mov              dword ptr [rsp + 2288], 160
                        mov              dword ptr [rsp + 2292], 2384
                        mov              eax, 0
                        mov              qword ptr [rsp + 2376], rbp
                        mov              rbp, rsp
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
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lq_α_0_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm0:          .string          "q"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm0]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Lq_α_0_245:
q_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_132_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_132_0:    .quad            .Lline_mark_α_132_0_s
.Lline_mark_α_132_0_s:  .string          "queens.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 71;             jmp   n3_line_mark_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 72;             jmp   n4_disjunction_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_disjunction_bx, @function
n4_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1544], 0
                        mov              dword ptr [rbp + 1552], 0;           jmp   n5_var_α
.Ldisjunction_γ_4_as:   mov              eax, dword ptr [rbp + 1552]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_138_0
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n43_line_mark_α
.Ldisjunction_α_138_0:                                                        jmp   n43_line_mark_α
n4_disjunction_β:       mov              eax, dword ptr [rbp + 1552];         jmp   n42_goto_β
.Ldisjunction_γ_4_af:
.Ldisjunction_ω_4_af:   add              dword ptr [rbp + 1552], 1
                        mov              eax, dword ptr [rbp + 1552];         jmp   n43_line_mark_α
                        .size            n4_disjunction_bx, .-n4_disjunction_bx
                        .type            n5_var_bx, @function
n5_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [r9 + 80]             # q__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rbp + 2208], rax          # result
                        mov              qword ptr [rbp + 2216], rdx;         jmp   n6_unop_test_α
n5_var_β:                                                                     jmp   .Ldisjunction_ω_4_af
                        .size            n5_var_bx, .-n5_var_bx
                        .type            n6_unop_test_bx, @function
n6_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_unop_test_α:         mov              eax, dword ptr [rbp + 2208]
                        cmp              al, 104;                             je    .Ldisjunction_ω_4_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_4_af
                        mov              qword ptr [rbp + 2192], 0
                        mov              qword ptr [rbp + 2200], 0;           jmp   n7_lit_integer_α
                        .size            n6_unop_test_bx, .-n6_unop_test_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rbp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rbp + 2184], rax;         jmp   n8_assign_α
.Llit_integer_α_141_0:  .quad            1
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_assign_bx, @function
n8_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              rax, qword ptr [rbp + 2176]
                        mov              rdx, qword ptr [rbp + 2184]
                        mov              qword ptr [r9 + 80], rax             # q__INITFLAG__0
                        mov              qword ptr [r9 + 88], rdx;            jmp   n9_line_mark_α
                        .size            n8_assign_bx, .-n8_assign_bx
                        .type            n9_line_mark_bx, @function
n9_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n10_lit_integer_α
                        .size            n9_line_mark_bx, .-n9_line_mark_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rbp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_145_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n11_var_α
.Llit_integer_α_145_0:  .quad            2
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_var_bx, @function
n11_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 2112], rax          # result
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n12_coerce_numeric_α
                        .size            n11_var_bx, .-n11_var_bx
                        .type            n12_coerce_numeric_bx, @function
n12_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2112]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_148_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_148_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_148_0
.Lcoerce_numeric_α_148_1:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n13_binop_α
.Lcoerce_numeric_α_148_0:
                        lea              rdi, [rbp + 2112]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 2080]
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2080]
                        cmp              al, 104;                             je    n21_line_mark_α
                                                                              jmp   n13_binop_α
                        .size            n12_coerce_numeric_bx, .-n12_coerce_numeric_bx
                        .type            n13_binop_bx, @function
n13_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rbp + 2080]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_149_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 2088]
                        imul             rax, rdx;                            jo    .Lbinop_α_149_0
                        mov              qword ptr [rbp + 2064], 3
                        mov              qword ptr [rbp + 2072], rax;         jmp   .Lbinop_α_149_7
.Lbinop_α_149_2:        and              edx, 1;                              jz    .Lbinop_α_149_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 2088]
                        cmp              al, 5;                               je    .Lbinop_α_149_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_149_4
.Lbinop_α_149_3:        movq             xmm0, rsi
.Lbinop_α_149_4:        cmp              cl, 5;                               je    .Lbinop_α_149_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_149_6
.Lbinop_α_149_5:        movq             xmm1, rdi
.Lbinop_α_149_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_149_0
                        mov              qword ptr [rbp + 2064], 5
                        mov              qword ptr [rbp + 2072], rax
.Lbinop_α_149_7:                                                              jmp   n14_lit_integer_α
.Lbinop_α_149_0:        mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              rdx, qword ptr [rbp + 2080]
                        mov              rcx, qword ptr [rbp + 2088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n21_line_mark_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n14_lit_integer_α
                        .size            n13_binop_bx, .-n13_binop_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              qword ptr [rbp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_150_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n15_coerce_numeric_α
.Llit_integer_α_150_0:  .quad            1
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_coerce_numeric_bx, @function
n15_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2064]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_152_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_152_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_152_0
.Lcoerce_numeric_α_152_1:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n16_binop_α
.Lcoerce_numeric_α_152_0:
                        lea              rdi, [rbp + 2064]
                        lea              rsi, [rbp + 2128]
                        lea              rdx, [rbp + 2048]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2048]
                        cmp              al, 104;                             je    n21_line_mark_α
                                                                              jmp   n16_binop_α
                        .size            n15_coerce_numeric_bx, .-n15_coerce_numeric_bx
                        .type            n16_binop_bx, @function
n16_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            mov              eax, dword ptr [rbp + 2048]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_153_2
                        mov              rax, qword ptr [rbp + 2056]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_153_0
                        mov              qword ptr [rbp + 2032], 3
                        mov              qword ptr [rbp + 2040], rax;         jmp   .Lbinop_α_153_7
.Lbinop_α_153_2:        and              edx, 1;                              jz    .Lbinop_α_153_0
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_153_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_153_4
.Lbinop_α_153_3:        movq             xmm0, rsi
.Lbinop_α_153_4:        cmp              cl, 5;                               je    .Lbinop_α_153_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_153_6
.Lbinop_α_153_5:        movq             xmm1, rdi
.Lbinop_α_153_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_153_0
                        mov              qword ptr [rbp + 2032], 5
                        mov              qword ptr [rbp + 2040], rax
.Lbinop_α_153_7:                                                              jmp   n17_lit_integer_α
.Lbinop_α_153_0:        mov              rdi, qword ptr [rbp + 2048]
                        mov              rsi, qword ptr [rbp + 2056]
                        mov              rdx, qword ptr [rbp + 2128]
                        mov              rcx, qword ptr [rbp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n21_line_mark_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n17_lit_integer_α
                        .size            n16_binop_bx, .-n16_binop_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              qword ptr [rbp + 2144], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_154_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n18_line_mark_α
.Llit_integer_α_154_0:  .quad            0
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_line_mark_bx, @function
n18_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n19_call_icon_α
                        .size            n18_line_mark_bx, .-n18_line_mark_bx
                        .type            n19_call_icon_bx, @function
n19_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_icon_α:        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        .section         .rodata
.Lcall_icon_α_rkfn158:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn158]
                        lea              rsi, [rbp + 1984]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    n21_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n20_assign_α
n19_call_icon_β:                                                              jmp   n21_line_mark_α
                        .size            n19_call_icon_bx, .-n19_call_icon_bx
                        .type            n20_assign_bx, @function
n20_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              rax, qword ptr [rbp + 1968]
                        mov              rdx, qword ptr [rbp + 1976]
                        mov              qword ptr [r9 + 32], rax             # q__STATIC__up
                        mov              qword ptr [r9 + 40], rdx;            jmp   n21_line_mark_α
                        .size            n20_assign_bx, .-n20_assign_bx
                        .type            n21_line_mark_bx, @function
n21_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 74;             jmp   n22_lit_integer_α
                        .size            n21_line_mark_bx, .-n21_line_mark_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              qword ptr [rbp + 1888], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_162_0]
                        mov              qword ptr [rbp + 1896], rax;         jmp   n23_var_α
.Llit_integer_α_162_0:  .quad            2
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1904], rax          # result
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n24_coerce_numeric_α
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_coerce_numeric_bx, @function
n24_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1904]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_165_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_165_0
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_165_0
.Lcoerce_numeric_α_165_1:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n25_binop_α
.Lcoerce_numeric_α_165_0:
                        lea              rdi, [rbp + 1904]
                        lea              rsi, [rbp + 1888]
                        lea              rdx, [rbp + 1872]
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1872]
                        cmp              al, 104;                             je    n33_line_mark_α
                                                                              jmp   n25_binop_α
                        .size            n24_coerce_numeric_bx, .-n24_coerce_numeric_bx
                        .type            n25_binop_bx, @function
n25_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rbp + 1872]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_166_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 1880]
                        imul             rax, rdx;                            jo    .Lbinop_α_166_0
                        mov              qword ptr [rbp + 1856], 3
                        mov              qword ptr [rbp + 1864], rax;         jmp   .Lbinop_α_166_7
.Lbinop_α_166_2:        and              edx, 1;                              jz    .Lbinop_α_166_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 1880]
                        cmp              al, 5;                               je    .Lbinop_α_166_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_166_4
.Lbinop_α_166_3:        movq             xmm0, rsi
.Lbinop_α_166_4:        cmp              cl, 5;                               je    .Lbinop_α_166_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_166_6
.Lbinop_α_166_5:        movq             xmm1, rdi
.Lbinop_α_166_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_166_0
                        mov              qword ptr [rbp + 1856], 5
                        mov              qword ptr [rbp + 1864], rax
.Lbinop_α_166_7:                                                              jmp   n26_lit_integer_α
.Lbinop_α_166_0:        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_line_mark_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n26_lit_integer_α
                        .size            n25_binop_bx, .-n25_binop_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              qword ptr [rbp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_167_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n27_coerce_numeric_α
.Llit_integer_α_167_0:  .quad            1
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_coerce_numeric_bx, @function
n27_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1856]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_169_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_169_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_169_0
.Lcoerce_numeric_α_169_1:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n28_binop_α
.Lcoerce_numeric_α_169_0:
                        lea              rdi, [rbp + 1856]
                        lea              rsi, [rbp + 1920]
                        lea              rdx, [rbp + 1840]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1840]
                        cmp              al, 104;                             je    n33_line_mark_α
                                                                              jmp   n28_binop_α
                        .size            n27_coerce_numeric_bx, .-n27_coerce_numeric_bx
                        .type            n28_binop_bx, @function
n28_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              eax, dword ptr [rbp + 1840]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_170_2
                        mov              rax, qword ptr [rbp + 1848]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_170_0
                        mov              qword ptr [rbp + 1824], 3
                        mov              qword ptr [rbp + 1832], rax;         jmp   .Lbinop_α_170_7
.Lbinop_α_170_2:        and              edx, 1;                              jz    .Lbinop_α_170_0
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_170_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_170_4
.Lbinop_α_170_3:        movq             xmm0, rsi
.Lbinop_α_170_4:        cmp              cl, 5;                               je    .Lbinop_α_170_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_170_6
.Lbinop_α_170_5:        movq             xmm1, rdi
.Lbinop_α_170_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_170_0
                        mov              qword ptr [rbp + 1824], 5
                        mov              qword ptr [rbp + 1832], rax
.Lbinop_α_170_7:                                                              jmp   n29_lit_integer_α
.Lbinop_α_170_0:        mov              rdi, qword ptr [rbp + 1840]
                        mov              rsi, qword ptr [rbp + 1848]
                        mov              rdx, qword ptr [rbp + 1920]
                        mov              rcx, qword ptr [rbp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_line_mark_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n29_lit_integer_α
                        .size            n28_binop_bx, .-n28_binop_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rbp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_171_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n30_line_mark_α
.Llit_integer_α_171_0:  .quad            0
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_line_mark_bx, @function
n30_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 74;             jmp   n31_call_icon_α
                        .size            n30_line_mark_bx, .-n30_line_mark_bx
                        .type            n31_call_icon_bx, @function
n31_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_icon_α:        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lcall_icon_α_rkfn175:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn175]
                        lea              rsi, [rbp + 1776]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              al, 104;                             je    n33_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n32_assign_α
n31_call_icon_β:                                                              jmp   n33_line_mark_α
                        .size            n31_call_icon_bx, .-n31_call_icon_bx
                        .type            n32_assign_bx, @function
n32_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [r9 + 48], rax             # q__STATIC__down
                        mov              qword ptr [r9 + 56], rdx;            jmp   n33_line_mark_α
                        .size            n32_assign_bx, .-n32_assign_bx
                        .type            n33_line_mark_bx, @function
n33_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n34_var_ref_α
                        .size            n33_line_mark_bx, .-n33_line_mark_bx
                        .type            n34_var_ref_bx, @function
n34_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n35_lit_integer_α
                        .size            n34_var_ref_bx, .-n34_var_ref_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              qword ptr [rbp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n36_deref_α
.Llit_integer_α_181_0:  .quad            0
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_deref_bx, @function
n36_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_deref_α:            mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n43_line_mark_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n37_line_mark_α
                        .size            n36_deref_bx, .-n36_deref_bx
                        .type            n37_line_mark_bx, @function
n37_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n38_call_icon_α
                        .size            n37_line_mark_bx, .-n37_line_mark_bx
                        .type            n38_call_icon_bx, @function
n38_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_icon_α:        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn186:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn186]
                        lea              rsi, [rbp + 1632]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    n43_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n39_assign_α
n38_call_icon_β:                                                              jmp   n43_line_mark_α
                        .size            n38_call_icon_bx, .-n38_call_icon_bx
                        .type            n39_assign_bx, @function
n39_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [r9 + 64], rax             # q__STATIC__rows
                        mov              qword ptr [r9 + 72], rdx
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n40_conjunction_α
                        .size            n39_assign_bx, .-n39_assign_bx
                        .type            n40_conjunction_bx, @function
n40_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_conjunction_α:      mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n41_conjunction_α
n40_conjunction_β:                                                            jmp   n43_line_mark_α
                        .size            n40_conjunction_bx, .-n40_conjunction_bx
                        .type            n41_conjunction_bx, @function
n41_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_conjunction_α:      mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1576], rax;         jmp   .Ldisjunction_γ_4_as
n41_conjunction_β:                                                            jmp   n43_line_mark_α
                        .size            n41_conjunction_bx, .-n41_conjunction_bx
                        .type            n42_goto_bx, @function
n42_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_goto_α:                                                                   jmp   n43_line_mark_α
n42_goto_β:                                                                   jmp   n43_line_mark_α
                        .size            n42_goto_bx, .-n42_goto_bx
                        .type            n43_line_mark_bx, @function
n43_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n44_lit_integer_α
                        .size            n43_line_mark_bx, .-n43_line_mark_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n45_var_ref_α
.Llit_integer_α_193_0:  .quad            0
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052352                      # q__STATIC__rows
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n46_lit_integer_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_lit_integer_bx, @function
n46_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_196_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n47_var_α
.Llit_integer_α_196_0:  .quad            1
                        .size            n46_lit_integer_bx, .-n46_lit_integer_bx
                        .type            n47_var_bx, @function
n47_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 688], rax           # result
                        mov              qword ptr [rbp + 696], rdx;          jmp   n48_to_α
                        .size            n47_var_bx, .-n47_var_bx
                        .type            n48_to_bx, @function
n48_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_to_α:               mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    q_ω
                        push             rax                                  # gc_poll bb_to.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                        push             rax                                  # gc_poll bb_to.cpp:127
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    q_ω
                        push             rax                                  # gc_poll bb_to.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], 3
                        mov              qword ptr [rbp + 696], rax
                        push             rax                                  # gc_poll bb_to.cpp:134
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 656], rax
.Lto_α_199_0:           mov              rax, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 696]
                        cmp              rax, rcx;                            jg    q_ω
                        mov              qword ptr [rbp + 640], 3
                        mov              qword ptr [rbp + 648], rax;          jmp   n49_assign_α
n48_to_β:               inc              qword ptr [rbp + 656];               jo    q_ω
                                                                              jmp   .Lto_α_199_0
                        .size            n48_to_bx, .-n48_to_bx
                        .type            n49_assign_bx, @function
n49_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n50_subscript_α
                        .size            n49_assign_bx, .-n49_assign_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 624]
                        mov              rcx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n51_deref_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_deref_bx, @function
n51_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n52_binop_test_α
                        .size            n51_deref_bx, .-n51_deref_bx
                        .type            n52_binop_test_bx, @function
n52_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_test_α:       mov              eax, dword ptr [rbp + 592]
                        cmp              al, 112;                             je    .Lbinop_test_α_203_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              al, 112;                             je    .Lbinop_test_α_203_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 3;                               jne   .Lbinop_test_α_203_2
                        mov              eax, dword ptr [rbp + 720]
                        cmp              al, 3;                               jne   .Lbinop_test_α_203_2
.Lbinop_test_α_203_1:   mov              rax, qword ptr [rbp + 600]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx;                            jne   n48_to_β
                        mov              rcx, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rcx
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rcx;          jmp   n53_var_ref_α
.Lbinop_test_α_203_0:   mov              rdi, qword ptr [rbp + 592]
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
                        test             eax, eax;                            je    .Lbinop_test_α_203_2
                        cmp              eax, 1;                              je    n48_to_β
                        push             rax                                  # gc_poll bb_binop_relop.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n53_var_ref_α
.Lbinop_test_α_203_2:   mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 720]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n48_to_β
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
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_relop.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n53_var_ref_α
                        .size            n52_binop_test_bx, .-n52_binop_test_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052320                      # q__STATIC__up
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n54_var_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 856], rax;          jmp   n55_var_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 864], rax           # result
                        mov              qword ptr [rbp + 872], rdx;          jmp   n56_coerce_numeric_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_coerce_numeric_bx, @function
n56_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              eax, dword ptr [rbp + 864]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_210_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_210_0
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_210_0
.Lcoerce_numeric_α_210_1:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax;          jmp   n57_coerce_numeric_α
.Lcoerce_numeric_α_210_0:
                        lea              rdi, [rbp + 864]
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 832]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 832]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n57_coerce_numeric_α
                        .size            n56_coerce_numeric_bx, .-n56_coerce_numeric_bx
                        .type            n57_coerce_numeric_bx, @function
n57_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2272]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_212_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_212_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_212_0
.Lcoerce_numeric_α_212_1:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 824], rax;          jmp   n58_binop_α
.Lcoerce_numeric_α_212_0:
                        lea              rdi, [rbp + 2272]
                        lea              rsi, [rbp + 864]
                        lea              rdx, [rbp + 816]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 816]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n58_binop_α
                        .size            n57_coerce_numeric_bx, .-n57_coerce_numeric_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            mov              eax, dword ptr [rbp + 832]
                        mov              ecx, dword ptr [rbp + 816]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_213_2
                        mov              rax, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 824]
                        add              rax, rdx;                            jo    .Lbinop_α_213_0
                        mov              qword ptr [rbp + 800], 3
                        mov              qword ptr [rbp + 808], rax;          jmp   .Lbinop_α_213_7
.Lbinop_α_213_2:        and              edx, 1;                              jz    .Lbinop_α_213_0
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdi, qword ptr [rbp + 824]
                        cmp              al, 5;                               je    .Lbinop_α_213_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_213_4
.Lbinop_α_213_3:        movq             xmm0, rsi
.Lbinop_α_213_4:        cmp              cl, 5;                               je    .Lbinop_α_213_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_213_6
.Lbinop_α_213_5:        movq             xmm1, rdi
.Lbinop_α_213_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_213_0
                        mov              qword ptr [rbp + 800], 5
                        mov              qword ptr [rbp + 808], rax
.Lbinop_α_213_7:                                                              jmp   n59_var_α
.Lbinop_α_213_0:        mov              rdi, qword ptr [rbp + 832]
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
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n59_var_α
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 888], rax;          jmp   n60_coerce_numeric_α
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_coerce_numeric_bx, @function
n60_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:   mov              eax, dword ptr [rbp + 800]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_217_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_217_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_217_0
.Lcoerce_numeric_α_217_1:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax;          jmp   n61_coerce_numeric_α
.Lcoerce_numeric_α_217_0:
                        lea              rdi, [rbp + 800]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 784]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 784]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n61_coerce_numeric_α
                        .size            n60_coerce_numeric_bx, .-n60_coerce_numeric_bx
                        .type            n61_coerce_numeric_bx, @function
n61_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_coerce_numeric_α:   mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_219_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_219_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_219_0
.Lcoerce_numeric_α_219_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rax;          jmp   n62_binop_α
.Lcoerce_numeric_α_219_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 800]
                        lea              rdx, [rbp + 768]
                        mov              rcx, 281483583422566
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 768]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n62_binop_α
                        .size            n61_coerce_numeric_bx, .-n61_coerce_numeric_bx
                        .type            n62_binop_bx, @function
n62_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            mov              eax, dword ptr [rbp + 784]
                        mov              ecx, dword ptr [rbp + 768]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_220_2
                        mov              rax, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 776]
                        sub              rax, rdx;                            jo    .Lbinop_α_220_0
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax;          jmp   .Lbinop_α_220_7
.Lbinop_α_220_2:        and              edx, 1;                              jz    .Lbinop_α_220_0
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdi, qword ptr [rbp + 776]
                        cmp              al, 5;                               je    .Lbinop_α_220_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_220_4
.Lbinop_α_220_3:        movq             xmm0, rsi
.Lbinop_α_220_4:        cmp              cl, 5;                               je    .Lbinop_α_220_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_220_6
.Lbinop_α_220_5:        movq             xmm1, rdi
.Lbinop_α_220_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_220_0
                        mov              qword ptr [rbp + 752], 5
                        mov              qword ptr [rbp + 760], rax
.Lbinop_α_220_7:                                                              jmp   n63_subscript_α
.Lbinop_α_220_0:        mov              rdi, qword ptr [rbp + 784]
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
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n63_subscript_α
                        .size            n62_binop_bx, .-n62_binop_bx
                        .type            n63_subscript_bx, @function
n63_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:        mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n64_deref_α
                        .size            n63_subscript_bx, .-n63_subscript_bx
                        .type            n64_deref_bx, @function
n64_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_deref_α:            mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n65_binop_test_α
                        .size            n64_deref_bx, .-n64_deref_bx
                        .type            n65_binop_test_bx, @function
n65_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_test_α:       mov              eax, dword ptr [rbp + 576]
                        cmp              al, 112;                             je    .Lbinop_test_α_223_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 112;                             je    .Lbinop_test_α_223_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 3;                               jne   .Lbinop_test_α_223_2
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 3;                               jne   .Lbinop_test_α_223_2
.Lbinop_test_α_223_1:   mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 920]
                        cmp              rax, rcx;                            jne   n48_to_β
                        mov              rcx, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 560], rcx
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 568], rcx;          jmp   n66_var_ref_α
.Lbinop_test_α_223_0:   mov              rdi, qword ptr [rbp + 576]
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
                        test             eax, eax;                            je    .Lbinop_test_α_223_2
                        cmp              eax, 1;                              je    n48_to_β
                        push             rax                                  # gc_poll bb_binop_relop.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n66_var_ref_α
.Lbinop_test_α_223_2:   mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n48_to_β
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
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_relop.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n66_var_ref_α
                        .size            n65_binop_test_bx, .-n65_binop_test_bx
                        .type            n66_var_ref_bx, @function
n66_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052336                      # q__STATIC__down
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n67_var_α
                        .size            n66_var_ref_bx, .-n66_var_ref_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n68_var_α
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n69_coerce_numeric_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_coerce_numeric_bx, @function
n69_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2272]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_231_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_231_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_231_0
.Lcoerce_numeric_α_231_1:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n70_coerce_numeric_α
.Lcoerce_numeric_α_231_0:
                        lea              rdi, [rbp + 2272]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 1008]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1008]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n70_coerce_numeric_α
                        .size            n69_coerce_numeric_bx, .-n69_coerce_numeric_bx
                        .type            n70_coerce_numeric_bx, @function
n70_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:   mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_233_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_233_0
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_233_0
.Lcoerce_numeric_α_233_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n71_binop_α
.Lcoerce_numeric_α_233_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 992]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 992]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n71_binop_α
                        .size            n70_coerce_numeric_bx, .-n70_coerce_numeric_bx
                        .type            n71_binop_bx, @function
n71_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:            mov              eax, dword ptr [rbp + 1008]
                        mov              ecx, dword ptr [rbp + 992]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_234_2
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1000]
                        add              rax, rdx;                            jo    .Lbinop_α_234_0
                        mov              qword ptr [rbp + 976], 3
                        mov              qword ptr [rbp + 984], rax;          jmp   .Lbinop_α_234_7
.Lbinop_α_234_2:        and              edx, 1;                              jz    .Lbinop_α_234_0
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdi, qword ptr [rbp + 1000]
                        cmp              al, 5;                               je    .Lbinop_α_234_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_234_4
.Lbinop_α_234_3:        movq             xmm0, rsi
.Lbinop_α_234_4:        cmp              cl, 5;                               je    .Lbinop_α_234_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_234_6
.Lbinop_α_234_5:        movq             xmm1, rdi
.Lbinop_α_234_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_234_0
                        mov              qword ptr [rbp + 976], 5
                        mov              qword ptr [rbp + 984], rax
.Lbinop_α_234_7:                                                              jmp   n72_lit_integer_α
.Lbinop_α_234_0:        mov              rdi, qword ptr [rbp + 1008]
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
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n72_lit_integer_α
                        .size            n71_binop_bx, .-n71_binop_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_235_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n73_coerce_numeric_α
.Llit_integer_α_235_0:  .quad            1
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_coerce_numeric_bx, @function
n73_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:   mov              eax, dword ptr [rbp + 976]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_237_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_237_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_237_0
.Lcoerce_numeric_α_237_1:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 968], rax;          jmp   n74_binop_α
.Lcoerce_numeric_α_237_0:
                        lea              rdi, [rbp + 976]
                        lea              rsi, [rbp + 1056]
                        lea              rdx, [rbp + 960]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 960]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n74_binop_α
                        .size            n73_coerce_numeric_bx, .-n73_coerce_numeric_bx
                        .type            n74_binop_bx, @function
n74_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            mov              eax, dword ptr [rbp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_238_2
                        mov              rax, qword ptr [rbp + 968]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_238_0
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax;          jmp   .Lbinop_α_238_7
.Lbinop_α_238_2:        and              edx, 1;                              jz    .Lbinop_α_238_0
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_238_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_238_4
.Lbinop_α_238_3:        movq             xmm0, rsi
.Lbinop_α_238_4:        cmp              cl, 5;                               je    .Lbinop_α_238_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_238_6
.Lbinop_α_238_5:        movq             xmm1, rdi
.Lbinop_α_238_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_238_0
                        mov              qword ptr [rbp + 944], 5
                        mov              qword ptr [rbp + 952], rax
.Lbinop_α_238_7:                                                              jmp   n75_subscript_α
.Lbinop_α_238_0:        mov              rdi, qword ptr [rbp + 960]
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
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n75_subscript_α
                        .size            n74_binop_bx, .-n74_binop_bx
                        .type            n75_subscript_bx, @function
n75_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_subscript_α:        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n76_deref_α
                        .size            n75_subscript_bx, .-n75_subscript_bx
                        .type            n76_deref_bx, @function
n76_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_deref_α:            mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n77_binop_test_α
                        .size            n76_deref_bx, .-n76_deref_bx
                        .type            n77_binop_test_bx, @function
n77_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_test_α:       mov              eax, dword ptr [rbp + 560]
                        cmp              al, 112;                             je    .Lbinop_test_α_241_0
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              al, 112;                             je    .Lbinop_test_α_241_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 3;                               jne   .Lbinop_test_α_241_2
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              al, 3;                               jne   .Lbinop_test_α_241_2
.Lbinop_test_α_241_1:   mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 1096]
                        cmp              rax, rcx;                            jne   n48_to_β
                        mov              rcx, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 552], rcx;          jmp   n78_var_ref_α
.Lbinop_test_α_241_0:   mov              rdi, qword ptr [rbp + 560]
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
                        test             eax, eax;                            je    .Lbinop_test_α_241_2
                        cmp              eax, 1;                              je    n48_to_β
                        push             rax                                  # gc_poll bb_binop_relop.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n78_var_ref_α
.Lbinop_test_α_241_2:   mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 1088]
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n48_to_β
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
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_relop.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n78_var_ref_α
                        .size            n77_binop_test_bx, .-n77_binop_test_bx
                        .type            n78_var_ref_bx, @function
n78_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052352                      # q__STATIC__rows
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n79_var_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 72], rax;           jmp   n80_subscript_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_subscript_bx, @function
n80_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_subscript_α:        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n81_var_ref_α
                        .size            n80_subscript_bx, .-n80_subscript_bx
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052320                      # q__STATIC__up
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n82_var_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 248], rax;          jmp   n83_var_α
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 256], rax           # result
                        mov              qword ptr [rbp + 264], rdx;          jmp   n84_coerce_numeric_α
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_coerce_numeric_bx, @function
n84_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_numeric_α:   mov              eax, dword ptr [rbp + 256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_253_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_253_0
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_253_0
.Lcoerce_numeric_α_253_1:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax;          jmp   n85_coerce_numeric_α
.Lcoerce_numeric_α_253_0:
                        lea              rdi, [rbp + 256]
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 224]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 224]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n85_coerce_numeric_α
                        .size            n84_coerce_numeric_bx, .-n84_coerce_numeric_bx
                        .type            n85_coerce_numeric_bx, @function
n85_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2272]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_255_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_255_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_255_0
.Lcoerce_numeric_α_255_1:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 216], rax;          jmp   n86_binop_α
.Lcoerce_numeric_α_255_0:
                        lea              rdi, [rbp + 2272]
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 208]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 208]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n86_binop_α
                        .size            n85_coerce_numeric_bx, .-n85_coerce_numeric_bx
                        .type            n86_binop_bx, @function
n86_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            mov              eax, dword ptr [rbp + 224]
                        mov              ecx, dword ptr [rbp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_256_2
                        mov              rax, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 216]
                        add              rax, rdx;                            jo    .Lbinop_α_256_0
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax;          jmp   .Lbinop_α_256_7
.Lbinop_α_256_2:        and              edx, 1;                              jz    .Lbinop_α_256_0
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdi, qword ptr [rbp + 216]
                        cmp              al, 5;                               je    .Lbinop_α_256_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_256_4
.Lbinop_α_256_3:        movq             xmm0, rsi
.Lbinop_α_256_4:        cmp              cl, 5;                               je    .Lbinop_α_256_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_256_6
.Lbinop_α_256_5:        movq             xmm1, rdi
.Lbinop_α_256_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_256_0
                        mov              qword ptr [rbp + 192], 5
                        mov              qword ptr [rbp + 200], rax
.Lbinop_α_256_7:                                                              jmp   n87_var_α
.Lbinop_α_256_0:        mov              rdi, qword ptr [rbp + 224]
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
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n87_var_α
                        .size            n86_binop_bx, .-n86_binop_bx
                        .type            n87_var_bx, @function
n87_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax;          jmp   n88_coerce_numeric_α
                        .size            n87_var_bx, .-n87_var_bx
                        .type            n88_coerce_numeric_bx, @function
n88_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_coerce_numeric_α:   mov              eax, dword ptr [rbp + 192]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_260_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_260_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_260_0
.Lcoerce_numeric_α_260_1:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax;          jmp   n89_coerce_numeric_α
.Lcoerce_numeric_α_260_0:
                        lea              rdi, [rbp + 192]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 176]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 176]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n89_coerce_numeric_α
                        .size            n88_coerce_numeric_bx, .-n88_coerce_numeric_bx
                        .type            n89_coerce_numeric_bx, @function
n89_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_coerce_numeric_α:   mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_262_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
.Lcoerce_numeric_α_262_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax;          jmp   n90_binop_α
.Lcoerce_numeric_α_262_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 192]
                        lea              rdx, [rbp + 160]
                        mov              rcx, 281483583422566
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 160]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n90_binop_α
                        .size            n89_coerce_numeric_bx, .-n89_coerce_numeric_bx
                        .type            n90_binop_bx, @function
n90_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            mov              eax, dword ptr [rbp + 176]
                        mov              ecx, dword ptr [rbp + 160]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_263_2
                        mov              rax, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 168]
                        sub              rax, rdx;                            jo    .Lbinop_α_263_0
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax;          jmp   .Lbinop_α_263_7
.Lbinop_α_263_2:        and              edx, 1;                              jz    .Lbinop_α_263_0
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdi, qword ptr [rbp + 168]
                        cmp              al, 5;                               je    .Lbinop_α_263_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_263_4
.Lbinop_α_263_3:        movq             xmm0, rsi
.Lbinop_α_263_4:        cmp              cl, 5;                               je    .Lbinop_α_263_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_263_6
.Lbinop_α_263_5:        movq             xmm1, rdi
.Lbinop_α_263_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_263_0
                        mov              qword ptr [rbp + 144], 5
                        mov              qword ptr [rbp + 152], rax
.Lbinop_α_263_7:                                                              jmp   n91_subscript_α
.Lbinop_α_263_0:        mov              rdi, qword ptr [rbp + 176]
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
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n91_subscript_α
                        .size            n90_binop_bx, .-n90_binop_bx
                        .type            n91_subscript_bx, @function
n91_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n92_var_ref_α
                        .size            n91_subscript_bx, .-n91_subscript_bx
                        .type            n92_var_ref_bx, @function
n92_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052336                      # q__STATIC__down
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n93_var_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 440], rax;          jmp   n94_var_α
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax;          jmp   n95_coerce_numeric_α
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_coerce_numeric_bx, @function
n95_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2272]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_272_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_272_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_272_0
.Lcoerce_numeric_α_272_1:
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 424], rax;          jmp   n96_coerce_numeric_α
.Lcoerce_numeric_α_272_0:
                        lea              rdi, [rbp + 2272]
                        lea              rsi, [rbp + 16]
                        lea              rdx, [rbp + 416]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 416]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n96_coerce_numeric_α
                        .size            n95_coerce_numeric_bx, .-n95_coerce_numeric_bx
                        .type            n96_coerce_numeric_bx, @function
n96_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_coerce_numeric_α:   mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_274_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_274_0
                        mov              eax, dword ptr [rbp + 2272]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_274_0
.Lcoerce_numeric_α_274_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax;          jmp   n97_binop_α
.Lcoerce_numeric_α_274_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 2272]
                        lea              rdx, [rbp + 400]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 400]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n97_binop_α
                        .size            n96_coerce_numeric_bx, .-n96_coerce_numeric_bx
                        .type            n97_binop_bx, @function
n97_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            mov              eax, dword ptr [rbp + 416]
                        mov              ecx, dword ptr [rbp + 400]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_275_2
                        mov              rax, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 408]
                        add              rax, rdx;                            jo    .Lbinop_α_275_0
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax;          jmp   .Lbinop_α_275_7
.Lbinop_α_275_2:        and              edx, 1;                              jz    .Lbinop_α_275_0
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdi, qword ptr [rbp + 408]
                        cmp              al, 5;                               je    .Lbinop_α_275_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_275_4
.Lbinop_α_275_3:        movq             xmm0, rsi
.Lbinop_α_275_4:        cmp              cl, 5;                               je    .Lbinop_α_275_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_275_6
.Lbinop_α_275_5:        movq             xmm1, rdi
.Lbinop_α_275_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_275_0
                        mov              qword ptr [rbp + 384], 5
                        mov              qword ptr [rbp + 392], rax
.Lbinop_α_275_7:                                                              jmp   n98_lit_integer_α
.Lbinop_α_275_0:        mov              rdi, qword ptr [rbp + 416]
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
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n98_lit_integer_α
                        .size            n97_binop_bx, .-n97_binop_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_276_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n99_coerce_numeric_α
.Llit_integer_α_276_0:  .quad            1
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_coerce_numeric_bx, @function
n99_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_coerce_numeric_α:   mov              eax, dword ptr [rbp + 384]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_278_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_278_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_278_0
.Lcoerce_numeric_α_278_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00001_binop_α
.Lcoerce_numeric_α_278_0:
                        lea              rdi, [rbp + 384]
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 368]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 368]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n00001_binop_α
                        .size            n99_coerce_numeric_bx, .-n99_coerce_numeric_bx
                        .type            n00001_binop_bx, @function
n00001_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_binop_α:           mov              eax, dword ptr [rbp + 368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_279_2
                        mov              rax, qword ptr [rbp + 376]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_279_0
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax;          jmp   .Lbinop_α_279_7
.Lbinop_α_279_2:        and              edx, 1;                              jz    .Lbinop_α_279_0
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_279_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_279_4
.Lbinop_α_279_3:        movq             xmm0, rsi
.Lbinop_α_279_4:        cmp              cl, 5;                               je    .Lbinop_α_279_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_279_6
.Lbinop_α_279_5:        movq             xmm1, rdi
.Lbinop_α_279_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_279_0
                        mov              qword ptr [rbp + 352], 5
                        mov              qword ptr [rbp + 360], rax
.Lbinop_α_279_7:                                                              jmp   n00002_subscript_α
.Lbinop_α_279_0:        mov              rdi, qword ptr [rbp + 368]
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
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00002_subscript_α
                        .size            n00001_binop_bx, .-n00001_binop_bx
                        .type            n00002_subscript_bx, @function
n00002_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_subscript_α:       mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00003_lit_integer_α
                        .size            n00002_subscript_bx, .-n00002_subscript_bx
                        .type            n00003_lit_integer_bx, @function
n00003_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_lit_integer_α:     mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00004_rev_assign_var_α
.Llit_integer_α_281_0:  .quad            1
                        .size            n00003_lit_integer_bx, .-n00003_lit_integer_bx
                        .type            n00004_rev_assign_var_bx, @function
n00004_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 480]
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
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:22
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 528]
                        mov              rcx, qword ptr [rbp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00005_rev_assign_var_α
n00004_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n48_to_β
                        .size            n00004_rev_assign_var_bx, .-n00004_rev_assign_var_bx
                        .type            n00005_rev_assign_var_bx, @function
n00005_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 288]
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
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:22
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00004_rev_assign_var_β
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00006_rev_assign_var_α
n00005_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n00004_rev_assign_var_β
                        .size            n00005_rev_assign_var_bx, .-n00005_rev_assign_var_bx
                        .type            n00006_rev_assign_var_bx, @function
n00006_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 80]
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
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:22
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00005_rev_assign_var_β
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00007_conjunction_α
n00006_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n00005_rev_assign_var_β
                        .size            n00006_rev_assign_var_bx, .-n00006_rev_assign_var_bx
                        .type            n00007_conjunction_bx, @function
n00007_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_conjunction_α:     mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00008_bound_α
n00007_conjunction_β:                                                           jmp   q_ω
                        .size            n00007_conjunction_bx, .-n00007_conjunction_bx
                        .type            n00008_bound_bx, @function
n00008_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_bound_α:           mov              qword ptr [rbp + 1120], rsp;         jmp   n00009_line_mark_α
                        .size            n00008_bound_bx, .-n00008_bound_bx
                        .type            n00009_line_mark_bx, @function
n00009_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79;             jmp   n00010_var_ref_α
                        .size            n00009_line_mark_bx, .-n00009_line_mark_bx
                        .type            n00010_var_ref_bx, @function
n00010_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # solution
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n00011_var_α
                        .size            n00010_var_ref_bx, .-n00010_var_ref_bx
                        .type            n00011_var_bx, @function
n00011_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_var_α:             mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n00012_subscript_α
                        .size            n00011_var_bx, .-n00011_var_bx
                        .type            n00012_subscript_bx, @function
n00012_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_subscript_α:       mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_line_mark_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00014_var_α
                        .size            n00012_subscript_bx, .-n00012_subscript_bx
                        .type            n00014_var_bx, @function
n00014_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:             mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n00015_assign_var_α
                        .size            n00014_var_bx, .-n00014_var_bx
                        .type            n00015_assign_var_bx, @function
n00015_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_assign_var_α:      mov              rdi, qword ptr [rbp + 1456]
                        mov              rsi, qword ptr [rbp + 1464]
                        mov              rdx, qword ptr [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00013_line_mark_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00013_line_mark_α
                        .size            n00015_assign_var_bx, .-n00015_assign_var_bx
                        .type            n00013_line_mark_bx, @function
n00013_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00016_disjunction_α
                        .size            n00013_line_mark_bx, .-n00013_line_mark_bx
                        .type            n00016_disjunction_bx, @function
n00016_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_disjunction_α:     mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0;           jmp   n00017_var_α
.Ldisjunction_γ_115_as: mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_301_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00018_conjunction_α
.Ldisjunction_α_301_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_301_1
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00018_conjunction_α
.Ldisjunction_α_301_1:                                                        jmp   n00018_conjunction_α
n00016_disjunction_β:     mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              je    n00019_unmark_α
                                                                              jmp   n00019_unmark_α
.Ldisjunction_γ_115_af:
.Ldisjunction_ω_115_af: add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1;                              je    n00020_var_α
                                                                              jmp   n00019_unmark_α
                        .size            n00016_disjunction_bx, .-n00016_disjunction_bx
                        .type            n00018_conjunction_bx, @function
n00018_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_conjunction_α:     mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n00019_unmark_α
n00018_conjunction_β:                                                           jmp   n00019_unmark_α
                        .size            n00018_conjunction_bx, .-n00018_conjunction_bx
                        .type            n00020_var_bx, @function
n00020_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_α:             mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00021_lit_integer_α
n00020_var_β:                                                                   jmp   n00019_unmark_α
                        .size            n00020_var_bx, .-n00020_var_bx
                        .type            n00021_lit_integer_bx, @function
n00021_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_lit_integer_α:     mov              qword ptr [rbp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_305_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n00022_coerce_numeric_α
.Llit_integer_α_305_0:  .quad            1
                        .size            n00021_lit_integer_bx, .-n00021_lit_integer_bx
                        .type            n00022_coerce_numeric_bx, @function
n00022_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_coerce_numeric_α:  mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_307_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_307_0
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_307_0
.Lcoerce_numeric_α_307_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00023_binop_α
.Lcoerce_numeric_α_307_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 1392]
                        lea              rdx, [rbp + 1360]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1360]
                        cmp              al, 104;                             je    n00019_unmark_α
                                                                              jmp   n00023_binop_α
                        .size            n00022_coerce_numeric_bx, .-n00022_coerce_numeric_bx
                        .type            n00023_binop_bx, @function
n00023_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_binop_α:           mov              eax, dword ptr [rbp + 1360]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_308_2
                        mov              rax, qword ptr [rbp + 1368]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_308_0
                        mov              qword ptr [rbp + 1344], 3
                        mov              qword ptr [rbp + 1352], rax;         jmp   .Lbinop_α_308_7
.Lbinop_α_308_2:        and              edx, 1;                              jz    .Lbinop_α_308_0
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_308_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_308_4
.Lbinop_α_308_3:        movq             xmm0, rsi
.Lbinop_α_308_4:        cmp              cl, 5;                               je    .Lbinop_α_308_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_308_6
.Lbinop_α_308_5:        movq             xmm1, rdi
.Lbinop_α_308_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_308_0
                        mov              qword ptr [rbp + 1344], 5
                        mov              qword ptr [rbp + 1352], rax
.Lbinop_α_308_7:                                                              jmp   n00024_line_mark_α
.Lbinop_α_308_0:        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00019_unmark_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00024_line_mark_α
                        .size            n00023_binop_bx, .-n00023_binop_bx
                        .type            n00024_line_mark_bx, @function
n00024_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00025_call_proc_staged_α
                        .size            n00024_line_mark_bx, .-n00024_line_mark_bx
                        .type            n00025_call_proc_staged_bx, @function
n00025_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_call_proc_staged_α:
                        lea              rsi, [rbp + 1344]
                        call             q_dcα;                               jmp   .Lcall_proc_staged_α_312_2
.Lcall_proc_staged_α_312_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_312_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
.Lcall_proc_staged_α_312_29:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n00019_unmark_α
                                                                              jmp   n00026_deref_α
n00025_call_proc_staged_β:
                                                                              jmp   n00019_unmark_α
.Lcall_proc_staged_β_312_0:
                        .quad            .Lcall_proc_staged_β_312_0_s
.Lcall_proc_staged_β_312_0_s:
                        .string          "q"
                        .size            n00025_call_proc_staged_bx, .-n00025_call_proc_staged_bx
                        .type            n00026_deref_bx, @function
n00026_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_deref_α:           mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00019_unmark_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_115_as
n00026_deref_β:                                                                 jmp   n00019_unmark_α
                        .size            n00026_deref_bx, .-n00026_deref_bx
                        .type            n00017_var_bx, @function
n00017_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_var_α:             mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00027_var_α
n00017_var_β:                                                                   jmp   .Ldisjunction_ω_115_af
                        .size            n00017_var_bx, .-n00017_var_bx
                        .type            n00027_var_bx, @function
n00027_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1280], rax          # result
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n00028_binop_test_α
                        .size            n00027_var_bx, .-n00027_var_bx
                        .type            n00028_binop_test_bx, @function
n00028_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_binop_test_α:      mov              eax, dword ptr [rbp + 16]
                        cmp              al, 112;                             je    .Lbinop_test_α_317_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 112;                             je    .Lbinop_test_α_317_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_317_2
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 3;                               jne   .Lbinop_test_α_317_2
.Lbinop_test_α_317_1:   mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 1288]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_115_af
                        mov              rcx, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rcx
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rcx;         jmp   n00029_line_mark_α
.Lbinop_test_α_317_0:   mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8d, 9
                        lea              r9, [rbp + 1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_317_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_115_af
                        push             rax                                  # gc_poll bb_binop_relop.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00029_line_mark_α
.Lbinop_test_α_317_2:   mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_115_af
                        mov              rdi, qword ptr [rbp + 16]
                        mov              rsi, qword ptr [rbp + 24]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        lea              r8, [rbp + 1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_relop.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00029_line_mark_α
                        .size            n00028_binop_test_bx, .-n00028_binop_test_bx
                        .type            n00029_line_mark_bx, @function
n00029_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00030_call_proc_staged_α
                        .size            n00029_line_mark_bx, .-n00029_line_mark_bx
                        .type            n00030_call_proc_staged_bx, @function
n00030_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_call_proc_staged_α:
                        call             show_dcα;                            jmp   .Lcall_proc_staged_α_321_2
.Lcall_proc_staged_α_321_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_321_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
.Lcall_proc_staged_α_321_29:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n00019_unmark_α
                                                                              jmp   n00031_deref_α
n00030_call_proc_staged_β:
                                                                              jmp   n00019_unmark_α
.Lcall_proc_staged_β_321_0:
                        .quad            .Lcall_proc_staged_β_321_0_s
.Lcall_proc_staged_β_321_0_s:
                        .string          "show"
                        .size            n00030_call_proc_staged_bx, .-n00030_call_proc_staged_bx
                        .type            n00031_deref_bx, @function
n00031_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_deref_α:           mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00019_unmark_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_115_as
n00031_deref_β:                                                                 jmp   n00019_unmark_α
                        .size            n00031_deref_bx, .-n00031_deref_bx
                        .type            n00019_unmark_bx, @function
n00019_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_unmark_α:          mov              rsp, qword ptr [rbp + 1120];         jmp   n00006_rev_assign_var_β
                        .size            n00019_unmark_bx, .-n00019_unmark_bx
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
                        lea              rsp, [rbp + 2384]
                        mov              rbp, qword ptr [rbp + 2376];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 2384]
                        mov              rbp, qword ptr [rbp + 2376];         jmp   qword ptr [rsp + 8]
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
                        push             rax                                  # gc_poll xa_flat.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      add              rsp, 16
                        lea              rcx, [rip + .Lq_α_325_3]
                        push             rcx
                        lea              rcx, [rip + .Lq_α_325_2]
                        push             rcx;                                 jmp   FN__q
.Lq_α_325_2:            add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lq_α_325_3:            add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_q:
                        .quad            10240548490586
                        .quad            34359738448
                        .quad            .Lgcmap_q_s
                        .quad            2288
                        .quad            9
                        .quad            721279627821056
                        .quad            17596481012368
                        .quad            492581209244320
                        .quad            17596481012832
                        .quad            52776558134384
                        .quad            17596481012896
                        .quad            387028092978352
                        .quad            17596481013264
                        .quad            791648372000288
.Lgcmap_q_s:            .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1648
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1640
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_show]
                        mov              qword ptr [rsp + 1592], rax
                        mov              dword ptr [rsp + 1584], 160
                        mov              dword ptr [rsp + 1588], 1648
                        mov              eax, 0
                        mov              qword ptr [rsp + 1640], rbp
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
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lshow_α_325_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm326:        .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm326]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 0
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Lshow_α_325_245:
show_α_body:
                        .type            n00032_line_mark_bx, @function
n00032_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_405_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00033_line_mark_α
.Lline_mark_α_405_0:    .quad            .Lline_mark_α_405_0_s
.Lline_mark_α_405_0_s:  .string          "queens.icn"
                        .size            n00032_line_mark_bx, .-n00032_line_mark_bx
                        .type            n00033_line_mark_bx, @function
n00033_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00034_disjunction_α
                        .size            n00033_line_mark_bx, .-n00033_line_mark_bx
                        .type            n00034_disjunction_bx, @function
n00034_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_disjunction_α:     mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              dword ptr [rbp + 1008], 0;           jmp   n00035_var_α
.Ldisjunction_γ_329_as: mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_409_0
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00036_line_mark_α
.Ldisjunction_α_409_0:                                                        jmp   n00036_line_mark_α
n00034_disjunction_β:     mov              eax, dword ptr [rbp + 1008];         jmp   n00037_goto_β
.Ldisjunction_γ_329_af:
.Ldisjunction_ω_329_af: add              dword ptr [rbp + 1008], 1
                        mov              eax, dword ptr [rbp + 1008];         jmp   n00036_line_mark_α
                        .size            n00034_disjunction_bx, .-n00034_disjunction_bx
                        .type            n00035_var_bx, @function
n00035_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_var_α:             mov              rax, qword ptr [r9 + 144]            # show__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rbp + 1536], rax          # result
                        mov              qword ptr [rbp + 1544], rdx;         jmp   n00038_unop_test_α
n00035_var_β:                                                                   jmp   .Ldisjunction_ω_329_af
                        .size            n00035_var_bx, .-n00035_var_bx
                        .type            n00038_unop_test_bx, @function
n00038_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_unop_test_α:       mov              eax, dword ptr [rbp + 1536]
                        cmp              al, 104;                             je    .Ldisjunction_ω_329_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_329_af
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1528], 0;           jmp   n00039_lit_integer_α
                        .size            n00038_unop_test_bx, .-n00038_unop_test_bx
                        .type            n00039_lit_integer_bx, @function
n00039_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_lit_integer_α:     mov              qword ptr [rbp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_412_0]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n00040_assign_α
.Llit_integer_α_412_0:  .quad            1
                        .size            n00039_lit_integer_bx, .-n00039_lit_integer_bx
                        .type            n00040_assign_bx, @function
n00040_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_assign_α:          mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [r9 + 144], rax            # show__INITFLAG__0
                        mov              qword ptr [r9 + 152], rdx;           jmp   n00041_line_mark_α
                        .size            n00040_assign_bx, .-n00040_assign_bx
                        .type            n00041_line_mark_bx, @function
n00041_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00042_lit_integer_α
                        .size            n00041_line_mark_bx, .-n00041_line_mark_bx
                        .type            n00042_lit_integer_bx, @function
n00042_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_lit_integer_α:     mov              qword ptr [rbp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_416_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n00043_assign_α
.Llit_integer_α_416_0:  .quad            0
                        .size            n00042_lit_integer_bx, .-n00042_lit_integer_bx
                        .type            n00043_assign_bx, @function
n00043_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_assign_α:          mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00044_line_mark_α
                        .size            n00043_assign_bx, .-n00043_assign_bx
                        .type            n00044_line_mark_bx, @function
n00044_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00045_lit_string_α
                        .size            n00044_line_mark_bx, .-n00044_line_mark_bx
                        .type            n00045_lit_string_bx, @function
n00045_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_string_α:      mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_420_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00046_var_ref_α
.Llit_string_α_420_0:   .quad            .Llit_string_α_420_0_s
.Llit_string_α_420_0_s: .string          "|   "
                        .size            n00045_lit_string_bx, .-n00045_lit_string_bx
                        .type            n00046_var_ref_bx, @function
n00046_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n00047_deref_α
                        .size            n00046_var_ref_bx, .-n00046_var_ref_bx
                        .type            n00047_deref_bx, @function
n00047_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_deref_α:           mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00048_line_mark_α
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00049_line_mark_α
                        .size            n00047_deref_bx, .-n00047_deref_bx
                        .type            n00049_line_mark_bx, @function
n00049_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00050_call_icon_α
                        .size            n00049_line_mark_bx, .-n00049_line_mark_bx
                        .type            n00050_call_icon_bx, @function
n00050_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_call_icon_α:       mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        .section         .rodata
.Lcall_icon_α_rkfn427:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn427]
                        lea              rsi, [rbp + 1312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    n00048_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00051_lit_string_α
n00050_call_icon_β:                                                             jmp   n00048_line_mark_α
                        .size            n00050_call_icon_bx, .-n00050_call_icon_bx
                        .type            n00051_lit_string_bx, @function
n00051_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_lit_string_α:      mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_428_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n00052_binop_α
.Llit_string_α_428_0:   .quad            .Llit_string_α_428_0_s
.Llit_string_α_428_0_s: .string          "|"
                        .size            n00051_lit_string_bx, .-n00051_lit_string_bx
                        .type            n00052_binop_bx, @function
n00052_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_binop_α:           mov              rdi, qword ptr [rbp + 1296]
                        mov              rsi, qword ptr [rbp + 1304]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00053_assign_α
                        .size            n00052_binop_bx, .-n00052_binop_bx
                        .type            n00053_assign_bx, @function
n00053_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_assign_α:          mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
                        mov              qword ptr [r9 + 112], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 120], rdx;           jmp   n00048_line_mark_α
                        .size            n00053_assign_bx, .-n00053_assign_bx
                        .type            n00048_line_mark_bx, @function
n00048_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 92;             jmp   n00054_lit_string_α
                        .size            n00048_line_mark_bx, .-n00048_line_mark_bx
                        .type            n00054_lit_string_bx, @function
n00054_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_lit_string_α:      mov              qword ptr [rbp + 1152], 2            # result
                        mov              dword ptr [rbp + 1156], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_433_0]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n00055_var_ref_α
.Llit_string_α_433_0:   .quad            .Llit_string_α_433_0_s
.Llit_string_α_433_0_s: .string          "----"
                        .size            n00054_lit_string_bx, .-n00054_lit_string_bx
                        .type            n00055_var_ref_bx, @function
n00055_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n00056_deref_α
                        .size            n00055_var_ref_bx, .-n00055_var_ref_bx
                        .type            n00056_deref_bx, @function
n00056_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_deref_α:           mov              rdi, qword ptr [rbp + 1184]
                        mov              rsi, qword ptr [rbp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00036_line_mark_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00057_line_mark_α
                        .size            n00056_deref_bx, .-n00056_deref_bx
                        .type            n00057_line_mark_bx, @function
n00057_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 92;             jmp   n00058_call_icon_α
                        .size            n00057_line_mark_bx, .-n00057_line_mark_bx
                        .type            n00058_call_icon_bx, @function
n00058_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_call_icon_α:       mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn440:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn440]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n00036_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00059_lit_string_α
n00058_call_icon_β:                                                             jmp   n00036_line_mark_α
                        .size            n00058_call_icon_bx, .-n00058_call_icon_bx
                        .type            n00059_lit_string_bx, @function
n00059_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_string_α:      mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_441_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n00060_binop_α
.Llit_string_α_441_0:   .quad            .Llit_string_α_441_0_s
.Llit_string_α_441_0_s: .string          "-"
                        .size            n00059_lit_string_bx, .-n00059_lit_string_bx
                        .type            n00060_binop_bx, @function
n00060_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_binop_α:           mov              rdi, qword ptr [rbp + 1088]
                        mov              rsi, qword ptr [rbp + 1096]
                        mov              rdx, qword ptr [rbp + 1216]
                        mov              rcx, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00061_assign_α
                        .size            n00060_binop_bx, .-n00060_binop_bx
                        .type            n00061_assign_bx, @function
n00061_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_assign_α:          mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [r9 + 128], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n00062_conjunction_α
                        .size            n00061_assign_bx, .-n00061_assign_bx
                        .type            n00062_conjunction_bx, @function
n00062_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_conjunction_α:     mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n00063_conjunction_α
n00062_conjunction_β:                                                           jmp   n00036_line_mark_α
                        .size            n00062_conjunction_bx, .-n00062_conjunction_bx
                        .type            n00063_conjunction_bx, @function
n00063_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_conjunction_α:     mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_329_as
n00063_conjunction_β:                                                           jmp   n00036_line_mark_α
                        .size            n00063_conjunction_bx, .-n00063_conjunction_bx
                        .type            n00037_goto_bx, @function
n00037_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_goto_α:                                                                  jmp   n00036_line_mark_α
n00037_goto_β:                                                                  jmp   n00036_line_mark_α
                        .size            n00037_goto_bx, .-n00037_goto_bx
                        .type            n00036_line_mark_bx, @function
n00036_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00064_lit_string_α
                        .size            n00036_line_mark_bx, .-n00036_line_mark_bx
                        .type            n00064_lit_string_bx, @function
n00064_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_lit_string_α:      mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_449_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00065_lit_integer_α
.Llit_string_α_449_0:   .quad            .Llit_string_α_449_0_s
.Llit_string_α_449_0_s: .string          "solution: "
                        .size            n00064_lit_string_bx, .-n00064_lit_string_bx
                        .type            n00065_lit_integer_bx, @function
n00065_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_lit_integer_α:     mov              qword ptr [rbp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_450_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00066_var_α
.Llit_integer_α_450_0:  .quad            1
                        .size            n00065_lit_integer_bx, .-n00065_lit_integer_bx
                        .type            n00066_var_bx, @function
n00066_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_var_α:             mov              rax, qword ptr [r9 + 96]             # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 960], rax           # result
                        mov              qword ptr [rbp + 968], rdx;          jmp   n00067_coerce_numeric_α
                        .size            n00066_var_bx, .-n00066_var_bx
                        .type            n00067_coerce_numeric_bx, @function
n00067_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_coerce_numeric_α:  mov              eax, dword ptr [rbp + 960]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_453_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_453_0
                        mov              eax, dword ptr [rbp + 944]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_453_0
.Lcoerce_numeric_α_453_1:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00068_binop_α
.Lcoerce_numeric_α_453_0:
                        lea              rdi, [rbp + 960]
                        lea              rsi, [rbp + 944]
                        lea              rdx, [rbp + 928]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 928]
                        cmp              al, 104;                             je    n00069_line_mark_α
                                                                              jmp   n00068_binop_α
                        .size            n00067_coerce_numeric_bx, .-n00067_coerce_numeric_bx
                        .type            n00068_binop_bx, @function
n00068_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_binop_α:           mov              eax, dword ptr [rbp + 928]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_454_2
                        mov              rax, qword ptr [rbp + 936]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_454_0
                        mov              qword ptr [rbp + 912], 3
                        mov              qword ptr [rbp + 920], rax;          jmp   .Lbinop_α_454_7
.Lbinop_α_454_2:        and              edx, 1;                              jz    .Lbinop_α_454_0
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_454_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_454_4
.Lbinop_α_454_3:        movq             xmm0, rsi
.Lbinop_α_454_4:        cmp              cl, 5;                               je    .Lbinop_α_454_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_454_6
.Lbinop_α_454_5:        movq             xmm1, rdi
.Lbinop_α_454_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_454_0
                        mov              qword ptr [rbp + 912], 5
                        mov              qword ptr [rbp + 920], rax
.Lbinop_α_454_7:                                                              jmp   n00070_assign_α
.Lbinop_α_454_0:        mov              rdi, qword ptr [rbp + 928]
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdx, qword ptr [rbp + 944]
                        mov              rcx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00069_line_mark_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00070_assign_α
                        .size            n00068_binop_bx, .-n00068_binop_bx
                        .type            n00070_assign_bx, @function
n00070_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_assign_α:          mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00071_line_mark_α
                        .size            n00070_assign_bx, .-n00070_assign_bx
                        .type            n00071_line_mark_bx, @function
n00071_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00072_call_icon_α
                        .size            n00071_line_mark_bx, .-n00071_line_mark_bx
                        .type            n00072_call_icon_bx, @function
n00072_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_call_icon_α:       mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn459:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn459]
                        lea              rsi, [rbp + 816]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    n00069_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00069_line_mark_α
n00072_call_icon_β:                                                             jmp   n00069_line_mark_α
                        .size            n00072_call_icon_bx, .-n00072_call_icon_bx
                        .type            n00069_line_mark_bx, @function
n00069_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00073_lit_string_α
                        .size            n00069_line_mark_bx, .-n00069_line_mark_bx
                        .type            n00073_lit_string_bx, @function
n00073_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_lit_string_α:      mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_462_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00074_var_α
.Llit_string_α_462_0:   .quad            .Llit_string_α_462_0_s
.Llit_string_α_462_0_s: .string          "  "
                        .size            n00073_lit_string_bx, .-n00073_lit_string_bx
                        .type            n00074_var_bx, @function
n00074_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_var_α:             mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 768], rax           # result
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00075_line_mark_α
                        .size            n00074_var_bx, .-n00074_var_bx
                        .type            n00075_line_mark_bx, @function
n00075_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00076_call_icon_α
                        .size            n00075_line_mark_bx, .-n00075_line_mark_bx
                        .type            n00076_call_icon_bx, @function
n00076_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_call_icon_α:       mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lcall_icon_α_rkfn467:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn467]
                        lea              rsi, [rbp + 688]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    n00077_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00077_line_mark_α
n00076_call_icon_β:                                                             jmp   n00077_line_mark_α
                        .size            n00076_call_icon_bx, .-n00076_call_icon_bx
                        .type            n00077_line_mark_bx, @function
n00077_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00078_var_ref_α
                        .size            n00077_line_mark_bx, .-n00077_line_mark_bx
                        .type            n00078_var_ref_bx, @function
n00078_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052400                      # show__STATIC__line
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00079_lit_integer_α
                        .size            n00078_var_ref_bx, .-n00078_var_ref_bx
                        .type            n00079_lit_integer_bx, @function
n00079_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_lit_integer_α:     mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_472_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00080_var_α
.Llit_integer_α_472_0:  .quad            4
                        .size            n00079_lit_integer_bx, .-n00079_lit_integer_bx
                        .type            n00080_var_bx, @function
n00080_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_α:             mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 208], rax           # result
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00081_iterate_α
                        .size            n00080_var_bx, .-n00080_var_bx
                        .type            n00081_iterate_bx, @function
n00081_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_iterate_α:         mov              qword ptr [rbp + 192], 0
.Literate_α_475_0:      mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 192]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00082_line_mark_α
                        push             rax                                  # gc_poll bb_iterate.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00083_lit_integer_α
n00081_iterate_β:         inc              qword ptr [rbp + 192];               jmp   .Literate_α_475_0
                        .size            n00081_iterate_bx, .-n00081_iterate_bx
                        .type            n00083_lit_integer_bx, @function
n00083_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_integer_α:     mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_476_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00084_coerce_numeric_α
.Llit_integer_α_476_0:  .quad            1
                        .size            n00083_lit_integer_bx, .-n00083_lit_integer_bx
                        .type            n00084_coerce_numeric_bx, @function
n00084_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_coerce_numeric_α:  mov              eax, dword ptr [rbp + 176]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_478_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_478_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_478_0
.Lcoerce_numeric_α_478_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00085_binop_α
.Lcoerce_numeric_α_478_0:
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 160]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 160]
                        cmp              al, 104;                             je    n00082_line_mark_α
                                                                              jmp   n00085_binop_α
                        .size            n00084_coerce_numeric_bx, .-n00084_coerce_numeric_bx
                        .type            n00085_binop_bx, @function
n00085_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_binop_α:           mov              eax, dword ptr [rbp + 160]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_479_2
                        mov              rax, qword ptr [rbp + 168]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_479_0
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax;          jmp   .Lbinop_α_479_7
.Lbinop_α_479_2:        and              edx, 1;                              jz    .Lbinop_α_479_0
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_479_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_479_4
.Lbinop_α_479_3:        movq             xmm0, rsi
.Lbinop_α_479_4:        cmp              cl, 5;                               je    .Lbinop_α_479_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_479_6
.Lbinop_α_479_5:        movq             xmm1, rdi
.Lbinop_α_479_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_479_0
                        mov              qword ptr [rbp + 144], 5
                        mov              qword ptr [rbp + 152], rax
.Lbinop_α_479_7:                                                              jmp   n00086_coerce_numeric_α
.Lbinop_α_479_0:        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00082_line_mark_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00086_coerce_numeric_α
                        .size            n00085_binop_bx, .-n00085_binop_bx
                        .type            n00086_coerce_numeric_bx, @function
n00086_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_coerce_numeric_α:  mov              eax, dword ptr [rbp + 144]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_481_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_481_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_481_0
.Lcoerce_numeric_α_481_1:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00087_binop_α
.Lcoerce_numeric_α_481_0:
                        lea              rdi, [rbp + 144]
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 112]
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 112]
                        cmp              al, 104;                             je    n00082_line_mark_α
                                                                              jmp   n00087_binop_α
                        .size            n00086_coerce_numeric_bx, .-n00086_coerce_numeric_bx
                        .type            n00087_binop_bx, @function
n00087_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_binop_α:           mov              eax, 3
                        mov              ecx, dword ptr [rbp + 112]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_482_2
                        mov              rax, 4
                        mov              rdx, qword ptr [rbp + 120]
                        imul             rax, rdx;                            jo    .Lbinop_α_482_0
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax;          jmp   .Lbinop_α_482_7
.Lbinop_α_482_2:        and              edx, 1;                              jz    .Lbinop_α_482_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rbp + 120]
                        cmp              al, 5;                               je    .Lbinop_α_482_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_482_4
.Lbinop_α_482_3:        movq             xmm0, rsi
.Lbinop_α_482_4:        cmp              cl, 5;                               je    .Lbinop_α_482_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_482_6
.Lbinop_α_482_5:        movq             xmm1, rdi
.Lbinop_α_482_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_482_0
                        mov              qword ptr [rbp + 96], 5
                        mov              qword ptr [rbp + 104], rax
.Lbinop_α_482_7:                                                              jmp   n00088_lit_integer_α
.Lbinop_α_482_0:        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00082_line_mark_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00088_lit_integer_α
                        .size            n00087_binop_bx, .-n00087_binop_bx
                        .type            n00088_lit_integer_bx, @function
n00088_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_lit_integer_α:     mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_483_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00089_coerce_numeric_α
.Llit_integer_α_483_0:  .quad            3
                        .size            n00088_lit_integer_bx, .-n00088_lit_integer_bx
                        .type            n00089_coerce_numeric_bx, @function
n00089_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_coerce_numeric_α:  mov              eax, dword ptr [rbp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_485_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_485_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_485_0
.Lcoerce_numeric_α_485_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax;           jmp   n00090_binop_α
.Lcoerce_numeric_α_485_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 80]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 80]
                        cmp              al, 104;                             je    n00082_line_mark_α
                                                                              jmp   n00090_binop_α
                        .size            n00089_coerce_numeric_bx, .-n00089_coerce_numeric_bx
                        .type            n00090_binop_bx, @function
n00090_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_binop_α:           mov              eax, dword ptr [rbp + 80]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_486_2
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, 3
                        add              rax, rdx;                            jo    .Lbinop_α_486_0
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax;           jmp   .Lbinop_α_486_7
.Lbinop_α_486_2:        and              edx, 1;                              jz    .Lbinop_α_486_0
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_486_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_486_4
.Lbinop_α_486_3:        movq             xmm0, rsi
.Lbinop_α_486_4:        cmp              cl, 5;                               je    .Lbinop_α_486_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_486_6
.Lbinop_α_486_5:        movq             xmm1, rdi
.Lbinop_α_486_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_486_0
                        mov              qword ptr [rbp + 64], 5
                        mov              qword ptr [rbp + 72], rax
.Lbinop_α_486_7:                                                              jmp   n00091_subscript_α
.Lbinop_α_486_0:        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00082_line_mark_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00091_subscript_α
                        .size            n00090_binop_bx, .-n00090_binop_bx
                        .type            n00091_subscript_bx, @function
n00091_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_subscript_α:       mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00081_iterate_β
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00092_lit_string_α
                        .size            n00091_subscript_bx, .-n00091_subscript_bx
                        .type            n00092_lit_string_bx, @function
n00092_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_lit_string_α:      mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_488_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00093_rev_assign_var_α
.Llit_string_α_488_0:   .quad            .Llit_string_α_488_0_s
.Llit_string_α_488_0_s: .string          "Q"
                        .size            n00092_lit_string_bx, .-n00092_lit_string_bx
                        .type            n00093_rev_assign_var_bx, @function
n00093_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:22
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00081_iterate_β
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00094_bound_α
n00093_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n00081_iterate_β
                        .size            n00093_rev_assign_var_bx, .-n00093_rev_assign_var_bx
                        .type            n00094_bound_bx, @function
n00094_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_bound_α:           mov              qword ptr [rbp + 352], rsp;          jmp   n00095_line_mark_α
                        .size            n00094_bound_bx, .-n00094_bound_bx
                        .type            n00095_line_mark_bx, @function
n00095_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00096_lit_string_α
                        .size            n00095_line_mark_bx, .-n00095_line_mark_bx
                        .type            n00096_lit_string_bx, @function
n00096_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_lit_string_α:      mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_494_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00097_var_α
.Llit_string_α_494_0:   .quad            .Llit_string_α_494_0_s
.Llit_string_α_494_0_s: .string          "  "
                        .size            n00096_lit_string_bx, .-n00096_lit_string_bx
                        .type            n00097_var_bx, @function
n00097_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:             mov              rax, qword ptr [r9 + 112]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 624], rax           # result
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00098_line_mark_α
                        .size            n00097_var_bx, .-n00097_var_bx
                        .type            n00098_line_mark_bx, @function
n00098_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00099_call_icon_α
                        .size            n00098_line_mark_bx, .-n00098_line_mark_bx
                        .type            n00099_call_icon_bx, @function
n00099_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_call_icon_α:       mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lcall_icon_α_rkfn499:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn499]
                        lea              rsi, [rbp + 544]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    n00100_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00100_line_mark_α
n00099_call_icon_β:                                                             jmp   n00100_line_mark_α
                        .size            n00099_call_icon_bx, .-n00099_call_icon_bx
                        .type            n00100_line_mark_bx, @function
n00100_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00101_lit_string_α
                        .size            n00100_line_mark_bx, .-n00100_line_mark_bx
                        .type            n00101_lit_string_bx, @function
n00101_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_lit_string_α:      mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_502_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00102_var_α
.Llit_string_α_502_0:   .quad            .Llit_string_α_502_0_s
.Llit_string_α_502_0_s: .string          "  "
                        .size            n00101_lit_string_bx, .-n00101_lit_string_bx
                        .type            n00102_var_bx, @function
n00102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_var_α:             mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 496], rax           # result
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00103_line_mark_α
                        .size            n00102_var_bx, .-n00102_var_bx
                        .type            n00103_line_mark_bx, @function
n00103_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00104_call_icon_α
                        .size            n00103_line_mark_bx, .-n00103_line_mark_bx
                        .type            n00104_call_icon_bx, @function
n00104_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_call_icon_α:       mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn507:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn507]
                        lea              rsi, [rbp + 416]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n00105_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00106_conjunction_α
n00104_call_icon_β:                                                             jmp   n00105_unmark_α
                        .size            n00104_call_icon_bx, .-n00104_call_icon_bx
                        .type            n00106_conjunction_bx, @function
n00106_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_conjunction_α:     mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00105_unmark_α
n00106_conjunction_β:                                                           jmp   n00105_unmark_α
                        .size            n00106_conjunction_bx, .-n00106_conjunction_bx
                        .type            n00105_unmark_bx, @function
n00105_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_unmark_α:          mov              rsp, qword ptr [rbp + 352];          jmp   n00093_rev_assign_var_β
                        .size            n00105_unmark_bx, .-n00105_unmark_bx
                        .type            n00082_line_mark_bx, @function
n00082_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00107_line_mark_α
                        .size            n00082_line_mark_bx, .-n00082_line_mark_bx
                        .type            n00107_line_mark_bx, @function
n00107_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00108_call_icon_α
                        .size            n00107_line_mark_bx, .-n00107_line_mark_bx
                        .type            n00108_call_icon_bx, @function
n00108_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn516:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn516]
                        lea              rsi, [rbp + 16]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    show_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   show_ω
n00108_call_icon_β:                                                             jmp   show_ω
                        .size            n00108_call_icon_bx, .-n00108_call_icon_bx
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
                        lea              rsp, [rbp + 1648]
                        mov              rbp, qword ptr [rbp + 1640];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 1648]
                        mov              rbp, qword ptr [rbp + 1640];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
show_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        lea              rcx, [rip + .Lshow_α_517_3]
                        push             rcx
                        lea              rcx, [rip + .Lshow_α_517_2]
                        push             rcx;                                 jmp   FN__show
.Lshow_α_517_2:         add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshow_α_517_3:         add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_show:
                        .quad            7079452560730
                        .quad            34359738416
                        .quad            .Lgcmap_show_s
                        .quad            1584
                        .quad            7
                        .quad            211106232532992
                        .quad            17596481011904
                        .quad            158329674399952
                        .quad            17596481012064
                        .quad            703687441777008
                        .quad            17596481012720
                        .quad            615726511555584
.Lgcmap_show_s:         .string          "show"
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3856
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 3848
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3640], rax
                        mov              dword ptr [rsp + 3632], 160
                        mov              dword ptr [rsp + 3636], 3856
                        mov              eax, 0
                        mov              qword ptr [rsp + 3848], rbp
                        mov              rbp, rsp
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
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Loptions_α_517_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm518:        .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm518]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 2
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Loptions_α_517_245:
options_α_body:
                        .type            n00109_line_mark_bx, @function
n00109_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 106
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_679_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00110_line_mark_α
.Lline_mark_α_679_0:    .quad            .Lline_mark_α_679_0_s
.Lline_mark_α_679_0_s:  .string          "queens.icn"
                        .size            n00109_line_mark_bx, .-n00109_line_mark_bx
                        .type            n00110_line_mark_bx, @function
n00110_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00111_var_ref_α
                        .size            n00110_line_mark_bx, .-n00110_line_mark_bx
                        .type            n00111_var_ref_bx, @function
n00111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx;         jmp   n00112_nulltest_var_α
                        .size            n00111_var_ref_bx, .-n00111_var_ref_bx
                        .type            n00112_nulltest_var_bx, @function
n00112_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_nulltest_var_α:    mov              eax, dword ptr [rbp + 3344]
                        cmp              al, 104;                             je    n00113_line_mark_α
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00113_line_mark_α
                        cmp              eax, 0;                              jne   n00113_line_mark_α
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3368], rax
                        push             rax                                  # gc_poll bb_unop.cpp:58
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00114_lit_charset_α
                        .size            n00112_nulltest_var_bx, .-n00112_nulltest_var_bx
                        .type            n00114_lit_charset_bx, @function
n00114_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_lit_charset_α:     mov              qword ptr [rbp + 3440], 2            # result
                        mov              dword ptr [rbp + 3444], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_685_0]
                        mov              qword ptr [rbp + 3448], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_685_0]
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
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00115_line_mark_α
.Llit_charset_α_685_0:  .quad            .Llit_charset_α_685_0_s
.Llit_charset_α_685_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00114_lit_charset_bx, .-n00114_lit_charset_bx
                        .type            n00115_line_mark_bx, @function
n00115_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00116_call_icon_α
                        .size            n00115_line_mark_bx, .-n00115_line_mark_bx
                        .type            n00116_call_icon_bx, @function
n00116_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_call_icon_α:       mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3416], rax
                        .section         .rodata
.Lcall_icon_α_rkfn689:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn689]
                        lea              rsi, [rbp + 3408]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              al, 104;                             je    n00113_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00117_assign_var_α
n00116_call_icon_β:                                                             jmp   n00113_line_mark_α
                        .size            n00116_call_icon_bx, .-n00116_call_icon_bx
                        .type            n00117_assign_var_bx, @function
n00117_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_assign_var_α:      mov              rdi, qword ptr [rbp + 3360]
                        mov              rsi, qword ptr [rbp + 3368]
                        mov              rdx, qword ptr [rbp + 3392]
                        mov              rcx, qword ptr [rbp + 3400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00113_line_mark_α
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00113_line_mark_α
                        .size            n00117_assign_var_bx, .-n00117_assign_var_bx
                        .type            n00113_line_mark_bx, @function
n00113_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00118_line_mark_α
                        .size            n00113_line_mark_bx, .-n00113_line_mark_bx
                        .type            n00118_line_mark_bx, @function
n00118_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00119_call_icon_α
                        .size            n00118_line_mark_bx, .-n00118_line_mark_bx
                        .type            n00119_call_icon_bx, @function
n00119_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn696:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn696]
                        lea              rsi, [rbp + 3312]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n00120_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00121_assign_α
n00119_call_icon_β:                                                             jmp   n00120_line_mark_α
                        .size            n00119_call_icon_bx, .-n00119_call_icon_bx
                        .type            n00121_assign_bx, @function
n00121_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_assign_α:          mov              rax, qword ptr [rbp + 3296]
                        mov              rdx, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx;         jmp   n00120_line_mark_α
                        .size            n00121_assign_bx, .-n00121_assign_bx
                        .type            n00120_line_mark_bx, @function
n00120_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 109;            jmp   n00122_make_list_α
                        .size            n00120_line_mark_bx, .-n00120_line_mark_bx
                        .type            n00122_make_list_bx, @function
n00122_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_make_list_α:       lea              rdi, [rbp + 3280]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:53
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00123_assign_α
                        .size            n00122_make_list_bx, .-n00122_make_list_bx
                        .type            n00123_assign_bx, @function
n00123_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_assign_α:          mov              rax, qword ptr [rbp + 3264]
                        mov              rdx, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx;         jmp   n00124_line_mark_α
                        .size            n00123_assign_bx, .-n00123_assign_bx
                        .type            n00124_line_mark_bx, @function
n00124_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00125_bound_α
                        .size            n00124_line_mark_bx, .-n00124_line_mark_bx
                        .type            n00125_bound_bx, @function
n00125_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_bound_α:           mov              qword ptr [rbp + 448], rsp;          jmp   n00126_var_ref_α
                        .size            n00125_bound_bx, .-n00125_bound_bx
                        .type            n00126_var_ref_bx, @function
n00126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n00127_deref_α
                        .size            n00126_var_ref_bx, .-n00126_var_ref_bx
                        .type            n00127_deref_bx, @function
n00127_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_deref_α:           mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00128_line_mark_α
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00129_line_mark_α
                        .size            n00127_deref_bx, .-n00127_deref_bx
                        .type            n00129_line_mark_bx, @function
n00129_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00130_call_icon_α
                        .size            n00129_line_mark_bx, .-n00129_line_mark_bx
                        .type            n00130_call_icon_bx, @function
n00130_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_call_icon_α:       mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lcall_icon_α_rkfn713:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn713]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n00128_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00131_assign_α
n00130_call_icon_β:                                                             jmp   n00128_line_mark_α
                        .size            n00130_call_icon_bx, .-n00130_call_icon_bx
                        .type            n00131_assign_bx, @function
n00131_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_assign_α:          mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx;         jmp   n00132_var_α
                        .size            n00131_assign_bx, .-n00131_assign_bx
                        .type            n00132_var_bx, @function
n00132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_var_α:             mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3240], rax;         jmp   n00133_scan_enter_α
                        .size            n00132_var_bx, .-n00132_var_bx
                        .type            n00133_scan_enter_bx, @function
n00133_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_scan_enter_α:      mov              qword ptr [rbp + 496], r13
                        mov              qword ptr [rbp + 504], r14
                        mov              qword ptr [rbp + 512], r15
                        mov              rdi, qword ptr [rbp + 3232]
                        mov              rsi, qword ptr [rbp + 3240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], edx
                        mov              qword ptr [rsp + 8], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    n00134_unmark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00135_disjunction_α
                        .size            n00133_scan_enter_bx, .-n00133_scan_enter_bx
                        .type            n00135_disjunction_bx, @function
n00135_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_disjunction_α:     mov              qword ptr [rbp + 560], 0
                        mov              qword ptr [rbp + 568], 0
                        mov              dword ptr [rbp + 576], 0;            jmp   n00136_lit_string_α
.Ldisjunction_γ_543_as: mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_720_0
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00137_scan_α
.Ldisjunction_α_720_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_720_1
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 568], rax;          jmp   n00137_scan_α
.Ldisjunction_α_720_1:                                                        jmp   n00137_scan_α
n00135_disjunction_β:     mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 0;                              je    n00138_disjunction_β
                                                                              jmp   n00139_scan_α
.Ldisjunction_γ_543_af:
.Ldisjunction_ω_543_af: add              dword ptr [rbp + 576], 1
                        mov              eax, dword ptr [rbp + 576]
                        cmp              eax, 1;                              je    n00140_var_ref_α
                                                                              jmp   n00139_scan_α
                        .size            n00135_disjunction_bx, .-n00135_disjunction_bx
                        .type            n00137_scan_bx, @function
n00137_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_scan_α:            mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 496]
                        mov              r14, qword ptr [rbp + 504]
                        mov              r15, qword ptr [rbp + 512];          jmp   n00134_unmark_α
n00137_scan_β:            mov              qword ptr [rip + rtccb+40], r8
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
                        mov              r14, rax;                            jmp   n00135_disjunction_β
                                                                              jmp   n00134_unmark_α
                        .size            n00137_scan_bx, .-n00137_scan_bx
                        .type            n00141_conjunction_bx, @function
n00141_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_conjunction_α:                                                           jmp   .Ldisjunction_γ_543_as
n00141_conjunction_β:                                                           jmp   n00139_scan_α
                        .size            n00141_conjunction_bx, .-n00141_conjunction_bx
                        .type            n00140_var_ref_bx, @function
n00140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx;         jmp   n00142_var_ref_α
n00140_var_ref_β:                                                               jmp   n00139_scan_α
                        .size            n00140_var_ref_bx, .-n00140_var_ref_bx
                        .type            n00142_var_ref_bx, @function
n00142_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3552]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n00143_deref_α
                        .size            n00142_var_ref_bx, .-n00142_var_ref_bx
                        .type            n00143_deref_bx, @function
n00143_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_deref_α:           mov              rdi, qword ptr [rbp + 3168]
                        mov              rsi, qword ptr [rbp + 3176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00139_scan_α
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00144_deref_α
                        .size            n00143_deref_bx, .-n00143_deref_bx
                        .type            n00144_deref_bx, @function
n00144_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_deref_α:           mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00139_scan_α
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00145_line_mark_α
                        .size            n00144_deref_bx, .-n00144_deref_bx
                        .type            n00145_line_mark_bx, @function
n00145_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 131;            jmp   n00146_call_icon_α
                        .size            n00145_line_mark_bx, .-n00145_line_mark_bx
                        .type            n00146_call_icon_bx, @function
n00146_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_call_icon_α:       mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3128], rax
                        .section         .rodata
.Lcall_icon_α_rkfn733:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn733]
                        lea              rsi, [rbp + 3120]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              al, 104;                             je    n00139_scan_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_543_as
n00146_call_icon_β:                                                             jmp   n00139_scan_α
                        .size            n00146_call_icon_bx, .-n00146_call_icon_bx
                        .type            n00136_lit_string_bx, @function
n00136_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_lit_string_α:      mov              qword ptr [rbp + 3072], 2            # result
                        mov              dword ptr [rbp + 3076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_734_0]
                        mov              qword ptr [rbp + 3080], rax;         jmp   n00147_scan_match_α
n00136_lit_string_β:                                                            jmp   .Ldisjunction_ω_543_af
.Llit_string_α_734_0:   .quad            .Llit_string_α_734_0_s
.Llit_string_α_734_0_s: .string          "-"
                        .size            n00136_lit_string_bx, .-n00136_lit_string_bx
                        .type            n00147_scan_match_bx, @function
n00147_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_543_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_736_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_543_af
                        mov              qword ptr [rbp + 3040], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3048], rax;         jmp   n00148_scan_tab_α
.Lscan_match_α_736_0:   .quad            .Lscan_match_α_736_0_s
.Lscan_match_α_736_0_s: .string          "-"
                        .size            n00147_scan_match_bx, .-n00147_scan_match_bx
                        .type            n00148_scan_tab_bx, @function
n00148_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_scan_tab_α:        mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_543_af
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 3040]
                        mov              rsi, qword ptr [rbp + 3048]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_738_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_738_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_543_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_543_af
                        mov              qword ptr [rbp + 3024], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n00149_lit_integer_α
n00148_scan_tab_β:        mov              r14, qword ptr [rbp + 3024];         jmp   .Ldisjunction_ω_543_af
                        .size            n00148_scan_tab_bx, .-n00148_scan_tab_bx
                        .type            n00149_lit_integer_bx, @function
n00149_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_lit_integer_α:     mov              qword ptr [rbp + 2992], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_739_0]
                        mov              qword ptr [rbp + 3000], rax;         jmp   n00150_line_mark_α
.Llit_integer_α_739_0:  .quad            0
                        .size            n00149_lit_integer_bx, .-n00149_lit_integer_bx
                        .type            n00150_line_mark_bx, @function
n00150_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00151_scan_pos_α
                        .size            n00150_line_mark_bx, .-n00150_line_mark_bx
                        .type            n00151_scan_pos_bx, @function
n00151_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_743_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_743_0:     cmp              rax, 1;                              jl    n00152_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00152_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00152_var_α
                        mov              qword ptr [rbp + 2960], 3
                        mov              qword ptr [rbp + 2968], rax;         jmp   n00148_scan_tab_β
                        .size            n00151_scan_pos_bx, .-n00151_scan_pos_bx
                        .type            n00152_var_bx, @function
n00152_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_var_α:             mov              qword ptr [rbp + 2944], 0
                        mov              qword ptr [rbp + 2952], 0;           jmp   n00153_conjunction_α
n00152_var_β:                                                                   jmp   n00148_scan_tab_β
                        .size            n00152_var_bx, .-n00152_var_bx
                        .type            n00153_conjunction_bx, @function
n00153_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_conjunction_α:     mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00154_line_mark_α
n00153_conjunction_β:                                                           jmp   .Ldisjunction_ω_543_af
                        .size            n00153_conjunction_bx, .-n00153_conjunction_bx
                        .type            n00154_line_mark_bx, @function
n00154_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00155_disjunction_α
                        .size            n00154_line_mark_bx, .-n00154_line_mark_bx
                        .type            n00155_disjunction_bx, @function
n00155_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_disjunction_α:     mov              qword ptr [rbp + 2688], 0
                        mov              qword ptr [rbp + 2696], 0
                        mov              dword ptr [rbp + 2704], 0;           jmp   n00156_lit_string_α
.Ldisjunction_γ_561_as: mov              eax, dword ptr [rbp + 2704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_749_0
                                                                              jmp   n00157_line_mark_α
.Ldisjunction_α_749_0:                                                        jmp   n00157_line_mark_α
n00155_disjunction_β:     mov              eax, dword ptr [rbp + 2704];         jmp   n00157_line_mark_α
.Ldisjunction_γ_561_af:
.Ldisjunction_ω_561_af: add              dword ptr [rbp + 2704], 1
                        mov              eax, dword ptr [rbp + 2704];         jmp   n00157_line_mark_α
                        .size            n00155_disjunction_bx, .-n00155_disjunction_bx
                        .type            n00157_line_mark_bx, @function
n00157_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00158_bound_α
                        .size            n00157_line_mark_bx, .-n00157_line_mark_bx
                        .type            n00158_bound_bx, @function
n00158_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_bound_α:           mov              qword ptr [rbp + 704], rsp;          jmp   n00159_lit_integer_α
                        .size            n00158_bound_bx, .-n00158_bound_bx
                        .type            n00159_lit_integer_bx, @function
n00159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_lit_integer_α:     mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_754_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n00160_line_mark_α
.Llit_integer_α_754_0:  .quad            1
                        .size            n00159_lit_integer_bx, .-n00159_lit_integer_bx
                        .type            n00160_line_mark_bx, @function
n00160_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00161_scan_move_α
                        .size            n00160_line_mark_bx, .-n00160_line_mark_bx
                        .type            n00161_scan_move_bx, @function
n00161_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00139_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00139_scan_α
                        mov              qword ptr [rbp + 640], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00162_assign_α
n00161_scan_move_β:       mov              r14, qword ptr [rbp + 640];          jmp   n00139_scan_α
                        .size            n00161_scan_move_bx, .-n00161_scan_move_bx
                        .type            n00162_assign_bx, @function
n00162_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_assign_α:          mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx;         jmp   n00138_disjunction_α
                        .size            n00162_assign_bx, .-n00162_assign_bx
                        .type            n00138_disjunction_bx, @function
n00138_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_disjunction_α:     mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              dword ptr [rbp + 752], 0;            jmp   n00163_var_ref_α
.Ldisjunction_γ_568_as: mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_761_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00164_unmark_α
.Ldisjunction_α_761_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_761_1
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00164_unmark_α
.Ldisjunction_α_761_1:                                                        jmp   n00164_unmark_α
n00138_disjunction_β:     mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              je    n00165_disjunction_β
                                                                              jmp   n00164_unmark_α
.Ldisjunction_γ_568_af:
.Ldisjunction_ω_568_af: add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 1;                              je    n00166_lit_string_α
                                                                              jmp   n00164_unmark_α
                        .size            n00138_disjunction_bx, .-n00138_disjunction_bx
                        .type            n00166_lit_string_bx, @function
n00166_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_string_α:      mov              qword ptr [rbp + 2608], 2            # result
                        mov              dword ptr [rbp + 2612], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_762_0]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n00167_var_ref_α
n00166_lit_string_β:                                                            jmp   n00164_unmark_α
.Llit_string_α_762_0:   .quad            .Llit_string_α_762_0_s
.Llit_string_α_762_0_s: .string          "Unrecognized option: -"
                        .size            n00166_lit_string_bx, .-n00166_lit_string_bx
                        .type            n00167_var_ref_bx, @function
n00167_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx;         jmp   n00168_deref_α
                        .size            n00167_var_ref_bx, .-n00167_var_ref_bx
                        .type            n00168_deref_bx, @function
n00168_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_deref_α:           mov              rdi, qword ptr [rbp + 2640]
                        mov              rsi, qword ptr [rbp + 2648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00164_unmark_α
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00169_line_mark_α
                        .size            n00168_deref_bx, .-n00168_deref_bx
                        .type            n00169_line_mark_bx, @function
n00169_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00170_call_icon_α
                        .size            n00169_line_mark_bx, .-n00169_line_mark_bx
                        .type            n00170_call_icon_bx, @function
n00170_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_call_icon_α:       mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn769:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn769]
                        lea              rsi, [rbp + 2560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              al, 104;                             je    n00164_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_568_as
n00170_call_icon_β:                                                             jmp   n00164_unmark_α
                        .size            n00170_call_icon_bx, .-n00170_call_icon_bx
                        .type            n00163_var_ref_bx, @function
n00163_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n00171_var_ref_α
n00163_var_ref_β:                                                               jmp   .Ldisjunction_ω_568_af
                        .size            n00163_var_ref_bx, .-n00163_var_ref_bx
                        .type            n00171_var_ref_bx, @function
n00171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n00172_deref_α
                        .size            n00171_var_ref_bx, .-n00171_var_ref_bx
                        .type            n00172_deref_bx, @function
n00172_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_deref_α:           mov              rdi, qword ptr [rbp + 2464]
                        mov              rsi, qword ptr [rbp + 2472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00173_deref_α
                        .size            n00172_deref_bx, .-n00172_deref_bx
                        .type            n00173_deref_bx, @function
n00173_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_deref_α:           mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00174_line_mark_α
                        .size            n00173_deref_bx, .-n00173_deref_bx
                        .type            n00174_line_mark_bx, @function
n00174_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00175_call_builtin_gen_α
                        .size            n00174_line_mark_bx, .-n00174_line_mark_bx
                        .type            n00175_call_builtin_gen_bx, @function
n00175_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2408], rax
                        mov              qword ptr [rbp + 2432], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_778_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn268: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn268]
                        lea              rsi, [rbp + 2400]
                        mov              edx, 2
                        lea              rcx, [rbp + 2432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen_strict@PLT
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                                                                              jmp   n00176_lit_integer_α
n00175_call_builtin_gen_β:
                                                                              jmp   .Lcall_builtin_gen_α_778_60
                        .size            n00175_call_builtin_gen_bx, .-n00175_call_builtin_gen_bx
                        .type            n00176_lit_integer_bx, @function
n00176_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_lit_integer_α:     mov              qword ptr [rbp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_779_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n00177_coerce_numeric_α
.Llit_integer_α_779_0:  .quad            1
                        .size            n00176_lit_integer_bx, .-n00176_lit_integer_bx
                        .type            n00177_coerce_numeric_bx, @function
n00177_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2384]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_781_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_781_0
                        mov              eax, dword ptr [rbp + 2528]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_781_0
.Lcoerce_numeric_α_781_1:
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n00178_binop_α
.Lcoerce_numeric_α_781_0:
                        lea              rdi, [rbp + 2384]
                        lea              rsi, [rbp + 2528]
                        lea              rdx, [rbp + 2368]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2368]
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                                                                              jmp   n00178_binop_α
                        .size            n00177_coerce_numeric_bx, .-n00177_coerce_numeric_bx
                        .type            n00178_binop_bx, @function
n00178_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_binop_α:           mov              eax, dword ptr [rbp + 2368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_782_2
                        mov              rax, qword ptr [rbp + 2376]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_782_0
                        mov              qword ptr [rbp + 2352], 3
                        mov              qword ptr [rbp + 2360], rax;         jmp   .Lbinop_α_782_7
.Lbinop_α_782_2:        and              edx, 1;                              jz    .Lbinop_α_782_0
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_782_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_782_4
.Lbinop_α_782_3:        movq             xmm0, rsi
.Lbinop_α_782_4:        cmp              cl, 5;                               je    .Lbinop_α_782_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_782_6
.Lbinop_α_782_5:        movq             xmm1, rdi
.Lbinop_α_782_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_782_0
                        mov              qword ptr [rbp + 2352], 5
                        mov              qword ptr [rbp + 2360], rax
.Lbinop_α_782_7:                                                              jmp   n00179_assign_α
.Lbinop_α_782_0:        mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2528]
                        mov              rcx, qword ptr [rbp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_568_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:294
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00179_assign_α
                        .size            n00178_binop_bx, .-n00178_binop_bx
                        .type            n00179_assign_bx, @function
n00179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_assign_α:          mov              rax, qword ptr [rbp + 2352]
                        mov              rdx, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx;         jmp   n00180_var_ref_α
                        .size            n00179_assign_bx, .-n00179_assign_bx
                        .type            n00180_var_ref_bx, @function
n00180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3504]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00181_var_α
                        .size            n00180_var_ref_bx, .-n00180_var_ref_bx
                        .type            n00181_var_bx, @function
n00181_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_var_α:             mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00182_subscript_α
                        .size            n00181_var_bx, .-n00181_var_bx
                        .type            n00182_subscript_bx, @function
n00182_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_subscript_α:       mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00164_unmark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00165_disjunction_α
                        .size            n00182_subscript_bx, .-n00182_subscript_bx
                        .type            n00165_disjunction_bx, @function
n00165_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_disjunction_α:     mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0;            jmp   n00183_lit_charset_α
.Ldisjunction_γ_587_as: mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_790_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00184_assign_var_α
.Ldisjunction_α_790_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_790_1
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00184_assign_var_α
.Ldisjunction_α_790_1:                                                        jmp   n00184_assign_var_α
n00165_disjunction_β:     mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              je    n00185_disjunction_β
                                                                              jmp   n00164_unmark_α
.Ldisjunction_γ_587_af:
.Ldisjunction_ω_587_af: add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1;                              je    n00186_lit_integer_α
                                                                              jmp   n00164_unmark_α
                        .size            n00165_disjunction_bx, .-n00165_disjunction_bx
                        .type            n00184_assign_var_bx, @function
n00184_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_assign_var_α:      mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00164_unmark_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_568_as
n00184_assign_var_β:                                                            jmp   n00164_unmark_α
                        .size            n00184_assign_var_bx, .-n00184_assign_var_bx
                        .type            n00186_lit_integer_bx, @function
n00186_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_lit_integer_α:     mov              qword ptr [rbp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_792_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   .Ldisjunction_γ_587_as
n00186_lit_integer_β:                                                           jmp   n00164_unmark_α
.Llit_integer_α_792_0:  .quad            1
                        .size            n00186_lit_integer_bx, .-n00186_lit_integer_bx
                        .type            n00183_lit_charset_bx, @function
n00183_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_lit_charset_α:     mov              qword ptr [rbp + 2208], 2            # result
                        mov              dword ptr [rbp + 2212], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_793_0]
                        mov              qword ptr [rbp + 2216], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_793_0]
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
                        pop              rax
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00187_var_ref_α
n00183_lit_charset_β:                                                           jmp   .Ldisjunction_ω_587_af
.Llit_charset_α_793_0:  .quad            .Llit_charset_α_793_0_s
.Llit_charset_α_793_0_s:
                        .string          "+.:"
                        .size            n00183_lit_charset_bx, .-n00183_lit_charset_bx
                        .type            n00187_var_ref_bx, @function
n00187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n00188_var_α
                        .size            n00187_var_ref_bx, .-n00187_var_ref_bx
                        .type            n00188_var_bx, @function
n00188_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_var_α:             mov              rax, qword ptr [rbp + 3616]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 3624]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n00189_subscript_α
                        .size            n00188_var_bx, .-n00188_var_bx
                        .type            n00189_subscript_bx, @function
n00189_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_subscript_α:       mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_587_af
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00190_deref_α
                        .size            n00189_subscript_bx, .-n00189_subscript_bx
                        .type            n00190_deref_bx, @function
n00190_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_deref_α:           mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_587_af
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00191_assign_α
                        .size            n00190_deref_bx, .-n00190_deref_bx
                        .type            n00191_assign_bx, @function
n00191_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_assign_α:          mov              rax, qword ptr [rbp + 2288]
                        mov              rdx, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx;         jmp   n00192_var_ref_α
                        .size            n00191_assign_bx, .-n00191_assign_bx
                        .type            n00192_var_ref_bx, @function
n00192_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3584]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n00193_deref_α
                        .size            n00192_var_ref_bx, .-n00192_var_ref_bx
                        .type            n00193_deref_bx, @function
n00193_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_deref_α:           mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_587_af
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00194_line_mark_α
                        .size            n00193_deref_bx, .-n00193_deref_bx
                        .type            n00194_line_mark_bx, @function
n00194_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 117;            jmp   n00195_call_icon_α
                        .size            n00194_line_mark_bx, .-n00194_line_mark_bx
                        .type            n00195_call_icon_bx, @function
n00195_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_call_icon_α:       mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2168], rax
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
.Lcall_icon_α_bynamefn288: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn288]
                        lea              rsi, [rbp + 2160]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        pop              rdx
                        pop              rax
                        cmp              al, 104;                             je    .Ldisjunction_ω_587_af
                                                                              jmp   n00196_line_mark_α
n00195_call_icon_β:                                                             jmp   .Ldisjunction_ω_587_af
                        .size            n00195_call_icon_bx, .-n00195_call_icon_bx
                        .type            n00196_line_mark_bx, @function
n00196_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00197_disjunction_α
                        .size            n00196_line_mark_bx, .-n00196_line_mark_bx
                        .type            n00197_disjunction_bx, @function
n00197_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_disjunction_α:     mov              qword ptr [rbp + 1776], 0
                        mov              qword ptr [rbp + 1784], 0
                        mov              dword ptr [rbp + 1792], 0;           jmp   n00198_lit_string_α
.Ldisjunction_γ_601_as: mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_810_0
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n00199_assign_α
.Ldisjunction_α_810_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_810_1
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n00199_assign_α
.Ldisjunction_α_810_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_810_2
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n00199_assign_α
.Ldisjunction_α_810_2:                                                        jmp   n00199_assign_α
n00197_disjunction_β:     mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 0;                              je    n00200_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_601_af
                                                                              jmp   .Ldisjunction_ω_601_af
.Ldisjunction_γ_601_af:
.Ldisjunction_ω_601_af: add              dword ptr [rbp + 1792], 1
                        mov              eax, dword ptr [rbp + 1792]
                        cmp              eax, 1;                              je    n00201_var_ref_α
                        cmp              eax, 2;                              je    n00202_lit_string_α
                                                                              jmp   n00203_line_mark_α
                        .size            n00197_disjunction_bx, .-n00197_disjunction_bx
                        .type            n00199_assign_bx, @function
n00199_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_assign_α:          mov              rax, qword ptr [rbp + 1776]
                        mov              rdx, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx;         jmp   n00203_line_mark_α
                        .size            n00199_assign_bx, .-n00199_assign_bx
                        .type            n00203_line_mark_bx, @function
n00203_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00204_var_α
                        .size            n00203_line_mark_bx, .-n00203_line_mark_bx
                        .type            n00204_var_bx, @function
n00204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_α:             mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00185_disjunction_α
                        .size            n00204_var_bx, .-n00204_var_bx
                        .type            n00185_disjunction_bx, @function
n00185_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_disjunction_α:     mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0;            jmp   n00205_lit_string_α
.Ldisjunction_γ_605_as: mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_817_0
                        mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00206_conjunction_α
.Ldisjunction_α_817_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_817_1
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00206_conjunction_α
.Ldisjunction_α_817_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_817_2
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00206_conjunction_α
.Ldisjunction_α_817_2:                                                        jmp   n00206_conjunction_α
n00185_disjunction_β:     mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              je    n00164_unmark_α
                        cmp              eax, 1;                              je    n00207_disjunction_β
                                                                              jmp   n00208_disjunction_β
.Ldisjunction_γ_605_af:
.Ldisjunction_ω_605_af: add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 1;                              je    n00209_lit_string_α
                        cmp              eax, 2;                              je    n00210_lit_string_α
                                                                              jmp   n00164_unmark_α
                        .size            n00185_disjunction_bx, .-n00185_disjunction_bx
                        .type            n00206_conjunction_bx, @function
n00206_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_conjunction_α:     mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax;          jmp   .Ldisjunction_γ_587_as
n00206_conjunction_β:                                                           jmp   n00164_unmark_α
                        .size            n00206_conjunction_bx, .-n00206_conjunction_bx
                        .type            n00210_lit_string_bx, @function
n00210_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_lit_string_α:      mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_819_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n00211_call_builtin_α
n00210_lit_string_β:                                                            jmp   .Ldisjunction_ω_605_af
.Llit_string_α_819_0:   .quad            .Llit_string_α_819_0_s
.Llit_string_α_819_0_s: .string          "."
                        .size            n00210_lit_string_bx, .-n00210_lit_string_bx
                        .type            n00211_call_builtin_bx, @function
n00211_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_builtin_α:    mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1736], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn821: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn821]
                        lea              rsi, [rbp + 1728]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_605_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00208_disjunction_α
n00211_call_builtin_β:                                                          jmp   .Ldisjunction_ω_605_af
                        .size            n00211_call_builtin_bx, .-n00211_call_builtin_bx
                        .type            n00208_disjunction_bx, @function
n00208_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_disjunction_α:     mov              qword ptr [rbp + 1392], 0
                        mov              qword ptr [rbp + 1400], 0
                        mov              dword ptr [rbp + 1408], 0;           jmp   n00212_var_ref_α
.Ldisjunction_γ_609_as: mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_823_0
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1400], rax;         jmp   .Ldisjunction_γ_605_as
.Ldisjunction_α_823_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_823_1
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1400], rax;         jmp   .Ldisjunction_γ_605_as
.Ldisjunction_α_823_1:                                                        jmp   .Ldisjunction_γ_605_as
n00208_disjunction_β:     mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_609_af
                                                                              jmp   .Ldisjunction_ω_609_af
.Ldisjunction_γ_609_af:
.Ldisjunction_ω_609_af: add              dword ptr [rbp + 1408], 1
                        mov              eax, dword ptr [rbp + 1408]
                        cmp              eax, 1;                              je    n00213_lit_string_α
                                                                              jmp   n00164_unmark_α
                        .size            n00208_disjunction_bx, .-n00208_disjunction_bx
                        .type            n00213_lit_string_bx, @function
n00213_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_lit_string_α:      mov              qword ptr [rbp + 1584], 2            # result
                        mov              dword ptr [rbp + 1588], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_824_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n00214_var_ref_α
n00213_lit_string_β:                                                            jmp   .Ldisjunction_ω_609_af
.Llit_string_α_824_0:   .quad            .Llit_string_α_824_0_s
.Llit_string_α_824_0_s: .string          "-"
                        .size            n00213_lit_string_bx, .-n00213_lit_string_bx
                        .type            n00214_var_ref_bx, @function
n00214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n00215_lit_string_α
                        .size            n00214_var_ref_bx, .-n00214_var_ref_bx
                        .type            n00215_lit_string_bx, @function
n00215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_lit_string_α:      mov              qword ptr [rbp + 1632], 2            # result
                        mov              dword ptr [rbp + 1636], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_827_0]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n00216_deref_α
.Llit_string_α_827_0:   .quad            .Llit_string_α_827_0_s
.Llit_string_α_827_0_s: .string          " needs numeric parameter"
                        .size            n00215_lit_string_bx, .-n00215_lit_string_bx
                        .type            n00216_deref_bx, @function
n00216_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_deref_α:           mov              rdi, qword ptr [rbp + 1616]
                        mov              rsi, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_609_af
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00217_line_mark_α
                        .size            n00216_deref_bx, .-n00216_deref_bx
                        .type            n00217_line_mark_bx, @function
n00217_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00218_call_icon_α
                        .size            n00217_line_mark_bx, .-n00217_line_mark_bx
                        .type            n00218_call_icon_bx, @function
n00218_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_call_icon_α:       mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lcall_icon_α_rkfn832:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn832]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_609_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_609_as
n00218_call_icon_β:                                                             jmp   .Ldisjunction_ω_609_af
                        .size            n00218_call_icon_bx, .-n00218_call_icon_bx
                        .type            n00212_var_ref_bx, @function
n00212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3600]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n00219_deref_α
n00212_var_ref_β:                                                               jmp   .Ldisjunction_ω_609_af
                        .size            n00212_var_ref_bx, .-n00212_var_ref_bx
                        .type            n00219_deref_bx, @function
n00219_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_deref_α:           mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_609_af
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00220_line_mark_α
                        .size            n00219_deref_bx, .-n00219_deref_bx
                        .type            n00220_line_mark_bx, @function
n00220_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00221_call_icon_α
                        .size            n00220_line_mark_bx, .-n00220_line_mark_bx
                        .type            n00221_call_icon_bx, @function
n00221_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_call_icon_α:       mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lcall_icon_α_rkfn839:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn839]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_609_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_609_as
n00221_call_icon_β:                                                             jmp   .Ldisjunction_ω_609_af
                        .size            n00221_call_icon_bx, .-n00221_call_icon_bx
                        .type            n00209_lit_string_bx, @function
n00209_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_lit_string_α:      mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_840_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n00222_call_builtin_α
n00209_lit_string_β:                                                            jmp   .Ldisjunction_ω_605_af
.Llit_string_α_840_0:   .quad            .Llit_string_α_840_0_s
.Llit_string_α_840_0_s: .string          "+"
                        .size            n00209_lit_string_bx, .-n00209_lit_string_bx
                        .type            n00222_call_builtin_bx, @function
n00222_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_builtin_α:    mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1368], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn842: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn842]
                        lea              rsi, [rbp + 1360]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_605_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00207_disjunction_α
n00222_call_builtin_β:                                                          jmp   .Ldisjunction_ω_605_af
                        .size            n00222_call_builtin_bx, .-n00222_call_builtin_bx
                        .type            n00207_disjunction_bx, @function
n00207_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_disjunction_α:     mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              dword ptr [rbp + 1040], 0;           jmp   n00223_var_ref_α
.Ldisjunction_γ_622_as: mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_844_0
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_605_as
.Ldisjunction_α_844_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_844_1
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_605_as
.Ldisjunction_α_844_1:                                                        jmp   .Ldisjunction_γ_605_as
n00207_disjunction_β:     mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_622_af
                                                                              jmp   .Ldisjunction_ω_622_af
.Ldisjunction_γ_622_af:
.Ldisjunction_ω_622_af: add              dword ptr [rbp + 1040], 1
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 1;                              je    n00224_lit_string_α
                                                                              jmp   n00164_unmark_α
                        .size            n00207_disjunction_bx, .-n00207_disjunction_bx
                        .type            n00224_lit_string_bx, @function
n00224_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_lit_string_α:      mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_845_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n00225_var_ref_α
n00224_lit_string_β:                                                            jmp   .Ldisjunction_ω_622_af
.Llit_string_α_845_0:   .quad            .Llit_string_α_845_0_s
.Llit_string_α_845_0_s: .string          "-"
                        .size            n00224_lit_string_bx, .-n00224_lit_string_bx
                        .type            n00225_var_ref_bx, @function
n00225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00226_lit_string_α
                        .size            n00225_var_ref_bx, .-n00225_var_ref_bx
                        .type            n00226_lit_string_bx, @function
n00226_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_lit_string_α:      mov              qword ptr [rbp + 1264], 2            # result
                        mov              dword ptr [rbp + 1268], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_848_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00227_deref_α
.Llit_string_α_848_0:   .quad            .Llit_string_α_848_0_s
.Llit_string_α_848_0_s: .string          " needs numeric parameter"
                        .size            n00226_lit_string_bx, .-n00226_lit_string_bx
                        .type            n00227_deref_bx, @function
n00227_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_deref_α:           mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_622_af
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00228_line_mark_α
                        .size            n00227_deref_bx, .-n00227_deref_bx
                        .type            n00228_line_mark_bx, @function
n00228_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00229_call_icon_α
                        .size            n00228_line_mark_bx, .-n00228_line_mark_bx
                        .type            n00229_call_icon_bx, @function
n00229_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_call_icon_α:       mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        .section         .rodata
.Lcall_icon_α_rkfn853:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn853]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_622_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_622_as
n00229_call_icon_β:                                                             jmp   .Ldisjunction_ω_622_af
                        .size            n00229_call_icon_bx, .-n00229_call_icon_bx
                        .type            n00223_var_ref_bx, @function
n00223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3600]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00230_deref_α
n00223_var_ref_β:                                                               jmp   .Ldisjunction_ω_622_af
                        .size            n00223_var_ref_bx, .-n00223_var_ref_bx
                        .type            n00230_deref_bx, @function
n00230_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_deref_α:           mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_622_af
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00231_line_mark_α
                        .size            n00230_deref_bx, .-n00230_deref_bx
                        .type            n00231_line_mark_bx, @function
n00231_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00232_call_icon_α
                        .size            n00231_line_mark_bx, .-n00231_line_mark_bx
                        .type            n00232_call_icon_bx, @function
n00232_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_call_icon_α:       mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lcall_icon_α_rkfn860:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn860]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_622_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_622_as
n00232_call_icon_β:                                                             jmp   .Ldisjunction_ω_622_af
                        .size            n00232_call_icon_bx, .-n00232_call_icon_bx
                        .type            n00205_lit_string_bx, @function
n00205_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_lit_string_α:      mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_861_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00233_call_builtin_α
n00205_lit_string_β:                                                            jmp   .Ldisjunction_ω_605_af
.Llit_string_α_861_0:   .quad            .Llit_string_α_861_0_s
.Llit_string_α_861_0_s: .string          ":"
                        .size            n00205_lit_string_bx, .-n00205_lit_string_bx
                        .type            n00233_call_builtin_bx, @function
n00233_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_call_builtin_α:    mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn863: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn863]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_605_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00234_var_α
n00233_call_builtin_β:                                                          jmp   .Ldisjunction_ω_605_af
                        .size            n00233_call_builtin_bx, .-n00233_call_builtin_bx
                        .type            n00234_var_bx, @function
n00234_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_var_α:             mov              rax, qword ptr [rbp + 3600]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3608]
                        mov              qword ptr [rbp + 936], rax;          jmp   .Ldisjunction_γ_605_as
n00234_var_β:                                                                   jmp   n00164_unmark_α
                        .size            n00234_var_bx, .-n00234_var_bx
                        .type            n00202_lit_string_bx, @function
n00202_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_string_α:      mov              qword ptr [rbp + 2064], 2            # result
                        mov              dword ptr [rbp + 2068], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_866_0]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n00235_var_ref_α
n00202_lit_string_β:                                                            jmp   .Ldisjunction_ω_601_af
.Llit_string_α_866_0:   .quad            .Llit_string_α_866_0_s
.Llit_string_α_866_0_s: .string          "No parameter following -"
                        .size            n00202_lit_string_bx, .-n00202_lit_string_bx
                        .type            n00235_var_ref_bx, @function
n00235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3568]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n00236_deref_α
                        .size            n00235_var_ref_bx, .-n00235_var_ref_bx
                        .type            n00236_deref_bx, @function
n00236_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_deref_α:           mov              rdi, qword ptr [rbp + 2096]
                        mov              rsi, qword ptr [rbp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00237_line_mark_α
                        .size            n00236_deref_bx, .-n00236_deref_bx
                        .type            n00237_line_mark_bx, @function
n00237_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00238_call_icon_α
                        .size            n00237_line_mark_bx, .-n00237_line_mark_bx
                        .type            n00238_call_icon_bx, @function
n00238_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_call_icon_α:       mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lcall_icon_α_rkfn873:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn873]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_601_as
n00238_call_icon_β:                                                             jmp   .Ldisjunction_ω_601_af
                        .size            n00238_call_icon_bx, .-n00238_call_icon_bx
                        .type            n00201_var_ref_bx, @function
n00201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n00239_deref_α
n00201_var_ref_β:                                                               jmp   .Ldisjunction_ω_601_af
                        .size            n00201_var_ref_bx, .-n00201_var_ref_bx
                        .type            n00239_deref_bx, @function
n00239_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_deref_α:           mov              rdi, qword ptr [rbp + 1968]
                        mov              rsi, qword ptr [rbp + 1976]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00240_line_mark_α
                        .size            n00239_deref_bx, .-n00239_deref_bx
                        .type            n00240_line_mark_bx, @function
n00240_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00241_call_icon_α
                        .size            n00240_line_mark_bx, .-n00240_line_mark_bx
                        .type            n00241_call_icon_bx, @function
n00241_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_call_icon_α:       mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        .section         .rodata
.Lcall_icon_α_rkfn880:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn880]
                        lea              rsi, [rbp + 1936]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_601_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_601_as
n00241_call_icon_β:                                                             jmp   .Ldisjunction_ω_601_af
                        .size            n00241_call_icon_bx, .-n00241_call_icon_bx
                        .type            n00198_lit_string_bx, @function
n00198_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_lit_string_α:      mov              qword ptr [rbp + 1824], 2            # result
                        mov              dword ptr [rbp + 1828], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_881_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n00242_lit_integer_α
n00198_lit_string_β:                                                            jmp   .Ldisjunction_ω_601_af
.Llit_string_α_881_0:   .quad            .Llit_string_α_881_0_s
.Llit_string_α_881_0_s: .string          ""
                        .size            n00198_lit_string_bx, .-n00198_lit_string_bx
                        .type            n00242_lit_integer_bx, @function
n00242_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_lit_integer_α:     mov              qword ptr [rbp + 1904], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_882_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n00243_line_mark_α
.Llit_integer_α_882_0:  .quad            0
                        .size            n00242_lit_integer_bx, .-n00242_lit_integer_bx
                        .type            n00243_line_mark_bx, @function
n00243_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00200_scan_tab_α
                        .size            n00243_line_mark_bx, .-n00243_line_mark_bx
                        .type            n00200_scan_tab_bx, @function
n00200_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_886_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_886_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_601_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_601_af
                        mov              qword ptr [rbp + 1872], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n00244_binop_test_α
n00200_scan_tab_β:        mov              r14, qword ptr [rbp + 1872];         jmp   .Ldisjunction_ω_601_af
                        .size            n00200_scan_tab_bx, .-n00200_scan_tab_bx
                        .type            n00244_binop_test_bx, @function
n00244_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_binop_test_α:      mov              rdi, qword ptr [rbp + 1824]
                        mov              rsi, qword ptr [rbp + 1832]
                        mov              rdx, qword ptr [rbp + 1856]
                        mov              rcx, qword ptr [rbp + 1864]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00200_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        push             rax                                  # gc_poll bb_binop_relop.cpp:110
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_601_as
n00244_binop_test_β:                                                            jmp   n00200_scan_tab_β
                        .size            n00244_binop_test_bx, .-n00244_binop_test_bx
                        .type            n00164_unmark_bx, @function
n00164_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_unmark_α:          mov              rsp, qword ptr [rbp + 704];          jmp   n00158_bound_α
                        .size            n00164_unmark_bx, .-n00164_unmark_bx
                        .type            n00139_scan_bx, @function
n00139_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_scan_α:            mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 496]
                        mov              r14, qword ptr [rbp + 504]
                        mov              r15, qword ptr [rbp + 512];          jmp   n00134_unmark_α
n00139_scan_β:                                                                  jmp   n00134_unmark_α
                        .size            n00139_scan_bx, .-n00139_scan_bx
                        .type            n00156_lit_string_bx, @function
n00156_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_lit_string_α:      mov              qword ptr [rbp + 2880], 2            # result
                        mov              dword ptr [rbp + 2884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_892_0]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n00245_scan_match_α
n00156_lit_string_β:                                                            jmp   .Ldisjunction_ω_561_af
.Llit_string_α_892_0:   .quad            .Llit_string_α_892_0_s
.Llit_string_α_892_0_s: .string          "-"
                        .size            n00156_lit_string_bx, .-n00156_lit_string_bx
                        .type            n00245_scan_match_bx, @function
n00245_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_561_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_894_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_561_af
                        mov              qword ptr [rbp + 2848], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2856], rax;         jmp   n00246_scan_tab_α
.Lscan_match_α_894_0:   .quad            .Lscan_match_α_894_0_s
.Lscan_match_α_894_0_s: .string          "-"
                        .size            n00245_scan_match_bx, .-n00245_scan_match_bx
                        .type            n00246_scan_tab_bx, @function
n00246_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_scan_tab_α:        mov              rdi, qword ptr [rbp + 2848]
                        mov              rsi, qword ptr [rbp + 2856]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_561_af
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 2848]
                        mov              rsi, qword ptr [rbp + 2856]
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_896_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_896_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_561_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_561_af
                        mov              qword ptr [rbp + 2832], r14
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
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 2816], rax
                        mov              qword ptr [rbp + 2824], rdx;         jmp   n00247_lit_integer_α
n00246_scan_tab_β:        mov              r14, qword ptr [rbp + 2832];         jmp   .Ldisjunction_ω_561_af
                        .size            n00246_scan_tab_bx, .-n00246_scan_tab_bx
                        .type            n00247_lit_integer_bx, @function
n00247_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_lit_integer_α:     mov              qword ptr [rbp + 2800], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_897_0]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n00248_line_mark_α
.Llit_integer_α_897_0:  .quad            0
                        .size            n00247_lit_integer_bx, .-n00247_lit_integer_bx
                        .type            n00248_line_mark_bx, @function
n00248_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00249_scan_pos_α
                        .size            n00248_line_mark_bx, .-n00248_line_mark_bx
                        .type            n00249_scan_pos_bx, @function
n00249_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_901_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_901_0:     cmp              rax, 1;                              jl    n00246_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00246_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00246_scan_tab_β
                        mov              qword ptr [rbp + 2768], 3
                        mov              qword ptr [rbp + 2776], rax;         jmp   n00250_conjunction_α
                        .size            n00249_scan_pos_bx, .-n00249_scan_pos_bx
                        .type            n00250_conjunction_bx, @function
n00250_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_conjunction_α:     mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2760], rax;         jmp   n00251_scan_α
n00250_conjunction_β:                                                           jmp   .Ldisjunction_ω_561_af
                        .size            n00250_conjunction_bx, .-n00250_conjunction_bx
                        .type            n00251_scan_bx, @function
n00251_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_scan_α:            mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 496]
                        mov              r14, qword ptr [rbp + 504]
                        mov              r15, qword ptr [rbp + 512];          jmp   n00252_var_α
n00251_scan_β:                                                                  jmp   n00252_var_α
                        .size            n00251_scan_bx, .-n00251_scan_bx
                        .type            n00252_var_bx, @function
n00252_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_var_α:             mov              qword ptr [rbp + 2720], 0
                        mov              qword ptr [rbp + 2728], 0;           jmp   n00253_assign_α
n00252_var_β:                                                                   jmp   n00254_var_α
                        .size            n00252_var_bx, .-n00252_var_bx
                        .type            n00253_assign_bx, @function
n00253_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_assign_α:          mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 3536], rax
                        mov              qword ptr [rbp + 3544], rdx;         jmp   n00254_var_α
                        .size            n00253_assign_bx, .-n00253_assign_bx
                        .type            n00254_var_bx, @function
n00254_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_var_α:             mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 328], rax;          jmp   n00128_line_mark_α
                        .size            n00254_var_bx, .-n00254_var_bx
                        .type            n00134_unmark_bx, @function
n00134_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_unmark_α:          mov              rsp, qword ptr [rbp + 448];          jmp   n00125_bound_α
                        .size            n00134_unmark_bx, .-n00134_unmark_bx
                        .type            n00128_line_mark_bx, @function
n00128_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00255_bound_α
                        .size            n00128_line_mark_bx, .-n00128_line_mark_bx
                        .type            n00255_bound_bx, @function
n00255_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_bound_α:           mov              qword ptr [rbp + 272], rsp;          jmp   n00256_var_ref_α
                        .size            n00255_bound_bx, .-n00255_bound_bx
                        .type            n00256_var_ref_bx, @function
n00256_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00257_var_ref_α
                        .size            n00256_var_ref_bx, .-n00256_var_ref_bx
                        .type            n00257_var_ref_bx, @function
n00257_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3520]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00258_deref_α
                        .size            n00257_var_ref_bx, .-n00257_var_ref_bx
                        .type            n00258_deref_bx, @function
n00258_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_deref_α:           mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00259_line_mark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00260_line_mark_α
                        .size            n00258_deref_bx, .-n00258_deref_bx
                        .type            n00260_line_mark_bx, @function
n00260_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00261_call_icon_α
                        .size            n00260_line_mark_bx, .-n00260_line_mark_bx
                        .type            n00261_call_icon_bx, @function
n00261_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_call_icon_α:       mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn923:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn923]
                        lea              rsi, [rbp + 176]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n00259_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00262_deref_α
n00261_call_icon_β:                                                             jmp   n00259_line_mark_α
                        .size            n00261_call_icon_bx, .-n00261_call_icon_bx
                        .type            n00262_deref_bx, @function
n00262_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_deref_α:           mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00259_line_mark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00263_line_mark_α
                        .size            n00262_deref_bx, .-n00262_deref_bx
                        .type            n00263_line_mark_bx, @function
n00263_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00264_call_icon_α
                        .size            n00263_line_mark_bx, .-n00263_line_mark_bx
                        .type            n00264_call_icon_bx, @function
n00264_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_call_icon_α:       mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_icon_α_rkfn928:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn928]
                        lea              rsi, [rbp + 96]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n00259_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00265_unmark_α
n00264_call_icon_β:                                                             jmp   n00259_line_mark_α
                        .size            n00264_call_icon_bx, .-n00264_call_icon_bx
                        .type            n00265_unmark_bx, @function
n00265_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_unmark_α:          mov              rsp, qword ptr [rbp + 272];          jmp   n00255_bound_α
                        .size            n00265_unmark_bx, .-n00265_unmark_bx
                        .type            n00259_line_mark_bx, @function
n00259_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00266_var_α
                        .size            n00259_line_mark_bx, .-n00259_line_mark_bx
                        .type            n00266_var_bx, @function
n00266_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_var_α:             mov              rax, qword ptr [rbp + 3504]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 3512]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00267_return_α
                        .size            n00266_var_bx, .-n00266_var_bx
                        .type            n00267_return_bx, @function
n00267_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_return_α:          mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00267_return_bx, .-n00267_return_bx
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
                        lea              rsp, [rbp + 3856]
                        mov              rbp, qword ptr [rbp + 3848];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 3856]
                        mov              rbp, qword ptr [rbp + 3848];         jmp   qword ptr [rsp + 8]
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
                        push             rax                                  # gc_poll xa_flat.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rsp + 8]
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
                        push             rax                                  # gc_poll xa_flat.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      add              rsp, 16
                        lea              rcx, [rip + .Loptions_α_936_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_936_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_936_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_936_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            16562740350298
                        .quad            34359738576
                        .quad            .Lgcmap_options_s
                        .quad            3632
                        .quad            40
                        .quad            299067162755072
                        .quad            17596481011984
                        .quad            175921860444448
                        .quad            17596481012160
                        .quad            35184372089296
                        .quad            8804682957296
                        .quad            26392574034424
                        .quad            52776558133776
                        .quad            17596481012288
                        .quad            52776558133840
                        .quad            17596481012352
                        .quad            52776558133904
                        .quad            17596481012416
                        .quad            35184372089552
                        .quad            17596481012464
                        .quad            87960930222848
                        .quad            17596481012560
                        .quad            52776558134112
                        .quad            17596481012624
                        .quad            123145302311840
                        .quad            17596481012752
                        .quad            387028092978208
                        .quad            17596481013120
                        .quad            404620279022992
                        .quad            17596481013504
                        .quad            70368744179472
                        .quad            17596481013584
                        .quad            598134325512032
                        .quad            17596481014144
                        .quad            281474976713104
                        .quad            17596481014416
                        .quad            123145302313632
                        .quad            17596481014544
                        .quad            17592186047264
                        .quad            17596481014576
                        .quad            158329674402624
                        .quad            17596481014736
                        .quad            17592186047456
                        .quad            17596481014768
                        .quad            615726511557632
.Lgcmap_options_s:      .string          "options"
                        .globl           main
main:
                        push             rdi
                        push             rsi
                        sub              rsp, 8
                        call             rt_main_stack_adopt@PLT
                        mov              rsi, qword ptr [rsp + 8]
                        mov              rdi, qword ptr [rsp + 16]
                        add              rsp, 24
                        test             rax, rax;                            jz    .Lmain_stack_kept
                        mov              rsp, rax
.Lmain_stack_kept:
                        sub              rsp, 65544
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
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage_argv@PLT
                        call             rt_main_args_bind@PLT
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
                        sub              rsp, 992
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 984
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 888], rax
                        mov              dword ptr [rsp + 880], 160
                        mov              dword ptr [rsp + 884], 992
                        mov              eax, 0
                        mov              qword ptr [rsp + 984], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lmain_α_936_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm937:        .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm937]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Lmain_α_936_245:
main_α_body:
                        .type            n00268_call_bx, @function
n00268_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_call_α:            lea              rdi, [rbp + 864]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:229
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00269_line_mark_α
                                                                              jmp   n00269_line_mark_α
n00268_call_β:                                                                  jmp   n00269_line_mark_α
                        .size            n00268_call_bx, .-n00268_call_bx
                        .type            n00269_line_mark_bx, @function
n00269_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_984_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00270_line_mark_α
.Lline_mark_α_984_0:    .quad            .Lline_mark_α_984_0_s
.Lline_mark_α_984_0_s:  .string          "queens.icn"
                        .size            n00269_line_mark_bx, .-n00269_line_mark_bx
                        .type            n00270_line_mark_bx, @function
n00270_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00271_var_ref_α
                        .size            n00270_line_mark_bx, .-n00270_line_mark_bx
                        .type            n00271_var_ref_bx, @function
n00271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00272_lit_string_α
                        .size            n00271_var_ref_bx, .-n00271_var_ref_bx
                        .type            n00272_lit_string_bx, @function
n00272_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_lit_string_α:      mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_989_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00273_deref_α
.Llit_string_α_989_0:   .quad            .Llit_string_α_989_0_s
.Llit_string_α_989_0_s: .string          "n+"
                        .size            n00272_lit_string_bx, .-n00272_lit_string_bx
                        .type            n00273_deref_bx, @function
n00273_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_deref_α:           mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00274_line_mark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00275_line_mark_α
                        .size            n00273_deref_bx, .-n00273_deref_bx
                        .type            n00275_line_mark_bx, @function
n00275_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00276_call_proc_staged_α
                        .size            n00275_line_mark_bx, .-n00275_line_mark_bx
                        .type            n00276_call_proc_staged_bx, @function
n00276_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_call_proc_staged_α:
                        lea              rsi, [rbp + 800]
                        lea              rdx, [rbp + 768]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_994_2
.Lcall_proc_staged_α_994_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_994_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
.Lcall_proc_staged_α_994_29:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    n00274_line_mark_α
                                                                              jmp   n00277_deref_α
n00276_call_proc_staged_β:
                                                                              jmp   n00274_line_mark_α
.Lcall_proc_staged_β_994_0:
                        .quad            .Lcall_proc_staged_β_994_0_s
.Lcall_proc_staged_β_994_0_s:
                        .string          "options"
                        .size            n00276_call_proc_staged_bx, .-n00276_call_proc_staged_bx
                        .type            n00277_deref_bx, @function
n00277_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_deref_α:           mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00274_line_mark_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00278_assign_α
                        .size            n00277_deref_bx, .-n00277_deref_bx
                        .type            n00278_assign_bx, @function
n00278_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_assign_α:          mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00274_line_mark_α
                        .size            n00278_assign_bx, .-n00278_assign_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00279_disjunction_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00279_disjunction_bx, @function
n00279_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_disjunction_α:     mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0;            jmp   n00280_var_ref_α
.Ldisjunction_γ_949_as: mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1000_0
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00281_assign_α
.Ldisjunction_α_1000_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1000_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00281_assign_α
.Ldisjunction_α_1000_1:                                                       jmp   n00281_assign_α
n00279_disjunction_β:     mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_949_af
                                                                              jmp   .Ldisjunction_ω_949_af
.Ldisjunction_γ_949_af:
.Ldisjunction_ω_949_af: add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1;                              je    n00282_lit_integer_α
                                                                              jmp   n00283_line_mark_α
                        .size            n00279_disjunction_bx, .-n00279_disjunction_bx
                        .type            n00281_assign_bx, @function
n00281_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_assign_α:          mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00283_line_mark_α
                        .size            n00281_assign_bx, .-n00281_assign_bx
                        .type            n00283_line_mark_bx, @function
n00283_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00284_disjunction_α
                        .size            n00283_line_mark_bx, .-n00283_line_mark_bx
                        .type            n00284_disjunction_bx, @function
n00284_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_disjunction_α:     mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0;            jmp   n00285_lit_integer_α
.Ldisjunction_γ_952_as: mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1005_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00286_line_mark_α
.Ldisjunction_α_1005_0:                                                       jmp   n00286_line_mark_α
n00284_disjunction_β:     mov              eax, dword ptr [rbp + 384];          jmp   n00286_line_mark_α
.Ldisjunction_γ_952_af:
.Ldisjunction_ω_952_af: add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384];          jmp   n00286_line_mark_α
                        .size            n00284_disjunction_bx, .-n00284_disjunction_bx
                        .type            n00285_lit_integer_bx, @function
n00285_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_lit_integer_α:     mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1006_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00287_var_α
n00285_lit_integer_β:                                                           jmp   .Ldisjunction_ω_952_af
.Llit_integer_α_1006_0: .quad            0
                        .size            n00285_lit_integer_bx, .-n00285_lit_integer_bx
                        .type            n00287_var_bx, @function
n00287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 512], rax           # result
                        mov              qword ptr [rbp + 520], rdx;          jmp   n00288_binop_test_α
                        .size            n00287_var_bx, .-n00287_var_bx
                        .type            n00288_binop_test_bx, @function
n00288_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_binop_test_α:      mov              eax, dword ptr [rbp + 512]
                        cmp              al, 112;                             je    .Lbinop_test_α_1008_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              al, 112;                             je    .Lbinop_test_α_1008_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1008_2
                        mov              eax, dword ptr [rbp + 496]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1008_2
.Lbinop_test_α_1008_1:  mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 504]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_952_af
                        mov              rcx, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rcx
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rcx;          jmp   n00289_lit_string_α
.Lbinop_test_α_1008_0:  mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 6
                        lea              r9, [rbp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_1008_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_952_af
                        push             rax                                  # gc_poll bb_binop_relop.cpp:56
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00289_lit_string_α
.Lbinop_test_α_1008_2:  mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 6
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_952_af
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        lea              r8, [rbp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_relop.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00289_lit_string_α
                        .size            n00288_binop_test_bx, .-n00288_binop_test_bx
                        .type            n00289_lit_string_bx, @function
n00289_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_lit_string_α:      mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 37
                        mov              rax, qword ptr [rip + .Llit_string_α_1009_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00290_line_mark_α
.Llit_string_α_1009_0:  .quad            .Llit_string_α_1009_0_s
.Llit_string_α_1009_0_s:
                        .string          "-n needs a positive numeric parameter"
                        .size            n00289_lit_string_bx, .-n00289_lit_string_bx
                        .type            n00290_line_mark_bx, @function
n00290_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00291_call_icon_α
                        .size            n00290_line_mark_bx, .-n00290_line_mark_bx
                        .type            n00291_call_icon_bx, @function
n00291_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_call_icon_α:       mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1013: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1013]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n00286_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_952_as
n00291_call_icon_β:                                                             jmp   n00286_line_mark_α
                        .size            n00291_call_icon_bx, .-n00291_call_icon_bx
                        .type            n00286_line_mark_bx, @function
n00286_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00292_var_ref_α
                        .size            n00286_line_mark_bx, .-n00286_line_mark_bx
                        .type            n00292_var_ref_bx, @function
n00292_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00293_deref_α
                        .size            n00292_var_ref_bx, .-n00292_var_ref_bx
                        .type            n00293_deref_bx, @function
n00293_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_deref_α:           mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00294_line_mark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00295_line_mark_α
                        .size            n00293_deref_bx, .-n00293_deref_bx
                        .type            n00295_line_mark_bx, @function
n00295_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00296_call_icon_α
                        .size            n00295_line_mark_bx, .-n00295_line_mark_bx
                        .type            n00296_call_icon_bx, @function
n00296_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_call_icon_α:       mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1022: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1022]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    n00294_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00297_assign_α
n00296_call_icon_β:                                                             jmp   n00294_line_mark_α
                        .size            n00296_call_icon_bx, .-n00296_call_icon_bx
                        .type            n00297_assign_bx, @function
n00297_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_assign_α:          mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00294_line_mark_α
                        .size            n00297_assign_bx, .-n00297_assign_bx
                        .type            n00294_line_mark_bx, @function
n00294_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00298_var_ref_α
                        .size            n00294_line_mark_bx, .-n00294_line_mark_bx
                        .type            n00298_var_ref_bx, @function
n00298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00299_lit_string_α
                        .size            n00298_var_ref_bx, .-n00298_var_ref_bx
                        .type            n00299_lit_string_bx, @function
n00299_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_lit_string_α:      mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_1028_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n00300_deref_α
.Llit_string_α_1028_0:  .quad            .Llit_string_α_1028_0_s
.Llit_string_α_1028_0_s:
                        .string          "-Queens:"
                        .size            n00299_lit_string_bx, .-n00299_lit_string_bx
                        .type            n00300_deref_bx, @function
n00300_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_deref_α:           mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00301_line_mark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00302_line_mark_α
                        .size            n00300_deref_bx, .-n00300_deref_bx
                        .type            n00302_line_mark_bx, @function
n00302_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00303_call_icon_α
                        .size            n00302_line_mark_bx, .-n00302_line_mark_bx
                        .type            n00303_call_icon_bx, @function
n00303_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_call_icon_α:       mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1033: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1033]
                        lea              rsi, [rbp + 128]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    n00301_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:266
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00301_line_mark_α
n00303_call_icon_β:                                                             jmp   n00301_line_mark_α
                        .size            n00303_call_icon_bx, .-n00303_call_icon_bx
                        .type            n00301_line_mark_bx, @function
n00301_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00304_lit_integer_α
                        .size            n00301_line_mark_bx, .-n00301_line_mark_bx
                        .type            n00304_lit_integer_bx, @function
n00304_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_lit_integer_α:     mov              qword ptr [rbp + 32], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1036_0]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00305_line_mark_α
.Llit_integer_α_1036_0: .quad            1
                        .size            n00304_lit_integer_bx, .-n00304_lit_integer_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00306_call_proc_staged_α
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00306_call_proc_staged_bx, @function
n00306_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_call_proc_staged_α:
                        lea              rsi, [rbp + 32]
                        call             q_dcα;                               jmp   .Lcall_proc_staged_α_1040_2
.Lcall_proc_staged_α_1040_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1040_29
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
.Lcall_proc_staged_α_1040_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00307_deref_α
n00306_call_proc_staged_β:
                                                                              jmp   main_ω
.Lcall_proc_staged_β_1040_0:
                        .quad            .Lcall_proc_staged_β_1040_0_s
.Lcall_proc_staged_β_1040_0_s:
                        .string          "q"
                        .size            n00306_call_proc_staged_bx, .-n00306_call_proc_staged_bx
                        .type            n00307_deref_bx, @function
n00307_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_deref_α:           mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   main_ω
                        .size            n00307_deref_bx, .-n00307_deref_bx
                        .type            n00282_lit_integer_bx, @function
n00282_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_lit_integer_α:     mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1042_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   .Ldisjunction_γ_949_as
n00282_lit_integer_β:                                                           jmp   .Ldisjunction_ω_949_af
.Llit_integer_α_1042_0: .quad            6
                        .size            n00282_lit_integer_bx, .-n00282_lit_integer_bx
                        .type            n00280_var_ref_bx, @function
n00280_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00308_lit_string_α
n00280_var_ref_β:                                                               jmp   .Ldisjunction_ω_949_af
                        .size            n00280_var_ref_bx, .-n00280_var_ref_bx
                        .type            n00308_lit_string_bx, @function
n00308_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_lit_string_α:      mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1045_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00309_subscript_α
.Llit_string_α_1045_0:  .quad            .Llit_string_α_1045_0_s
.Llit_string_α_1045_0_s:
                        .string          "n"
                        .size            n00308_lit_string_bx, .-n00308_lit_string_bx
                        .type            n00309_subscript_bx, @function
n00309_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_subscript_α:       mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_949_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:60
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00310_deref_α
                        .size            n00309_subscript_bx, .-n00309_subscript_bx
                        .type            n00310_deref_bx, @function
n00310_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_deref_α:           mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_949_af
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00311_unop_test_α
                        .size            n00310_deref_bx, .-n00310_deref_bx
                        .type            n00311_unop_test_bx, @function
n00311_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_unop_test_α:       mov              eax, dword ptr [rbp + 656]
                        cmp              al, 104;                             je    .Ldisjunction_ω_949_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_949_af
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax;          jmp   .Ldisjunction_γ_949_as
n00311_unop_test_β:                                                             jmp   .Ldisjunction_ω_949_af
                        .size            n00311_unop_test_bx, .-n00311_unop_test_bx
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
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            4261954014554
                        .quad            38654705760
                        .quad            .Lgcmap_main_s
                        .quad            880
                        .quad            5
                        .quad            422212465065984
                        .quad            17596481012096
                        .quad            175921860444560
                        .quad            17596481012272
                        .quad            334251534844480
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "q"
.Lstartup_ign2:         .string          "show"
.Lstartup_ign3:         .string          "options"
.Lstartup_ign4:         .string          "write"
.Lstartup_ign5:         .string          "list"
.Lstartup_ign6:         .string          "stop"
.Lstartup_ign7:         .string          "repl"
.Lstartup_ign8:         .string          "push"
.Lstartup_ign9:         .string          "pull"
.Lstartup_ign10:        .string          "get"
.Lstartup_ign11:        .string          "integer"
.Lstartup_ign12:        .string          "real"
.Lstartup_ign13:        .string          "any"
.Lstartup_ign14:        .string          "put"
.Lstartup_ign15:        .string          "table"
.Lstartup_ign16:        .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign2]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign3]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign4]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign5]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign6]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign7]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign8]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign9]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign10]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign11]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign12]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign13]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign14]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign15]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign16]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_ipp00312_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00312_0
                        .quad            0
.Lstartup_iln00312_0:    .string          "i"
.Lstartup_iln00312_1:    .string          "opts"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00312_0
                        .quad            .Lstartup_iln00312_1
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            -1
                        .long            864
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ipnames9000]
                        mov              edx, 1
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ilnames9000]
                        mov              edx, 2
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_iloffs9000]
                        mov              edx, 2
                        call             rt_proc_set_local_offs@PLT
                        .section         .rodata
.Lstartup_pname0:       .string          "q"
.Lstartup_ipp0_0:       .string          "c"
                        .align           8
.Lstartup_ipnames0:
                        .quad            .Lstartup_ipp0_0
                        .quad            0
.Lstartup_iln0_0:       .string          "r"
                        .align           8
.Lstartup_ilnames0:
                        .quad            .Lstartup_iln0_0
                        .quad            0
                        .align           4
.Lstartup_iloffs0:
                        .long            2272
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__q
                        .quad            q_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames0
                        .long            1
                        .long            0
                        .long            2288
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_ipnames0]
                        mov              edx, 1
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_ilnames0]
                        mov              edx, 1
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + .Lstartup_iloffs0]
                        mov              edx, 1
                        call             rt_proc_set_local_offs@PLT
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
                        .long            1584
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "options"
.Lstartup_ipp2_0:       .string          "arg"
.Lstartup_ipp2_1:       .string          "optstring"
                        .align           8
.Lstartup_ipnames2:
                        .quad            .Lstartup_ipp2_0
                        .quad            .Lstartup_ipp2_1
                        .quad            0
.Lstartup_iln2_0:       .string          "x"
.Lstartup_iln2_1:       .string          "i"
.Lstartup_iln2_2:       .string          "c"
.Lstartup_iln2_3:       .string          "otab"
.Lstartup_iln2_4:       .string          "flist"
.Lstartup_iln2_5:       .string          "o"
.Lstartup_iln2_6:       .string          "p"
.Lstartup_iln2_7:       .string          "&letters"
                        .align           8
.Lstartup_ilnames2:
                        .quad            .Lstartup_iln2_0
                        .quad            .Lstartup_iln2_1
                        .quad            .Lstartup_iln2_2
                        .quad            .Lstartup_iln2_3
                        .quad            .Lstartup_iln2_4
                        .quad            .Lstartup_iln2_5
                        .quad            .Lstartup_iln2_6
                        .quad            .Lstartup_iln2_7
                        .quad            0
                        .align           4
.Lstartup_iloffs2:
                        .long            3552
                        .long            3616
                        .long            3568
                        .long            3504
                        .long            3520
                        .long            3584
                        .long            3600
                        .long            -1
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__options
                        .quad            options_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames2
                        .long            2
                        .long            0
                        .long            3632
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_ipnames2]
                        mov              edx, 2
                        call             rt_proc_set_loc_params@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_ilnames2]
                        mov              edx, 8
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + .Lstartup_iloffs2]
                        mov              edx, 8
                        call             rt_proc_set_local_offs@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            4
                        .quad            .Lgcmap_q
                        .quad            .Lgcmap_show
                        .quad            .Lgcmap_options
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
