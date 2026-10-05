                        .intel_syntax    noprefix
                        .text
                        .file            1 "queens.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__q:
                        sub              rsp, 2416
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2408
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_q]
                        mov              qword ptr [rsp + 2328], rax
                        mov              dword ptr [rsp + 2320], 160
                        mov              dword ptr [rsp + 2324], 2416
                        mov              eax, 0
                        mov              qword ptr [rsp + 2408], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
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
                        mov              rsi, 48
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
                        lea              rsi, [rsp + 2416]
                        mov              qword ptr [rdi + 40], rsi
.Lq_α_0_245:
q_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_135_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_135_0:    .quad            .Lline_mark_α_135_0_s
.Lline_mark_α_135_0_s:  .string          "queens.icn"
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
n4_disjunction_α:       mov              qword ptr [rbp + 1568], 0
                        mov              qword ptr [rbp + 1576], 0
                        mov              dword ptr [rbp + 1584], 0;           jmp   n5_var_α
.Ldisjunction_γ_4_as:   mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_141_0
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n43_line_mark_α
.Ldisjunction_α_141_0:                                                        jmp   n43_line_mark_α
n4_disjunction_β:       mov              eax, dword ptr [rbp + 1584];         jmp   n42_goto_β
.Ldisjunction_γ_4_af:
.Ldisjunction_ω_4_af:   add              dword ptr [rbp + 1584], 1
                        mov              eax, dword ptr [rbp + 1584];         jmp   n43_line_mark_α
                        .size            n4_disjunction_bx, .-n4_disjunction_bx
                        .type            n5_var_bx, @function
n5_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_α:               mov              rax, qword ptr [r9 + 80]             # q__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rbp + 2240], rax          # result
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n6_unop_test_α
n5_var_β:                                                                     jmp   .Ldisjunction_ω_4_af
                        .size            n5_var_bx, .-n5_var_bx
                        .type            n6_unop_test_bx, @function
n6_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_unop_test_α:         mov              eax, dword ptr [rbp + 2240]
                        cmp              al, 104;                             je    .Ldisjunction_ω_4_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_4_af
                        mov              qword ptr [rbp + 2224], 0
                        mov              qword ptr [rbp + 2232], 0;           jmp   n7_lit_integer_α
                        .size            n6_unop_test_bx, .-n6_unop_test_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rbp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_144_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n8_assign_α
.Llit_integer_α_144_0:  .quad            1
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_assign_bx, @function
n8_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
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
n10_lit_integer_α:      mov              qword ptr [rbp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_148_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n11_var_α
.Llit_integer_α_148_0:  .quad            2
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_var_bx, @function
n11_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 2144], rax          # result
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n12_coerce_numeric_α
                        .size            n11_var_bx, .-n11_var_bx
                        .type            n12_coerce_numeric_bx, @function
n12_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2144]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_151_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_151_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_151_0
.Lcoerce_numeric_α_151_1:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n13_binop_α
.Lcoerce_numeric_α_151_0:
                        lea              rdi, [rbp + 2144]
                        lea              rsi, [rbp + 2128]
                        lea              rdx, [rbp + 2112]
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_1:           push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_0:           mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2112]
                        cmp              al, 104;                             je    n21_line_mark_α
                                                                              jmp   n13_binop_α
                        .size            n12_coerce_numeric_bx, .-n12_coerce_numeric_bx
                        .type            n13_binop_bx, @function
n13_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rbp + 2112]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_152_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 2120]
                        imul             rax, rdx;                            jo    .Lbinop_α_152_0
                        mov              qword ptr [rbp + 2096], 3
                        mov              qword ptr [rbp + 2104], rax;         jmp   .Lbinop_α_152_7
.Lbinop_α_152_2:        and              edx, 1;                              jz    .Lbinop_α_152_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 2120]
                        cmp              al, 5;                               je    .Lbinop_α_152_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_152_4
.Lbinop_α_152_3:        movq             xmm0, rsi
.Lbinop_α_152_4:        cmp              cl, 5;                               je    .Lbinop_α_152_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_152_6
.Lbinop_α_152_5:        movq             xmm1, rdi
.Lbinop_α_152_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_152_0
                        mov              qword ptr [rbp + 2096], 5
                        mov              qword ptr [rbp + 2104], rax
.Lbinop_α_152_7:                                                              jmp   n14_lit_integer_α
.Lbinop_α_152_0:        mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
.Lgcsite_q_3:           mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n21_line_mark_α
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
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
.Lgcsite_q_2:           mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n14_lit_integer_α
                        .size            n13_binop_bx, .-n13_binop_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              qword ptr [rbp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_153_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n15_coerce_numeric_α
.Llit_integer_α_153_0:  .quad            1
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_coerce_numeric_bx, @function
n15_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_155_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_155_0
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_155_0
.Lcoerce_numeric_α_155_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n16_binop_α
.Lcoerce_numeric_α_155_0:
                        lea              rdi, [rbp + 2096]
                        lea              rsi, [rbp + 2160]
                        lea              rdx, [rbp + 2080]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_5:           push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_4:           mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2080]
                        cmp              al, 104;                             je    n21_line_mark_α
                                                                              jmp   n16_binop_α
                        .size            n15_coerce_numeric_bx, .-n15_coerce_numeric_bx
                        .type            n16_binop_bx, @function
n16_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            mov              eax, dword ptr [rbp + 2080]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_156_2
                        mov              rax, qword ptr [rbp + 2088]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_156_0
                        mov              qword ptr [rbp + 2064], 3
                        mov              qword ptr [rbp + 2072], rax;         jmp   .Lbinop_α_156_7
.Lbinop_α_156_2:        and              edx, 1;                              jz    .Lbinop_α_156_0
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_156_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_156_4
.Lbinop_α_156_3:        movq             xmm0, rsi
.Lbinop_α_156_4:        cmp              cl, 5;                               je    .Lbinop_α_156_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_156_6
.Lbinop_α_156_5:        movq             xmm1, rdi
.Lbinop_α_156_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_156_0
                        mov              qword ptr [rbp + 2064], 5
                        mov              qword ptr [rbp + 2072], rax
.Lbinop_α_156_7:                                                              jmp   n17_lit_integer_α
.Lbinop_α_156_0:        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
.Lgcsite_q_7:           mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_6:           mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n17_lit_integer_α
                        .size            n16_binop_bx, .-n16_binop_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              qword ptr [rbp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_157_0]
                        mov              qword ptr [rbp + 2184], rax;         jmp   n18_line_mark_α
.Llit_integer_α_157_0:  .quad            0
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
n19_call_icon_α:        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lcall_icon_α_rkfn161:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn161]
                        lea              rsi, [rbp + 2016]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_q_8:           mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_9:           mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n21_line_mark_α
                                                                              jmp   n20_assign_α
n19_call_icon_β:                                                              jmp   n21_line_mark_α
                        .size            n19_call_icon_bx, .-n19_call_icon_bx
                        .type            n20_assign_bx, @function
n20_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
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
n22_lit_integer_α:      mov              qword ptr [rbp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_165_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n23_var_α
.Llit_integer_α_165_0:  .quad            2
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1936], rax          # result
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n24_coerce_numeric_α
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_coerce_numeric_bx, @function
n24_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1936]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_168_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_168_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_168_0
.Lcoerce_numeric_α_168_1:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n25_binop_α
.Lcoerce_numeric_α_168_0:
                        lea              rdi, [rbp + 1936]
                        lea              rsi, [rbp + 1920]
                        lea              rdx, [rbp + 1904]
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_11:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_10:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1904]
                        cmp              al, 104;                             je    n33_line_mark_α
                                                                              jmp   n25_binop_α
                        .size            n24_coerce_numeric_bx, .-n24_coerce_numeric_bx
                        .type            n25_binop_bx, @function
n25_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rbp + 1904]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_169_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 1912]
                        imul             rax, rdx;                            jo    .Lbinop_α_169_0
                        mov              qword ptr [rbp + 1888], 3
                        mov              qword ptr [rbp + 1896], rax;         jmp   .Lbinop_α_169_7
.Lbinop_α_169_2:        and              edx, 1;                              jz    .Lbinop_α_169_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 1912]
                        cmp              al, 5;                               je    .Lbinop_α_169_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_169_4
.Lbinop_α_169_3:        movq             xmm0, rsi
.Lbinop_α_169_4:        cmp              cl, 5;                               je    .Lbinop_α_169_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_169_6
.Lbinop_α_169_5:        movq             xmm1, rdi
.Lbinop_α_169_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_169_0
                        mov              qword ptr [rbp + 1888], 5
                        mov              qword ptr [rbp + 1896], rax
.Lbinop_α_169_7:                                                              jmp   n26_lit_integer_α
.Lbinop_α_169_0:        mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 1904]
                        mov              rcx, qword ptr [rbp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
.Lgcsite_q_13:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_line_mark_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
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
.Lgcsite_q_12:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n26_lit_integer_α
                        .size            n25_binop_bx, .-n25_binop_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              qword ptr [rbp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_170_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n27_coerce_numeric_α
.Llit_integer_α_170_0:  .quad            1
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_coerce_numeric_bx, @function
n27_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1888]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_172_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_172_0
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_172_0
.Lcoerce_numeric_α_172_1:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n28_binop_α
.Lcoerce_numeric_α_172_0:
                        lea              rdi, [rbp + 1888]
                        lea              rsi, [rbp + 1952]
                        lea              rdx, [rbp + 1872]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_15:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_14:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1872]
                        cmp              al, 104;                             je    n33_line_mark_α
                                                                              jmp   n28_binop_α
                        .size            n27_coerce_numeric_bx, .-n27_coerce_numeric_bx
                        .type            n28_binop_bx, @function
n28_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              eax, dword ptr [rbp + 1872]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_173_2
                        mov              rax, qword ptr [rbp + 1880]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_173_0
                        mov              qword ptr [rbp + 1856], 3
                        mov              qword ptr [rbp + 1864], rax;         jmp   .Lbinop_α_173_7
.Lbinop_α_173_2:        and              edx, 1;                              jz    .Lbinop_α_173_0
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_173_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_173_4
.Lbinop_α_173_3:        movq             xmm0, rsi
.Lbinop_α_173_4:        cmp              cl, 5;                               je    .Lbinop_α_173_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_173_6
.Lbinop_α_173_5:        movq             xmm1, rdi
.Lbinop_α_173_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_173_0
                        mov              qword ptr [rbp + 1856], 5
                        mov              qword ptr [rbp + 1864], rax
.Lbinop_α_173_7:                                                              jmp   n29_lit_integer_α
.Lbinop_α_173_0:        mov              rdi, qword ptr [rbp + 1872]
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
.Lgcsite_q_17:          mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_16:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n29_lit_integer_α
                        .size            n28_binop_bx, .-n28_binop_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_174_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n30_line_mark_α
.Llit_integer_α_174_0:  .quad            0
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
n31_call_icon_α:        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lcall_icon_α_rkfn178:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn178]
                        lea              rsi, [rbp + 1808]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_q_18:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_19:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n33_line_mark_α
                                                                              jmp   n32_assign_α
n31_call_icon_β:                                                              jmp   n33_line_mark_α
                        .size            n31_call_icon_bx, .-n31_call_icon_bx
                        .type            n32_assign_bx, @function
n32_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
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
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n35_lit_integer_α
                        .size            n34_var_ref_bx, .-n34_var_ref_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              qword ptr [rbp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_184_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n36_deref_α
.Llit_integer_α_184_0:  .quad            0
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_deref_bx, @function
n36_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_deref_α:            mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_21:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n43_line_mark_α
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_20:          mov              r8,  qword ptr [rip + rtccb+40]
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
n38_call_icon_α:        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lcall_icon_α_rkfn189:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn189]
                        lea              rsi, [rbp + 1664]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_q_22:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_23:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n43_line_mark_α
                                                                              jmp   n39_assign_α
n38_call_icon_β:                                                              jmp   n43_line_mark_α
                        .size            n38_call_icon_bx, .-n38_call_icon_bx
                        .type            n39_assign_bx, @function
n39_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [r9 + 64], rax             # q__STATIC__rows
                        mov              qword ptr [r9 + 72], rdx
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n40_conjunction_α
                        .size            n39_assign_bx, .-n39_assign_bx
                        .type            n40_conjunction_bx, @function
n40_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_conjunction_α:      mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n41_conjunction_α
n40_conjunction_β:                                                            jmp   n43_line_mark_α
                        .size            n40_conjunction_bx, .-n40_conjunction_bx
                        .type            n41_conjunction_bx, @function
n41_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_conjunction_α:      mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax;         jmp   .Ldisjunction_γ_4_as
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
n44_lit_integer_α:      mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_196_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n45_var_ref_α
.Llit_integer_α_196_0:  .quad            0
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052352                      # q__STATIC__rows
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n46_lit_integer_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_lit_integer_bx, @function
n46_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_integer_α:      mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_199_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n47_var_α
.Llit_integer_α_199_0:  .quad            1
                        .size            n46_lit_integer_bx, .-n46_lit_integer_bx
                        .type            n47_var_bx, @function
n47_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 672], rax           # result
                        mov              qword ptr [rbp + 680], rdx;          jmp   n48_to_α
                        .size            n47_var_bx, .-n47_var_bx
                        .type            n48_to_bx, @function
n48_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_to_α:               mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_q_31:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    q_ω
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_30:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_q_29:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], 3
                        mov              qword ptr [rbp + 664], rax
                        push             rax                                  # gc_poll bb_to.cpp:160
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_28:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_q_27:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    q_ω
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_26:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_q_25:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], 3
                        mov              qword ptr [rbp + 680], rax
                        push             rax                                  # gc_poll bb_to.cpp:168
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_24:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 640], rax
.Lto_α_202_0:           mov              rax, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 680]
                        cmp              rax, rcx;                            jg    q_ω
                        mov              qword ptr [rbp + 624], 3
                        mov              qword ptr [rbp + 632], rax;          jmp   n49_assign_α
n48_to_β:               inc              qword ptr [rbp + 640];               jo    q_ω
                                                                              jmp   .Lto_α_202_0
                        .size            n48_to_bx, .-n48_to_bx
                        .type            n49_assign_bx, @function
n49_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n50_subscript_α
                        .size            n49_assign_bx, .-n49_assign_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_q_33:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_32:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n51_deref_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_deref_bx, @function
n51_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_deref_α:            mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_35:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_34:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n52_binop_test_α
                        .size            n51_deref_bx, .-n51_deref_bx
                        .type            n52_binop_test_bx, @function
n52_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_binop_test_α:       mov              eax, dword ptr [rbp + 576]
                        cmp              al, 112;                             je    .Lbinop_test_α_206_0
                        mov              eax, dword ptr [rbp + 704]
                        cmp              al, 112;                             je    .Lbinop_test_α_206_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 3;                               jne   .Lbinop_test_α_206_2
                        mov              eax, dword ptr [rbp + 704]
                        cmp              al, 3;                               jne   .Lbinop_test_α_206_2
.Lbinop_test_α_206_1:   mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 712]
                        cmp              rax, rcx;                            jne   n48_to_β
                        mov              rcx, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rcx
                        mov              rcx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rcx;          jmp   n53_var_ref_α
.Lbinop_test_α_206_0:   mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        mov              r8d, 9
                        lea              r9, [rbp + 560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
.Lgcsite_q_41:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_206_2
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
.Lgcsite_q_40:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n53_var_ref_α
.Lbinop_test_α_206_2:   mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_q_39:          push             rax
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
.Lgcsite_q_38:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n48_to_β
                        mov              rdi, qword ptr [rbp + 576]
                        mov              rsi, qword ptr [rbp + 584]
                        mov              rdx, qword ptr [rbp + 704]
                        mov              rcx, qword ptr [rbp + 712]
                        lea              r8, [rbp + 560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
.Lgcsite_q_37:          mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_36:          mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n54_var_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 840], rax;          jmp   n55_var_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 848], rax           # result
                        mov              qword ptr [rbp + 856], rdx;          jmp   n56_coerce_numeric_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_coerce_numeric_bx, @function
n56_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              eax, dword ptr [rbp + 848]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_213_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_213_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_213_0
.Lcoerce_numeric_α_213_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax;          jmp   n57_coerce_numeric_α
.Lcoerce_numeric_α_213_0:
                        lea              rdi, [rbp + 848]
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 816]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_43:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_42:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 816]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n57_coerce_numeric_α
                        .size            n56_coerce_numeric_bx, .-n56_coerce_numeric_bx
                        .type            n57_coerce_numeric_bx, @function
n57_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_215_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_215_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_215_0
.Lcoerce_numeric_α_215_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 808], rax;          jmp   n58_binop_α
.Lcoerce_numeric_α_215_0:
                        lea              rdi, [rbp + 2304]
                        lea              rsi, [rbp + 848]
                        lea              rdx, [rbp + 800]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_45:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_44:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 800]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n58_binop_α
                        .size            n57_coerce_numeric_bx, .-n57_coerce_numeric_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            mov              eax, dword ptr [rbp + 816]
                        mov              ecx, dword ptr [rbp + 800]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_216_2
                        mov              rax, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 808]
                        add              rax, rdx;                            jo    .Lbinop_α_216_0
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax;          jmp   .Lbinop_α_216_7
.Lbinop_α_216_2:        and              edx, 1;                              jz    .Lbinop_α_216_0
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdi, qword ptr [rbp + 808]
                        cmp              al, 5;                               je    .Lbinop_α_216_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_216_4
.Lbinop_α_216_3:        movq             xmm0, rsi
.Lbinop_α_216_4:        cmp              cl, 5;                               je    .Lbinop_α_216_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_216_6
.Lbinop_α_216_5:        movq             xmm1, rdi
.Lbinop_α_216_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_216_0
                        mov              qword ptr [rbp + 784], 5
                        mov              qword ptr [rbp + 792], rax
.Lbinop_α_216_7:                                                              jmp   n59_var_α
.Lbinop_α_216_0:        mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_q_47:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
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
.Lgcsite_q_46:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n59_var_α
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_var_bx, @function
n59_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_α:              mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 872], rax;          jmp   n60_coerce_numeric_α
                        .size            n59_var_bx, .-n59_var_bx
                        .type            n60_coerce_numeric_bx, @function
n60_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:   mov              eax, dword ptr [rbp + 784]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_220_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_220_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_220_0
.Lcoerce_numeric_α_220_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax;          jmp   n61_coerce_numeric_α
.Lcoerce_numeric_α_220_0:
                        lea              rdi, [rbp + 784]
                        lea              rsi, [rbp + 2416]
                        lea              rdx, [rbp + 768]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_49:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_48:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 768]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n61_coerce_numeric_α
                        .size            n60_coerce_numeric_bx, .-n60_coerce_numeric_bx
                        .type            n61_coerce_numeric_bx, @function
n61_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_222_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_222_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_222_0
.Lcoerce_numeric_α_222_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 760], rax;          jmp   n62_binop_α
.Lcoerce_numeric_α_222_0:
                        lea              rdi, [rbp + 2416]
                        lea              rsi, [rbp + 784]
                        lea              rdx, [rbp + 752]
                        mov              rcx, 281483583422566
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_51:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_50:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 752]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n62_binop_α
                        .size            n61_coerce_numeric_bx, .-n61_coerce_numeric_bx
                        .type            n62_binop_bx, @function
n62_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            mov              eax, dword ptr [rbp + 768]
                        mov              ecx, dword ptr [rbp + 752]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_223_2
                        mov              rax, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 760]
                        sub              rax, rdx;                            jo    .Lbinop_α_223_0
                        mov              qword ptr [rbp + 736], 3
                        mov              qword ptr [rbp + 744], rax;          jmp   .Lbinop_α_223_7
.Lbinop_α_223_2:        and              edx, 1;                              jz    .Lbinop_α_223_0
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdi, qword ptr [rbp + 760]
                        cmp              al, 5;                               je    .Lbinop_α_223_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_223_4
.Lbinop_α_223_3:        movq             xmm0, rsi
.Lbinop_α_223_4:        cmp              cl, 5;                               je    .Lbinop_α_223_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_223_6
.Lbinop_α_223_5:        movq             xmm1, rdi
.Lbinop_α_223_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_223_0
                        mov              qword ptr [rbp + 736], 5
                        mov              qword ptr [rbp + 744], rax
.Lbinop_α_223_7:                                                              jmp   n63_subscript_α
.Lbinop_α_223_0:        mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 752]
                        mov              rcx, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
.Lgcsite_q_53:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
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
.Lgcsite_q_52:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n63_subscript_α
                        .size            n62_binop_bx, .-n62_binop_bx
                        .type            n63_subscript_bx, @function
n63_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              rdx, qword ptr [rbp + 736]
                        mov              rcx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_q_55:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_54:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n64_deref_α
                        .size            n63_subscript_bx, .-n63_subscript_bx
                        .type            n64_deref_bx, @function
n64_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_deref_α:            mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_57:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_56:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n65_binop_test_α
                        .size            n64_deref_bx, .-n64_deref_bx
                        .type            n65_binop_test_bx, @function
n65_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_binop_test_α:       mov              eax, dword ptr [rbp + 560]
                        cmp              al, 112;                             je    .Lbinop_test_α_226_0
                        mov              eax, dword ptr [rbp + 896]
                        cmp              al, 112;                             je    .Lbinop_test_α_226_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 3;                               jne   .Lbinop_test_α_226_2
                        mov              eax, dword ptr [rbp + 896]
                        cmp              al, 3;                               jne   .Lbinop_test_α_226_2
.Lbinop_test_α_226_1:   mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 904]
                        cmp              rax, rcx;                            jne   n48_to_β
                        mov              rcx, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 552], rcx;          jmp   n66_var_ref_α
.Lbinop_test_α_226_0:   mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              r8d, 9
                        lea              r9, [rbp + 544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
.Lgcsite_q_63:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_226_2
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
.Lgcsite_q_62:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n66_var_ref_α
.Lbinop_test_α_226_2:   mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_q_61:          push             rax
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
.Lgcsite_q_60:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n48_to_β
                        mov              rdi, qword ptr [rbp + 560]
                        mov              rsi, qword ptr [rbp + 568]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        lea              r8, [rbp + 544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
.Lgcsite_q_59:          mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_58:          mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n67_var_α
                        .size            n66_var_ref_bx, .-n66_var_ref_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n68_var_α
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n69_coerce_numeric_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_coerce_numeric_bx, @function
n69_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_234_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_234_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_234_0
.Lcoerce_numeric_α_234_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n70_coerce_numeric_α
.Lcoerce_numeric_α_234_0:
                        lea              rdi, [rbp + 2304]
                        lea              rsi, [rbp + 2416]
                        lea              rdx, [rbp + 992]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_65:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_64:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 992]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n70_coerce_numeric_α
                        .size            n69_coerce_numeric_bx, .-n69_coerce_numeric_bx
                        .type            n70_coerce_numeric_bx, @function
n70_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_236_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_236_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_236_0
.Lcoerce_numeric_α_236_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 984], rax;          jmp   n71_binop_α
.Lcoerce_numeric_α_236_0:
                        lea              rdi, [rbp + 2416]
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 976]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_67:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_66:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 976]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n71_binop_α
                        .size            n70_coerce_numeric_bx, .-n70_coerce_numeric_bx
                        .type            n71_binop_bx, @function
n71_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:            mov              eax, dword ptr [rbp + 992]
                        mov              ecx, dword ptr [rbp + 976]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_237_2
                        mov              rax, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 984]
                        add              rax, rdx;                            jo    .Lbinop_α_237_0
                        mov              qword ptr [rbp + 960], 3
                        mov              qword ptr [rbp + 968], rax;          jmp   .Lbinop_α_237_7
.Lbinop_α_237_2:        and              edx, 1;                              jz    .Lbinop_α_237_0
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdi, qword ptr [rbp + 984]
                        cmp              al, 5;                               je    .Lbinop_α_237_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_237_4
.Lbinop_α_237_3:        movq             xmm0, rsi
.Lbinop_α_237_4:        cmp              cl, 5;                               je    .Lbinop_α_237_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_237_6
.Lbinop_α_237_5:        movq             xmm1, rdi
.Lbinop_α_237_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_237_0
                        mov              qword ptr [rbp + 960], 5
                        mov              qword ptr [rbp + 968], rax
.Lbinop_α_237_7:                                                              jmp   n72_lit_integer_α
.Lbinop_α_237_0:        mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_q_69:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
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
.Lgcsite_q_68:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n72_lit_integer_α
                        .size            n71_binop_bx, .-n71_binop_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      mov              qword ptr [rbp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_238_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n73_coerce_numeric_α
.Llit_integer_α_238_0:  .quad            1
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_coerce_numeric_bx, @function
n73_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:   mov              eax, dword ptr [rbp + 960]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_240_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_240_0
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_240_0
.Lcoerce_numeric_α_240_1:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 952], rax;          jmp   n74_binop_α
.Lcoerce_numeric_α_240_0:
                        lea              rdi, [rbp + 960]
                        lea              rsi, [rbp + 1040]
                        lea              rdx, [rbp + 944]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_71:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_70:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 944]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n74_binop_α
                        .size            n73_coerce_numeric_bx, .-n73_coerce_numeric_bx
                        .type            n74_binop_bx, @function
n74_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_binop_α:            mov              eax, dword ptr [rbp + 944]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_241_2
                        mov              rax, qword ptr [rbp + 952]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_241_0
                        mov              qword ptr [rbp + 928], 3
                        mov              qword ptr [rbp + 936], rax;          jmp   .Lbinop_α_241_7
.Lbinop_α_241_2:        and              edx, 1;                              jz    .Lbinop_α_241_0
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_241_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_241_4
.Lbinop_α_241_3:        movq             xmm0, rsi
.Lbinop_α_241_4:        cmp              cl, 5;                               je    .Lbinop_α_241_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_241_6
.Lbinop_α_241_5:        movq             xmm1, rdi
.Lbinop_α_241_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_241_0
                        mov              qword ptr [rbp + 928], 5
                        mov              qword ptr [rbp + 936], rax
.Lbinop_α_241_7:                                                              jmp   n75_subscript_α
.Lbinop_α_241_0:        mov              rdi, qword ptr [rbp + 944]
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdx, qword ptr [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
.Lgcsite_q_73:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
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
.Lgcsite_q_72:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n75_subscript_α
                        .size            n74_binop_bx, .-n74_binop_bx
                        .type            n75_subscript_bx, @function
n75_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_subscript_α:        mov              rdi, qword ptr [rbp + 912]
                        mov              rsi, qword ptr [rbp + 920]
                        mov              rdx, qword ptr [rbp + 928]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_q_75:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_74:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n76_deref_α
                        .size            n75_subscript_bx, .-n75_subscript_bx
                        .type            n76_deref_bx, @function
n76_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_deref_α:            mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_77:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_76:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n77_binop_test_α
                        .size            n76_deref_bx, .-n76_deref_bx
                        .type            n77_binop_test_bx, @function
n77_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_binop_test_α:       mov              eax, dword ptr [rbp + 544]
                        cmp              al, 112;                             je    .Lbinop_test_α_244_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              al, 112;                             je    .Lbinop_test_α_244_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              al, 3;                               jne   .Lbinop_test_α_244_2
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              al, 3;                               jne   .Lbinop_test_α_244_2
.Lbinop_test_α_244_1:   mov              rax, qword ptr [rbp + 552]
                        mov              rcx, qword ptr [rbp + 1080]
                        cmp              rax, rcx;                            jne   n48_to_β
                        mov              rcx, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 528], rcx
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 536], rcx;          jmp   n78_var_ref_α
.Lbinop_test_α_244_0:   mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              r8d, 9
                        lea              r9, [rbp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
.Lgcsite_q_83:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_244_2
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
.Lgcsite_q_82:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n78_var_ref_α
.Lbinop_test_α_244_2:   mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_q_81:          push             rax
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
.Lgcsite_q_80:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n48_to_β
                        mov              rdi, qword ptr [rbp + 544]
                        mov              rsi, qword ptr [rbp + 552]
                        mov              rdx, qword ptr [rbp + 1072]
                        mov              rcx, qword ptr [rbp + 1080]
                        lea              r8, [rbp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
.Lgcsite_q_79:          mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_78:          mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx;           jmp   n79_var_α
                        .size            n78_var_ref_bx, .-n78_var_ref_bx
                        .type            n79_var_bx, @function
n79_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 56], rax;           jmp   n80_subscript_α
                        .size            n79_var_bx, .-n79_var_bx
                        .type            n80_subscript_bx, @function
n80_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_subscript_α:        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        mov              rdx, qword ptr [rbp + 48]
                        mov              rcx, qword ptr [rbp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_q_85:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_84:          mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n82_var_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 232], rax;          jmp   n83_var_α
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 240], rax           # result
                        mov              qword ptr [rbp + 248], rdx;          jmp   n84_coerce_numeric_α
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_coerce_numeric_bx, @function
n84_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_numeric_α:   mov              eax, dword ptr [rbp + 240]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_256_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_256_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_256_0
.Lcoerce_numeric_α_256_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax;          jmp   n85_coerce_numeric_α
.Lcoerce_numeric_α_256_0:
                        lea              rdi, [rbp + 240]
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 208]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_87:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_86:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 208]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n85_coerce_numeric_α
                        .size            n84_coerce_numeric_bx, .-n84_coerce_numeric_bx
                        .type            n85_coerce_numeric_bx, @function
n85_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_258_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_258_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_258_0
.Lcoerce_numeric_α_258_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 200], rax;          jmp   n86_binop_α
.Lcoerce_numeric_α_258_0:
                        lea              rdi, [rbp + 2304]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 192]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_89:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_88:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 192]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n86_binop_α
                        .size            n85_coerce_numeric_bx, .-n85_coerce_numeric_bx
                        .type            n86_binop_bx, @function
n86_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_binop_α:            mov              eax, dword ptr [rbp + 208]
                        mov              ecx, dword ptr [rbp + 192]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_259_2
                        mov              rax, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 200]
                        add              rax, rdx;                            jo    .Lbinop_α_259_0
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax;          jmp   .Lbinop_α_259_7
.Lbinop_α_259_2:        and              edx, 1;                              jz    .Lbinop_α_259_0
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdi, qword ptr [rbp + 200]
                        cmp              al, 5;                               je    .Lbinop_α_259_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_259_4
.Lbinop_α_259_3:        movq             xmm0, rsi
.Lbinop_α_259_4:        cmp              cl, 5;                               je    .Lbinop_α_259_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_259_6
.Lbinop_α_259_5:        movq             xmm1, rdi
.Lbinop_α_259_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_259_0
                        mov              qword ptr [rbp + 176], 5
                        mov              qword ptr [rbp + 184], rax
.Lbinop_α_259_7:                                                              jmp   n87_var_α
.Lbinop_α_259_0:        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 192]
                        mov              rcx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_q_91:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
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
.Lgcsite_q_90:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n87_var_α
                        .size            n86_binop_bx, .-n86_binop_bx
                        .type            n87_var_bx, @function
n87_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_α:              mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 264], rax;          jmp   n88_coerce_numeric_α
                        .size            n87_var_bx, .-n87_var_bx
                        .type            n88_coerce_numeric_bx, @function
n88_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_coerce_numeric_α:   mov              eax, dword ptr [rbp + 176]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_263_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_263_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_263_0
.Lcoerce_numeric_α_263_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax;          jmp   n89_coerce_numeric_α
.Lcoerce_numeric_α_263_0:
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 2416]
                        lea              rdx, [rbp + 160]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_93:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_92:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 160]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n89_coerce_numeric_α
                        .size            n88_coerce_numeric_bx, .-n88_coerce_numeric_bx
                        .type            n89_coerce_numeric_bx, @function
n89_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_265_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_265_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_265_0
.Lcoerce_numeric_α_265_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 152], rax;          jmp   n90_binop_α
.Lcoerce_numeric_α_265_0:
                        lea              rdi, [rbp + 2416]
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 144]
                        mov              rcx, 281483583422566
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_95:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_94:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 144]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n90_binop_α
                        .size            n89_coerce_numeric_bx, .-n89_coerce_numeric_bx
                        .type            n90_binop_bx, @function
n90_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_binop_α:            mov              eax, dword ptr [rbp + 160]
                        mov              ecx, dword ptr [rbp + 144]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_266_2
                        mov              rax, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 152]
                        sub              rax, rdx;                            jo    .Lbinop_α_266_0
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax;          jmp   .Lbinop_α_266_7
.Lbinop_α_266_2:        and              edx, 1;                              jz    .Lbinop_α_266_0
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdi, qword ptr [rbp + 152]
                        cmp              al, 5;                               je    .Lbinop_α_266_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_266_4
.Lbinop_α_266_3:        movq             xmm0, rsi
.Lbinop_α_266_4:        cmp              cl, 5;                               je    .Lbinop_α_266_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_266_6
.Lbinop_α_266_5:        movq             xmm1, rdi
.Lbinop_α_266_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_266_0
                        mov              qword ptr [rbp + 128], 5
                        mov              qword ptr [rbp + 136], rax
.Lbinop_α_266_7:                                                              jmp   n91_subscript_α
.Lbinop_α_266_0:        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
.Lgcsite_q_97:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
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
.Lgcsite_q_96:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n91_subscript_α
                        .size            n90_binop_bx, .-n90_binop_bx
                        .type            n91_subscript_bx, @function
n91_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_subscript_α:        mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              rdx, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_q_99:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_98:          mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n93_var_α
                        .size            n92_var_ref_bx, .-n92_var_ref_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 424], rax;          jmp   n94_var_α
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 440], rax;          jmp   n95_coerce_numeric_α
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_coerce_numeric_bx, @function
n95_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_275_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_275_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_275_0
.Lcoerce_numeric_α_275_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 408], rax;          jmp   n96_coerce_numeric_α
.Lcoerce_numeric_α_275_0:
                        lea              rdi, [rbp + 2304]
                        lea              rsi, [rbp + 2416]
                        lea              rdx, [rbp + 400]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_101:         push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_100:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 400]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n96_coerce_numeric_α
                        .size            n95_coerce_numeric_bx, .-n95_coerce_numeric_bx
                        .type            n96_coerce_numeric_bx, @function
n96_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_277_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_277_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_277_0
.Lcoerce_numeric_α_277_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 392], rax;          jmp   n97_binop_α
.Lcoerce_numeric_α_277_0:
                        lea              rdi, [rbp + 2416]
                        lea              rsi, [rbp + 2304]
                        lea              rdx, [rbp + 384]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_103:         push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_102:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 384]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n97_binop_α
                        .size            n96_coerce_numeric_bx, .-n96_coerce_numeric_bx
                        .type            n97_binop_bx, @function
n97_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_binop_α:            mov              eax, dword ptr [rbp + 400]
                        mov              ecx, dword ptr [rbp + 384]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_278_2
                        mov              rax, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 392]
                        add              rax, rdx;                            jo    .Lbinop_α_278_0
                        mov              qword ptr [rbp + 368], 3
                        mov              qword ptr [rbp + 376], rax;          jmp   .Lbinop_α_278_7
.Lbinop_α_278_2:        and              edx, 1;                              jz    .Lbinop_α_278_0
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdi, qword ptr [rbp + 392]
                        cmp              al, 5;                               je    .Lbinop_α_278_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_278_4
.Lbinop_α_278_3:        movq             xmm0, rsi
.Lbinop_α_278_4:        cmp              cl, 5;                               je    .Lbinop_α_278_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_278_6
.Lbinop_α_278_5:        movq             xmm1, rdi
.Lbinop_α_278_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_278_0
                        mov              qword ptr [rbp + 368], 5
                        mov              qword ptr [rbp + 376], rax
.Lbinop_α_278_7:                                                              jmp   n98_lit_integer_α
.Lbinop_α_278_0:        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_q_105:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
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
.Lgcsite_q_104:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n98_lit_integer_α
                        .size            n97_binop_bx, .-n97_binop_bx
                        .type            n98_lit_integer_bx, @function
n98_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:      mov              qword ptr [rbp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_279_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n99_coerce_numeric_α
.Llit_integer_α_279_0:  .quad            1
                        .size            n98_lit_integer_bx, .-n98_lit_integer_bx
                        .type            n99_coerce_numeric_bx, @function
n99_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_coerce_numeric_α:   mov              eax, dword ptr [rbp + 368]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_281_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_281_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_281_0
.Lcoerce_numeric_α_281_1:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax;          jmp   n00001_binop_α
.Lcoerce_numeric_α_281_0:
                        lea              rdi, [rbp + 368]
                        lea              rsi, [rbp + 448]
                        lea              rdx, [rbp + 352]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_107:         push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_106:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 352]
                        cmp              al, 104;                             je    n48_to_β
                                                                              jmp   n00001_binop_α
                        .size            n99_coerce_numeric_bx, .-n99_coerce_numeric_bx
                        .type            n00001_binop_bx, @function
n00001_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_binop_α:           mov              eax, dword ptr [rbp + 352]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_282_2
                        mov              rax, qword ptr [rbp + 360]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_282_0
                        mov              qword ptr [rbp + 336], 3
                        mov              qword ptr [rbp + 344], rax;          jmp   .Lbinop_α_282_7
.Lbinop_α_282_2:        and              edx, 1;                              jz    .Lbinop_α_282_0
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_282_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_282_4
.Lbinop_α_282_3:        movq             xmm0, rsi
.Lbinop_α_282_4:        cmp              cl, 5;                               je    .Lbinop_α_282_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_282_6
.Lbinop_α_282_5:        movq             xmm1, rdi
.Lbinop_α_282_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_282_0
                        mov              qword ptr [rbp + 336], 5
                        mov              qword ptr [rbp + 344], rax
.Lbinop_α_282_7:                                                              jmp   n00002_subscript_α
.Lbinop_α_282_0:        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdx, qword ptr [rbp + 448]
                        mov              rcx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
.Lgcsite_q_109:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
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
.Lgcsite_q_108:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00002_subscript_α
                        .size            n00001_binop_bx, .-n00001_binop_bx
                        .type            n00002_subscript_bx, @function
n00002_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_subscript_α:       mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_q_111:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_110:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00003_lit_integer_α
                        .size            n00002_subscript_bx, .-n00002_subscript_bx
                        .type            n00003_lit_integer_bx, @function
n00003_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_lit_integer_α:     mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_284_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00004_rev_assign_var_α
.Llit_integer_α_284_0:  .quad            1
                        .size            n00003_lit_integer_bx, .-n00003_lit_integer_bx
                        .type            n00004_rev_assign_var_bx, @function
n00004_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_117:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
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
.Lgcsite_q_116:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 512]
                        mov              rcx, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_q_115:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n48_to_β
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
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
.Lgcsite_q_114:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00005_rev_assign_var_α
n00004_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 464]
                        mov              rsi, qword ptr [rbp + 472]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_q_113:         mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_112:         mov              r8,  qword ptr [rip + rtccb+40]
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
n00005_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_123:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
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
.Lgcsite_q_122:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_q_121:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00004_rev_assign_var_β
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
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
.Lgcsite_q_120:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00006_rev_assign_var_α
n00005_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_q_119:         mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_118:         mov              r8,  qword ptr [rip + rtccb+40]
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
n00006_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_129:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
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
.Lgcsite_q_128:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_q_127:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00005_rev_assign_var_β
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
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
.Lgcsite_q_126:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00007_conjunction_α
n00006_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              rdx, qword ptr [rbp + 96]
                        mov              rcx, qword ptr [rbp + 104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_q_125:         mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_124:         mov              r8,  qword ptr [rip + rtccb+40]
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
n00007_conjunction_α:     mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00008_bound_α
n00007_conjunction_β:                                                           jmp   q_ω
                        .size            n00007_conjunction_bx, .-n00007_conjunction_bx
                        .type            n00008_bound_bx, @function
n00008_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_bound_α:           mov              qword ptr [rbp + 1104], rsp;         jmp   n00009_line_mark_α
                        .size            n00008_bound_bx, .-n00008_bound_bx
                        .type            n00009_line_mark_bx, @function
n00009_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79;             jmp   n00010_line_mark_α
                        .size            n00009_line_mark_bx, .-n00009_line_mark_bx
                        .type            n00010_line_mark_bx, @function
n00010_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79;             jmp   n00011_var_ref_α
                        .size            n00010_line_mark_bx, .-n00010_line_mark_bx
                        .type            n00011_var_ref_bx, @function
n00011_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # solution
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n00012_var_α
                        .size            n00011_var_ref_bx, .-n00011_var_ref_bx
                        .type            n00012_var_bx, @function
n00012_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_var_α:             mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n00013_subscript_α
                        .size            n00012_var_bx, .-n00012_var_bx
                        .type            n00013_subscript_bx, @function
n00013_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_subscript_α:       mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_q_131:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_line_mark_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_130:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00015_var_α
                        .size            n00013_subscript_bx, .-n00013_subscript_bx
                        .type            n00015_var_bx, @function
n00015_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_var_α:             mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n00016_assign_var_α
                        .size            n00015_var_bx, .-n00015_var_bx
                        .type            n00016_assign_var_bx, @function
n00016_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_assign_var_α:      mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              rdx, qword ptr [rbp + 1504]
                        mov              rcx, qword ptr [rbp + 1512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_q_133:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00014_line_mark_α
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_132:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00014_line_mark_α
                        .size            n00016_assign_var_bx, .-n00016_assign_var_bx
                        .type            n00014_line_mark_bx, @function
n00014_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00017_disjunction_α
                        .size            n00014_line_mark_bx, .-n00014_line_mark_bx
                        .type            n00017_disjunction_bx, @function
n00017_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_disjunction_α:     mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0;           jmp   n00018_var_α
.Ldisjunction_γ_116_as: mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_306_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00019_conjunction_α
.Ldisjunction_α_306_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_306_1
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00019_conjunction_α
.Ldisjunction_α_306_1:                                                        jmp   n00019_conjunction_α
n00017_disjunction_β:     mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              je    n00020_unmark_α
                                                                              jmp   n00020_unmark_α
.Ldisjunction_γ_116_af:
.Ldisjunction_ω_116_af: add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1;                              je    n00021_line_mark_α
                                                                              jmp   n00020_unmark_α
                        .size            n00017_disjunction_bx, .-n00017_disjunction_bx
                        .type            n00019_conjunction_bx, @function
n00019_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_conjunction_α:     mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n00020_unmark_α
n00019_conjunction_β:                                                           jmp   n00020_unmark_α
                        .size            n00019_conjunction_bx, .-n00019_conjunction_bx
                        .type            n00021_line_mark_bx, @function
n00021_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00022_var_α
n00021_line_mark_β:                                                             jmp   n00022_var_α
                        .size            n00021_line_mark_bx, .-n00021_line_mark_bx
                        .type            n00022_var_bx, @function
n00022_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_var_α:             mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00023_lit_integer_α
                        .size            n00022_var_bx, .-n00022_var_bx
                        .type            n00023_lit_integer_bx, @function
n00023_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_lit_integer_α:     mov              qword ptr [rbp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_312_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n00024_coerce_numeric_α
.Llit_integer_α_312_0:  .quad            1
                        .size            n00023_lit_integer_bx, .-n00023_lit_integer_bx
                        .type            n00024_coerce_numeric_bx, @function
n00024_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_314_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_314_0
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_314_0
.Lcoerce_numeric_α_314_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00025_binop_α
.Lcoerce_numeric_α_314_0:
                        lea              rdi, [rbp + 2416]
                        lea              rsi, [rbp + 1392]
                        lea              rdx, [rbp + 1360]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_135:         push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_134:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 1360]
                        cmp              al, 104;                             je    n00020_unmark_α
                                                                              jmp   n00025_binop_α
                        .size            n00024_coerce_numeric_bx, .-n00024_coerce_numeric_bx
                        .type            n00025_binop_bx, @function
n00025_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_binop_α:           mov              eax, dword ptr [rbp + 1360]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_315_2
                        mov              rax, qword ptr [rbp + 1368]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_315_0
                        mov              qword ptr [rbp + 1344], 3
                        mov              qword ptr [rbp + 1352], rax;         jmp   .Lbinop_α_315_7
.Lbinop_α_315_2:        and              edx, 1;                              jz    .Lbinop_α_315_0
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_315_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_315_4
.Lbinop_α_315_3:        movq             xmm0, rsi
.Lbinop_α_315_4:        cmp              cl, 5;                               je    .Lbinop_α_315_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_315_6
.Lbinop_α_315_5:        movq             xmm1, rdi
.Lbinop_α_315_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_315_0
                        mov              qword ptr [rbp + 1344], 5
                        mov              qword ptr [rbp + 1352], rax
.Lbinop_α_315_7:                                                              jmp   n00026_line_mark_α
.Lbinop_α_315_0:        mov              rdi, qword ptr [rbp + 1360]
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdx, qword ptr [rbp + 1392]
                        mov              rcx, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_q_137:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00020_unmark_α
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
.Lgcsite_q_136:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00026_line_mark_α
                        .size            n00025_binop_bx, .-n00025_binop_bx
                        .type            n00026_line_mark_bx, @function
n00026_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00027_call_proc_staged_α
                        .size            n00026_line_mark_bx, .-n00026_line_mark_bx
                        .type            n00027_call_proc_staged_bx, @function
n00027_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_319_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_319_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 1344]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_319_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_319_2
.Lcall_proc_staged_α_319_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_319_2:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n00020_unmark_α
                                                                              jmp   n00028_deref_α
n00027_call_proc_staged_β:
                                                                              jmp   n00020_unmark_α
.Lcall_proc_staged_β_319_0:
                        .quad            .Lcall_proc_staged_β_319_0_s
.Lcall_proc_staged_β_319_0_s:
                        .string          "q"
                        .size            n00027_call_proc_staged_bx, .-n00027_call_proc_staged_bx
                        .type            n00028_deref_bx, @function
n00028_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_deref_α:           mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_139:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00020_unmark_α
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_138:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_116_as
n00028_deref_β:                                                                 jmp   n00020_unmark_α
                        .size            n00028_deref_bx, .-n00028_deref_bx
                        .type            n00018_var_bx, @function
n00018_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_var_α:             mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00029_var_α
n00018_var_β:                                                                   jmp   .Ldisjunction_ω_116_af
                        .size            n00018_var_bx, .-n00018_var_bx
                        .type            n00029_var_bx, @function
n00029_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1280], rax          # result
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n00030_binop_test_α
                        .size            n00029_var_bx, .-n00029_var_bx
                        .type            n00030_binop_test_bx, @function
n00030_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_binop_test_α:      mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 112;                             je    .Lbinop_test_α_324_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 112;                             je    .Lbinop_test_α_324_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lbinop_test_α_324_2
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 3;                               jne   .Lbinop_test_α_324_2
.Lbinop_test_α_324_1:   mov              rax, qword ptr [rbp + 2424]
                        mov              rcx, qword ptr [rbp + 1288]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_116_af
                        mov              rcx, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rcx
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rcx;         jmp   n00031_line_mark_α
.Lbinop_test_α_324_0:   mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8d, 9
                        lea              r9, [rbp + 1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
.Lgcsite_q_145:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_324_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_116_af
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
.Lgcsite_q_144:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00031_line_mark_α
.Lbinop_test_α_324_2:   mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_q_143:         push             rax
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
.Lgcsite_q_142:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_116_af
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        lea              r8, [rbp + 1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
.Lgcsite_q_141:         mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_140:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00031_line_mark_α
                        .size            n00030_binop_test_bx, .-n00030_binop_test_bx
                        .type            n00031_line_mark_bx, @function
n00031_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00032_call_proc_staged_α
                        .size            n00031_line_mark_bx, .-n00031_line_mark_bx
                        .type            n00032_call_proc_staged_bx, @function
n00032_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_328_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_328_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 0
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_328_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_328_2
.Lcall_proc_staged_α_328_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_328_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n00020_unmark_α
                                                                              jmp   n00033_deref_α
n00032_call_proc_staged_β:
                                                                              jmp   n00020_unmark_α
.Lcall_proc_staged_β_328_0:
                        .quad            .Lcall_proc_staged_β_328_0_s
.Lcall_proc_staged_β_328_0_s:
                        .string          "show"
                        .size            n00032_call_proc_staged_bx, .-n00032_call_proc_staged_bx
                        .type            n00033_deref_bx, @function
n00033_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_deref_α:           mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_147:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00020_unmark_α
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_q_146:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_116_as
n00033_deref_β:                                                                 jmp   n00020_unmark_α
                        .size            n00033_deref_bx, .-n00033_deref_bx
                        .type            n00020_unmark_bx, @function
n00020_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_unmark_α:          mov              rsp, qword ptr [rbp + 1104];         jmp   n00034_line_mark_α
                        .size            n00020_unmark_bx, .-n00020_unmark_bx
                        .type            n00034_line_mark_bx, @function
n00034_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n00006_rev_assign_var_β
                        .size            n00034_line_mark_bx, .-n00034_line_mark_bx
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lq_α_333_243
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lq_α_333_243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lq_α_333_243
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lq_α_333_243:          pop              rdx
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
                        lea              rsp, [rbp + 2432]
                        mov              rbp, qword ptr [rbp + 2408];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
q_ω:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lq_α_333_244
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lq_α_333_244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lq_α_333_244
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lq_α_333_244:          pop              rdx
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
                        lea              rsp, [rbp + 2432]
                        mov              rbp, qword ptr [rbp + 2408];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_q:
                        .quad            10377987444058
                        .quad            34359738448
                        .quad            .Lgcmap_q_s
                        .quad            2320
                        .quad            9
                        .quad            703687441776640
                        .quad            17596481012352
                        .quad            492581209244304
                        .quad            17596481012816
                        .quad            70368744178784
                        .quad            17596481012896
                        .quad            422212465067184
                        .quad            17596481013296
                        .quad            791648372000320
.Lgcmap_q_s:            .string          "q"
.Lgcsites_q_0:          .quad            148
                        .quad            .Lgcmap_q
                        .quad            .Lgcsite_q_0
                        .quad            65537
                        .quad            .Lgcsite_q_1
                        .quad            65537
                        .quad            .Lgcsite_q_2
                        .quad            65537
                        .quad            .Lgcsite_q_3
                        .quad            65537
                        .quad            .Lgcsite_q_4
                        .quad            65537
                        .quad            .Lgcsite_q_5
                        .quad            65537
                        .quad            .Lgcsite_q_6
                        .quad            65537
                        .quad            .Lgcsite_q_7
                        .quad            65537
                        .quad            .Lgcsite_q_8
                        .quad            65537
                        .quad            .Lgcsite_q_9
                        .quad            65537
                        .quad            .Lgcsite_q_10
                        .quad            65537
                        .quad            .Lgcsite_q_11
                        .quad            65537
                        .quad            .Lgcsite_q_12
                        .quad            65537
                        .quad            .Lgcsite_q_13
                        .quad            65537
                        .quad            .Lgcsite_q_14
                        .quad            65537
                        .quad            .Lgcsite_q_15
                        .quad            65537
                        .quad            .Lgcsite_q_16
                        .quad            65537
                        .quad            .Lgcsite_q_17
                        .quad            65537
                        .quad            .Lgcsite_q_18
                        .quad            65537
                        .quad            .Lgcsite_q_19
                        .quad            65537
                        .quad            .Lgcsite_q_20
                        .quad            65537
                        .quad            .Lgcsite_q_21
                        .quad            65537
                        .quad            .Lgcsite_q_22
                        .quad            65537
                        .quad            .Lgcsite_q_23
                        .quad            65537
                        .quad            .Lgcsite_q_24
                        .quad            65537
                        .quad            .Lgcsite_q_25
                        .quad            65537
                        .quad            .Lgcsite_q_26
                        .quad            65537
                        .quad            .Lgcsite_q_27
                        .quad            65537
                        .quad            .Lgcsite_q_28
                        .quad            65537
                        .quad            .Lgcsite_q_29
                        .quad            65537
                        .quad            .Lgcsite_q_30
                        .quad            65537
                        .quad            .Lgcsite_q_31
                        .quad            65537
                        .quad            .Lgcsite_q_32
                        .quad            65537
                        .quad            .Lgcsite_q_33
                        .quad            65537
                        .quad            .Lgcsite_q_34
                        .quad            65537
                        .quad            .Lgcsite_q_35
                        .quad            65537
                        .quad            .Lgcsite_q_36
                        .quad            65537
                        .quad            .Lgcsite_q_37
                        .quad            65537
                        .quad            .Lgcsite_q_38
                        .quad            65537
                        .quad            .Lgcsite_q_39
                        .quad            65537
                        .quad            .Lgcsite_q_40
                        .quad            65537
                        .quad            .Lgcsite_q_41
                        .quad            65537
                        .quad            .Lgcsite_q_42
                        .quad            65537
                        .quad            .Lgcsite_q_43
                        .quad            65537
                        .quad            .Lgcsite_q_44
                        .quad            65537
                        .quad            .Lgcsite_q_45
                        .quad            65537
                        .quad            .Lgcsite_q_46
                        .quad            65537
                        .quad            .Lgcsite_q_47
                        .quad            65537
                        .quad            .Lgcsite_q_48
                        .quad            65537
                        .quad            .Lgcsite_q_49
                        .quad            65537
                        .quad            .Lgcsite_q_50
                        .quad            65537
                        .quad            .Lgcsite_q_51
                        .quad            65537
                        .quad            .Lgcsite_q_52
                        .quad            65537
                        .quad            .Lgcsite_q_53
                        .quad            65537
                        .quad            .Lgcsite_q_54
                        .quad            65537
                        .quad            .Lgcsite_q_55
                        .quad            65537
                        .quad            .Lgcsite_q_56
                        .quad            65537
                        .quad            .Lgcsite_q_57
                        .quad            65537
                        .quad            .Lgcsite_q_58
                        .quad            65537
                        .quad            .Lgcsite_q_59
                        .quad            65537
                        .quad            .Lgcsite_q_60
                        .quad            65537
                        .quad            .Lgcsite_q_61
                        .quad            65537
                        .quad            .Lgcsite_q_62
                        .quad            65537
                        .quad            .Lgcsite_q_63
                        .quad            65537
                        .quad            .Lgcsite_q_64
                        .quad            65537
                        .quad            .Lgcsite_q_65
                        .quad            65537
                        .quad            .Lgcsite_q_66
                        .quad            65537
                        .quad            .Lgcsite_q_67
                        .quad            65537
                        .quad            .Lgcsite_q_68
                        .quad            65537
                        .quad            .Lgcsite_q_69
                        .quad            65537
                        .quad            .Lgcsite_q_70
                        .quad            65537
                        .quad            .Lgcsite_q_71
                        .quad            65537
                        .quad            .Lgcsite_q_72
                        .quad            65537
                        .quad            .Lgcsite_q_73
                        .quad            65537
                        .quad            .Lgcsite_q_74
                        .quad            65537
                        .quad            .Lgcsite_q_75
                        .quad            65537
                        .quad            .Lgcsite_q_76
                        .quad            65537
                        .quad            .Lgcsite_q_77
                        .quad            65537
                        .quad            .Lgcsite_q_78
                        .quad            65537
                        .quad            .Lgcsite_q_79
                        .quad            65537
                        .quad            .Lgcsite_q_80
                        .quad            65537
                        .quad            .Lgcsite_q_81
                        .quad            65537
                        .quad            .Lgcsite_q_82
                        .quad            65537
                        .quad            .Lgcsite_q_83
                        .quad            65537
                        .quad            .Lgcsite_q_84
                        .quad            65537
                        .quad            .Lgcsite_q_85
                        .quad            65537
                        .quad            .Lgcsite_q_86
                        .quad            65537
                        .quad            .Lgcsite_q_87
                        .quad            65537
                        .quad            .Lgcsite_q_88
                        .quad            65537
                        .quad            .Lgcsite_q_89
                        .quad            65537
                        .quad            .Lgcsite_q_90
                        .quad            65537
                        .quad            .Lgcsite_q_91
                        .quad            65537
                        .quad            .Lgcsite_q_92
                        .quad            65537
                        .quad            .Lgcsite_q_93
                        .quad            65537
                        .quad            .Lgcsite_q_94
                        .quad            65537
                        .quad            .Lgcsite_q_95
                        .quad            65537
                        .quad            .Lgcsite_q_96
                        .quad            65537
                        .quad            .Lgcsite_q_97
                        .quad            65537
                        .quad            .Lgcsite_q_98
                        .quad            65537
                        .quad            .Lgcsite_q_99
                        .quad            65537
                        .quad            .Lgcsite_q_100
                        .quad            65537
                        .quad            .Lgcsite_q_101
                        .quad            65537
                        .quad            .Lgcsite_q_102
                        .quad            65537
                        .quad            .Lgcsite_q_103
                        .quad            65537
                        .quad            .Lgcsite_q_104
                        .quad            65537
                        .quad            .Lgcsite_q_105
                        .quad            65537
                        .quad            .Lgcsite_q_106
                        .quad            65537
                        .quad            .Lgcsite_q_107
                        .quad            65537
                        .quad            .Lgcsite_q_108
                        .quad            65537
                        .quad            .Lgcsite_q_109
                        .quad            65537
                        .quad            .Lgcsite_q_110
                        .quad            65537
                        .quad            .Lgcsite_q_111
                        .quad            65537
                        .quad            .Lgcsite_q_112
                        .quad            65537
                        .quad            .Lgcsite_q_113
                        .quad            65537
                        .quad            .Lgcsite_q_114
                        .quad            65537
                        .quad            .Lgcsite_q_115
                        .quad            65537
                        .quad            .Lgcsite_q_116
                        .quad            65537
                        .quad            .Lgcsite_q_117
                        .quad            65537
                        .quad            .Lgcsite_q_118
                        .quad            65537
                        .quad            .Lgcsite_q_119
                        .quad            65537
                        .quad            .Lgcsite_q_120
                        .quad            65537
                        .quad            .Lgcsite_q_121
                        .quad            65537
                        .quad            .Lgcsite_q_122
                        .quad            65537
                        .quad            .Lgcsite_q_123
                        .quad            65537
                        .quad            .Lgcsite_q_124
                        .quad            65537
                        .quad            .Lgcsite_q_125
                        .quad            65537
                        .quad            .Lgcsite_q_126
                        .quad            65537
                        .quad            .Lgcsite_q_127
                        .quad            65537
                        .quad            .Lgcsite_q_128
                        .quad            65537
                        .quad            .Lgcsite_q_129
                        .quad            65537
                        .quad            .Lgcsite_q_130
                        .quad            65537
                        .quad            .Lgcsite_q_131
                        .quad            65537
                        .quad            .Lgcsite_q_132
                        .quad            65537
                        .quad            .Lgcsite_q_133
                        .quad            65537
                        .quad            .Lgcsite_q_134
                        .quad            65537
                        .quad            .Lgcsite_q_135
                        .quad            65537
                        .quad            .Lgcsite_q_136
                        .quad            65537
                        .quad            .Lgcsite_q_137
                        .quad            65537
                        .quad            .Lgcsite_q_138
                        .quad            65537
                        .quad            .Lgcsite_q_139
                        .quad            65537
                        .quad            .Lgcsite_q_140
                        .quad            65537
                        .quad            .Lgcsite_q_141
                        .quad            65537
                        .quad            .Lgcsite_q_142
                        .quad            65537
                        .quad            .Lgcsite_q_143
                        .quad            65537
                        .quad            .Lgcsite_q_144
                        .quad            65537
                        .quad            .Lgcsite_q_145
                        .quad            65537
                        .quad            .Lgcsite_q_146
                        .quad            65537
                        .quad            .Lgcsite_q_147
                        .quad            65537
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1680
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1672
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_show]
                        mov              qword ptr [rsp + 1624], rax
                        mov              dword ptr [rsp + 1616], 160
                        mov              dword ptr [rsp + 1620], 1680
                        mov              eax, 0
                        mov              qword ptr [rsp + 1672], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              ecx, 65536;                          jae   .Lshow_α_333_245
                        mov              rsi, 48
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm334:        .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm334]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 0
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
                        lea              rsi, [rsp + 1680]
                        mov              qword ptr [rdi + 40], rsi
.Lshow_α_333_245:
show_α_body:
                        .type            n00035_line_mark_bx, @function
n00035_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_415_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00036_line_mark_α
.Lline_mark_α_415_0:    .quad            .Lline_mark_α_415_0_s
.Lline_mark_α_415_0_s:  .string          "queens.icn"
                        .size            n00035_line_mark_bx, .-n00035_line_mark_bx
                        .type            n00036_line_mark_bx, @function
n00036_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00037_disjunction_α
                        .size            n00036_line_mark_bx, .-n00036_line_mark_bx
                        .type            n00037_disjunction_bx, @function
n00037_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_disjunction_α:     mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              dword ptr [rbp + 1040], 0;           jmp   n00038_var_α
.Ldisjunction_γ_337_as: mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_419_0
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n00039_line_mark_α
.Ldisjunction_α_419_0:                                                        jmp   n00039_line_mark_α
n00037_disjunction_β:     mov              eax, dword ptr [rbp + 1040];         jmp   n00040_goto_β
.Ldisjunction_γ_337_af:
.Ldisjunction_ω_337_af: add              dword ptr [rbp + 1040], 1
                        mov              eax, dword ptr [rbp + 1040];         jmp   n00039_line_mark_α
                        .size            n00037_disjunction_bx, .-n00037_disjunction_bx
                        .type            n00038_var_bx, @function
n00038_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_var_α:             mov              rax, qword ptr [r9 + 144]            # show__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rbp + 1568], rax          # result
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n00041_unop_test_α
n00038_var_β:                                                                   jmp   .Ldisjunction_ω_337_af
                        .size            n00038_var_bx, .-n00038_var_bx
                        .type            n00041_unop_test_bx, @function
n00041_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_unop_test_α:       mov              eax, dword ptr [rbp + 1568]
                        cmp              al, 104;                             je    .Ldisjunction_ω_337_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_337_af
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0;           jmp   n00042_lit_integer_α
                        .size            n00041_unop_test_bx, .-n00041_unop_test_bx
                        .type            n00042_lit_integer_bx, @function
n00042_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_lit_integer_α:     mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_422_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00043_assign_α
.Llit_integer_α_422_0:  .quad            1
                        .size            n00042_lit_integer_bx, .-n00042_lit_integer_bx
                        .type            n00043_assign_bx, @function
n00043_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_assign_α:          mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [r9 + 144], rax            # show__INITFLAG__0
                        mov              qword ptr [r9 + 152], rdx;           jmp   n00044_line_mark_α
                        .size            n00043_assign_bx, .-n00043_assign_bx
                        .type            n00044_line_mark_bx, @function
n00044_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00045_lit_integer_α
                        .size            n00044_line_mark_bx, .-n00044_line_mark_bx
                        .type            n00045_lit_integer_bx, @function
n00045_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_lit_integer_α:     mov              qword ptr [rbp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_426_0]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n00046_assign_α
.Llit_integer_α_426_0:  .quad            0
                        .size            n00045_lit_integer_bx, .-n00045_lit_integer_bx
                        .type            n00046_assign_bx, @function
n00046_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_assign_α:          mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00047_line_mark_α
                        .size            n00046_assign_bx, .-n00046_assign_bx
                        .type            n00047_line_mark_bx, @function
n00047_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00048_lit_string_α
                        .size            n00047_line_mark_bx, .-n00047_line_mark_bx
                        .type            n00048_lit_string_bx, @function
n00048_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_lit_string_α:      mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_430_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n00049_var_ref_α
.Llit_string_α_430_0:   .quad            .Llit_string_α_430_0_s
.Llit_string_α_430_0_s: .string          "|   "
                        .size            n00048_lit_string_bx, .-n00048_lit_string_bx
                        .type            n00049_var_ref_bx, @function
n00049_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n00050_deref_α
                        .size            n00049_var_ref_bx, .-n00049_var_ref_bx
                        .type            n00050_deref_bx, @function
n00050_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_deref_α:           mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00051_line_mark_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00052_line_mark_α
                        .size            n00050_deref_bx, .-n00050_deref_bx
                        .type            n00052_line_mark_bx, @function
n00052_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00053_call_icon_α
                        .size            n00052_line_mark_bx, .-n00052_line_mark_bx
                        .type            n00053_call_icon_bx, @function
n00053_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_call_icon_α:       mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lcall_icon_α_rkfn437:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn437]
                        lea              rsi, [rbp + 1344]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_3:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00051_line_mark_α
                                                                              jmp   n00054_lit_string_α
n00053_call_icon_β:                                                             jmp   n00051_line_mark_α
                        .size            n00053_call_icon_bx, .-n00053_call_icon_bx
                        .type            n00054_lit_string_bx, @function
n00054_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_lit_string_α:      mov              qword ptr [rbp + 1456], 2            # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_438_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n00055_binop_α
.Llit_string_α_438_0:   .quad            .Llit_string_α_438_0_s
.Llit_string_α_438_0_s: .string          "|"
                        .size            n00054_lit_string_bx, .-n00054_lit_string_bx
                        .type            n00055_binop_bx, @function
n00055_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_binop_α:           mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1456]
                        mov              rcx, qword ptr [rbp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_5:        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_4:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00056_assign_α
                        .size            n00055_binop_bx, .-n00055_binop_bx
                        .type            n00056_assign_bx, @function
n00056_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_assign_α:          mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [r9 + 112], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 120], rdx;           jmp   n00051_line_mark_α
                        .size            n00056_assign_bx, .-n00056_assign_bx
                        .type            n00051_line_mark_bx, @function
n00051_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 92;             jmp   n00057_lit_string_α
                        .size            n00051_line_mark_bx, .-n00051_line_mark_bx
                        .type            n00057_lit_string_bx, @function
n00057_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_lit_string_α:      mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_443_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n00058_var_ref_α
.Llit_string_α_443_0:   .quad            .Llit_string_α_443_0_s
.Llit_string_α_443_0_s: .string          "----"
                        .size            n00057_lit_string_bx, .-n00057_lit_string_bx
                        .type            n00058_var_ref_bx, @function
n00058_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n00059_deref_α
                        .size            n00058_var_ref_bx, .-n00058_var_ref_bx
                        .type            n00059_deref_bx, @function
n00059_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_deref_α:           mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_7:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00039_line_mark_α
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00060_line_mark_α
                        .size            n00059_deref_bx, .-n00059_deref_bx
                        .type            n00060_line_mark_bx, @function
n00060_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 92;             jmp   n00061_call_icon_α
                        .size            n00060_line_mark_bx, .-n00060_line_mark_bx
                        .type            n00061_call_icon_bx, @function
n00061_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_call_icon_α:       mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lcall_icon_α_rkfn450:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn450]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_9:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00039_line_mark_α
                                                                              jmp   n00062_lit_string_α
n00061_call_icon_β:                                                             jmp   n00039_line_mark_α
                        .size            n00061_call_icon_bx, .-n00061_call_icon_bx
                        .type            n00062_lit_string_bx, @function
n00062_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_lit_string_α:      mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_451_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n00063_binop_α
.Llit_string_α_451_0:   .quad            .Llit_string_α_451_0_s
.Llit_string_α_451_0_s: .string          "-"
                        .size            n00062_lit_string_bx, .-n00062_lit_string_bx
                        .type            n00063_binop_bx, @function
n00063_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_binop_α:           mov              rdi, qword ptr [rbp + 1120]
                        mov              rsi, qword ptr [rbp + 1128]
                        mov              rdx, qword ptr [rbp + 1248]
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
.Lgcsite_show_11:       mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_10:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00064_assign_α
                        .size            n00063_binop_bx, .-n00063_binop_bx
                        .type            n00064_assign_bx, @function
n00064_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_assign_α:          mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [r9 + 128], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00065_conjunction_α
                        .size            n00064_assign_bx, .-n00064_assign_bx
                        .type            n00065_conjunction_bx, @function
n00065_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_conjunction_α:     mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00066_conjunction_α
n00065_conjunction_β:                                                           jmp   n00039_line_mark_α
                        .size            n00065_conjunction_bx, .-n00065_conjunction_bx
                        .type            n00066_conjunction_bx, @function
n00066_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_conjunction_α:     mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax;         jmp   .Ldisjunction_γ_337_as
n00066_conjunction_β:                                                           jmp   n00039_line_mark_α
                        .size            n00066_conjunction_bx, .-n00066_conjunction_bx
                        .type            n00040_goto_bx, @function
n00040_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_goto_α:                                                                  jmp   n00039_line_mark_α
n00040_goto_β:                                                                  jmp   n00039_line_mark_α
                        .size            n00040_goto_bx, .-n00040_goto_bx
                        .type            n00039_line_mark_bx, @function
n00039_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00067_lit_string_α
                        .size            n00039_line_mark_bx, .-n00039_line_mark_bx
                        .type            n00067_lit_string_bx, @function
n00067_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_lit_string_α:      mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_459_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00068_lit_integer_α
.Llit_string_α_459_0:   .quad            .Llit_string_α_459_0_s
.Llit_string_α_459_0_s: .string          "solution: "
                        .size            n00067_lit_string_bx, .-n00067_lit_string_bx
                        .type            n00068_lit_integer_bx, @function
n00068_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_lit_integer_α:     mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_460_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00069_var_α
.Llit_integer_α_460_0:  .quad            1
                        .size            n00068_lit_integer_bx, .-n00068_lit_integer_bx
                        .type            n00069_var_bx, @function
n00069_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_α:             mov              rax, qword ptr [r9 + 96]             # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 992], rax           # result
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n00070_coerce_numeric_α
                        .size            n00069_var_bx, .-n00069_var_bx
                        .type            n00070_coerce_numeric_bx, @function
n00070_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_coerce_numeric_α:  mov              eax, dword ptr [rbp + 992]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_463_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_463_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_463_0
.Lcoerce_numeric_α_463_1:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00071_binop_α
.Lcoerce_numeric_α_463_0:
                        lea              rdi, [rbp + 992]
                        lea              rsi, [rbp + 976]
                        lea              rdx, [rbp + 960]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_show_13:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_12:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 960]
                        cmp              al, 104;                             je    n00072_line_mark_α
                                                                              jmp   n00071_binop_α
                        .size            n00070_coerce_numeric_bx, .-n00070_coerce_numeric_bx
                        .type            n00071_binop_bx, @function
n00071_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_binop_α:           mov              eax, dword ptr [rbp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_464_2
                        mov              rax, qword ptr [rbp + 968]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_464_0
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax;          jmp   .Lbinop_α_464_7
.Lbinop_α_464_2:        and              edx, 1;                              jz    .Lbinop_α_464_0
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_464_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_464_4
.Lbinop_α_464_3:        movq             xmm0, rsi
.Lbinop_α_464_4:        cmp              cl, 5;                               je    .Lbinop_α_464_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_464_6
.Lbinop_α_464_5:        movq             xmm1, rdi
.Lbinop_α_464_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_464_0
                        mov              qword ptr [rbp + 944], 5
                        mov              qword ptr [rbp + 952], rax
.Lbinop_α_464_7:                                                              jmp   n00073_assign_α
.Lbinop_α_464_0:        mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdx, qword ptr [rbp + 976]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_show_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00072_line_mark_α
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
.Lgcsite_show_14:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00073_assign_α
                        .size            n00071_binop_bx, .-n00071_binop_bx
                        .type            n00073_assign_bx, @function
n00073_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_assign_α:          mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00074_line_mark_α
                        .size            n00073_assign_bx, .-n00073_assign_bx
                        .type            n00074_line_mark_bx, @function
n00074_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00075_call_icon_α
                        .size            n00074_line_mark_bx, .-n00074_line_mark_bx
                        .type            n00075_call_icon_bx, @function
n00075_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_call_icon_α:       mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_icon_α_rkfn469:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn469]
                        lea              rsi, [rbp + 848]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_16:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00072_line_mark_α
                                                                              jmp   n00072_line_mark_α
n00075_call_icon_β:                                                             jmp   n00072_line_mark_α
                        .size            n00075_call_icon_bx, .-n00075_call_icon_bx
                        .type            n00072_line_mark_bx, @function
n00072_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00076_lit_string_α
                        .size            n00072_line_mark_bx, .-n00072_line_mark_bx
                        .type            n00076_lit_string_bx, @function
n00076_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_lit_string_α:      mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_472_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00077_var_α
.Llit_string_α_472_0:   .quad            .Llit_string_α_472_0_s
.Llit_string_α_472_0_s: .string          "  "
                        .size            n00076_lit_string_bx, .-n00076_lit_string_bx
                        .type            n00077_var_bx, @function
n00077_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_var_α:             mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 800], rax           # result
                        mov              qword ptr [rbp + 808], rdx;          jmp   n00078_line_mark_α
                        .size            n00077_var_bx, .-n00077_var_bx
                        .type            n00078_line_mark_bx, @function
n00078_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00079_call_icon_α
                        .size            n00078_line_mark_bx, .-n00078_line_mark_bx
                        .type            n00079_call_icon_bx, @function
n00079_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_call_icon_α:       mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lcall_icon_α_rkfn477:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn477]
                        lea              rsi, [rbp + 720]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_18:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_19:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00080_line_mark_α
                                                                              jmp   n00080_line_mark_α
n00079_call_icon_β:                                                             jmp   n00080_line_mark_α
                        .size            n00079_call_icon_bx, .-n00079_call_icon_bx
                        .type            n00080_line_mark_bx, @function
n00080_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00081_var_ref_α
                        .size            n00080_line_mark_bx, .-n00080_line_mark_bx
                        .type            n00081_var_ref_bx, @function
n00081_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052400                      # show__STATIC__line
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00082_lit_integer_α
                        .size            n00081_var_ref_bx, .-n00081_var_ref_bx
                        .type            n00082_lit_integer_bx, @function
n00082_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_lit_integer_α:     mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_482_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00083_var_α
.Llit_integer_α_482_0:  .quad            4
                        .size            n00082_lit_integer_bx, .-n00082_lit_integer_bx
                        .type            n00083_var_bx, @function
n00083_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_var_α:             mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 208], rax           # result
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00084_iterate_α
                        .size            n00083_var_bx, .-n00083_var_bx
                        .type            n00084_iterate_bx, @function
n00084_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_iterate_α:         mov              qword ptr [rbp + 192], 0
.Literate_α_485_0:      mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 192]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
.Lgcsite_show_21:       mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00085_line_mark_α
                        push             rax                                  # gc_poll bb_iterate.cpp:35
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_20:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00086_lit_integer_α
n00084_iterate_β:         inc              qword ptr [rbp + 192];               jmp   .Literate_α_485_0
                        .size            n00084_iterate_bx, .-n00084_iterate_bx
                        .type            n00086_lit_integer_bx, @function
n00086_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_lit_integer_α:     mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_486_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00087_coerce_numeric_α
.Llit_integer_α_486_0:  .quad            1
                        .size            n00086_lit_integer_bx, .-n00086_lit_integer_bx
                        .type            n00087_coerce_numeric_bx, @function
n00087_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_coerce_numeric_α:  mov              eax, dword ptr [rbp + 176]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_488_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_488_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_488_0
.Lcoerce_numeric_α_488_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00088_binop_α
.Lcoerce_numeric_α_488_0:
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 160]
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_show_23:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 160]
                        cmp              al, 104;                             je    n00085_line_mark_α
                                                                              jmp   n00088_binop_α
                        .size            n00087_coerce_numeric_bx, .-n00087_coerce_numeric_bx
                        .type            n00088_binop_bx, @function
n00088_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_binop_α:           mov              eax, dword ptr [rbp + 160]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_489_2
                        mov              rax, qword ptr [rbp + 168]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_489_0
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax;          jmp   .Lbinop_α_489_7
.Lbinop_α_489_2:        and              edx, 1;                              jz    .Lbinop_α_489_0
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_489_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_489_4
.Lbinop_α_489_3:        movq             xmm0, rsi
.Lbinop_α_489_4:        cmp              cl, 5;                               je    .Lbinop_α_489_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_489_6
.Lbinop_α_489_5:        movq             xmm1, rdi
.Lbinop_α_489_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_489_0
                        mov              qword ptr [rbp + 144], 5
                        mov              qword ptr [rbp + 152], rax
.Lbinop_α_489_7:                                                              jmp   n00089_coerce_numeric_α
.Lbinop_α_489_0:        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 224]
                        mov              rcx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
.Lgcsite_show_25:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00085_line_mark_α
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
.Lgcsite_show_24:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00089_coerce_numeric_α
                        .size            n00088_binop_bx, .-n00088_binop_bx
                        .type            n00089_coerce_numeric_bx, @function
n00089_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_coerce_numeric_α:  mov              eax, dword ptr [rbp + 144]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_491_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_491_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_491_0
.Lcoerce_numeric_α_491_1:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00090_binop_α
.Lcoerce_numeric_α_491_0:
                        lea              rdi, [rbp + 144]
                        lea              rsi, [rbp + 128]
                        lea              rdx, [rbp + 112]
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_show_27:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_26:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 112]
                        cmp              al, 104;                             je    n00085_line_mark_α
                                                                              jmp   n00090_binop_α
                        .size            n00089_coerce_numeric_bx, .-n00089_coerce_numeric_bx
                        .type            n00090_binop_bx, @function
n00090_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_binop_α:           mov              eax, 3
                        mov              ecx, dword ptr [rbp + 112]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_492_2
                        mov              rax, 4
                        mov              rdx, qword ptr [rbp + 120]
                        imul             rax, rdx;                            jo    .Lbinop_α_492_0
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax;          jmp   .Lbinop_α_492_7
.Lbinop_α_492_2:        and              edx, 1;                              jz    .Lbinop_α_492_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rbp + 120]
                        cmp              al, 5;                               je    .Lbinop_α_492_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_492_4
.Lbinop_α_492_3:        movq             xmm0, rsi
.Lbinop_α_492_4:        cmp              cl, 5;                               je    .Lbinop_α_492_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_492_6
.Lbinop_α_492_5:        movq             xmm1, rdi
.Lbinop_α_492_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_492_0
                        mov              qword ptr [rbp + 96], 5
                        mov              qword ptr [rbp + 104], rax
.Lbinop_α_492_7:                                                              jmp   n00091_lit_integer_α
.Lbinop_α_492_0:        mov              rdi, qword ptr [rbp + 128]
                        mov              rsi, qword ptr [rbp + 136]
                        mov              rdx, qword ptr [rbp + 112]
                        mov              rcx, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
.Lgcsite_show_29:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00085_line_mark_α
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
.Lgcsite_show_28:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00091_lit_integer_α
                        .size            n00090_binop_bx, .-n00090_binop_bx
                        .type            n00091_lit_integer_bx, @function
n00091_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_lit_integer_α:     mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_493_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00092_coerce_numeric_α
.Llit_integer_α_493_0:  .quad            3
                        .size            n00091_lit_integer_bx, .-n00091_lit_integer_bx
                        .type            n00092_coerce_numeric_bx, @function
n00092_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_coerce_numeric_α:  mov              eax, dword ptr [rbp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_495_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_495_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_495_0
.Lcoerce_numeric_α_495_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax;           jmp   n00093_binop_α
.Lcoerce_numeric_α_495_0:
                        lea              rdi, [rbp + 96]
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 80]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_show_31:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_30:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 80]
                        cmp              al, 104;                             je    n00085_line_mark_α
                                                                              jmp   n00093_binop_α
                        .size            n00092_coerce_numeric_bx, .-n00092_coerce_numeric_bx
                        .type            n00093_binop_bx, @function
n00093_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_binop_α:           mov              eax, dword ptr [rbp + 80]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_496_2
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, 3
                        add              rax, rdx;                            jo    .Lbinop_α_496_0
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax;           jmp   .Lbinop_α_496_7
.Lbinop_α_496_2:        and              edx, 1;                              jz    .Lbinop_α_496_0
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_496_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_496_4
.Lbinop_α_496_3:        movq             xmm0, rsi
.Lbinop_α_496_4:        cmp              cl, 5;                               je    .Lbinop_α_496_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_496_6
.Lbinop_α_496_5:        movq             xmm1, rdi
.Lbinop_α_496_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_496_0
                        mov              qword ptr [rbp + 64], 5
                        mov              qword ptr [rbp + 72], rax
.Lbinop_α_496_7:                                                              jmp   n00094_subscript_α
.Lbinop_α_496_0:        mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_show_33:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00085_line_mark_α
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
.Lgcsite_show_32:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00094_subscript_α
                        .size            n00093_binop_bx, .-n00093_binop_bx
                        .type            n00094_subscript_bx, @function
n00094_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_subscript_α:       mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              rdx, qword ptr [rbp + 64]
                        mov              rcx, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_show_35:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00084_iterate_β
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_34:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00095_lit_string_α
                        .size            n00094_subscript_bx, .-n00094_subscript_bx
                        .type            n00095_lit_string_bx, @function
n00095_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_lit_string_α:      mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_498_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00096_rev_assign_var_α
.Llit_string_α_498_0:   .quad            .Llit_string_α_498_0_s
.Llit_string_α_498_0_s: .string          "Q"
                        .size            n00095_lit_string_bx, .-n00095_lit_string_bx
                        .type            n00096_rev_assign_var_bx, @function
n00096_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_41:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_40:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_39:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00084_iterate_β
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
.Lgcsite_show_38:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00097_bound_α
n00096_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_show_37:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_show_36:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n00084_iterate_β
                        .size            n00096_rev_assign_var_bx, .-n00096_rev_assign_var_bx
                        .type            n00097_bound_bx, @function
n00097_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_bound_α:           mov              qword ptr [rbp + 352], rsp;          jmp   n00098_line_mark_α
                        .size            n00097_bound_bx, .-n00097_bound_bx
                        .type            n00098_line_mark_bx, @function
n00098_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00099_line_mark_α
                        .size            n00098_line_mark_bx, .-n00098_line_mark_bx
                        .type            n00099_line_mark_bx, @function
n00099_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00100_lit_string_α
                        .size            n00099_line_mark_bx, .-n00099_line_mark_bx
                        .type            n00100_lit_string_bx, @function
n00100_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_lit_string_α:      mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_506_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00101_var_α
.Llit_string_α_506_0:   .quad            .Llit_string_α_506_0_s
.Llit_string_α_506_0_s: .string          "  "
                        .size            n00100_lit_string_bx, .-n00100_lit_string_bx
                        .type            n00101_var_bx, @function
n00101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_var_α:             mov              rax, qword ptr [r9 + 112]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 640], rax           # result
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00102_line_mark_α
                        .size            n00101_var_bx, .-n00101_var_bx
                        .type            n00102_line_mark_bx, @function
n00102_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00103_call_icon_α
                        .size            n00102_line_mark_bx, .-n00102_line_mark_bx
                        .type            n00103_call_icon_bx, @function
n00103_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_call_icon_α:       mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn511:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn511]
                        lea              rsi, [rbp + 560]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_42:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_43:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00104_line_mark_α
                                                                              jmp   n00104_line_mark_α
n00103_call_icon_β:                                                             jmp   n00104_line_mark_α
                        .size            n00103_call_icon_bx, .-n00103_call_icon_bx
                        .type            n00104_line_mark_bx, @function
n00104_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00105_lit_string_α
                        .size            n00104_line_mark_bx, .-n00104_line_mark_bx
                        .type            n00105_lit_string_bx, @function
n00105_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_lit_string_α:      mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_514_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00106_var_α
.Llit_string_α_514_0:   .quad            .Llit_string_α_514_0_s
.Llit_string_α_514_0_s: .string          "  "
                        .size            n00105_lit_string_bx, .-n00105_lit_string_bx
                        .type            n00106_var_bx, @function
n00106_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_var_α:             mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 512], rax           # result
                        mov              qword ptr [rbp + 520], rdx;          jmp   n00107_line_mark_α
                        .size            n00106_var_bx, .-n00106_var_bx
                        .type            n00107_line_mark_bx, @function
n00107_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00108_call_icon_α
                        .size            n00107_line_mark_bx, .-n00107_line_mark_bx
                        .type            n00108_call_icon_bx, @function
n00108_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_call_icon_α:       mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lcall_icon_α_rkfn519:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn519]
                        lea              rsi, [rbp + 432]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_44:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_45:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00109_unmark_α
                                                                              jmp   n00110_conjunction_α
n00108_call_icon_β:                                                             jmp   n00109_unmark_α
                        .size            n00108_call_icon_bx, .-n00108_call_icon_bx
                        .type            n00110_conjunction_bx, @function
n00110_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_conjunction_α:     mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00109_unmark_α
n00110_conjunction_β:                                                           jmp   n00109_unmark_α
                        .size            n00110_conjunction_bx, .-n00110_conjunction_bx
                        .type            n00109_unmark_bx, @function
n00109_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_unmark_α:          mov              rsp, qword ptr [rbp + 352];          jmp   n00111_line_mark_α
                        .size            n00109_unmark_bx, .-n00109_unmark_bx
                        .type            n00111_line_mark_bx, @function
n00111_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00096_rev_assign_var_β
                        .size            n00111_line_mark_bx, .-n00111_line_mark_bx
                        .type            n00085_line_mark_bx, @function
n00085_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00112_line_mark_α
                        .size            n00085_line_mark_bx, .-n00085_line_mark_bx
                        .type            n00112_line_mark_bx, @function
n00112_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00113_call_icon_α
                        .size            n00112_line_mark_bx, .-n00112_line_mark_bx
                        .type            n00113_call_icon_bx, @function
n00113_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn530:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn530]
                        lea              rsi, [rbp + 16]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_46:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_show_47:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    show_ω
                                                                              jmp   show_ω
n00113_call_icon_β:                                                             jmp   show_ω
                        .size            n00113_call_icon_bx, .-n00113_call_icon_bx
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lshow_α_529_243
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lshow_α_529_243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lshow_α_529_243
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lshow_α_529_243:       pop              rdx
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
                        lea              rsp, [rbp + 1680]
                        mov              rbp, qword ptr [rbp + 1672];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
show_ω:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lshow_α_529_244
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lshow_α_529_244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lshow_α_529_244
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lshow_α_529_244:       pop              rdx
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
                        lea              rsp, [rbp + 1680]
                        mov              rbp, qword ptr [rbp + 1672];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_show:
                        .quad            7216891514202
                        .quad            34359738416
                        .quad            .Lgcmap_show_s
                        .quad            1616
                        .quad            7
                        .quad            211106232532992
                        .quad            17596481011904
                        .quad            158329674399952
                        .quad            17596481012064
                        .quad            738871813865840
                        .quad            17596481012752
                        .quad            615726511555616
.Lgcmap_show_s:         .string          "show"
.Lgcsites_show_1:       .quad            48
                        .quad            .Lgcmap_show
                        .quad            .Lgcsite_show_0
                        .quad            65537
                        .quad            .Lgcsite_show_1
                        .quad            65537
                        .quad            .Lgcsite_show_2
                        .quad            65537
                        .quad            .Lgcsite_show_3
                        .quad            65537
                        .quad            .Lgcsite_show_4
                        .quad            65537
                        .quad            .Lgcsite_show_5
                        .quad            65537
                        .quad            .Lgcsite_show_6
                        .quad            65537
                        .quad            .Lgcsite_show_7
                        .quad            65537
                        .quad            .Lgcsite_show_8
                        .quad            65537
                        .quad            .Lgcsite_show_9
                        .quad            65537
                        .quad            .Lgcsite_show_10
                        .quad            65537
                        .quad            .Lgcsite_show_11
                        .quad            65537
                        .quad            .Lgcsite_show_12
                        .quad            65537
                        .quad            .Lgcsite_show_13
                        .quad            65537
                        .quad            .Lgcsite_show_14
                        .quad            65537
                        .quad            .Lgcsite_show_15
                        .quad            65537
                        .quad            .Lgcsite_show_16
                        .quad            65537
                        .quad            .Lgcsite_show_17
                        .quad            65537
                        .quad            .Lgcsite_show_18
                        .quad            65537
                        .quad            .Lgcsite_show_19
                        .quad            65537
                        .quad            .Lgcsite_show_20
                        .quad            65537
                        .quad            .Lgcsite_show_21
                        .quad            65537
                        .quad            .Lgcsite_show_22
                        .quad            65537
                        .quad            .Lgcsite_show_23
                        .quad            65537
                        .quad            .Lgcsite_show_24
                        .quad            65537
                        .quad            .Lgcsite_show_25
                        .quad            65537
                        .quad            .Lgcsite_show_26
                        .quad            65537
                        .quad            .Lgcsite_show_27
                        .quad            65537
                        .quad            .Lgcsite_show_28
                        .quad            65537
                        .quad            .Lgcsite_show_29
                        .quad            65537
                        .quad            .Lgcsite_show_30
                        .quad            65537
                        .quad            .Lgcsite_show_31
                        .quad            65537
                        .quad            .Lgcsite_show_32
                        .quad            65537
                        .quad            .Lgcsite_show_33
                        .quad            65537
                        .quad            .Lgcsite_show_34
                        .quad            65537
                        .quad            .Lgcsite_show_35
                        .quad            65537
                        .quad            .Lgcsite_show_36
                        .quad            65537
                        .quad            .Lgcsite_show_37
                        .quad            65537
                        .quad            .Lgcsite_show_38
                        .quad            65537
                        .quad            .Lgcsite_show_39
                        .quad            65537
                        .quad            .Lgcsite_show_40
                        .quad            65537
                        .quad            .Lgcsite_show_41
                        .quad            65537
                        .quad            .Lgcsite_show_42
                        .quad            65537
                        .quad            .Lgcsite_show_43
                        .quad            65537
                        .quad            .Lgcsite_show_44
                        .quad            65537
                        .quad            .Lgcsite_show_45
                        .quad            65537
                        .quad            .Lgcsite_show_46
                        .quad            65537
                        .quad            .Lgcsite_show_47
                        .quad            65537
#-----------------------------------------------------------------------------------------------------------------------
FN__options:
                        sub              rsp, 3984
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 3976
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3768], rax
                        mov              dword ptr [rsp + 3760], 160
                        mov              dword ptr [rsp + 3764], 3984
                        mov              eax, 0
                        mov              qword ptr [rsp + 3976], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
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
                        cmp              ecx, 65536;                          jae   .Loptions_α_529_245
                        mov              rsi, 48
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm531:        .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm531]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 2
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
                        lea              rsi, [rsp + 3984]
                        mov              qword ptr [rdi + 40], rsi
.Loptions_α_529_245:
options_α_body:
                        .type            n00114_line_mark_bx, @function
n00114_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 106
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_702_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00115_line_mark_α
.Lline_mark_α_702_0:    .quad            .Lline_mark_α_702_0_s
.Lline_mark_α_702_0_s:  .string          "queens.icn"
                        .size            n00114_line_mark_bx, .-n00114_line_mark_bx
                        .type            n00115_line_mark_bx, @function
n00115_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00116_var_ref_α
                        .size            n00115_line_mark_bx, .-n00115_line_mark_bx
                        .type            n00116_var_ref_bx, @function
n00116_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4000]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n00117_nulltest_var_α
                        .size            n00116_var_ref_bx, .-n00116_var_ref_bx
                        .type            n00117_nulltest_var_bx, @function
n00117_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_nulltest_var_α:    mov              eax, dword ptr [rbp + 3472]
                        cmp              al, 104;                             je    n00118_line_mark_α
                        mov              rdi, qword ptr [rbp + 3472]
                        mov              rsi, qword ptr [rbp + 3480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_1:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00118_line_mark_α
                        cmp              eax, 0;                              jne   n00118_line_mark_α
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3496], rax
                        push             rax                                  # gc_poll bb_unop.cpp:64
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_0:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00119_lit_charset_α
                        .size            n00117_nulltest_var_bx, .-n00117_nulltest_var_bx
                        .type            n00119_lit_charset_bx, @function
n00119_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_lit_charset_α:     mov              qword ptr [rbp + 3568], 2            # result
                        mov              dword ptr [rbp + 3572], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_708_0]
                        mov              qword ptr [rbp + 3576], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_708_0]
                        mov              rsi, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_3:     mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_2:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00120_line_mark_α
.Llit_charset_α_708_0:  .quad            .Llit_charset_α_708_0_s
.Llit_charset_α_708_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00119_lit_charset_bx, .-n00119_lit_charset_bx
                        .type            n00120_line_mark_bx, @function
n00120_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00121_call_icon_α
                        .size            n00120_line_mark_bx, .-n00120_line_mark_bx
                        .type            n00121_call_icon_bx, @function
n00121_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_call_icon_α:       mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3536], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3544], rax
                        .section         .rodata
.Lcall_icon_α_rkfn712:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn712]
                        lea              rsi, [rbp + 3536]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_4:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_5:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00118_line_mark_α
                                                                              jmp   n00122_assign_var_α
n00121_call_icon_β:                                                             jmp   n00118_line_mark_α
                        .size            n00121_call_icon_bx, .-n00121_call_icon_bx
                        .type            n00122_assign_var_bx, @function
n00122_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_assign_var_α:      mov              rdi, qword ptr [rbp + 3488]
                        mov              rsi, qword ptr [rbp + 3496]
                        mov              rdx, qword ptr [rbp + 3520]
                        mov              rcx, qword ptr [rbp + 3528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_7:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00118_line_mark_α
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_6:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00118_line_mark_α
                        .size            n00122_assign_var_bx, .-n00122_assign_var_bx
                        .type            n00118_line_mark_bx, @function
n00118_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00123_line_mark_α
                        .size            n00118_line_mark_bx, .-n00118_line_mark_bx
                        .type            n00123_line_mark_bx, @function
n00123_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00124_call_icon_α
                        .size            n00123_line_mark_bx, .-n00123_line_mark_bx
                        .type            n00124_call_icon_bx, @function
n00124_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn719:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn719]
                        lea              rsi, [rbp + 3440]
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_8:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_9:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00125_line_mark_α
                                                                              jmp   n00126_assign_α
n00124_call_icon_β:                                                             jmp   n00125_line_mark_α
                        .size            n00124_call_icon_bx, .-n00124_call_icon_bx
                        .type            n00126_assign_bx, @function
n00126_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_assign_α:          mov              rax, qword ptr [rbp + 3424]
                        mov              rdx, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3632], rax
                        mov              qword ptr [rbp + 3640], rdx;         jmp   n00125_line_mark_α
                        .size            n00126_assign_bx, .-n00126_assign_bx
                        .type            n00125_line_mark_bx, @function
n00125_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 109;            jmp   n00127_make_list_α
                        .size            n00125_line_mark_bx, .-n00125_line_mark_bx
                        .type            n00127_make_list_bx, @function
n00127_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_make_list_α:       lea              rdi, [rbp + 3408]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
.Lgcsite_options_11:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
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
.Lgcsite_options_10:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00128_assign_α
                        .size            n00127_make_list_bx, .-n00127_make_list_bx
                        .type            n00128_assign_bx, @function
n00128_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_assign_α:          mov              rax, qword ptr [rbp + 3392]
                        mov              rdx, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx;         jmp   n00129_line_mark_α
                        .size            n00128_assign_bx, .-n00128_assign_bx
                        .type            n00129_line_mark_bx, @function
n00129_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00130_bound_α
                        .size            n00129_line_mark_bx, .-n00129_line_mark_bx
                        .type            n00130_bound_bx, @function
n00130_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_bound_α:           mov              qword ptr [rbp + 416], rsp;          jmp   n00131_var_ref_α
                        .size            n00130_bound_bx, .-n00130_bound_bx
                        .type            n00131_var_ref_bx, @function
n00131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00132_deref_α
                        .size            n00131_var_ref_bx, .-n00131_var_ref_bx
                        .type            n00132_deref_bx, @function
n00132_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_deref_α:           mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_13:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00133_line_mark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_12:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00134_line_mark_α
                        .size            n00132_deref_bx, .-n00132_deref_bx
                        .type            n00134_line_mark_bx, @function
n00134_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00135_call_icon_α
                        .size            n00134_line_mark_bx, .-n00134_line_mark_bx
                        .type            n00135_call_icon_bx, @function
n00135_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_call_icon_α:       mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn736:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn736]
                        lea              rsi, [rbp + 336]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_14:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_15:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00133_line_mark_α
                                                                              jmp   n00136_assign_α
n00135_call_icon_β:                                                             jmp   n00133_line_mark_α
                        .size            n00135_call_icon_bx, .-n00135_call_icon_bx
                        .type            n00136_assign_bx, @function
n00136_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_assign_α:          mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx;         jmp   n00137_line_mark_α
                        .size            n00136_assign_bx, .-n00136_assign_bx
                        .type            n00137_line_mark_bx, @function
n00137_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 111;            jmp   n00138_var_α
                        .size            n00137_line_mark_bx, .-n00137_line_mark_bx
                        .type            n00138_var_bx, @function
n00138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_var_α:             mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3352], rax;         jmp   n00139_scan_enter_α
                        .size            n00138_var_bx, .-n00138_var_bx
                        .type            n00139_scan_enter_bx, @function
n00139_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_scan_enter_α:      mov              qword ptr [rbp + 480], r13
                        mov              qword ptr [rbp + 488], r14
                        mov              qword ptr [rbp + 496], r15
                        mov              rdi, qword ptr [rbp + 3344]
                        mov              rsi, qword ptr [rbp + 3352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_enter@PLT
.Lgcsite_options_17:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_16:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            je    n00140_unmark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00141_disjunction_α
                        .size            n00139_scan_enter_bx, .-n00139_scan_enter_bx
                        .type            n00141_disjunction_bx, @function
n00141_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_disjunction_α:     mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0;            jmp   n00142_lit_string_α
.Ldisjunction_γ_557_as: mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_745_0
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00143_scan_α
.Ldisjunction_α_745_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_745_1
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00143_scan_α
.Ldisjunction_α_745_1:                                                        jmp   n00143_scan_α
n00141_disjunction_β:     mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              je    n00144_disjunction_β
                                                                              jmp   n00145_scan_α
.Ldisjunction_γ_557_af:
.Ldisjunction_ω_557_af: add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1;                              je    n00146_line_mark_α
                                                                              jmp   n00145_scan_α
                        .size            n00141_disjunction_bx, .-n00141_disjunction_bx
                        .type            n00143_scan_bx, @function
n00143_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_scan_α:            mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_20:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00140_unmark_α
n00143_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter@PLT
.Lgcsite_options_19:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_18:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax;                            jmp   n00141_disjunction_β
                                                                              jmp   n00140_unmark_α
                        .size            n00143_scan_bx, .-n00143_scan_bx
                        .type            n00147_conjunction_bx, @function
n00147_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_conjunction_α:                                                           jmp   .Ldisjunction_γ_557_as
n00147_conjunction_β:                                                           jmp   n00145_scan_α
                        .size            n00147_conjunction_bx, .-n00147_conjunction_bx
                        .type            n00146_line_mark_bx, @function
n00146_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 131;            jmp   n00148_var_ref_α
n00146_line_mark_β:                                                             jmp   n00148_var_ref_α
                        .size            n00146_line_mark_bx, .-n00146_line_mark_bx
                        .type            n00148_var_ref_bx, @function
n00148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 3264], rax
                        mov              qword ptr [rbp + 3272], rdx;         jmp   n00149_var_ref_α
                        .size            n00148_var_ref_bx, .-n00148_var_ref_bx
                        .type            n00149_var_ref_bx, @function
n00149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3680]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n00150_deref_α
                        .size            n00149_var_ref_bx, .-n00149_var_ref_bx
                        .type            n00150_deref_bx, @function
n00150_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_deref_α:           mov              rdi, qword ptr [rbp + 3264]
                        mov              rsi, qword ptr [rbp + 3272]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_22:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00145_scan_α
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_21:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00151_deref_α
                        .size            n00150_deref_bx, .-n00150_deref_bx
                        .type            n00151_deref_bx, @function
n00151_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_deref_α:           mov              rdi, qword ptr [rbp + 3280]
                        mov              rsi, qword ptr [rbp + 3288]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_24:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00145_scan_α
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_23:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00152_line_mark_α
                        .size            n00151_deref_bx, .-n00151_deref_bx
                        .type            n00152_line_mark_bx, @function
n00152_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 131;            jmp   n00153_call_icon_α
                        .size            n00152_line_mark_bx, .-n00152_line_mark_bx
                        .type            n00153_call_icon_bx, @function
n00153_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_call_icon_α:       mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn760:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn760]
                        lea              rsi, [rbp + 3216]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_25:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_26:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00145_scan_α
                                                                              jmp   .Ldisjunction_γ_557_as
n00153_call_icon_β:                                                             jmp   n00145_scan_α
                        .size            n00153_call_icon_bx, .-n00153_call_icon_bx
                        .type            n00142_lit_string_bx, @function
n00142_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_lit_string_α:      mov              qword ptr [rbp + 3168], 2            # result
                        mov              dword ptr [rbp + 3172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_761_0]
                        mov              qword ptr [rbp + 3176], rax;         jmp   n00154_scan_match_α
n00142_lit_string_β:                                                            jmp   .Ldisjunction_ω_557_af
.Llit_string_α_761_0:   .quad            .Llit_string_α_761_0_s
.Llit_string_α_761_0_s: .string          "-"
                        .size            n00142_lit_string_bx, .-n00142_lit_string_bx
                        .type            n00154_scan_match_bx, @function
n00154_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_557_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_763_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
.Lgcsite_options_27:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_557_af
                        mov              qword ptr [rbp + 3136], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3144], rax;         jmp   n00155_scan_tab_α
.Lscan_match_α_763_0:   .quad            .Lscan_match_α_763_0_s
.Lscan_match_α_763_0_s: .string          "-"
                        .size            n00154_scan_match_bx, .-n00154_scan_match_bx
                        .type            n00155_scan_tab_bx, @function
n00155_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_scan_tab_α:        mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_33:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_557_af
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
.Lgcsite_options_32:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 3136]
                        mov              rsi, qword ptr [rbp + 3144]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_31:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_30:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_765_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_765_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_557_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_557_af
                        mov              qword ptr [rbp + 3120], r14
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
.Lgcsite_options_29:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_28:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx;         jmp   n00156_lit_integer_α
n00155_scan_tab_β:        mov              r14, qword ptr [rbp + 3120];         jmp   .Ldisjunction_ω_557_af
                        .size            n00155_scan_tab_bx, .-n00155_scan_tab_bx
                        .type            n00156_lit_integer_bx, @function
n00156_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_lit_integer_α:     mov              qword ptr [rbp + 3088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_766_0]
                        mov              qword ptr [rbp + 3096], rax;         jmp   n00157_line_mark_α
.Llit_integer_α_766_0:  .quad            0
                        .size            n00156_lit_integer_bx, .-n00156_lit_integer_bx
                        .type            n00157_line_mark_bx, @function
n00157_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00158_scan_pos_α
                        .size            n00157_line_mark_bx, .-n00157_line_mark_bx
                        .type            n00158_scan_pos_bx, @function
n00158_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_770_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_770_0:     cmp              rax, 1;                              jl    n00159_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00159_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00159_var_α
                        mov              qword ptr [rbp + 3056], 3
                        mov              qword ptr [rbp + 3064], rax;         jmp   n00155_scan_tab_β
                        .size            n00158_scan_pos_bx, .-n00158_scan_pos_bx
                        .type            n00159_var_bx, @function
n00159_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_var_α:             mov              qword ptr [rbp + 3040], 0
                        mov              qword ptr [rbp + 3048], 0;           jmp   n00160_conjunction_α
n00159_var_β:                                                                   jmp   n00155_scan_tab_β
                        .size            n00159_var_bx, .-n00159_var_bx
                        .type            n00160_conjunction_bx, @function
n00160_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_conjunction_α:     mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 3032], rax;         jmp   n00161_line_mark_α
n00160_conjunction_β:                                                           jmp   .Ldisjunction_ω_557_af
                        .size            n00160_conjunction_bx, .-n00160_conjunction_bx
                        .type            n00161_line_mark_bx, @function
n00161_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00162_line_mark_α
                        .size            n00161_line_mark_bx, .-n00161_line_mark_bx
                        .type            n00162_line_mark_bx, @function
n00162_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00163_disjunction_α
                        .size            n00162_line_mark_bx, .-n00162_line_mark_bx
                        .type            n00163_disjunction_bx, @function
n00163_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_disjunction_α:     mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              dword ptr [rbp + 2784], 0;           jmp   n00164_lit_string_α
.Ldisjunction_γ_577_as: mov              eax, dword ptr [rbp + 2784]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_778_0
                                                                              jmp   n00165_line_mark_α
.Ldisjunction_α_778_0:                                                        jmp   n00165_line_mark_α
n00163_disjunction_β:     mov              eax, dword ptr [rbp + 2784];         jmp   n00165_line_mark_α
.Ldisjunction_γ_577_af:
.Ldisjunction_ω_577_af: add              dword ptr [rbp + 2784], 1
                        mov              eax, dword ptr [rbp + 2784];         jmp   n00165_line_mark_α
                        .size            n00163_disjunction_bx, .-n00163_disjunction_bx
                        .type            n00165_line_mark_bx, @function
n00165_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00166_bound_α
                        .size            n00165_line_mark_bx, .-n00165_line_mark_bx
                        .type            n00166_bound_bx, @function
n00166_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_bound_α:           mov              qword ptr [rbp + 688], rsp;          jmp   n00167_lit_integer_α
                        .size            n00166_bound_bx, .-n00166_bound_bx
                        .type            n00167_lit_integer_bx, @function
n00167_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_lit_integer_α:     mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_783_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n00168_line_mark_α
.Llit_integer_α_783_0:  .quad            1
                        .size            n00167_lit_integer_bx, .-n00167_lit_integer_bx
                        .type            n00168_line_mark_bx, @function
n00168_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00169_scan_move_α
                        .size            n00168_line_mark_bx, .-n00168_line_mark_bx
                        .type            n00169_scan_move_bx, @function
n00169_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00145_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00145_scan_α
                        mov              qword ptr [rbp + 624], r14
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
.Lgcsite_options_35:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_34:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n00170_assign_α
n00169_scan_move_β:       mov              r14, qword ptr [rbp + 624];          jmp   n00145_scan_α
                        .size            n00169_scan_move_bx, .-n00169_scan_move_bx
                        .type            n00170_assign_bx, @function
n00170_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_assign_α:          mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx;         jmp   n00171_line_mark_α
                        .size            n00170_assign_bx, .-n00170_assign_bx
                        .type            n00171_line_mark_bx, @function
n00171_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00144_disjunction_α
                        .size            n00171_line_mark_bx, .-n00171_line_mark_bx
                        .type            n00144_disjunction_bx, @function
n00144_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_disjunction_α:     mov              qword ptr [rbp + 736], 0
                        mov              qword ptr [rbp + 744], 0
                        mov              dword ptr [rbp + 752], 0;            jmp   n00172_var_ref_α
.Ldisjunction_γ_585_as: mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_792_0
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00173_unmark_α
.Ldisjunction_α_792_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_792_1
                        mov              rax, qword ptr [rbp + 2592]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 2600]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00173_unmark_α
.Ldisjunction_α_792_1:                                                        jmp   n00173_unmark_α
n00144_disjunction_β:     mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 0;                              je    n00174_disjunction_β
                                                                              jmp   n00173_unmark_α
.Ldisjunction_γ_585_af:
.Ldisjunction_ω_585_af: add              dword ptr [rbp + 752], 1
                        mov              eax, dword ptr [rbp + 752]
                        cmp              eax, 1;                              je    n00175_line_mark_α
                                                                              jmp   n00173_unmark_α
                        .size            n00144_disjunction_bx, .-n00144_disjunction_bx
                        .type            n00175_line_mark_bx, @function
n00175_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00176_lit_string_α
n00175_line_mark_β:                                                             jmp   n00176_lit_string_α
                        .size            n00175_line_mark_bx, .-n00175_line_mark_bx
                        .type            n00176_lit_string_bx, @function
n00176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_lit_string_α:      mov              qword ptr [rbp + 2656], 2            # result
                        mov              dword ptr [rbp + 2660], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_795_0]
                        mov              qword ptr [rbp + 2664], rax;         jmp   n00177_var_ref_α
.Llit_string_α_795_0:   .quad            .Llit_string_α_795_0_s
.Llit_string_α_795_0_s: .string          "Unrecognized option: -"
                        .size            n00176_lit_string_bx, .-n00176_lit_string_bx
                        .type            n00177_var_ref_bx, @function
n00177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx;         jmp   n00178_deref_α
                        .size            n00177_var_ref_bx, .-n00177_var_ref_bx
                        .type            n00178_deref_bx, @function
n00178_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_deref_α:           mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_37:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00173_unmark_α
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_36:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00179_line_mark_α
                        .size            n00178_deref_bx, .-n00178_deref_bx
                        .type            n00179_line_mark_bx, @function
n00179_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00180_call_icon_α
                        .size            n00179_line_mark_bx, .-n00179_line_mark_bx
                        .type            n00180_call_icon_bx, @function
n00180_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_call_icon_α:       mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2616], rax
                        .section         .rodata
.Lcall_icon_α_rkfn802:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn802]
                        lea              rsi, [rbp + 2608]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_38:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_39:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00173_unmark_α
                                                                              jmp   .Ldisjunction_γ_585_as
n00180_call_icon_β:                                                             jmp   n00173_unmark_α
                        .size            n00180_call_icon_bx, .-n00180_call_icon_bx
                        .type            n00172_var_ref_bx, @function
n00172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n00181_var_ref_α
n00172_var_ref_β:                                                               jmp   .Ldisjunction_ω_585_af
                        .size            n00172_var_ref_bx, .-n00172_var_ref_bx
                        .type            n00181_var_ref_bx, @function
n00181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4000]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n00182_deref_α
                        .size            n00181_var_ref_bx, .-n00181_var_ref_bx
                        .type            n00182_deref_bx, @function
n00182_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_deref_α:           mov              rdi, qword ptr [rbp + 2512]
                        mov              rsi, qword ptr [rbp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_41:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_585_af
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_40:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00183_deref_α
                        .size            n00182_deref_bx, .-n00182_deref_bx
                        .type            n00183_deref_bx, @function
n00183_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_deref_α:           mov              rdi, qword ptr [rbp + 2528]
                        mov              rsi, qword ptr [rbp + 2536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_43:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_585_af
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_42:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00184_line_mark_α
                        .size            n00183_deref_bx, .-n00183_deref_bx
                        .type            n00184_line_mark_bx, @function
n00184_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00185_call_builtin_gen_α
                        .size            n00184_line_mark_bx, .-n00184_line_mark_bx
                        .type            n00185_call_builtin_gen_bx, @function
n00185_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2456], rax
                        mov              qword ptr [rbp + 2480], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_44:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_811_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn278: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn278]
                        lea              rsi, [rbp + 2448]
                        mov              edx, 2
                        lea              rcx, [rbp + 2480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen_strict@PLT
.Lgcsite_options_45:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_options_46:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_585_af
                                                                              jmp   n00186_lit_integer_α
n00185_call_builtin_gen_β:
                                                                              jmp   .Lcall_builtin_gen_α_811_60
                        .size            n00185_call_builtin_gen_bx, .-n00185_call_builtin_gen_bx
                        .type            n00186_lit_integer_bx, @function
n00186_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_lit_integer_α:     mov              qword ptr [rbp + 2576], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_812_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n00187_coerce_numeric_α
.Llit_integer_α_812_0:  .quad            1
                        .size            n00186_lit_integer_bx, .-n00186_lit_integer_bx
                        .type            n00187_coerce_numeric_bx, @function
n00187_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2432]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_814_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_814_0
                        mov              eax, dword ptr [rbp + 2576]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_814_0
.Lcoerce_numeric_α_814_1:
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n00188_binop_α
.Lcoerce_numeric_α_814_0:
                        lea              rdi, [rbp + 2432]
                        lea              rsi, [rbp + 2576]
                        lea              rdx, [rbp + 2416]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_options_48:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_47:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 104;                             je    .Ldisjunction_ω_585_af
                                                                              jmp   n00188_binop_α
                        .size            n00187_coerce_numeric_bx, .-n00187_coerce_numeric_bx
                        .type            n00188_binop_bx, @function
n00188_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_binop_α:           mov              eax, dword ptr [rbp + 2416]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_815_2
                        mov              rax, qword ptr [rbp + 2424]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_815_0
                        mov              qword ptr [rbp + 2400], 3
                        mov              qword ptr [rbp + 2408], rax;         jmp   .Lbinop_α_815_7
.Lbinop_α_815_2:        and              edx, 1;                              jz    .Lbinop_α_815_0
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_815_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_815_4
.Lbinop_α_815_3:        movq             xmm0, rsi
.Lbinop_α_815_4:        cmp              cl, 5;                               je    .Lbinop_α_815_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_815_6
.Lbinop_α_815_5:        movq             xmm1, rdi
.Lbinop_α_815_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_815_0
                        mov              qword ptr [rbp + 2400], 5
                        mov              qword ptr [rbp + 2408], rax
.Lbinop_α_815_7:                                                              jmp   n00189_assign_α
.Lbinop_α_815_0:        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 2576]
                        mov              rcx, qword ptr [rbp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_options_50:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_585_af
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
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
.Lgcsite_options_49:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00189_assign_α
                        .size            n00188_binop_bx, .-n00188_binop_bx
                        .type            n00189_assign_bx, @function
n00189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_assign_α:          mov              rax, qword ptr [rbp + 2400]
                        mov              rdx, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n00190_line_mark_α
                        .size            n00189_assign_bx, .-n00189_assign_bx
                        .type            n00190_line_mark_bx, @function
n00190_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 116;            jmp   n00191_var_ref_α
                        .size            n00190_line_mark_bx, .-n00190_line_mark_bx
                        .type            n00191_var_ref_bx, @function
n00191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3632]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00192_var_α
                        .size            n00191_var_ref_bx, .-n00191_var_ref_bx
                        .type            n00192_var_bx, @function
n00192_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_var_α:             mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 792], rax;          jmp   n00193_subscript_α
                        .size            n00192_var_bx, .-n00192_var_bx
                        .type            n00193_subscript_bx, @function
n00193_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_subscript_α:       mov              rdi, qword ptr [rbp + 768]
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 784]
                        mov              rcx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_options_52:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00173_unmark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_51:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00174_disjunction_α
                        .size            n00193_subscript_bx, .-n00193_subscript_bx
                        .type            n00174_disjunction_bx, @function
n00174_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_disjunction_α:     mov              qword ptr [rbp + 832], 0
                        mov              qword ptr [rbp + 840], 0
                        mov              dword ptr [rbp + 848], 0;            jmp   n00194_lit_charset_α
.Ldisjunction_γ_606_as: mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_825_0
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00195_assign_var_α
.Ldisjunction_α_825_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_825_1
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 840], rax;          jmp   n00195_assign_var_α
.Ldisjunction_α_825_1:                                                        jmp   n00195_assign_var_α
n00174_disjunction_β:     mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 0;                              je    n00196_disjunction_β
                                                                              jmp   n00173_unmark_α
.Ldisjunction_γ_606_af:
.Ldisjunction_ω_606_af: add              dword ptr [rbp + 848], 1
                        mov              eax, dword ptr [rbp + 848]
                        cmp              eax, 1;                              je    n00197_lit_integer_α
                                                                              jmp   n00173_unmark_α
                        .size            n00174_disjunction_bx, .-n00174_disjunction_bx
                        .type            n00195_assign_var_bx, @function
n00195_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_assign_var_α:      mov              rdi, qword ptr [rbp + 800]
                        mov              rsi, qword ptr [rbp + 808]
                        mov              rdx, qword ptr [rbp + 832]
                        mov              rcx, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_54:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00173_unmark_α
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_53:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_585_as
n00195_assign_var_β:                                                            jmp   n00173_unmark_α
                        .size            n00195_assign_var_bx, .-n00195_assign_var_bx
                        .type            n00197_lit_integer_bx, @function
n00197_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_lit_integer_α:     mov              qword ptr [rbp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_827_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   .Ldisjunction_γ_606_as
n00197_lit_integer_β:                                                           jmp   n00173_unmark_α
.Llit_integer_α_827_0:  .quad            1
                        .size            n00197_lit_integer_bx, .-n00197_lit_integer_bx
                        .type            n00194_lit_charset_bx, @function
n00194_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_lit_charset_α:     mov              qword ptr [rbp + 2240], 2            # result
                        mov              dword ptr [rbp + 2244], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_828_0]
                        mov              qword ptr [rbp + 2248], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_828_0]
                        mov              rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_56:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_55:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00198_var_ref_α
n00194_lit_charset_β:                                                           jmp   .Ldisjunction_ω_606_af
.Llit_charset_α_828_0:  .quad            .Llit_charset_α_828_0_s
.Llit_charset_α_828_0_s:
                        .string          "+.:"
                        .size            n00194_lit_charset_bx, .-n00194_lit_charset_bx
                        .type            n00198_var_ref_bx, @function
n00198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4000]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx;         jmp   n00199_var_α
                        .size            n00198_var_ref_bx, .-n00198_var_ref_bx
                        .type            n00199_var_bx, @function
n00199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_var_α:             mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 2296], rax;         jmp   n00200_subscript_α
                        .size            n00199_var_bx, .-n00199_var_bx
                        .type            n00200_subscript_bx, @function
n00200_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_subscript_α:       mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2288]
                        mov              rcx, qword ptr [rbp + 2296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_options_58:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_606_af
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_57:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00201_deref_α
                        .size            n00200_subscript_bx, .-n00200_subscript_bx
                        .type            n00201_deref_bx, @function
n00201_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_deref_α:           mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_60:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_606_af
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_59:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00202_assign_α
                        .size            n00201_deref_bx, .-n00201_deref_bx
                        .type            n00202_assign_bx, @function
n00202_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_assign_α:          mov              rax, qword ptr [rbp + 2320]
                        mov              rdx, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n00203_var_ref_α
                        .size            n00202_assign_bx, .-n00202_assign_bx
                        .type            n00203_var_ref_bx, @function
n00203_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3712]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n00204_deref_α
                        .size            n00203_var_ref_bx, .-n00203_var_ref_bx
                        .type            n00204_deref_bx, @function
n00204_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_deref_α:           mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_62:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_606_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_61:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00205_line_mark_α
                        .size            n00204_deref_bx, .-n00204_deref_bx
                        .type            n00205_line_mark_bx, @function
n00205_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 117;            jmp   n00206_call_icon_α
                        .size            n00205_line_mark_bx, .-n00205_line_mark_bx
                        .type            n00206_call_icon_bx, @function
n00206_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_call_icon_α:       mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_63:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lcall_icon_α_bynamefn299: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn299]
                        lea              rsi, [rbp + 2192]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_64:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_66:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_65:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_call.cpp:451
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_67:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_606_af
                                                                              jmp   n00207_line_mark_α
n00206_call_icon_β:                                                             jmp   .Ldisjunction_ω_606_af
                        .size            n00206_call_icon_bx, .-n00206_call_icon_bx
                        .type            n00207_line_mark_bx, @function
n00207_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00208_disjunction_α
                        .size            n00207_line_mark_bx, .-n00207_line_mark_bx
                        .type            n00208_disjunction_bx, @function
n00208_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_disjunction_α:     mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1816], 0
                        mov              dword ptr [rbp + 1824], 0;           jmp   n00209_lit_string_α
.Ldisjunction_γ_620_as: mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_845_0
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n00210_assign_α
.Ldisjunction_α_845_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_845_1
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n00210_assign_α
.Ldisjunction_α_845_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_845_2
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n00210_assign_α
.Ldisjunction_α_845_2:                                                        jmp   n00210_assign_α
n00208_disjunction_β:     mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 0;                              je    n00211_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_620_af
                                                                              jmp   .Ldisjunction_ω_620_af
.Ldisjunction_γ_620_af:
.Ldisjunction_ω_620_af: add              dword ptr [rbp + 1824], 1
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              eax, 1;                              je    n00212_var_ref_α
                        cmp              eax, 2;                              je    n00213_lit_string_α
                                                                              jmp   n00214_line_mark_α
                        .size            n00208_disjunction_bx, .-n00208_disjunction_bx
                        .type            n00210_assign_bx, @function
n00210_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_assign_α:          mov              rax, qword ptr [rbp + 1808]
                        mov              rdx, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n00214_line_mark_α
                        .size            n00210_assign_bx, .-n00210_assign_bx
                        .type            n00214_line_mark_bx, @function
n00214_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00215_var_α
                        .size            n00214_line_mark_bx, .-n00214_line_mark_bx
                        .type            n00215_var_bx, @function
n00215_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_var_α:             mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 888], rax;          jmp   n00196_disjunction_α
                        .size            n00215_var_bx, .-n00215_var_bx
                        .type            n00196_disjunction_bx, @function
n00196_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_disjunction_α:     mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0;            jmp   n00216_lit_string_α
.Ldisjunction_γ_624_as: mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_852_0
                        mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00217_conjunction_α
.Ldisjunction_α_852_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_852_1
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00217_conjunction_α
.Ldisjunction_α_852_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_852_2
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00217_conjunction_α
.Ldisjunction_α_852_2:                                                        jmp   n00217_conjunction_α
n00196_disjunction_β:     mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              je    n00173_unmark_α
                        cmp              eax, 1;                              je    n00218_disjunction_β
                                                                              jmp   n00219_disjunction_β
.Ldisjunction_γ_624_af:
.Ldisjunction_ω_624_af: add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 1;                              je    n00220_lit_string_α
                        cmp              eax, 2;                              je    n00221_lit_string_α
                                                                              jmp   n00173_unmark_α
                        .size            n00196_disjunction_bx, .-n00196_disjunction_bx
                        .type            n00217_conjunction_bx, @function
n00217_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_conjunction_α:     mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax;          jmp   .Ldisjunction_γ_606_as
n00217_conjunction_β:                                                           jmp   n00173_unmark_α
                        .size            n00217_conjunction_bx, .-n00217_conjunction_bx
                        .type            n00221_lit_string_bx, @function
n00221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_string_α:      mov              qword ptr [rbp + 1712], 2            # result
                        mov              dword ptr [rbp + 1716], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_854_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n00222_call_builtin_α
n00221_lit_string_β:                                                            jmp   .Ldisjunction_ω_624_af
.Llit_string_α_854_0:   .quad            .Llit_string_α_854_0_s
.Llit_string_α_854_0_s: .string          "."
                        .size            n00221_lit_string_bx, .-n00221_lit_string_bx
                        .type            n00222_call_builtin_bx, @function
n00222_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_call_builtin_α:    mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1768], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn856: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn856]
                        lea              rsi, [rbp + 1760]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_68:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_69:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_624_af
                                                                              jmp   n00223_line_mark_α
n00222_call_builtin_β:                                                          jmp   .Ldisjunction_ω_624_af
                        .size            n00222_call_builtin_bx, .-n00222_call_builtin_bx
                        .type            n00223_line_mark_bx, @function
n00223_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00219_disjunction_α
                        .size            n00223_line_mark_bx, .-n00223_line_mark_bx
                        .type            n00219_disjunction_bx, @function
n00219_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_disjunction_α:     mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              dword ptr [rbp + 1424], 0;           jmp   n00224_var_ref_α
.Ldisjunction_γ_629_as: mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_860_0
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax;         jmp   .Ldisjunction_γ_624_as
.Ldisjunction_α_860_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_860_1
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1416], rax;         jmp   .Ldisjunction_γ_624_as
.Ldisjunction_α_860_1:                                                        jmp   .Ldisjunction_γ_624_as
n00219_disjunction_β:     mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_629_af
                                                                              jmp   .Ldisjunction_ω_629_af
.Ldisjunction_γ_629_af:
.Ldisjunction_ω_629_af: add              dword ptr [rbp + 1424], 1
                        mov              eax, dword ptr [rbp + 1424]
                        cmp              eax, 1;                              je    n00225_lit_string_α
                                                                              jmp   n00173_unmark_α
                        .size            n00219_disjunction_bx, .-n00219_disjunction_bx
                        .type            n00225_lit_string_bx, @function
n00225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_lit_string_α:      mov              qword ptr [rbp + 1600], 2            # result
                        mov              dword ptr [rbp + 1604], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_861_0]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n00226_var_ref_α
n00225_lit_string_β:                                                            jmp   .Ldisjunction_ω_629_af
.Llit_string_α_861_0:   .quad            .Llit_string_α_861_0_s
.Llit_string_α_861_0_s: .string          "-"
                        .size            n00225_lit_string_bx, .-n00225_lit_string_bx
                        .type            n00226_var_ref_bx, @function
n00226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n00227_lit_string_α
                        .size            n00226_var_ref_bx, .-n00226_var_ref_bx
                        .type            n00227_lit_string_bx, @function
n00227_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_lit_string_α:      mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_864_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n00228_deref_α
.Llit_string_α_864_0:   .quad            .Llit_string_α_864_0_s
.Llit_string_α_864_0_s: .string          " needs numeric parameter"
                        .size            n00227_lit_string_bx, .-n00227_lit_string_bx
                        .type            n00228_deref_bx, @function
n00228_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_deref_α:           mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_71:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_629_af
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_70:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00229_line_mark_α
                        .size            n00228_deref_bx, .-n00228_deref_bx
                        .type            n00229_line_mark_bx, @function
n00229_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00230_call_icon_α
                        .size            n00229_line_mark_bx, .-n00229_line_mark_bx
                        .type            n00230_call_icon_bx, @function
n00230_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_call_icon_α:       mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1544], rax
                        .section         .rodata
.Lcall_icon_α_rkfn869:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn869]
                        lea              rsi, [rbp + 1536]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_72:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_73:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_629_af
                                                                              jmp   .Ldisjunction_γ_629_as
n00230_call_icon_β:                                                             jmp   .Ldisjunction_ω_629_af
                        .size            n00230_call_icon_bx, .-n00230_call_icon_bx
                        .type            n00224_var_ref_bx, @function
n00224_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n00231_deref_α
n00224_var_ref_β:                                                               jmp   .Ldisjunction_ω_629_af
                        .size            n00224_var_ref_bx, .-n00224_var_ref_bx
                        .type            n00231_deref_bx, @function
n00231_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_deref_α:           mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_75:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_629_af
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_74:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00232_line_mark_α
                        .size            n00231_deref_bx, .-n00231_deref_bx
                        .type            n00232_line_mark_bx, @function
n00232_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00233_call_icon_α
                        .size            n00232_line_mark_bx, .-n00232_line_mark_bx
                        .type            n00233_call_icon_bx, @function
n00233_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_call_icon_α:       mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        .section         .rodata
.Lcall_icon_α_rkfn876:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn876]
                        lea              rsi, [rbp + 1456]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_76:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_77:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_629_af
                                                                              jmp   .Ldisjunction_γ_629_as
n00233_call_icon_β:                                                             jmp   .Ldisjunction_ω_629_af
                        .size            n00233_call_icon_bx, .-n00233_call_icon_bx
                        .type            n00220_lit_string_bx, @function
n00220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_lit_string_α:      mov              qword ptr [rbp + 1328], 2            # result
                        mov              dword ptr [rbp + 1332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_877_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n00234_call_builtin_α
n00220_lit_string_β:                                                            jmp   .Ldisjunction_ω_624_af
.Llit_string_α_877_0:   .quad            .Llit_string_α_877_0_s
.Llit_string_α_877_0_s: .string          "+"
                        .size            n00220_lit_string_bx, .-n00220_lit_string_bx
                        .type            n00234_call_builtin_bx, @function
n00234_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_call_builtin_α:    mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1384], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn879: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn879]
                        lea              rsi, [rbp + 1376]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_78:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_79:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_624_af
                                                                              jmp   n00235_line_mark_α
n00234_call_builtin_β:                                                          jmp   .Ldisjunction_ω_624_af
                        .size            n00234_call_builtin_bx, .-n00234_call_builtin_bx
                        .type            n00235_line_mark_bx, @function
n00235_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00218_disjunction_α
                        .size            n00235_line_mark_bx, .-n00235_line_mark_bx
                        .type            n00218_disjunction_bx, @function
n00218_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_disjunction_α:     mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              dword ptr [rbp + 1040], 0;           jmp   n00236_var_ref_α
.Ldisjunction_γ_643_as: mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_883_0
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_624_as
.Ldisjunction_α_883_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_883_1
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_624_as
.Ldisjunction_α_883_1:                                                        jmp   .Ldisjunction_γ_624_as
n00218_disjunction_β:     mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_643_af
                                                                              jmp   .Ldisjunction_ω_643_af
.Ldisjunction_γ_643_af:
.Ldisjunction_ω_643_af: add              dword ptr [rbp + 1040], 1
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 1;                              je    n00237_lit_string_α
                                                                              jmp   n00173_unmark_α
                        .size            n00218_disjunction_bx, .-n00218_disjunction_bx
                        .type            n00237_lit_string_bx, @function
n00237_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_lit_string_α:      mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_884_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n00238_var_ref_α
n00237_lit_string_β:                                                            jmp   .Ldisjunction_ω_643_af
.Llit_string_α_884_0:   .quad            .Llit_string_α_884_0_s
.Llit_string_α_884_0_s: .string          "-"
                        .size            n00237_lit_string_bx, .-n00237_lit_string_bx
                        .type            n00238_var_ref_bx, @function
n00238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00239_lit_string_α
                        .size            n00238_var_ref_bx, .-n00238_var_ref_bx
                        .type            n00239_lit_string_bx, @function
n00239_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_string_α:      mov              qword ptr [rbp + 1264], 2            # result
                        mov              dword ptr [rbp + 1268], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_887_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00240_deref_α
.Llit_string_α_887_0:   .quad            .Llit_string_α_887_0_s
.Llit_string_α_887_0_s: .string          " needs numeric parameter"
                        .size            n00239_lit_string_bx, .-n00239_lit_string_bx
                        .type            n00240_deref_bx, @function
n00240_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_deref_α:           mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_81:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_643_af
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_80:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00241_line_mark_α
                        .size            n00240_deref_bx, .-n00240_deref_bx
                        .type            n00241_line_mark_bx, @function
n00241_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00242_call_icon_α
                        .size            n00241_line_mark_bx, .-n00241_line_mark_bx
                        .type            n00242_call_icon_bx, @function
n00242_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_call_icon_α:       mov              rax, qword ptr [rbp + 1264]
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
.Lcall_icon_α_rkfn892:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn892]
                        lea              rsi, [rbp + 1152]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_82:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_83:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_643_af
                                                                              jmp   .Ldisjunction_γ_643_as
n00242_call_icon_β:                                                             jmp   .Ldisjunction_ω_643_af
                        .size            n00242_call_icon_bx, .-n00242_call_icon_bx
                        .type            n00236_var_ref_bx, @function
n00236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n00243_deref_α
n00236_var_ref_β:                                                               jmp   .Ldisjunction_ω_643_af
                        .size            n00236_var_ref_bx, .-n00236_var_ref_bx
                        .type            n00243_deref_bx, @function
n00243_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_deref_α:           mov              rdi, qword ptr [rbp + 1104]
                        mov              rsi, qword ptr [rbp + 1112]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_85:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_643_af
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_84:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00244_line_mark_α
                        .size            n00243_deref_bx, .-n00243_deref_bx
                        .type            n00244_line_mark_bx, @function
n00244_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00245_call_icon_α
                        .size            n00244_line_mark_bx, .-n00244_line_mark_bx
                        .type            n00245_call_icon_bx, @function
n00245_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_call_icon_α:       mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        .section         .rodata
.Lcall_icon_α_rkfn899:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn899]
                        lea              rsi, [rbp + 1072]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_86:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_87:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_643_af
                                                                              jmp   .Ldisjunction_γ_643_as
n00245_call_icon_β:                                                             jmp   .Ldisjunction_ω_643_af
                        .size            n00245_call_icon_bx, .-n00245_call_icon_bx
                        .type            n00216_lit_string_bx, @function
n00216_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_lit_string_α:      mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_900_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00246_call_builtin_α
n00216_lit_string_β:                                                            jmp   .Ldisjunction_ω_624_af
.Llit_string_α_900_0:   .quad            .Llit_string_α_900_0_s
.Llit_string_α_900_0_s: .string          ":"
                        .size            n00216_lit_string_bx, .-n00216_lit_string_bx
                        .type            n00246_call_builtin_bx, @function
n00246_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_call_builtin_α:    mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1000], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn902: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn902]
                        lea              rsi, [rbp + 992]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_88:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_89:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_624_af
                                                                              jmp   n00247_var_α
n00246_call_builtin_β:                                                          jmp   .Ldisjunction_ω_624_af
                        .size            n00246_call_builtin_bx, .-n00246_call_builtin_bx
                        .type            n00247_var_bx, @function
n00247_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_var_α:             mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 936], rax;          jmp   .Ldisjunction_γ_624_as
n00247_var_β:                                                                   jmp   n00173_unmark_α
                        .size            n00247_var_bx, .-n00247_var_bx
                        .type            n00213_lit_string_bx, @function
n00213_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_lit_string_α:      mov              qword ptr [rbp + 2096], 2            # result
                        mov              dword ptr [rbp + 2100], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_905_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n00248_var_ref_α
n00213_lit_string_β:                                                            jmp   .Ldisjunction_ω_620_af
.Llit_string_α_905_0:   .quad            .Llit_string_α_905_0_s
.Llit_string_α_905_0_s: .string          "No parameter following -"
                        .size            n00213_lit_string_bx, .-n00213_lit_string_bx
                        .type            n00248_var_ref_bx, @function
n00248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3696]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n00249_deref_α
                        .size            n00248_var_ref_bx, .-n00248_var_ref_bx
                        .type            n00249_deref_bx, @function
n00249_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_deref_α:           mov              rdi, qword ptr [rbp + 2128]
                        mov              rsi, qword ptr [rbp + 2136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_91:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_90:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00250_line_mark_α
                        .size            n00249_deref_bx, .-n00249_deref_bx
                        .type            n00250_line_mark_bx, @function
n00250_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00251_call_icon_α
                        .size            n00250_line_mark_bx, .-n00250_line_mark_bx
                        .type            n00251_call_icon_bx, @function
n00251_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_call_icon_α:       mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        .section         .rodata
.Lcall_icon_α_rkfn912:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn912]
                        lea              rsi, [rbp + 2048]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_92:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_93:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                                                                              jmp   .Ldisjunction_γ_620_as
n00251_call_icon_β:                                                             jmp   .Ldisjunction_ω_620_af
                        .size            n00251_call_icon_bx, .-n00251_call_icon_bx
                        .type            n00212_var_ref_bx, @function
n00212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n00252_deref_α
n00212_var_ref_β:                                                               jmp   .Ldisjunction_ω_620_af
                        .size            n00212_var_ref_bx, .-n00212_var_ref_bx
                        .type            n00252_deref_bx, @function
n00252_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_deref_α:           mov              rdi, qword ptr [rbp + 2000]
                        mov              rsi, qword ptr [rbp + 2008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_95:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_94:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00253_line_mark_α
                        .size            n00252_deref_bx, .-n00252_deref_bx
                        .type            n00253_line_mark_bx, @function
n00253_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00254_call_icon_α
                        .size            n00253_line_mark_bx, .-n00253_line_mark_bx
                        .type            n00254_call_icon_bx, @function
n00254_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_icon_α:       mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1976], rax
                        .section         .rodata
.Lcall_icon_α_rkfn919:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn919]
                        lea              rsi, [rbp + 1968]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_96:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_97:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_620_af
                                                                              jmp   .Ldisjunction_γ_620_as
n00254_call_icon_β:                                                             jmp   .Ldisjunction_ω_620_af
                        .size            n00254_call_icon_bx, .-n00254_call_icon_bx
                        .type            n00209_lit_string_bx, @function
n00209_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_lit_string_α:      mov              qword ptr [rbp + 1856], 2            # result
                        mov              dword ptr [rbp + 1860], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_920_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n00255_lit_integer_α
n00209_lit_string_β:                                                            jmp   .Ldisjunction_ω_620_af
.Llit_string_α_920_0:   .quad            .Llit_string_α_920_0_s
.Llit_string_α_920_0_s: .string          ""
                        .size            n00209_lit_string_bx, .-n00209_lit_string_bx
                        .type            n00255_lit_integer_bx, @function
n00255_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_lit_integer_α:     mov              qword ptr [rbp + 1936], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_921_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n00256_line_mark_α
.Llit_integer_α_921_0:  .quad            0
                        .size            n00255_lit_integer_bx, .-n00255_lit_integer_bx
                        .type            n00256_line_mark_bx, @function
n00256_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00211_scan_tab_α
                        .size            n00256_line_mark_bx, .-n00256_line_mark_bx
                        .type            n00211_scan_tab_bx, @function
n00211_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_925_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_925_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_620_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_620_af
                        mov              qword ptr [rbp + 1904], r14
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
.Lgcsite_options_99:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_98:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n00257_binop_test_α
n00211_scan_tab_β:        mov              r14, qword ptr [rbp + 1904];         jmp   .Ldisjunction_ω_620_af
                        .size            n00211_scan_tab_bx, .-n00211_scan_tab_bx
                        .type            n00257_binop_test_bx, @function
n00257_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_binop_test_α:      mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_103:   push             rax
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
.Lgcsite_options_102:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00211_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_options_101:   mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
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
.Lgcsite_options_100:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_620_as
n00257_binop_test_β:                                                            jmp   n00211_scan_tab_β
                        .size            n00257_binop_test_bx, .-n00257_binop_test_bx
                        .type            n00173_unmark_bx, @function
n00173_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_unmark_α:          mov              rsp, qword ptr [rbp + 688];          jmp   n00258_line_mark_α
                        .size            n00173_unmark_bx, .-n00173_unmark_bx
                        .type            n00258_line_mark_bx, @function
n00258_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00166_bound_α
                        .size            n00258_line_mark_bx, .-n00258_line_mark_bx
                        .type            n00145_scan_bx, @function
n00145_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_scan_α:            mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_104:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00140_unmark_α
n00145_scan_β:                                                                  jmp   n00140_unmark_α
                        .size            n00145_scan_bx, .-n00145_scan_bx
                        .type            n00164_lit_string_bx, @function
n00164_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_lit_string_α:      mov              qword ptr [rbp + 2960], 2            # result
                        mov              dword ptr [rbp + 2964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_933_0]
                        mov              qword ptr [rbp + 2968], rax;         jmp   n00259_scan_match_α
n00164_lit_string_β:                                                            jmp   .Ldisjunction_ω_577_af
.Llit_string_α_933_0:   .quad            .Llit_string_α_933_0_s
.Llit_string_α_933_0_s: .string          "-"
                        .size            n00164_lit_string_bx, .-n00164_lit_string_bx
                        .type            n00259_scan_match_bx, @function
n00259_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_577_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_935_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
.Lgcsite_options_105:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_577_af
                        mov              qword ptr [rbp + 2928], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00260_scan_tab_α
.Lscan_match_α_935_0:   .quad            .Lscan_match_α_935_0_s
.Lscan_match_α_935_0_s: .string          "-"
                        .size            n00259_scan_match_bx, .-n00259_scan_match_bx
                        .type            n00260_scan_tab_bx, @function
n00260_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_scan_tab_α:        mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_111:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_577_af
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
.Lgcsite_options_110:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 2928]
                        mov              rsi, qword ptr [rbp + 2936]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_109:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_108:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_937_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_937_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_577_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_577_af
                        mov              qword ptr [rbp + 2912], r14
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
.Lgcsite_options_107:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_106:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx;         jmp   n00261_lit_integer_α
n00260_scan_tab_β:        mov              r14, qword ptr [rbp + 2912];         jmp   .Ldisjunction_ω_577_af
                        .size            n00260_scan_tab_bx, .-n00260_scan_tab_bx
                        .type            n00261_lit_integer_bx, @function
n00261_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_lit_integer_α:     mov              qword ptr [rbp + 2880], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_938_0]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n00262_line_mark_α
.Llit_integer_α_938_0:  .quad            0
                        .size            n00261_lit_integer_bx, .-n00261_lit_integer_bx
                        .type            n00262_line_mark_bx, @function
n00262_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00263_scan_pos_α
                        .size            n00262_line_mark_bx, .-n00262_line_mark_bx
                        .type            n00263_scan_pos_bx, @function
n00263_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_942_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_942_0:     cmp              rax, 1;                              jl    n00260_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00260_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00260_scan_tab_β
                        mov              qword ptr [rbp + 2848], 3
                        mov              qword ptr [rbp + 2856], rax;         jmp   n00264_conjunction_α
                        .size            n00263_scan_pos_bx, .-n00263_scan_pos_bx
                        .type            n00264_conjunction_bx, @function
n00264_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_conjunction_α:     mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2840], rax;         jmp   n00265_scan_α
n00264_conjunction_β:                                                           jmp   .Ldisjunction_ω_577_af
                        .size            n00264_conjunction_bx, .-n00264_conjunction_bx
                        .type            n00265_scan_bx, @function
n00265_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_scan_α:            mov              rdi, qword ptr [rbp + 480]
                        mov              rsi, qword ptr [rbp + 488]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
.Lgcsite_options_112:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 480]
                        mov              r14, qword ptr [rbp + 488]
                        mov              r15, qword ptr [rbp + 496];          jmp   n00266_var_α
n00265_scan_β:                                                                  jmp   n00266_var_α
                        .size            n00265_scan_bx, .-n00265_scan_bx
                        .type            n00266_var_bx, @function
n00266_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_var_α:             mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0;           jmp   n00267_assign_α
n00266_var_β:                                                                   jmp   n00268_var_α
                        .size            n00266_var_bx, .-n00266_var_bx
                        .type            n00267_assign_bx, @function
n00267_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_assign_α:          mov              rax, qword ptr [rbp + 2800]
                        mov              rdx, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx;         jmp   n00268_var_α
                        .size            n00267_assign_bx, .-n00267_assign_bx
                        .type            n00268_var_bx, @function
n00268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_var_α:             mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00133_line_mark_α
                        .size            n00268_var_bx, .-n00268_var_bx
                        .type            n00140_unmark_bx, @function
n00140_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_unmark_α:          mov              rsp, qword ptr [rbp + 416];          jmp   n00269_line_mark_α
                        .size            n00140_unmark_bx, .-n00140_unmark_bx
                        .type            n00269_line_mark_bx, @function
n00269_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00130_bound_α
                        .size            n00269_line_mark_bx, .-n00269_line_mark_bx
                        .type            n00133_line_mark_bx, @function
n00133_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00270_bound_α
                        .size            n00133_line_mark_bx, .-n00133_line_mark_bx
                        .type            n00270_bound_bx, @function
n00270_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_bound_α:           mov              qword ptr [rbp + 240], rsp;          jmp   n00271_var_ref_α
                        .size            n00270_bound_bx, .-n00270_bound_bx
                        .type            n00271_var_ref_bx, @function
n00271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3984]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00272_var_ref_α
                        .size            n00271_var_ref_bx, .-n00271_var_ref_bx
                        .type            n00272_var_ref_bx, @function
n00272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3648]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00273_deref_α
                        .size            n00272_var_ref_bx, .-n00272_var_ref_bx
                        .type            n00273_deref_bx, @function
n00273_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_deref_α:           mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_114:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00274_line_mark_α
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_113:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00275_line_mark_α
                        .size            n00273_deref_bx, .-n00273_deref_bx
                        .type            n00275_line_mark_bx, @function
n00275_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00276_call_icon_α
                        .size            n00275_line_mark_bx, .-n00275_line_mark_bx
                        .type            n00276_call_icon_bx, @function
n00276_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_call_icon_α:       mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn966:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn966]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_115:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_116:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00274_line_mark_α
                                                                              jmp   n00277_deref_α
n00276_call_icon_β:                                                             jmp   n00274_line_mark_α
                        .size            n00276_call_icon_bx, .-n00276_call_icon_bx
                        .type            n00277_deref_bx, @function
n00277_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_deref_α:           mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_118:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00274_line_mark_α
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_117:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00278_line_mark_α
                        .size            n00277_deref_bx, .-n00277_deref_bx
                        .type            n00278_line_mark_bx, @function
n00278_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00279_call_icon_α
                        .size            n00278_line_mark_bx, .-n00278_line_mark_bx
                        .type            n00279_call_icon_bx, @function
n00279_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_call_icon_α:       mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn971:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn971]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_119:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_120:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00274_line_mark_α
                                                                              jmp   n00280_unmark_α
n00279_call_icon_β:                                                             jmp   n00274_line_mark_α
                        .size            n00279_call_icon_bx, .-n00279_call_icon_bx
                        .type            n00280_unmark_bx, @function
n00280_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_unmark_α:          mov              rsp, qword ptr [rbp + 240];          jmp   n00270_bound_α
                        .size            n00280_unmark_bx, .-n00280_unmark_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00281_var_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00281_var_bx, @function
n00281_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_var_α:             mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00282_return_α
                        .size            n00281_var_bx, .-n00281_var_bx
                        .type            n00282_return_bx, @function
n00282_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00282_return_bx, .-n00282_return_bx
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Loptions_α_978_243
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Loptions_α_978_243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Loptions_α_978_243
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Loptions_α_978_243:    pop              rdx
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
                        lea              rsp, [rbp + 4016]
                        mov              rbp, qword ptr [rbp + 3976];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
options_ω:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Loptions_α_978_244
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Loptions_α_978_244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Loptions_α_978_244
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Loptions_α_978_244:    pop              rdx
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
                        lea              rsp, [rbp + 4016]
                        mov              rbp, qword ptr [rbp + 3976];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            17112496164186
                        .quad            34359738576
                        .quad            .Lgcmap_options_s
                        .quad            3760
                        .quad            40
                        .quad            263882790666240
                        .quad            17596481011952
                        .quad            175921860444416
                        .quad            17596481012128
                        .quad            52776558133680
                        .quad            8804682957280
                        .quad            26392574034408
                        .quad            52776558133760
                        .quad            17596481012272
                        .quad            52776558133824
                        .quad            17596481012336
                        .quad            52776558133888
                        .quad            17596481012400
                        .quad            52776558133952
                        .quad            17596481012464
                        .quad            87960930222848
                        .quad            17596481012560
                        .quad            52776558134112
                        .quad            17596481012624
                        .quad            123145302311840
                        .quad            17596481012752
                        .quad            404620279022624
                        .quad            17596481013136
                        .quad            422212465067424
                        .quad            17596481013536
                        .quad            70368744179504
                        .quad            17596481013616
                        .quad            615726511556480
                        .quad            17596481014192
                        .quad            316659348801984
                        .quad            17596481014496
                        .quad            123145302313712
                        .quad            17596481014624
                        .quad            17592186047344
                        .quad            17596481014656
                        .quad            175921860447120
                        .quad            17596481014832
                        .quad            17592186047552
                        .quad            17596481014864
                        .quad            650910883646560
.Lgcmap_options_s:      .string          "options"
.Lgcsites_options_2:    .quad            121
                        .quad            .Lgcmap_options
                        .quad            .Lgcsite_options_0
                        .quad            65537
                        .quad            .Lgcsite_options_1
                        .quad            65537
                        .quad            .Lgcsite_options_2
                        .quad            65537
                        .quad            .Lgcsite_options_3
                        .quad            65537
                        .quad            .Lgcsite_options_4
                        .quad            65537
                        .quad            .Lgcsite_options_5
                        .quad            65537
                        .quad            .Lgcsite_options_6
                        .quad            65537
                        .quad            .Lgcsite_options_7
                        .quad            65537
                        .quad            .Lgcsite_options_8
                        .quad            65537
                        .quad            .Lgcsite_options_9
                        .quad            65537
                        .quad            .Lgcsite_options_10
                        .quad            65537
                        .quad            .Lgcsite_options_11
                        .quad            65537
                        .quad            .Lgcsite_options_12
                        .quad            65537
                        .quad            .Lgcsite_options_13
                        .quad            65537
                        .quad            .Lgcsite_options_14
                        .quad            65537
                        .quad            .Lgcsite_options_15
                        .quad            65537
                        .quad            .Lgcsite_options_16
                        .quad            65537
                        .quad            .Lgcsite_options_17
                        .quad            65537
                        .quad            .Lgcsite_options_18
                        .quad            65537
                        .quad            .Lgcsite_options_19
                        .quad            65537
                        .quad            .Lgcsite_options_20
                        .quad            65537
                        .quad            .Lgcsite_options_21
                        .quad            65537
                        .quad            .Lgcsite_options_22
                        .quad            65537
                        .quad            .Lgcsite_options_23
                        .quad            65537
                        .quad            .Lgcsite_options_24
                        .quad            65537
                        .quad            .Lgcsite_options_25
                        .quad            65537
                        .quad            .Lgcsite_options_26
                        .quad            65537
                        .quad            .Lgcsite_options_27
                        .quad            65537
                        .quad            .Lgcsite_options_28
                        .quad            65537
                        .quad            .Lgcsite_options_29
                        .quad            65537
                        .quad            .Lgcsite_options_30
                        .quad            65537
                        .quad            .Lgcsite_options_31
                        .quad            65537
                        .quad            .Lgcsite_options_32
                        .quad            65537
                        .quad            .Lgcsite_options_33
                        .quad            65537
                        .quad            .Lgcsite_options_34
                        .quad            65537
                        .quad            .Lgcsite_options_35
                        .quad            65537
                        .quad            .Lgcsite_options_36
                        .quad            65537
                        .quad            .Lgcsite_options_37
                        .quad            65537
                        .quad            .Lgcsite_options_38
                        .quad            65537
                        .quad            .Lgcsite_options_39
                        .quad            65537
                        .quad            .Lgcsite_options_40
                        .quad            65537
                        .quad            .Lgcsite_options_41
                        .quad            65537
                        .quad            .Lgcsite_options_42
                        .quad            65537
                        .quad            .Lgcsite_options_43
                        .quad            65537
                        .quad            .Lgcsite_options_44
                        .quad            65537
                        .quad            .Lgcsite_options_45
                        .quad            65537
                        .quad            .Lgcsite_options_46
                        .quad            65537
                        .quad            .Lgcsite_options_47
                        .quad            65537
                        .quad            .Lgcsite_options_48
                        .quad            65537
                        .quad            .Lgcsite_options_49
                        .quad            65537
                        .quad            .Lgcsite_options_50
                        .quad            65537
                        .quad            .Lgcsite_options_51
                        .quad            65537
                        .quad            .Lgcsite_options_52
                        .quad            65537
                        .quad            .Lgcsite_options_53
                        .quad            65537
                        .quad            .Lgcsite_options_54
                        .quad            65537
                        .quad            .Lgcsite_options_55
                        .quad            65537
                        .quad            .Lgcsite_options_56
                        .quad            65537
                        .quad            .Lgcsite_options_57
                        .quad            65537
                        .quad            .Lgcsite_options_58
                        .quad            65537
                        .quad            .Lgcsite_options_59
                        .quad            65537
                        .quad            .Lgcsite_options_60
                        .quad            65537
                        .quad            .Lgcsite_options_61
                        .quad            65537
                        .quad            .Lgcsite_options_62
                        .quad            65537
                        .quad            .Lgcsite_options_63
                        .quad            65537
                        .quad            .Lgcsite_options_64
                        .quad            65537
                        .quad            .Lgcsite_options_65
                        .quad            65537
                        .quad            .Lgcsite_options_66
                        .quad            65537
                        .quad            .Lgcsite_options_67
                        .quad            65537
                        .quad            .Lgcsite_options_68
                        .quad            65537
                        .quad            .Lgcsite_options_69
                        .quad            65537
                        .quad            .Lgcsite_options_70
                        .quad            65537
                        .quad            .Lgcsite_options_71
                        .quad            65537
                        .quad            .Lgcsite_options_72
                        .quad            65537
                        .quad            .Lgcsite_options_73
                        .quad            65537
                        .quad            .Lgcsite_options_74
                        .quad            65537
                        .quad            .Lgcsite_options_75
                        .quad            65537
                        .quad            .Lgcsite_options_76
                        .quad            65537
                        .quad            .Lgcsite_options_77
                        .quad            65537
                        .quad            .Lgcsite_options_78
                        .quad            65537
                        .quad            .Lgcsite_options_79
                        .quad            65537
                        .quad            .Lgcsite_options_80
                        .quad            65537
                        .quad            .Lgcsite_options_81
                        .quad            65537
                        .quad            .Lgcsite_options_82
                        .quad            65537
                        .quad            .Lgcsite_options_83
                        .quad            65537
                        .quad            .Lgcsite_options_84
                        .quad            65537
                        .quad            .Lgcsite_options_85
                        .quad            65537
                        .quad            .Lgcsite_options_86
                        .quad            65537
                        .quad            .Lgcsite_options_87
                        .quad            65537
                        .quad            .Lgcsite_options_88
                        .quad            65537
                        .quad            .Lgcsite_options_89
                        .quad            65537
                        .quad            .Lgcsite_options_90
                        .quad            65537
                        .quad            .Lgcsite_options_91
                        .quad            65537
                        .quad            .Lgcsite_options_92
                        .quad            65537
                        .quad            .Lgcsite_options_93
                        .quad            65537
                        .quad            .Lgcsite_options_94
                        .quad            65537
                        .quad            .Lgcsite_options_95
                        .quad            65537
                        .quad            .Lgcsite_options_96
                        .quad            65537
                        .quad            .Lgcsite_options_97
                        .quad            65537
                        .quad            .Lgcsite_options_98
                        .quad            65537
                        .quad            .Lgcsite_options_99
                        .quad            65537
                        .quad            .Lgcsite_options_100
                        .quad            65537
                        .quad            .Lgcsite_options_101
                        .quad            65537
                        .quad            .Lgcsite_options_102
                        .quad            65537
                        .quad            .Lgcsite_options_103
                        .quad            65537
                        .quad            .Lgcsite_options_104
                        .quad            65537
                        .quad            .Lgcsite_options_105
                        .quad            65537
                        .quad            .Lgcsite_options_106
                        .quad            65537
                        .quad            .Lgcsite_options_107
                        .quad            65537
                        .quad            .Lgcsite_options_108
                        .quad            65537
                        .quad            .Lgcsite_options_109
                        .quad            65537
                        .quad            .Lgcsite_options_110
                        .quad            65537
                        .quad            .Lgcsite_options_111
                        .quad            65537
                        .quad            .Lgcsite_options_112
                        .quad            65537
                        .quad            .Lgcsite_options_113
                        .quad            65537
                        .quad            .Lgcsite_options_114
                        .quad            65537
                        .quad            .Lgcsite_options_115
                        .quad            65537
                        .quad            .Lgcsite_options_116
                        .quad            65537
                        .quad            .Lgcsite_options_117
                        .quad            65537
                        .quad            .Lgcsite_options_118
                        .quad            65537
                        .quad            .Lgcsite_options_119
                        .quad            65537
                        .quad            .Lgcsite_options_120
                        .quad            65537
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
                        lea              rdi, [rip + __gc_frame_sites]
                        call             rt_gc_frame_sites_install_counted@PLT
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              dword ptr [rax], 0
                        lea              rax, [rip + .Lmain_icn_end]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Lmain_icn_end:         and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              ecx, dword ptr [rax + 12]
                        mov              rax, qword ptr [rax + 0]
                        cmp              ecx, 0;                              jbe   .Lmain_α_978_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_978_220:
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
                        cmp              ecx, 65536;                          jae   .Lmain_α_978_245
                        mov              rsi, 48
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm979:        .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm979]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 1
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rdi + 40], rsi
.Lmain_α_978_245:
main_α_body:
                        .type            n00283_call_bx, @function
n00283_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_call_α:            lea              rdi, [rbp + 864]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:207
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00284_line_mark_α
                                                                              jmp   n00284_line_mark_α
n00283_call_β:                                                                  jmp   n00284_line_mark_α
                        .size            n00283_call_bx, .-n00283_call_bx
                        .type            n00284_line_mark_bx, @function
n00284_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1026_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00285_line_mark_α
.Lline_mark_α_1026_0:   .quad            .Lline_mark_α_1026_0_s
.Lline_mark_α_1026_0_s: .string          "queens.icn"
                        .size            n00284_line_mark_bx, .-n00284_line_mark_bx
                        .type            n00285_line_mark_bx, @function
n00285_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00286_var_ref_α
                        .size            n00285_line_mark_bx, .-n00285_line_mark_bx
                        .type            n00286_var_ref_bx, @function
n00286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00287_lit_string_α
                        .size            n00286_var_ref_bx, .-n00286_var_ref_bx
                        .type            n00287_lit_string_bx, @function
n00287_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_lit_string_α:      mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1031_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00288_deref_α
.Llit_string_α_1031_0:  .quad            .Llit_string_α_1031_0_s
.Llit_string_α_1031_0_s:
                        .string          "n+"
                        .size            n00287_lit_string_bx, .-n00287_lit_string_bx
                        .type            n00288_deref_bx, @function
n00288_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_deref_α:           mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_3:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00289_line_mark_α
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00290_line_mark_α
                        .size            n00288_deref_bx, .-n00288_deref_bx
                        .type            n00290_line_mark_bx, @function
n00290_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00291_call_proc_staged_α
                        .size            n00290_line_mark_bx, .-n00290_line_mark_bx
                        .type            n00291_call_proc_staged_bx, @function
n00291_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1036_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1036_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 32
                        mov              rcx, qword ptr [rbp + 800]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 808]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rbp + 768]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rbp + 776]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_1036_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1036_2
.Lcall_proc_staged_α_1036_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1036_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    n00289_line_mark_α
                                                                              jmp   n00292_deref_α
n00291_call_proc_staged_β:
                                                                              jmp   n00289_line_mark_α
.Lcall_proc_staged_β_1036_0:
                        .quad            .Lcall_proc_staged_β_1036_0_s
.Lcall_proc_staged_β_1036_0_s:
                        .string          "options"
                        .size            n00291_call_proc_staged_bx, .-n00291_call_proc_staged_bx
                        .type            n00292_deref_bx, @function
n00292_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_deref_α:           mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_5:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00289_line_mark_α
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00293_assign_α
                        .size            n00292_deref_bx, .-n00292_deref_bx
                        .type            n00293_assign_bx, @function
n00293_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_assign_α:          mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00289_line_mark_α
                        .size            n00293_assign_bx, .-n00293_assign_bx
                        .type            n00289_line_mark_bx, @function
n00289_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00294_disjunction_α
                        .size            n00289_line_mark_bx, .-n00289_line_mark_bx
                        .type            n00294_disjunction_bx, @function
n00294_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_disjunction_α:     mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0;            jmp   n00295_var_ref_α
.Ldisjunction_γ_991_as: mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1042_0
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00296_assign_α
.Ldisjunction_α_1042_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1042_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00296_assign_α
.Ldisjunction_α_1042_1:                                                       jmp   n00296_assign_α
n00294_disjunction_β:     mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_991_af
                                                                              jmp   .Ldisjunction_ω_991_af
.Ldisjunction_γ_991_af:
.Ldisjunction_ω_991_af: add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1;                              je    n00297_lit_integer_α
                                                                              jmp   n00298_line_mark_α
                        .size            n00294_disjunction_bx, .-n00294_disjunction_bx
                        .type            n00296_assign_bx, @function
n00296_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_assign_α:          mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00298_line_mark_α
                        .size            n00296_assign_bx, .-n00296_assign_bx
                        .type            n00298_line_mark_bx, @function
n00298_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00299_disjunction_α
                        .size            n00298_line_mark_bx, .-n00298_line_mark_bx
                        .type            n00299_disjunction_bx, @function
n00299_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_disjunction_α:     mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0;            jmp   n00300_lit_integer_α
.Ldisjunction_γ_994_as: mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1047_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00301_line_mark_α
.Ldisjunction_α_1047_0:                                                       jmp   n00301_line_mark_α
n00299_disjunction_β:     mov              eax, dword ptr [rbp + 384];          jmp   n00301_line_mark_α
.Ldisjunction_γ_994_af:
.Ldisjunction_ω_994_af: add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384];          jmp   n00301_line_mark_α
                        .size            n00299_disjunction_bx, .-n00299_disjunction_bx
                        .type            n00300_lit_integer_bx, @function
n00300_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_lit_integer_α:     mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1048_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00302_var_α
n00300_lit_integer_β:                                                           jmp   .Ldisjunction_ω_994_af
.Llit_integer_α_1048_0: .quad            0
                        .size            n00300_lit_integer_bx, .-n00300_lit_integer_bx
                        .type            n00302_var_bx, @function
n00302_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 512], rax           # result
                        mov              qword ptr [rbp + 520], rdx;          jmp   n00303_binop_test_α
                        .size            n00302_var_bx, .-n00302_var_bx
                        .type            n00303_binop_test_bx, @function
n00303_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_binop_test_α:      mov              eax, dword ptr [rbp + 512]
                        cmp              al, 112;                             je    .Lbinop_test_α_1050_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              al, 112;                             je    .Lbinop_test_α_1050_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1050_2
                        mov              eax, dword ptr [rbp + 496]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1050_2
.Lbinop_test_α_1050_1:  mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 504]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_994_af
                        mov              rcx, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rcx
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rcx;          jmp   n00304_lit_string_α
.Lbinop_test_α_1050_0:  mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 6
                        lea              r9, [rbp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
.Lgcsite_main_11:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_1050_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_994_af
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
.Lgcsite_main_10:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00304_lit_string_α
.Lbinop_test_α_1050_2:  mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 6
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_main_9:        push             rax
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
.Lgcsite_main_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_994_af
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        lea              r8, [rbp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
.Lgcsite_main_7:        mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00304_lit_string_α
                        .size            n00303_binop_test_bx, .-n00303_binop_test_bx
                        .type            n00304_lit_string_bx, @function
n00304_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_lit_string_α:      mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 37
                        mov              rax, qword ptr [rip + .Llit_string_α_1051_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00305_line_mark_α
.Llit_string_α_1051_0:  .quad            .Llit_string_α_1051_0_s
.Llit_string_α_1051_0_s:
                        .string          "-n needs a positive numeric parameter"
                        .size            n00304_lit_string_bx, .-n00304_lit_string_bx
                        .type            n00305_line_mark_bx, @function
n00305_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00306_call_icon_α
                        .size            n00305_line_mark_bx, .-n00305_line_mark_bx
                        .type            n00306_call_icon_bx, @function
n00306_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_call_icon_α:      mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1055: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1055]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_12:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_13:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00301_line_mark_α
                                                                              jmp   .Ldisjunction_γ_994_as
n00306_call_icon_β:                                                            jmp   n00301_line_mark_α
                        .size            n00306_call_icon_bx, .-n00306_call_icon_bx
                        .type            n00301_line_mark_bx, @function
n00301_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00307_var_ref_α
                        .size            n00301_line_mark_bx, .-n00301_line_mark_bx
                        .type            n00307_var_ref_bx, @function
n00307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00308_deref_α
                        .size            n00307_var_ref_bx, .-n00307_var_ref_bx
                        .type            n00308_deref_bx, @function
n00308_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_deref_α:          mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00309_line_mark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_14:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00310_line_mark_α
                        .size            n00308_deref_bx, .-n00308_deref_bx
                        .type            n00310_line_mark_bx, @function
n00310_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00311_call_icon_α
                        .size            n00310_line_mark_bx, .-n00310_line_mark_bx
                        .type            n00311_call_icon_bx, @function
n00311_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_call_icon_α:      mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1064: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1064]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_16:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00309_line_mark_α
                                                                              jmp   n00312_assign_α
n00311_call_icon_β:                                                            jmp   n00309_line_mark_α
                        .size            n00311_call_icon_bx, .-n00311_call_icon_bx
                        .type            n00312_assign_bx, @function
n00312_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_assign_α:         mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00309_line_mark_α
                        .size            n00312_assign_bx, .-n00312_assign_bx
                        .type            n00309_line_mark_bx, @function
n00309_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00313_var_ref_α
                        .size            n00309_line_mark_bx, .-n00309_line_mark_bx
                        .type            n00313_var_ref_bx, @function
n00313_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00314_lit_string_α
                        .size            n00313_var_ref_bx, .-n00313_var_ref_bx
                        .type            n00314_lit_string_bx, @function
n00314_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_lit_string_α:     mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_1070_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n00315_deref_α
.Llit_string_α_1070_0:  .quad            .Llit_string_α_1070_0_s
.Llit_string_α_1070_0_s:
                        .string          "-Queens:"
                        .size            n00314_lit_string_bx, .-n00314_lit_string_bx
                        .type            n00315_deref_bx, @function
n00315_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_deref_α:          mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_19:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00316_line_mark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_18:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00317_line_mark_α
                        .size            n00315_deref_bx, .-n00315_deref_bx
                        .type            n00317_line_mark_bx, @function
n00317_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00318_call_icon_α
                        .size            n00317_line_mark_bx, .-n00317_line_mark_bx
                        .type            n00318_call_icon_bx, @function
n00318_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_call_icon_α:      mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1075: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1075]
                        lea              rsi, [rbp + 128]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_20:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_21:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00316_line_mark_α
                                                                              jmp   n00316_line_mark_α
n00318_call_icon_β:                                                            jmp   n00316_line_mark_α
                        .size            n00318_call_icon_bx, .-n00318_call_icon_bx
                        .type            n00316_line_mark_bx, @function
n00316_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00319_lit_integer_α
                        .size            n00316_line_mark_bx, .-n00316_line_mark_bx
                        .type            n00319_lit_integer_bx, @function
n00319_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_lit_integer_α:    mov              qword ptr [rbp + 32], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1078_0]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00320_line_mark_α
.Llit_integer_α_1078_0: .quad            1
                        .size            n00319_lit_integer_bx, .-n00319_lit_integer_bx
                        .type            n00320_line_mark_bx, @function
n00320_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00321_call_proc_staged_α
                        .size            n00320_line_mark_bx, .-n00320_line_mark_bx
                        .type            n00321_call_proc_staged_bx, @function
n00321_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1082_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1082_3]
                        push             rcx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        and              rcx, 4095
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        add              rcx, rcx
                        mov              rax, qword ptr [rip + rt_stno_stack@GOTPCREL]
                        add              rcx, rax
                        lea              rax, [rsp + 0]
                        mov              qword ptr [rcx + 16], rax
                        mov              qword ptr [rcx + 24], r12
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rcx + 48], rax
                        mov              rax, qword ptr [rip + g_core_errjmp_n@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        movsxd           rax, eax
                        mov              qword ptr [rcx + 32], rax
                        mov              rcx, qword ptr [rsp + 0]
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_1082_3:
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1082_2
.Lcall_proc_staged_α_1082_4:
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1082_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00322_deref_α
n00321_call_proc_staged_β:
                                                                              jmp   main_ω
.Lcall_proc_staged_β_1082_0:
                        .quad            .Lcall_proc_staged_β_1082_0_s
.Lcall_proc_staged_β_1082_0_s:
                        .string          "q"
                        .size            n00321_call_proc_staged_bx, .-n00321_call_proc_staged_bx
                        .type            n00322_deref_bx, @function
n00322_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_deref_α:          mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_23:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   main_ω
                        .size            n00322_deref_bx, .-n00322_deref_bx
                        .type            n00297_lit_integer_bx, @function
n00297_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_lit_integer_α:    mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1084_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   .Ldisjunction_γ_991_as
n00297_lit_integer_β:                                                          jmp   .Ldisjunction_ω_991_af
.Llit_integer_α_1084_0: .quad            6
                        .size            n00297_lit_integer_bx, .-n00297_lit_integer_bx
                        .type            n00295_var_ref_bx, @function
n00295_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00323_lit_string_α
n00295_var_ref_β:                                                              jmp   .Ldisjunction_ω_991_af
                        .size            n00295_var_ref_bx, .-n00295_var_ref_bx
                        .type            n00323_lit_string_bx, @function
n00323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_lit_string_α:     mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1087_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00324_subscript_α
.Llit_string_α_1087_0:  .quad            .Llit_string_α_1087_0_s
.Llit_string_α_1087_0_s:
                        .string          "n"
                        .size            n00323_lit_string_bx, .-n00323_lit_string_bx
                        .type            n00324_subscript_bx, @function
n00324_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_subscript_α:      mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_25:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_991_af
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:67
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_24:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00325_deref_α
                        .size            n00324_subscript_bx, .-n00324_subscript_bx
                        .type            n00325_deref_bx, @function
n00325_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_deref_α:          mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_27:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_991_af
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_26:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00326_unop_test_α
                        .size            n00325_deref_bx, .-n00325_deref_bx
                        .type            n00326_unop_test_bx, @function
n00326_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_unop_test_α:      mov              eax, dword ptr [rbp + 656]
                        cmp              al, 104;                             je    .Ldisjunction_ω_991_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_991_af
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax;          jmp   .Ldisjunction_γ_991_as
n00326_unop_test_β:                                                            jmp   .Ldisjunction_ω_991_af
                        .size            n00326_unop_test_bx, .-n00326_unop_test_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lmain_α_1090_243
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lmain_α_1090_243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lmain_α_1090_243
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lmain_α_1090_243:      pop              rdx
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
                        lea              rsp, [rbp + 992]
                        mov              rbp, qword ptr [rbp + 984];          jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        push             rdx
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        cmp              ecx, 65536;                          jae   .Lmain_α_1090_244
                        mov              rax, 48
                        imul             rcx, rax
                        mov              rdx, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdx, rcx
                        mov              rcx, qword ptr [rdx + 24]
                        cmp              rcx, 0;                              jle   .Lmain_α_1090_244
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rcx, qword ptr [rdx + 32]
                        test             rcx, rcx;                            je    .Lmain_α_1090_244
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
.Lmain_α_1090_244:      pop              rdx
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
                        lea              rsp, [rbp + 992]
                        mov              rbp, qword ptr [rbp + 984];          jmp   qword ptr [rsp + 8]
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
.Lgcsites_main_3:       .quad            28
                        .quad            .Lgcmap_main
                        .quad            .Lgcsite_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_1
                        .quad            65537
                        .quad            .Lgcsite_main_2
                        .quad            65537
                        .quad            .Lgcsite_main_3
                        .quad            65537
                        .quad            .Lgcsite_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_6
                        .quad            65537
                        .quad            .Lgcsite_main_7
                        .quad            65537
                        .quad            .Lgcsite_main_8
                        .quad            65537
                        .quad            .Lgcsite_main_9
                        .quad            65537
                        .quad            .Lgcsite_main_10
                        .quad            65537
                        .quad            .Lgcsite_main_11
                        .quad            65537
                        .quad            .Lgcsite_main_12
                        .quad            65537
                        .quad            .Lgcsite_main_13
                        .quad            65537
                        .quad            .Lgcsite_main_14
                        .quad            65537
                        .quad            .Lgcsite_main_15
                        .quad            65537
                        .quad            .Lgcsite_main_16
                        .quad            65537
                        .quad            .Lgcsite_main_17
                        .quad            65537
                        .quad            .Lgcsite_main_18
                        .quad            65537
                        .quad            .Lgcsite_main_19
                        .quad            65537
                        .quad            .Lgcsite_main_20
                        .quad            65537
                        .quad            .Lgcsite_main_21
                        .quad            65537
                        .quad            .Lgcsite_main_22
                        .quad            65537
                        .quad            .Lgcsite_main_23
                        .quad            65537
                        .quad            .Lgcsite_main_24
                        .quad            65537
                        .quad            .Lgcsite_main_25
                        .quad            65537
                        .quad            .Lgcsite_main_26
                        .quad            65537
                        .quad            .Lgcsite_main_27
                        .quad            65537
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
.Lstartup_ipp00327_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00327_0
                        .quad            0
.Lstartup_iln00327_0:    .string          "i"
.Lstartup_iln00327_1:    .string          "opts"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00327_0
                        .quad            .Lstartup_iln00327_1
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
                        .long            2304
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__q
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames0
                        .long            1
                        .long            0
                        .long            2320
                        .long            48
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
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            1616
                        .long            48
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
                        .long            3680
                        .long            3744
                        .long            3696
                        .long            3632
                        .long            3648
                        .long            3712
                        .long            3728
                        .long            -1
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__options
                        .quad            0
                        .quad            0
                        .quad            .Lstartup_ipnames2
                        .long            2
                        .long            0
                        .long            3760
                        .long            48
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
                        .section         .rodata
.Lstartup_rootcall:     .string          "main"
                        .align           8
.Lstartup_prec_root:    .quad            .Lstartup_rootcall
                        .quad            main_α
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            0
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec_root]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            4
                        .quad            .Lgcmap_q
                        .quad            .Lgcmap_show
                        .quad            .Lgcmap_options
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            4
                        .quad            .Lgcsites_q_0
                        .quad            .Lgcsites_show_1
                        .quad            .Lgcsites_options_2
                        .quad            .Lgcsites_main_3
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
