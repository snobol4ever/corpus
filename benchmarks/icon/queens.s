                        .intel_syntax    noprefix
                        .text
                        .file            1 "queens.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
FN__q:
                        sub              rsp, 2368
                        lea              rax, [rip + .Lgcmap_q]
                        mov              qword ptr [rsp + 2280], rax
                        mov              dword ptr [rsp + 2272], 160
                        mov              dword ptr [rsp + 2276], 2368
                        mov              eax, 0
                        mov              qword ptr [rsp + 2360], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2272
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
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm0:        .string          "q"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm0]
                        mov              esi, 1
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
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
1:
.Lq_α_0_247:            mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
q_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              r11, 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_129_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_129_0:    .quad            .Lline_mark_α_129_0_s
.Lline_mark_α_129_0_s:  .string          "queens.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 71;             jmp   n3_line_mark_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              r11, 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 72;             jmp   n4_disjunction_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_disjunction_bx, @function
n4_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_disjunction_α:       mov              r11, 4
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1528], 0
                        mov              dword ptr [rbp + 1536], 0;           jmp   n5_var_ref_α
.Ldisjunction_γ_4_as:   mov              r11, 4
                        mov              eax, dword ptr [rbp + 1536]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_135_0
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n41_line_mark_α
.Ldisjunction_α_135_0:                                                        jmp   n41_line_mark_α
n4_disjunction_β:       mov              r11, 4
                        mov              eax, dword ptr [rbp + 1536];         jmp   n41_line_mark_α
.Ldisjunction_γ_4_af:   mov              r11, 4
.Ldisjunction_ω_4_af:   mov              r11, 4
                        add              dword ptr [rbp + 1536], 1
                        mov              eax, dword ptr [rbp + 1536];         jmp   n41_line_mark_α
                        .size            n4_disjunction_bx, .-n4_disjunction_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        mov              rdx, 1879052368                      # q__INITFLAG__0
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n6_nulltest_var_α
n5_var_ref_β:           mov              r11, 5;                              jmp   .Ldisjunction_ω_4_af
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_nulltest_var_bx, @function
n6_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_nulltest_var_α:      mov              r11, 6
                        mov              eax, dword ptr [rbp + 2144]
                        cmp              al, 104;                             je    .Ldisjunction_ω_4_af
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_4_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_4_af
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2168], rax
                        push             rax                                  # gc_poll bb_unop.cpp:55
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
1:                                                                            jmp   n7_lit_integer_α
                        .size            n6_nulltest_var_bx, .-n6_nulltest_var_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rbp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n8_assign_var_α
.Llit_integer_α_139_0:  .quad            1
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_assign_var_bx, @function
n8_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_var_α:        mov              r11, 8
                        mov              rdi, qword ptr [rbp + 2160]
                        mov              rsi, qword ptr [rbp + 2168]
                        mov              rdx, qword ptr [rbp + 2192]
                        mov              rcx, qword ptr [rbp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_4_af
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
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
1:                                                                            jmp   n9_line_mark_α
                        .size            n8_assign_var_bx, .-n8_assign_var_bx
                        .type            n9_line_mark_bx, @function
n9_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_line_mark_α:         mov              r11, 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n10_lit_integer_α
                        .size            n9_line_mark_bx, .-n9_line_mark_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 10
                        mov              qword ptr [rbp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_143_0]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n11_var_α
.Llit_integer_α_143_0:  .quad            2
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_var_bx, @function
n11_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 11
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 2080], rax          # result
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n12_coerce_numeric_α
                        .size            n11_var_bx, .-n11_var_bx
                        .type            n12_coerce_numeric_bx, @function
n12_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   mov              r11, 12
                        mov              eax, dword ptr [rbp + 2080]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_146_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_146_0
                        mov              eax, dword ptr [rbp + 2064]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_146_0
.Lcoerce_numeric_α_146_1:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n13_binop_α
.Lcoerce_numeric_α_146_0:
                        lea              rdi, [rbp + 2080]
                        lea              rsi, [rbp + 2064]
                        lea              rdx, [rbp + 2048]
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
1:                      mov              eax, dword ptr [rbp + 2048]
                        cmp              al, 104;                             je    n21_line_mark_α
                                                                              jmp   n13_binop_α
                        .size            n12_coerce_numeric_bx, .-n12_coerce_numeric_bx
                        .type            n13_binop_bx, @function
n13_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:            mov              r11, 13
                        mov              eax, 3
                        mov              ecx, dword ptr [rbp + 2048]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_147_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 2056]
                        imul             rax, rdx;                            jo    .Lbinop_α_147_0
                        mov              qword ptr [rbp + 2032], 3
                        mov              qword ptr [rbp + 2040], rax;         jmp   .Lbinop_α_147_7
.Lbinop_α_147_2:        and              edx, 1;                              jz    .Lbinop_α_147_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 2056]
                        cmp              al, 5;                               je    .Lbinop_α_147_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_147_4
.Lbinop_α_147_3:        movq             xmm0, rsi
.Lbinop_α_147_4:        cmp              cl, 5;                               je    .Lbinop_α_147_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_147_6
.Lbinop_α_147_5:        movq             xmm1, rdi
.Lbinop_α_147_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_147_0
                        mov              qword ptr [rbp + 2032], 5
                        mov              qword ptr [rbp + 2040], rax
.Lbinop_α_147_7:                                                              jmp   n14_lit_integer_α
.Lbinop_α_147_0:        mov              rdi, qword ptr [rbp + 2064]
                        mov              rsi, qword ptr [rbp + 2072]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n21_line_mark_α
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
n14_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rbp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_148_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n15_coerce_numeric_α
.Llit_integer_α_148_0:  .quad            1
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_coerce_numeric_bx, @function
n15_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_coerce_numeric_α:   mov              r11, 15
                        mov              eax, dword ptr [rbp + 2032]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_150_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_150_0
                        mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_150_0
.Lcoerce_numeric_α_150_1:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2024], rax;         jmp   n16_binop_α
.Lcoerce_numeric_α_150_0:
                        lea              rdi, [rbp + 2032]
                        lea              rsi, [rbp + 2096]
                        lea              rdx, [rbp + 2016]
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
1:                      mov              eax, dword ptr [rbp + 2016]
                        cmp              al, 104;                             je    n21_line_mark_α
                                                                              jmp   n16_binop_α
                        .size            n15_coerce_numeric_bx, .-n15_coerce_numeric_bx
                        .type            n16_binop_bx, @function
n16_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            mov              r11, 16
                        mov              eax, dword ptr [rbp + 2016]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_151_2
                        mov              rax, qword ptr [rbp + 2024]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_151_0
                        mov              qword ptr [rbp + 2000], 3
                        mov              qword ptr [rbp + 2008], rax;         jmp   .Lbinop_α_151_7
.Lbinop_α_151_2:        and              edx, 1;                              jz    .Lbinop_α_151_0
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_151_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_151_4
.Lbinop_α_151_3:        movq             xmm0, rsi
.Lbinop_α_151_4:        cmp              cl, 5;                               je    .Lbinop_α_151_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_151_6
.Lbinop_α_151_5:        movq             xmm1, rdi
.Lbinop_α_151_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_151_0
                        mov              qword ptr [rbp + 2000], 5
                        mov              qword ptr [rbp + 2008], rax
.Lbinop_α_151_7:                                                              jmp   n17_lit_integer_α
.Lbinop_α_151_0:        mov              rdi, qword ptr [rbp + 2016]
                        mov              rsi, qword ptr [rbp + 2024]
                        mov              rdx, qword ptr [rbp + 2096]
                        mov              rcx, qword ptr [rbp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n21_line_mark_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
n17_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_152_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n18_line_mark_α
.Llit_integer_α_152_0:  .quad            0
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_line_mark_bx, @function
n18_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_line_mark_α:        mov              r11, 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n19_call_icon_α
                        .size            n18_line_mark_bx, .-n18_line_mark_bx
                        .type            n19_call_icon_bx, @function
n19_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_icon_α:        mov              r11, 19
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        .section         .rodata
.Lcall_icon_α_rkfn156:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn156]
                        lea              rsi, [rbp + 1952]
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
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              al, 104;                             je    n21_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
n19_call_icon_β:        mov              r11, 19;                             jmp   n21_line_mark_α
                        .size            n19_call_icon_bx, .-n19_call_icon_bx
                        .type            n20_assign_bx, @function
n20_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [r9 + 32], rax             # q__STATIC__up
                        mov              qword ptr [r9 + 40], rdx;            jmp   n21_line_mark_α
                        .size            n20_assign_bx, .-n20_assign_bx
                        .type            n21_line_mark_bx, @function
n21_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_line_mark_α:        mov              r11, 21
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 74;             jmp   n22_lit_integer_α
                        .size            n21_line_mark_bx, .-n21_line_mark_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rbp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_160_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n23_var_α
.Llit_integer_α_160_0:  .quad            2
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 23
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1872], rax          # result
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n24_coerce_numeric_α
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_coerce_numeric_bx, @function
n24_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_coerce_numeric_α:   mov              r11, 24
                        mov              eax, dword ptr [rbp + 1872]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_163_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_163_0
                        mov              eax, dword ptr [rbp + 1856]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_163_0
.Lcoerce_numeric_α_163_1:
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n25_binop_α
.Lcoerce_numeric_α_163_0:
                        lea              rdi, [rbp + 1872]
                        lea              rsi, [rbp + 1856]
                        lea              rdx, [rbp + 1840]
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
1:                      mov              eax, dword ptr [rbp + 1840]
                        cmp              al, 104;                             je    n33_line_mark_α
                                                                              jmp   n25_binop_α
                        .size            n24_coerce_numeric_bx, .-n24_coerce_numeric_bx
                        .type            n25_binop_bx, @function
n25_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_binop_α:            mov              r11, 25
                        mov              eax, 3
                        mov              ecx, dword ptr [rbp + 1840]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_164_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 1848]
                        imul             rax, rdx;                            jo    .Lbinop_α_164_0
                        mov              qword ptr [rbp + 1824], 3
                        mov              qword ptr [rbp + 1832], rax;         jmp   .Lbinop_α_164_7
.Lbinop_α_164_2:        and              edx, 1;                              jz    .Lbinop_α_164_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 1848]
                        cmp              al, 5;                               je    .Lbinop_α_164_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_164_4
.Lbinop_α_164_3:        movq             xmm0, rsi
.Lbinop_α_164_4:        cmp              cl, 5;                               je    .Lbinop_α_164_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_164_6
.Lbinop_α_164_5:        movq             xmm1, rdi
.Lbinop_α_164_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_164_0
                        mov              qword ptr [rbp + 1824], 5
                        mov              qword ptr [rbp + 1832], rax
.Lbinop_α_164_7:                                                              jmp   n26_lit_integer_α
.Lbinop_α_164_0:        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1840]
                        mov              rcx, qword ptr [rbp + 1848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_line_mark_α
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
n26_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rbp + 1888], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_165_0]
                        mov              qword ptr [rbp + 1896], rax;         jmp   n27_coerce_numeric_α
.Llit_integer_α_165_0:  .quad            1
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_coerce_numeric_bx, @function
n27_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   mov              r11, 27
                        mov              eax, dword ptr [rbp + 1824]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_167_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_167_0
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_167_0
.Lcoerce_numeric_α_167_1:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n28_binop_α
.Lcoerce_numeric_α_167_0:
                        lea              rdi, [rbp + 1824]
                        lea              rsi, [rbp + 1888]
                        lea              rdx, [rbp + 1808]
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
1:                      mov              eax, dword ptr [rbp + 1808]
                        cmp              al, 104;                             je    n33_line_mark_α
                                                                              jmp   n28_binop_α
                        .size            n27_coerce_numeric_bx, .-n27_coerce_numeric_bx
                        .type            n28_binop_bx, @function
n28_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              r11, 28
                        mov              eax, dword ptr [rbp + 1808]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_168_2
                        mov              rax, qword ptr [rbp + 1816]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_168_0
                        mov              qword ptr [rbp + 1792], 3
                        mov              qword ptr [rbp + 1800], rax;         jmp   .Lbinop_α_168_7
.Lbinop_α_168_2:        and              edx, 1;                              jz    .Lbinop_α_168_0
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_168_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_168_4
.Lbinop_α_168_3:        movq             xmm0, rsi
.Lbinop_α_168_4:        cmp              cl, 5;                               je    .Lbinop_α_168_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_168_6
.Lbinop_α_168_5:        movq             xmm1, rdi
.Lbinop_α_168_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_168_0
                        mov              qword ptr [rbp + 1792], 5
                        mov              qword ptr [rbp + 1800], rax
.Lbinop_α_168_7:                                                              jmp   n29_lit_integer_α
.Lbinop_α_168_0:        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              rdx, qword ptr [rbp + 1888]
                        mov              rcx, qword ptr [rbp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_sub_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_line_mark_α
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
n29_lit_integer_α:      mov              r11, 29
                        mov              qword ptr [rbp + 1904], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n30_line_mark_α
.Llit_integer_α_169_0:  .quad            0
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_line_mark_bx, @function
n30_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_line_mark_α:        mov              r11, 30
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 74;             jmp   n31_call_icon_α
                        .size            n30_line_mark_bx, .-n30_line_mark_bx
                        .type            n31_call_icon_bx, @function
n31_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_icon_α:        mov              r11, 31
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1752], rax
                        .section         .rodata
.Lcall_icon_α_rkfn173:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn173]
                        lea              rsi, [rbp + 1744]
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
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    n33_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
n31_call_icon_β:        mov              r11, 31;                             jmp   n33_line_mark_α
                        .size            n31_call_icon_bx, .-n31_call_icon_bx
                        .type            n32_assign_bx, @function
n32_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_α:           mov              r11, 32
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
                        mov              qword ptr [r9 + 48], rax             # q__STATIC__down
                        mov              qword ptr [r9 + 56], rdx;            jmp   n33_line_mark_α
                        .size            n32_assign_bx, .-n32_assign_bx
                        .type            n33_line_mark_bx, @function
n33_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_line_mark_α:        mov              r11, 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n34_var_ref_α
                        .size            n33_line_mark_bx, .-n33_line_mark_bx
                        .type            n34_var_ref_bx, @function
n34_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n35_lit_integer_α
                        .size            n34_var_ref_bx, .-n34_var_ref_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rbp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_179_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n36_deref_α
.Llit_integer_α_179_0:  .quad            0
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_deref_bx, @function
n36_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_deref_α:            mov              r11, 36
                        mov              rdi, qword ptr [rbp + 1648]
                        mov              rsi, qword ptr [rbp + 1656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n41_line_mark_α
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
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
n37_line_mark_α:        mov              r11, 37
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n38_call_icon_α
                        .size            n37_line_mark_bx, .-n37_line_mark_bx
                        .type            n38_call_icon_bx, @function
n38_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_icon_α:        mov              r11, 38
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lcall_icon_α_rkfn184:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn184]
                        lea              rsi, [rbp + 1600]
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
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    n41_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
n38_call_icon_β:        mov              r11, 38;                             jmp   n41_line_mark_α
                        .size            n38_call_icon_bx, .-n38_call_icon_bx
                        .type            n39_assign_bx, @function
n39_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_assign_α:           mov              r11, 39
                        mov              rax, qword ptr [rbp + 1584]
                        mov              rdx, qword ptr [rbp + 1592]
                        mov              qword ptr [r9 + 64], rax             # q__STATIC__rows
                        mov              qword ptr [r9 + 72], rdx
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n40_conjunction_α
                        .size            n39_assign_bx, .-n39_assign_bx
                        .type            n40_conjunction_bx, @function
n40_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_conjunction_α:      mov              r11, 40
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1560], rax;         jmp   .Ldisjunction_γ_4_as
n40_conjunction_β:      mov              r11, 40;                             jmp   n41_line_mark_α
                        .size            n40_conjunction_bx, .-n40_conjunction_bx
                        .type            n41_line_mark_bx, @function
n41_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_line_mark_α:        mov              r11, 41
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n42_lit_integer_α
                        .size            n41_line_mark_bx, .-n41_line_mark_bx
                        .type            n42_lit_integer_bx, @function
n42_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n43_var_ref_α
.Llit_integer_α_189_0:  .quad            0
                        .size            n42_lit_integer_bx, .-n42_lit_integer_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                      # q__STATIC__rows
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n44_lit_integer_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              r11, 44
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n45_var_α
.Llit_integer_α_192_0:  .quad            1
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_var_bx, @function
n45_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              mov              r11, 45
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 688], rax           # result
                        mov              qword ptr [rbp + 696], rdx;          jmp   n46_to_α
                        .size            n45_var_bx, .-n45_var_bx
                        .type            n46_to_bx, @function
n46_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_to_α:               mov              r11, 46
                        mov              rdi, qword ptr [rbp + 672]
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
                        push             rax                                  # gc_poll bb_to.cpp:44
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
                        push             rax                                  # gc_poll bb_to.cpp:128
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
                        push             rax                                  # gc_poll bb_to.cpp:44
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
                        push             rax                                  # gc_poll bb_to.cpp:135
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
.Lto_α_195_0:           mov              rax, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 696]
                        cmp              rax, rcx;                            jg    q_ω
                        mov              qword ptr [rbp + 640], 3
                        mov              qword ptr [rbp + 648], rax;          jmp   n47_assign_α
n46_to_β:               mov              r11, 46
                        inc              qword ptr [rbp + 656];               jo    q_ω
                                                                              jmp   .Lto_α_195_0
                        .size            n46_to_bx, .-n46_to_bx
                        .type            n47_assign_bx, @function
n47_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 47
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n48_subscript_α
                        .size            n47_assign_bx, .-n47_assign_bx
                        .type            n48_subscript_bx, @function
n48_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_subscript_α:        mov              r11, 48
                        mov              rdi, qword ptr [rbp + 608]
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n49_deref_α
                        .size            n48_subscript_bx, .-n48_subscript_bx
                        .type            n49_deref_bx, @function
n49_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_deref_α:            mov              r11, 49
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n50_binop_test_α
                        .size            n49_deref_bx, .-n49_deref_bx
                        .type            n50_binop_test_bx, @function
n50_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_binop_test_α:       mov              r11, 50
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 112;                             je    .Lbinop_test_α_199_0
                        mov              eax, dword ptr [rbp + 720]
                        cmp              al, 112;                             je    .Lbinop_test_α_199_0
                        mov              eax, dword ptr [rbp + 592]
                        cmp              al, 3;                               jne   .Lbinop_test_α_199_2
                        mov              eax, dword ptr [rbp + 720]
                        cmp              al, 3;                               jne   .Lbinop_test_α_199_2
.Lbinop_test_α_199_1:   mov              rax, qword ptr [rbp + 600]
                        mov              rcx, qword ptr [rbp + 728]
                        cmp              rax, rcx;                            jne   n46_to_β
                        mov              rcx, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 576], rcx
                        mov              rcx, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 584], rcx;          jmp   n51_var_ref_α
.Lbinop_test_α_199_0:   mov              rdi, qword ptr [rbp + 592]
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
                        test             eax, eax;                            je    .Lbinop_test_α_199_2
                        cmp              eax, 1;                              je    n46_to_β
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
1:                                                                            jmp   n51_var_ref_α
.Lbinop_test_α_199_2:   mov              rdi, qword ptr [rbp + 592]
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
1:                      test             eax, eax;                            jz    n46_to_β
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
1:                                                                            jmp   n51_var_ref_α
                        .size            n50_binop_test_bx, .-n50_binop_test_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # q__STATIC__up
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n52_var_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              mov              r11, 52
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 856], rax;          jmp   n53_var_α
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              r11, 53
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 864], rax           # result
                        mov              qword ptr [rbp + 872], rdx;          jmp   n54_coerce_numeric_α
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_coerce_numeric_bx, @function
n54_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_coerce_numeric_α:   mov              r11, 54
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_206_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_206_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_206_0
.Lcoerce_numeric_α_206_1:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax;          jmp   n55_coerce_numeric_α
.Lcoerce_numeric_α_206_0:
                        lea              rdi, [rbp + 864]
                        lea              rsi, [rbp + 2256]
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n55_coerce_numeric_α
                        .size            n54_coerce_numeric_bx, .-n54_coerce_numeric_bx
                        .type            n55_coerce_numeric_bx, @function
n55_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   mov              r11, 55
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_208_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_208_0
                        mov              eax, dword ptr [rbp + 864]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_208_0
.Lcoerce_numeric_α_208_1:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 824], rax;          jmp   n56_binop_α
.Lcoerce_numeric_α_208_0:
                        lea              rdi, [rbp + 2256]
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n56_binop_α
                        .size            n55_coerce_numeric_bx, .-n55_coerce_numeric_bx
                        .type            n56_binop_bx, @function
n56_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_binop_α:            mov              r11, 56
                        mov              eax, dword ptr [rbp + 832]
                        mov              ecx, dword ptr [rbp + 816]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_209_2
                        mov              rax, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 824]
                        add              rax, rdx;                            jo    .Lbinop_α_209_0
                        mov              qword ptr [rbp + 800], 3
                        mov              qword ptr [rbp + 808], rax;          jmp   .Lbinop_α_209_7
.Lbinop_α_209_2:        and              edx, 1;                              jz    .Lbinop_α_209_0
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdi, qword ptr [rbp + 824]
                        cmp              al, 5;                               je    .Lbinop_α_209_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_209_4
.Lbinop_α_209_3:        movq             xmm0, rsi
.Lbinop_α_209_4:        cmp              cl, 5;                               je    .Lbinop_α_209_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_209_6
.Lbinop_α_209_5:        movq             xmm1, rdi
.Lbinop_α_209_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_209_0
                        mov              qword ptr [rbp + 800], 5
                        mov              qword ptr [rbp + 808], rax
.Lbinop_α_209_7:                                                              jmp   n57_var_α
.Lbinop_α_209_0:        mov              rdi, qword ptr [rbp + 832]
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
                        cmp              al, 104;                             je    n46_to_β
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n57_var_α
                        .size            n56_binop_bx, .-n56_binop_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 57
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 888], rax;          jmp   n58_coerce_numeric_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_coerce_numeric_bx, @function
n58_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_coerce_numeric_α:   mov              r11, 58
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_213_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_213_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_213_0
.Lcoerce_numeric_α_213_1:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 792], rax;          jmp   n59_coerce_numeric_α
.Lcoerce_numeric_α_213_0:
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n59_coerce_numeric_α
                        .size            n58_coerce_numeric_bx, .-n58_coerce_numeric_bx
                        .type            n59_coerce_numeric_bx, @function
n59_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   mov              r11, 59
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_215_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_215_0
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_215_0
.Lcoerce_numeric_α_215_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 776], rax;          jmp   n60_binop_α
.Lcoerce_numeric_α_215_0:
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n60_binop_α
                        .size            n59_coerce_numeric_bx, .-n59_coerce_numeric_bx
                        .type            n60_binop_bx, @function
n60_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            mov              r11, 60
                        mov              eax, dword ptr [rbp + 784]
                        mov              ecx, dword ptr [rbp + 768]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_216_2
                        mov              rax, qword ptr [rbp + 792]
                        mov              rdx, qword ptr [rbp + 776]
                        sub              rax, rdx;                            jo    .Lbinop_α_216_0
                        mov              qword ptr [rbp + 752], 3
                        mov              qword ptr [rbp + 760], rax;          jmp   .Lbinop_α_216_7
.Lbinop_α_216_2:        and              edx, 1;                              jz    .Lbinop_α_216_0
                        mov              rsi, qword ptr [rbp + 792]
                        mov              rdi, qword ptr [rbp + 776]
                        cmp              al, 5;                               je    .Lbinop_α_216_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_216_4
.Lbinop_α_216_3:        movq             xmm0, rsi
.Lbinop_α_216_4:        cmp              cl, 5;                               je    .Lbinop_α_216_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_216_6
.Lbinop_α_216_5:        movq             xmm1, rdi
.Lbinop_α_216_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_216_0
                        mov              qword ptr [rbp + 752], 5
                        mov              qword ptr [rbp + 760], rax
.Lbinop_α_216_7:                                                              jmp   n61_subscript_α
.Lbinop_α_216_0:        mov              rdi, qword ptr [rbp + 784]
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
                        cmp              al, 104;                             je    n46_to_β
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n61_subscript_α
                        .size            n60_binop_bx, .-n60_binop_bx
                        .type            n61_subscript_bx, @function
n61_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_subscript_α:        mov              r11, 61
                        mov              rdi, qword ptr [rbp + 736]
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n62_deref_α
                        .size            n61_subscript_bx, .-n61_subscript_bx
                        .type            n62_deref_bx, @function
n62_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_deref_α:            mov              r11, 62
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n63_binop_test_α
                        .size            n62_deref_bx, .-n62_deref_bx
                        .type            n63_binop_test_bx, @function
n63_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_binop_test_α:       mov              r11, 63
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 112;                             je    .Lbinop_test_α_219_0
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 112;                             je    .Lbinop_test_α_219_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 3;                               jne   .Lbinop_test_α_219_2
                        mov              eax, dword ptr [rbp + 912]
                        cmp              al, 3;                               jne   .Lbinop_test_α_219_2
.Lbinop_test_α_219_1:   mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 920]
                        cmp              rax, rcx;                            jne   n46_to_β
                        mov              rcx, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 560], rcx
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 568], rcx;          jmp   n64_var_ref_α
.Lbinop_test_α_219_0:   mov              rdi, qword ptr [rbp + 576]
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
                        test             eax, eax;                            je    .Lbinop_test_α_219_2
                        cmp              eax, 1;                              je    n46_to_β
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
1:                                                                            jmp   n64_var_ref_α
.Lbinop_test_α_219_2:   mov              rdi, qword ptr [rbp + 576]
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
1:                      test             eax, eax;                            jz    n46_to_β
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
1:                                                                            jmp   n64_var_ref_α
                        .size            n63_binop_test_bx, .-n63_binop_test_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # q__STATIC__down
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n65_var_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              mov              r11, 65
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n66_var_α
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              mov              r11, 66
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n67_coerce_numeric_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_coerce_numeric_bx, @function
n67_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_coerce_numeric_α:   mov              r11, 67
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_227_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_227_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_227_0
.Lcoerce_numeric_α_227_1:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n68_coerce_numeric_α
.Lcoerce_numeric_α_227_0:
                        lea              rdi, [rbp + 2256]
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n68_coerce_numeric_α
                        .size            n67_coerce_numeric_bx, .-n67_coerce_numeric_bx
                        .type            n68_coerce_numeric_bx, @function
n68_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_coerce_numeric_α:   mov              r11, 68
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_229_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_229_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_229_0
.Lcoerce_numeric_α_229_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n69_binop_α
.Lcoerce_numeric_α_229_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 2256]
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n69_binop_α
                        .size            n68_coerce_numeric_bx, .-n68_coerce_numeric_bx
                        .type            n69_binop_bx, @function
n69_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_binop_α:            mov              r11, 69
                        mov              eax, dword ptr [rbp + 1008]
                        mov              ecx, dword ptr [rbp + 992]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_230_2
                        mov              rax, qword ptr [rbp + 1016]
                        mov              rdx, qword ptr [rbp + 1000]
                        add              rax, rdx;                            jo    .Lbinop_α_230_0
                        mov              qword ptr [rbp + 976], 3
                        mov              qword ptr [rbp + 984], rax;          jmp   .Lbinop_α_230_7
.Lbinop_α_230_2:        and              edx, 1;                              jz    .Lbinop_α_230_0
                        mov              rsi, qword ptr [rbp + 1016]
                        mov              rdi, qword ptr [rbp + 1000]
                        cmp              al, 5;                               je    .Lbinop_α_230_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_230_4
.Lbinop_α_230_3:        movq             xmm0, rsi
.Lbinop_α_230_4:        cmp              cl, 5;                               je    .Lbinop_α_230_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_230_6
.Lbinop_α_230_5:        movq             xmm1, rdi
.Lbinop_α_230_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_230_0
                        mov              qword ptr [rbp + 976], 5
                        mov              qword ptr [rbp + 984], rax
.Lbinop_α_230_7:                                                              jmp   n70_lit_integer_α
.Lbinop_α_230_0:        mov              rdi, qword ptr [rbp + 1008]
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
                        cmp              al, 104;                             je    n46_to_β
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n70_lit_integer_α
                        .size            n69_binop_bx, .-n69_binop_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              r11, 70
                        mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_231_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n71_coerce_numeric_α
.Llit_integer_α_231_0:  .quad            1
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_coerce_numeric_bx, @function
n71_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_coerce_numeric_α:   mov              r11, 71
                        mov              eax, dword ptr [rbp + 976]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_233_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_233_0
                        mov              eax, dword ptr [rbp + 1056]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_233_0
.Lcoerce_numeric_α_233_1:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 968], rax;          jmp   n72_binop_α
.Lcoerce_numeric_α_233_0:
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n72_binop_α
                        .size            n71_coerce_numeric_bx, .-n71_coerce_numeric_bx
                        .type            n72_binop_bx, @function
n72_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_binop_α:            mov              r11, 72
                        mov              eax, dword ptr [rbp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_234_2
                        mov              rax, qword ptr [rbp + 968]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_234_0
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax;          jmp   .Lbinop_α_234_7
.Lbinop_α_234_2:        and              edx, 1;                              jz    .Lbinop_α_234_0
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_234_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_234_4
.Lbinop_α_234_3:        movq             xmm0, rsi
.Lbinop_α_234_4:        cmp              cl, 5;                               je    .Lbinop_α_234_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_234_6
.Lbinop_α_234_5:        movq             xmm1, rdi
.Lbinop_α_234_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_234_0
                        mov              qword ptr [rbp + 944], 5
                        mov              qword ptr [rbp + 952], rax
.Lbinop_α_234_7:                                                              jmp   n73_subscript_α
.Lbinop_α_234_0:        mov              rdi, qword ptr [rbp + 960]
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
                        cmp              al, 104;                             je    n46_to_β
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n73_subscript_α
                        .size            n72_binop_bx, .-n72_binop_bx
                        .type            n73_subscript_bx, @function
n73_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_subscript_α:        mov              r11, 73
                        mov              rdi, qword ptr [rbp + 928]
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n74_deref_α
                        .size            n73_subscript_bx, .-n73_subscript_bx
                        .type            n74_deref_bx, @function
n74_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:            mov              r11, 74
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n75_binop_test_α
                        .size            n74_deref_bx, .-n74_deref_bx
                        .type            n75_binop_test_bx, @function
n75_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_binop_test_α:       mov              r11, 75
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 112;                             je    .Lbinop_test_α_237_0
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              al, 112;                             je    .Lbinop_test_α_237_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 3;                               jne   .Lbinop_test_α_237_2
                        mov              eax, dword ptr [rbp + 1088]
                        cmp              al, 3;                               jne   .Lbinop_test_α_237_2
.Lbinop_test_α_237_1:   mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 1096]
                        cmp              rax, rcx;                            jne   n46_to_β
                        mov              rcx, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 552], rcx;          jmp   n76_var_ref_α
.Lbinop_test_α_237_0:   mov              rdi, qword ptr [rbp + 560]
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
                        test             eax, eax;                            je    .Lbinop_test_α_237_2
                        cmp              eax, 1;                              je    n46_to_β
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
1:                                                                            jmp   n76_var_ref_α
.Lbinop_test_α_237_2:   mov              rdi, qword ptr [rbp + 560]
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
1:                      test             eax, eax;                            jz    n46_to_β
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
1:                                                                            jmp   n76_var_ref_α
                        .size            n75_binop_test_bx, .-n75_binop_test_bx
                        .type            n76_var_ref_bx, @function
n76_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:          mov              r11, 76
                        mov              rax, 4294967336
                        mov              rdx, 1879052352                      # q__STATIC__rows
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n77_var_α
                        .size            n76_var_ref_bx, .-n76_var_ref_bx
                        .type            n77_var_bx, @function
n77_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              mov              r11, 77
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 72], rax;           jmp   n78_subscript_α
                        .size            n77_var_bx, .-n77_var_bx
                        .type            n78_subscript_bx, @function
n78_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_subscript_α:        mov              r11, 78
                        mov              rdi, qword ptr [rbp + 48]
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n79_var_ref_α
                        .size            n78_subscript_bx, .-n78_subscript_bx
                        .type            n79_var_ref_bx, @function
n79_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_var_ref_α:          mov              r11, 79
                        mov              rax, 4294967336
                        mov              rdx, 1879052320                      # q__STATIC__up
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n80_var_α
                        .size            n79_var_ref_bx, .-n79_var_ref_bx
                        .type            n80_var_bx, @function
n80_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_α:              mov              r11, 80
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 248], rax;          jmp   n81_var_α
                        .size            n80_var_bx, .-n80_var_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              r11, 81
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 256], rax           # result
                        mov              qword ptr [rbp + 264], rdx;          jmp   n82_coerce_numeric_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_coerce_numeric_bx, @function
n82_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_coerce_numeric_α:   mov              r11, 82
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_249_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_249_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_249_0
.Lcoerce_numeric_α_249_1:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax;          jmp   n83_coerce_numeric_α
.Lcoerce_numeric_α_249_0:
                        lea              rdi, [rbp + 256]
                        lea              rsi, [rbp + 2256]
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n83_coerce_numeric_α
                        .size            n82_coerce_numeric_bx, .-n82_coerce_numeric_bx
                        .type            n83_coerce_numeric_bx, @function
n83_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_coerce_numeric_α:   mov              r11, 83
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_251_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_251_0
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_251_0
.Lcoerce_numeric_α_251_1:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 216], rax;          jmp   n84_binop_α
.Lcoerce_numeric_α_251_0:
                        lea              rdi, [rbp + 2256]
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n84_binop_α
                        .size            n83_coerce_numeric_bx, .-n83_coerce_numeric_bx
                        .type            n84_binop_bx, @function
n84_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_binop_α:            mov              r11, 84
                        mov              eax, dword ptr [rbp + 224]
                        mov              ecx, dword ptr [rbp + 208]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_252_2
                        mov              rax, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 216]
                        add              rax, rdx;                            jo    .Lbinop_α_252_0
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax;          jmp   .Lbinop_α_252_7
.Lbinop_α_252_2:        and              edx, 1;                              jz    .Lbinop_α_252_0
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdi, qword ptr [rbp + 216]
                        cmp              al, 5;                               je    .Lbinop_α_252_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_252_4
.Lbinop_α_252_3:        movq             xmm0, rsi
.Lbinop_α_252_4:        cmp              cl, 5;                               je    .Lbinop_α_252_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_252_6
.Lbinop_α_252_5:        movq             xmm1, rdi
.Lbinop_α_252_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_252_0
                        mov              qword ptr [rbp + 192], 5
                        mov              qword ptr [rbp + 200], rax
.Lbinop_α_252_7:                                                              jmp   n85_var_α
.Lbinop_α_252_0:        mov              rdi, qword ptr [rbp + 224]
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
                        cmp              al, 104;                             je    n46_to_β
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n85_var_α
                        .size            n84_binop_bx, .-n84_binop_bx
                        .type            n85_var_bx, @function
n85_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_var_α:              mov              r11, 85
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 280], rax;          jmp   n86_coerce_numeric_α
                        .size            n85_var_bx, .-n85_var_bx
                        .type            n86_coerce_numeric_bx, @function
n86_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_coerce_numeric_α:   mov              r11, 86
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_256_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_256_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_256_0
.Lcoerce_numeric_α_256_1:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 184], rax;          jmp   n87_coerce_numeric_α
.Lcoerce_numeric_α_256_0:
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n87_coerce_numeric_α
                        .size            n86_coerce_numeric_bx, .-n86_coerce_numeric_bx
                        .type            n87_coerce_numeric_bx, @function
n87_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:   mov              r11, 87
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_258_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_258_0
                        mov              eax, dword ptr [rbp + 192]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_258_0
.Lcoerce_numeric_α_258_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 168], rax;          jmp   n88_binop_α
.Lcoerce_numeric_α_258_0:
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n88_binop_α
                        .size            n87_coerce_numeric_bx, .-n87_coerce_numeric_bx
                        .type            n88_binop_bx, @function
n88_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_binop_α:            mov              r11, 88
                        mov              eax, dword ptr [rbp + 176]
                        mov              ecx, dword ptr [rbp + 160]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_259_2
                        mov              rax, qword ptr [rbp + 184]
                        mov              rdx, qword ptr [rbp + 168]
                        sub              rax, rdx;                            jo    .Lbinop_α_259_0
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax;          jmp   .Lbinop_α_259_7
.Lbinop_α_259_2:        and              edx, 1;                              jz    .Lbinop_α_259_0
                        mov              rsi, qword ptr [rbp + 184]
                        mov              rdi, qword ptr [rbp + 168]
                        cmp              al, 5;                               je    .Lbinop_α_259_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_259_4
.Lbinop_α_259_3:        movq             xmm0, rsi
.Lbinop_α_259_4:        cmp              cl, 5;                               je    .Lbinop_α_259_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_259_6
.Lbinop_α_259_5:        movq             xmm1, rdi
.Lbinop_α_259_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_259_0
                        mov              qword ptr [rbp + 144], 5
                        mov              qword ptr [rbp + 152], rax
.Lbinop_α_259_7:                                                              jmp   n89_subscript_α
.Lbinop_α_259_0:        mov              rdi, qword ptr [rbp + 176]
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
                        cmp              al, 104;                             je    n46_to_β
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n89_subscript_α
                        .size            n88_binop_bx, .-n88_binop_bx
                        .type            n89_subscript_bx, @function
n89_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_subscript_α:        mov              r11, 89
                        mov              rdi, qword ptr [rbp + 128]
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n90_var_ref_α
                        .size            n89_subscript_bx, .-n89_subscript_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 90
                        mov              rax, 4294967336
                        mov              rdx, 1879052336                      # q__STATIC__down
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n91_var_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_var_bx, @function
n91_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_α:              mov              r11, 91
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 440], rax;          jmp   n92_var_α
                        .size            n91_var_bx, .-n91_var_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              r11, 92
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 456], rax;          jmp   n93_coerce_numeric_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_coerce_numeric_bx, @function
n93_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_coerce_numeric_α:   mov              r11, 93
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_268_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_268_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_268_0
.Lcoerce_numeric_α_268_1:
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 424], rax;          jmp   n94_coerce_numeric_α
.Lcoerce_numeric_α_268_0:
                        lea              rdi, [rbp + 2256]
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n94_coerce_numeric_α
                        .size            n93_coerce_numeric_bx, .-n93_coerce_numeric_bx
                        .type            n94_coerce_numeric_bx, @function
n94_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:   mov              r11, 94
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_270_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_270_0
                        mov              eax, dword ptr [rbp + 2256]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_270_0
.Lcoerce_numeric_α_270_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 408], rax;          jmp   n95_binop_α
.Lcoerce_numeric_α_270_0:
                        lea              rdi, [rbp + 16]
                        lea              rsi, [rbp + 2256]
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n95_binop_α
                        .size            n94_coerce_numeric_bx, .-n94_coerce_numeric_bx
                        .type            n95_binop_bx, @function
n95_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_binop_α:            mov              r11, 95
                        mov              eax, dword ptr [rbp + 416]
                        mov              ecx, dword ptr [rbp + 400]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_271_2
                        mov              rax, qword ptr [rbp + 424]
                        mov              rdx, qword ptr [rbp + 408]
                        add              rax, rdx;                            jo    .Lbinop_α_271_0
                        mov              qword ptr [rbp + 384], 3
                        mov              qword ptr [rbp + 392], rax;          jmp   .Lbinop_α_271_7
.Lbinop_α_271_2:        and              edx, 1;                              jz    .Lbinop_α_271_0
                        mov              rsi, qword ptr [rbp + 424]
                        mov              rdi, qword ptr [rbp + 408]
                        cmp              al, 5;                               je    .Lbinop_α_271_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_271_4
.Lbinop_α_271_3:        movq             xmm0, rsi
.Lbinop_α_271_4:        cmp              cl, 5;                               je    .Lbinop_α_271_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_271_6
.Lbinop_α_271_5:        movq             xmm1, rdi
.Lbinop_α_271_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_271_0
                        mov              qword ptr [rbp + 384], 5
                        mov              qword ptr [rbp + 392], rax
.Lbinop_α_271_7:                                                              jmp   n96_lit_integer_α
.Lbinop_α_271_0:        mov              rdi, qword ptr [rbp + 416]
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
                        cmp              al, 104;                             je    n46_to_β
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n96_lit_integer_α
                        .size            n95_binop_bx, .-n95_binop_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      mov              r11, 96
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_272_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n97_coerce_numeric_α
.Llit_integer_α_272_0:  .quad            1
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_coerce_numeric_bx, @function
n97_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_coerce_numeric_α:   mov              r11, 97
                        mov              eax, dword ptr [rbp + 384]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_274_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_274_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_274_0
.Lcoerce_numeric_α_274_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax;          jmp   n98_binop_α
.Lcoerce_numeric_α_274_0:
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
                        cmp              al, 104;                             je    n46_to_β
                                                                              jmp   n98_binop_α
                        .size            n97_coerce_numeric_bx, .-n97_coerce_numeric_bx
                        .type            n98_binop_bx, @function
n98_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_binop_α:            mov              r11, 98
                        mov              eax, dword ptr [rbp + 368]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_275_2
                        mov              rax, qword ptr [rbp + 376]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_275_0
                        mov              qword ptr [rbp + 352], 3
                        mov              qword ptr [rbp + 360], rax;          jmp   .Lbinop_α_275_7
.Lbinop_α_275_2:        and              edx, 1;                              jz    .Lbinop_α_275_0
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_275_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_275_4
.Lbinop_α_275_3:        movq             xmm0, rsi
.Lbinop_α_275_4:        cmp              cl, 5;                               je    .Lbinop_α_275_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_275_6
.Lbinop_α_275_5:        movq             xmm1, rdi
.Lbinop_α_275_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_275_0
                        mov              qword ptr [rbp + 352], 5
                        mov              qword ptr [rbp + 360], rax
.Lbinop_α_275_7:                                                              jmp   n99_subscript_α
.Lbinop_α_275_0:        mov              rdi, qword ptr [rbp + 368]
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
                        cmp              al, 104;                             je    n46_to_β
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n99_subscript_α
                        .size            n98_binop_bx, .-n98_binop_bx
                        .type            n99_subscript_bx, @function
n99_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_subscript_α:        mov              r11, 99
                        mov              rdi, qword ptr [rbp + 336]
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n00001_lit_integer_α
                        .size            n99_subscript_bx, .-n99_subscript_bx
                        .type            n00001_lit_integer_bx, @function
n00001_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_lit_integer_α:     mov              r11, 100
                        mov              qword ptr [rbp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_277_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n00002_rev_assign_var_α
.Llit_integer_α_277_0:  .quad            1
                        .size            n00001_lit_integer_bx, .-n00001_lit_integer_bx
                        .type            n00002_rev_assign_var_bx, @function
n00002_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_rev_assign_var_α:  mov              r11, 101
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
                        cmp              al, 104;                             je    n46_to_β
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
1:                                                                            jmp   n00003_rev_assign_var_α
n00002_rev_assign_var_β:  mov              r11, 101
                        mov              rdi, qword ptr [rbp + 480]
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
1:                                                                            jmp   n46_to_β
                        .size            n00002_rev_assign_var_bx, .-n00002_rev_assign_var_bx
                        .type            n00003_rev_assign_var_bx, @function
n00003_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_rev_assign_var_α:  mov              r11, 102
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
                        cmp              al, 104;                             je    n00002_rev_assign_var_β
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
1:                                                                            jmp   n00004_rev_assign_var_α
n00003_rev_assign_var_β:  mov              r11, 102
                        mov              rdi, qword ptr [rbp + 288]
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
1:                                                                            jmp   n00002_rev_assign_var_β
                        .size            n00003_rev_assign_var_bx, .-n00003_rev_assign_var_bx
                        .type            n00004_rev_assign_var_bx, @function
n00004_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_rev_assign_var_α:  mov              r11, 103
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
                        cmp              al, 104;                             je    n00003_rev_assign_var_β
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
1:                                                                            jmp   n00005_conjunction_α
n00004_rev_assign_var_β:  mov              r11, 103
                        mov              rdi, qword ptr [rbp + 80]
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
1:                                                                            jmp   n00003_rev_assign_var_β
                        .size            n00004_rev_assign_var_bx, .-n00004_rev_assign_var_bx
                        .type            n00005_conjunction_bx, @function
n00005_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_conjunction_α:     mov              r11, 104
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00006_bound_α
n00005_conjunction_β:     mov              r11, 104;                            jmp   q_ω
                        .size            n00005_conjunction_bx, .-n00005_conjunction_bx
                        .type            n00006_bound_bx, @function
n00006_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_bound_α:           mov              r11, 105
                        mov              qword ptr [rbp + 1120], rsp;         jmp   n00007_line_mark_α
                        .size            n00006_bound_bx, .-n00006_bound_bx
                        .type            n00007_line_mark_bx, @function
n00007_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_line_mark_α:       mov              r11, 106
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79;             jmp   n00008_var_ref_α
                        .size            n00007_line_mark_bx, .-n00007_line_mark_bx
                        .type            n00008_var_ref_bx, @function
n00008_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        mov              rdx, 1879052304                      # solution
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n00009_var_α
                        .size            n00008_var_ref_bx, .-n00008_var_ref_bx
                        .type            n00009_var_bx, @function
n00009_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_α:             mov              r11, 108
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n00010_subscript_α
                        .size            n00009_var_bx, .-n00009_var_bx
                        .type            n00010_subscript_bx, @function
n00010_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_subscript_α:       mov              r11, 109
                        mov              rdi, qword ptr [rbp + 1408]
                        mov              rsi, qword ptr [rbp + 1416]
                        mov              rdx, qword ptr [rbp + 1424]
                        mov              rcx, qword ptr [rbp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_disjunction_α
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
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
1:                                                                            jmp   n00012_var_α
                        .size            n00010_subscript_bx, .-n00010_subscript_bx
                        .type            n00012_var_bx, @function
n00012_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n00013_assign_var_α
                        .size            n00012_var_bx, .-n00012_var_bx
                        .type            n00013_assign_var_bx, @function
n00013_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_assign_var_α:      mov              r11, 111
                        mov              rdi, qword ptr [rbp + 1440]
                        mov              rsi, qword ptr [rbp + 1448]
                        mov              rdx, qword ptr [rbp + 1472]
                        mov              rcx, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_disjunction_α
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
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
1:                                                                            jmp   n00011_disjunction_α
                        .size            n00013_assign_var_bx, .-n00013_assign_var_bx
                        .type            n00011_disjunction_bx, @function
n00011_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_disjunction_α:     mov              r11, 112
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0;           jmp   n00014_var_α
.Ldisjunction_γ_112_as: mov              r11, 112
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_295_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00015_conjunction_α
.Ldisjunction_α_295_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_295_1
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00015_conjunction_α
.Ldisjunction_α_295_1:                                                        jmp   n00015_conjunction_α
n00011_disjunction_β:     mov              r11, 112
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              je    n00016_unmark_α
                                                                              jmp   n00016_unmark_α
.Ldisjunction_γ_112_af: mov              r11, 112
.Ldisjunction_ω_112_af: mov              r11, 112
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1;                              je    n00017_var_α
                                                                              jmp   n00016_unmark_α
                        .size            n00011_disjunction_bx, .-n00011_disjunction_bx
                        .type            n00015_conjunction_bx, @function
n00015_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_conjunction_α:     mov              r11, 113
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n00016_unmark_α
n00015_conjunction_β:     mov              r11, 113;                            jmp   n00016_unmark_α
                        .size            n00015_conjunction_bx, .-n00015_conjunction_bx
                        .type            n00017_var_bx, @function
n00017_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00018_lit_integer_α
n00017_var_β:             mov              r11, 114;                            jmp   n00016_unmark_α
                        .size            n00017_var_bx, .-n00017_var_bx
                        .type            n00018_lit_integer_bx, @function
n00018_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rbp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_299_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n00019_coerce_numeric_α
.Llit_integer_α_299_0:  .quad            1
                        .size            n00018_lit_integer_bx, .-n00018_lit_integer_bx
                        .type            n00019_coerce_numeric_bx, @function
n00019_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_coerce_numeric_α:  mov              r11, 116
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_301_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
.Lcoerce_numeric_α_301_1:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00020_binop_α
.Lcoerce_numeric_α_301_0:
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
                        cmp              al, 104;                             je    n00016_unmark_α
                                                                              jmp   n00020_binop_α
                        .size            n00019_coerce_numeric_bx, .-n00019_coerce_numeric_bx
                        .type            n00020_binop_bx, @function
n00020_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_binop_α:           mov              r11, 117
                        mov              eax, dword ptr [rbp + 1360]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_302_2
                        mov              rax, qword ptr [rbp + 1368]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_302_0
                        mov              qword ptr [rbp + 1344], 3
                        mov              qword ptr [rbp + 1352], rax;         jmp   .Lbinop_α_302_7
.Lbinop_α_302_2:        and              edx, 1;                              jz    .Lbinop_α_302_0
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_302_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_302_4
.Lbinop_α_302_3:        movq             xmm0, rsi
.Lbinop_α_302_4:        cmp              cl, 5;                               je    .Lbinop_α_302_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_302_6
.Lbinop_α_302_5:        movq             xmm1, rdi
.Lbinop_α_302_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_302_0
                        mov              qword ptr [rbp + 1344], 5
                        mov              qword ptr [rbp + 1352], rax
.Lbinop_α_302_7:                                                              jmp   n00021_line_mark_α
.Lbinop_α_302_0:        mov              rdi, qword ptr [rbp + 1360]
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
                        cmp              al, 104;                             je    n00016_unmark_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n00021_line_mark_α
                        .size            n00020_binop_bx, .-n00020_binop_bx
                        .type            n00021_line_mark_bx, @function
n00021_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_line_mark_α:       mov              r11, 118
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00022_call_proc_staged_α
                        .size            n00021_line_mark_bx, .-n00021_line_mark_bx
                        .type            n00022_call_proc_staged_bx, @function
n00022_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_call_proc_staged_α:
                        mov              r11, 119
                        lea              rsi, [rbp + 1344]
                        call             q_dcα;                               jmp   .Lcall_proc_staged_α_306_2
.Lcall_proc_staged_α_306_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_306_29
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
.Lcall_proc_staged_α_306_29:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n00016_unmark_α
                                                                              jmp   n00023_deref_α
n00022_call_proc_staged_β:
                        mov              r11, 119;                            jmp   n00016_unmark_α
.Lcall_proc_staged_β_306_0:
                        .quad            .Lcall_proc_staged_β_306_0_s
.Lcall_proc_staged_β_306_0_s:
                        .string          "q"
                        .size            n00022_call_proc_staged_bx, .-n00022_call_proc_staged_bx
                        .type            n00023_deref_bx, @function
n00023_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_deref_α:           mov              r11, 120
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
                        cmp              al, 104;                             je    n00016_unmark_α
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
1:                                                                            jmp   .Ldisjunction_γ_112_as
n00023_deref_β:           mov              r11, 120;                            jmp   n00016_unmark_α
                        .size            n00023_deref_bx, .-n00023_deref_bx
                        .type            n00014_var_bx, @function
n00014_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00024_var_α
n00014_var_β:             mov              r11, 121;                            jmp   .Ldisjunction_ω_112_af
                        .size            n00014_var_bx, .-n00014_var_bx
                        .type            n00024_var_bx, @function
n00024_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_var_α:             mov              r11, 122
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1280], rax          # result
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n00025_binop_test_α
                        .size            n00024_var_bx, .-n00024_var_bx
                        .type            n00025_binop_test_bx, @function
n00025_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_binop_test_α:      mov              r11, 123
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 112;                             je    .Lbinop_test_α_311_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 112;                             je    .Lbinop_test_α_311_0
                        mov              eax, dword ptr [rbp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_311_2
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 3;                               jne   .Lbinop_test_α_311_2
.Lbinop_test_α_311_1:   mov              rax, qword ptr [rbp + 24]
                        mov              rcx, qword ptr [rbp + 1288]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_112_af
                        mov              rcx, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rcx
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rcx;         jmp   n00026_line_mark_α
.Lbinop_test_α_311_0:   mov              rdi, qword ptr [rbp + 16]
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
                        test             eax, eax;                            je    .Lbinop_test_α_311_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_112_af
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
1:                                                                            jmp   n00026_line_mark_α
.Lbinop_test_α_311_2:   mov              rdi, qword ptr [rbp + 16]
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
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_112_af
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
1:                                                                            jmp   n00026_line_mark_α
                        .size            n00025_binop_test_bx, .-n00025_binop_test_bx
                        .type            n00026_line_mark_bx, @function
n00026_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_line_mark_α:       mov              r11, 124
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00027_call_proc_staged_α
                        .size            n00026_line_mark_bx, .-n00026_line_mark_bx
                        .type            n00027_call_proc_staged_bx, @function
n00027_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_call_proc_staged_α:
                        mov              r11, 125
                        call             show_dcα;                            jmp   .Lcall_proc_staged_α_315_2
.Lcall_proc_staged_α_315_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_315_29
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
.Lcall_proc_staged_α_315_29:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n00016_unmark_α
                                                                              jmp   n00028_deref_α
n00027_call_proc_staged_β:
                        mov              r11, 125;                            jmp   n00016_unmark_α
.Lcall_proc_staged_β_315_0:
                        .quad            .Lcall_proc_staged_β_315_0_s
.Lcall_proc_staged_β_315_0_s:
                        .string          "show"
                        .size            n00027_call_proc_staged_bx, .-n00027_call_proc_staged_bx
                        .type            n00028_deref_bx, @function
n00028_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_deref_α:           mov              r11, 126
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00016_unmark_α
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
1:                                                                            jmp   .Ldisjunction_γ_112_as
n00028_deref_β:           mov              r11, 126;                            jmp   n00016_unmark_α
                        .size            n00028_deref_bx, .-n00028_deref_bx
                        .type            n00016_unmark_bx, @function
n00016_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_unmark_α:          mov              r11, 127
                        mov              rsp, qword ptr [rbp + 1120];         jmp   n00004_rev_assign_var_β
                        .size            n00016_unmark_bx, .-n00016_unmark_bx
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
                        lea              rsp, [rbp + 2368]
                        mov              rbp, qword ptr [rbp + 2360];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 2368]
                        mov              rbp, qword ptr [rbp + 2360];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Lq_α_319_3]
                        push             rcx
                        lea              rcx, [rip + .Lq_α_319_2]
                        push             rcx;                                 jmp   FN__q
.Lq_α_319_2:            add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lq_α_319_3:            add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_q:
                        .quad            10171829013850
                        .quad            34359738448
                        .quad            .Lgcmap_q_s
                        .quad            2272
                        .quad            9
                        .quad            721279627821056
                        .quad            17596481012368
                        .quad            492581209244320
                        .quad            17596481012832
                        .quad            52776558134384
                        .quad            17596481012896
                        .quad            369435906933936
                        .quad            17596481013248
                        .quad            791648372000272
.Lgcmap_q_s:            .string          "q"
#-----------------------------------------------------------------------------------------------------------------------
FN__show:
                        sub              rsp, 1648
                        lea              rax, [rip + .Lgcmap_show]
                        mov              qword ptr [rsp + 1592], rax
                        mov              dword ptr [rsp + 1584], 160
                        mov              dword ptr [rsp + 1588], 1648
                        mov              eax, 0
                        mov              qword ptr [rsp + 1640], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 1584
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
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm320:      .string          "show"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm320]
                        mov              esi, 0
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
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
1:
.Lshow_α_319_247:       mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
show_α_body:
                        .type            n00029_line_mark_bx, @function
n00029_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_line_mark_α:       mov              r11, 128
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_397_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00030_line_mark_α
.Lline_mark_α_397_0:    .quad            .Lline_mark_α_397_0_s
.Lline_mark_α_397_0_s:  .string          "queens.icn"
                        .size            n00029_line_mark_bx, .-n00029_line_mark_bx
                        .type            n00030_line_mark_bx, @function
n00030_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_line_mark_α:       mov              r11, 129
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00031_disjunction_α
                        .size            n00030_line_mark_bx, .-n00030_line_mark_bx
                        .type            n00031_disjunction_bx, @function
n00031_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_disjunction_α:     mov              r11, 130
                        mov              qword ptr [rbp + 992], 0
                        mov              qword ptr [rbp + 1000], 0
                        mov              dword ptr [rbp + 1008], 0;           jmp   n00032_var_ref_α
.Ldisjunction_γ_323_as: mov              r11, 130
                        mov              eax, dword ptr [rbp + 1008]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_401_0
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00033_line_mark_α
.Ldisjunction_α_401_0:                                                        jmp   n00033_line_mark_α
n00031_disjunction_β:     mov              r11, 130
                        mov              eax, dword ptr [rbp + 1008];         jmp   n00033_line_mark_α
.Ldisjunction_γ_323_af: mov              r11, 130
.Ldisjunction_ω_323_af: mov              r11, 130
                        add              dword ptr [rbp + 1008], 1
                        mov              eax, dword ptr [rbp + 1008];         jmp   n00033_line_mark_α
                        .size            n00031_disjunction_bx, .-n00031_disjunction_bx
                        .type            n00032_var_ref_bx, @function
n00032_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        mov              rdx, 1879052432                      # show__INITFLAG__0
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n00034_nulltest_var_α
n00032_var_ref_β:         mov              r11, 131;                            jmp   .Ldisjunction_ω_323_af
                        .size            n00032_var_ref_bx, .-n00032_var_ref_bx
                        .type            n00034_nulltest_var_bx, @function
n00034_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_nulltest_var_α:    mov              r11, 132
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              al, 104;                             je    .Ldisjunction_ω_323_af
                        mov              rdi, qword ptr [rbp + 1488]
                        mov              rsi, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_323_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_323_af
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1512], rax
                        push             rax                                  # gc_poll bb_unop.cpp:55
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
1:                                                                            jmp   n00035_lit_integer_α
                        .size            n00034_nulltest_var_bx, .-n00034_nulltest_var_bx
                        .type            n00035_lit_integer_bx, @function
n00035_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_lit_integer_α:     mov              r11, 133
                        mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_405_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00036_assign_var_α
.Llit_integer_α_405_0:  .quad            1
                        .size            n00035_lit_integer_bx, .-n00035_lit_integer_bx
                        .type            n00036_assign_var_bx, @function
n00036_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_assign_var_α:      mov              r11, 134
                        mov              rdi, qword ptr [rbp + 1504]
                        mov              rsi, qword ptr [rbp + 1512]
                        mov              rdx, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_323_af
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
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
1:                                                                            jmp   n00037_line_mark_α
                        .size            n00036_assign_var_bx, .-n00036_assign_var_bx
                        .type            n00037_line_mark_bx, @function
n00037_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_line_mark_α:       mov              r11, 135
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00038_lit_integer_α
                        .size            n00037_line_mark_bx, .-n00037_line_mark_bx
                        .type            n00038_lit_integer_bx, @function
n00038_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_lit_integer_α:     mov              r11, 136
                        mov              qword ptr [rbp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_409_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n00039_assign_α
.Llit_integer_α_409_0:  .quad            0
                        .size            n00038_lit_integer_bx, .-n00038_lit_integer_bx
                        .type            n00039_assign_bx, @function
n00039_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_assign_α:          mov              r11, 137
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00040_line_mark_α
                        .size            n00039_assign_bx, .-n00039_assign_bx
                        .type            n00040_line_mark_bx, @function
n00040_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_line_mark_α:       mov              r11, 138
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00041_lit_string_α
                        .size            n00040_line_mark_bx, .-n00040_line_mark_bx
                        .type            n00041_lit_string_bx, @function
n00041_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_413_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n00042_var_ref_α
.Llit_string_α_413_0:   .quad            .Llit_string_α_413_0_s
.Llit_string_α_413_0_s: .string          "|   "
                        .size            n00041_lit_string_bx, .-n00041_lit_string_bx
                        .type            n00042_var_ref_bx, @function
n00042_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n00043_deref_α
                        .size            n00042_var_ref_bx, .-n00042_var_ref_bx
                        .type            n00043_deref_bx, @function
n00043_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_deref_α:           mov              r11, 141
                        mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00044_line_mark_α
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
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
1:                                                                            jmp   n00045_line_mark_α
                        .size            n00043_deref_bx, .-n00043_deref_bx
                        .type            n00045_line_mark_bx, @function
n00045_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_line_mark_α:       mov              r11, 142
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00046_call_icon_α
                        .size            n00045_line_mark_bx, .-n00045_line_mark_bx
                        .type            n00046_call_icon_bx, @function
n00046_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_call_icon_α:       mov              r11, 143
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lcall_icon_α_rkfn420:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn420]
                        lea              rsi, [rbp + 1296]
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
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    n00044_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00047_lit_string_α
n00046_call_icon_β:       mov              r11, 143;                            jmp   n00044_line_mark_α
                        .size            n00046_call_icon_bx, .-n00046_call_icon_bx
                        .type            n00047_lit_string_bx, @function
n00047_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rbp + 1408], 2            # result
                        mov              dword ptr [rbp + 1412], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_421_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n00048_binop_α
.Llit_string_α_421_0:   .quad            .Llit_string_α_421_0_s
.Llit_string_α_421_0_s: .string          "|"
                        .size            n00047_lit_string_bx, .-n00047_lit_string_bx
                        .type            n00048_binop_bx, @function
n00048_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_binop_α:           mov              r11, 145
                        mov              rdi, qword ptr [rbp + 1280]
                        mov              rsi, qword ptr [rbp + 1288]
                        mov              rdx, qword ptr [rbp + 1408]
                        mov              rcx, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n00049_assign_α
                        .size            n00048_binop_bx, .-n00048_binop_bx
                        .type            n00049_assign_bx, @function
n00049_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_assign_α:          mov              r11, 146
                        mov              rax, qword ptr [rbp + 1264]
                        mov              rdx, qword ptr [rbp + 1272]
                        mov              qword ptr [r9 + 112], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 120], rdx;           jmp   n00044_line_mark_α
                        .size            n00049_assign_bx, .-n00049_assign_bx
                        .type            n00044_line_mark_bx, @function
n00044_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_line_mark_α:       mov              r11, 147
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 92;             jmp   n00050_lit_string_α
                        .size            n00044_line_mark_bx, .-n00044_line_mark_bx
                        .type            n00050_lit_string_bx, @function
n00050_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00050_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rbp + 1136], 2            # result
                        mov              dword ptr [rbp + 1140], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_426_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00051_var_ref_α
.Llit_string_α_426_0:   .quad            .Llit_string_α_426_0_s
.Llit_string_α_426_0_s: .string          "----"
                        .size            n00050_lit_string_bx, .-n00050_lit_string_bx
                        .type            n00051_var_ref_bx, @function
n00051_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n00052_deref_α
                        .size            n00051_var_ref_bx, .-n00051_var_ref_bx
                        .type            n00052_deref_bx, @function
n00052_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_deref_α:           mov              r11, 150
                        mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00033_line_mark_α
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
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
1:                                                                            jmp   n00053_line_mark_α
                        .size            n00052_deref_bx, .-n00052_deref_bx
                        .type            n00053_line_mark_bx, @function
n00053_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_line_mark_α:       mov              r11, 151
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 92;             jmp   n00054_call_icon_α
                        .size            n00053_line_mark_bx, .-n00053_line_mark_bx
                        .type            n00054_call_icon_bx, @function
n00054_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_call_icon_α:       mov              r11, 152
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lcall_icon_α_rkfn433:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn433]
                        lea              rsi, [rbp + 1088]
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
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    n00033_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00055_lit_string_α
n00054_call_icon_β:       mov              r11, 152;                            jmp   n00033_line_mark_α
                        .size            n00054_call_icon_bx, .-n00054_call_icon_bx
                        .type            n00055_lit_string_bx, @function
n00055_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_434_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n00056_binop_α
.Llit_string_α_434_0:   .quad            .Llit_string_α_434_0_s
.Llit_string_α_434_0_s: .string          "-"
                        .size            n00055_lit_string_bx, .-n00055_lit_string_bx
                        .type            n00056_binop_bx, @function
n00056_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_binop_α:           mov              r11, 154
                        mov              rdi, qword ptr [rbp + 1072]
                        mov              rsi, qword ptr [rbp + 1080]
                        mov              rdx, qword ptr [rbp + 1200]
                        mov              rcx, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:83
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
1:                                                                            jmp   n00057_assign_α
                        .size            n00056_binop_bx, .-n00056_binop_bx
                        .type            n00057_assign_bx, @function
n00057_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_assign_α:          mov              r11, 155
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [r9 + 128], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n00058_conjunction_α
                        .size            n00057_assign_bx, .-n00057_assign_bx
                        .type            n00058_conjunction_bx, @function
n00058_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_conjunction_α:     mov              r11, 156
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1032], rax;         jmp   .Ldisjunction_γ_323_as
n00058_conjunction_β:     mov              r11, 156;                            jmp   n00033_line_mark_α
                        .size            n00058_conjunction_bx, .-n00058_conjunction_bx
                        .type            n00033_line_mark_bx, @function
n00033_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_line_mark_α:       mov              r11, 157
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00059_lit_string_α
                        .size            n00033_line_mark_bx, .-n00033_line_mark_bx
                        .type            n00059_lit_string_bx, @function
n00059_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_440_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n00060_lit_integer_α
.Llit_string_α_440_0:   .quad            .Llit_string_α_440_0_s
.Llit_string_α_440_0_s: .string          "solution: "
                        .size            n00059_lit_string_bx, .-n00059_lit_string_bx
                        .type            n00060_lit_integer_bx, @function
n00060_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_lit_integer_α:     mov              r11, 159
                        mov              qword ptr [rbp + 944], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_441_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00061_var_α
.Llit_integer_α_441_0:  .quad            1
                        .size            n00060_lit_integer_bx, .-n00060_lit_integer_bx
                        .type            n00061_var_bx, @function
n00061_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_var_α:             mov              r11, 160
                        mov              rax, qword ptr [r9 + 96]             # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 960], rax           # result
                        mov              qword ptr [rbp + 968], rdx;          jmp   n00062_coerce_numeric_α
                        .size            n00061_var_bx, .-n00061_var_bx
                        .type            n00062_coerce_numeric_bx, @function
n00062_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_coerce_numeric_α:  mov              r11, 161
                        mov              eax, dword ptr [rbp + 960]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_444_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_444_0
                        mov              eax, dword ptr [rbp + 944]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_444_0
.Lcoerce_numeric_α_444_1:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax;          jmp   n00063_binop_α
.Lcoerce_numeric_α_444_0:
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
                        cmp              al, 104;                             je    n00064_line_mark_α
                                                                              jmp   n00063_binop_α
                        .size            n00062_coerce_numeric_bx, .-n00062_coerce_numeric_bx
                        .type            n00063_binop_bx, @function
n00063_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_binop_α:           mov              r11, 162
                        mov              eax, dword ptr [rbp + 928]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_445_2
                        mov              rax, qword ptr [rbp + 936]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_445_0
                        mov              qword ptr [rbp + 912], 3
                        mov              qword ptr [rbp + 920], rax;          jmp   .Lbinop_α_445_7
.Lbinop_α_445_2:        and              edx, 1;                              jz    .Lbinop_α_445_0
                        mov              rsi, qword ptr [rbp + 936]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_445_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_445_4
.Lbinop_α_445_3:        movq             xmm0, rsi
.Lbinop_α_445_4:        cmp              cl, 5;                               je    .Lbinop_α_445_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_445_6
.Lbinop_α_445_5:        movq             xmm1, rdi
.Lbinop_α_445_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_445_0
                        mov              qword ptr [rbp + 912], 5
                        mov              qword ptr [rbp + 920], rax
.Lbinop_α_445_7:                                                              jmp   n00065_assign_α
.Lbinop_α_445_0:        mov              rdi, qword ptr [rbp + 928]
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
                        cmp              al, 104;                             je    n00064_line_mark_α
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n00065_assign_α
                        .size            n00063_binop_bx, .-n00063_binop_bx
                        .type            n00065_assign_bx, @function
n00065_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_assign_α:          mov              r11, 163
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n00066_line_mark_α
                        .size            n00065_assign_bx, .-n00065_assign_bx
                        .type            n00066_line_mark_bx, @function
n00066_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_line_mark_α:       mov              r11, 164
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00067_call_icon_α
                        .size            n00066_line_mark_bx, .-n00066_line_mark_bx
                        .type            n00067_call_icon_bx, @function
n00067_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_call_icon_α:       mov              r11, 165
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        .section         .rodata
.Lcall_icon_α_rkfn450:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn450]
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
                        cmp              al, 104;                             je    n00064_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00064_line_mark_α
n00067_call_icon_β:       mov              r11, 165;                            jmp   n00064_line_mark_α
                        .size            n00067_call_icon_bx, .-n00067_call_icon_bx
                        .type            n00064_line_mark_bx, @function
n00064_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_line_mark_α:       mov              r11, 166
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00068_lit_string_α
                        .size            n00064_line_mark_bx, .-n00064_line_mark_bx
                        .type            n00068_lit_string_bx, @function
n00068_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_453_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00069_var_α
.Llit_string_α_453_0:   .quad            .Llit_string_α_453_0_s
.Llit_string_α_453_0_s: .string          "  "
                        .size            n00068_lit_string_bx, .-n00068_lit_string_bx
                        .type            n00069_var_bx, @function
n00069_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_var_α:             mov              r11, 168
                        mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 768], rax           # result
                        mov              qword ptr [rbp + 776], rdx;          jmp   n00070_line_mark_α
                        .size            n00069_var_bx, .-n00069_var_bx
                        .type            n00070_line_mark_bx, @function
n00070_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_line_mark_α:       mov              r11, 169
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00071_call_icon_α
                        .size            n00070_line_mark_bx, .-n00070_line_mark_bx
                        .type            n00071_call_icon_bx, @function
n00071_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_call_icon_α:       mov              r11, 170
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        .section         .rodata
.Lcall_icon_α_rkfn458:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn458]
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
                        cmp              al, 104;                             je    n00072_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00072_line_mark_α
n00071_call_icon_β:       mov              r11, 170;                            jmp   n00072_line_mark_α
                        .size            n00071_call_icon_bx, .-n00071_call_icon_bx
                        .type            n00072_line_mark_bx, @function
n00072_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_line_mark_α:       mov              r11, 171
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00073_var_ref_α
                        .size            n00072_line_mark_bx, .-n00072_line_mark_bx
                        .type            n00073_var_ref_bx, @function
n00073_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        mov              rdx, 1879052400                      # show__STATIC__line
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00074_lit_integer_α
                        .size            n00073_var_ref_bx, .-n00073_var_ref_bx
                        .type            n00074_lit_integer_bx, @function
n00074_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_463_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00075_var_α
.Llit_integer_α_463_0:  .quad            4
                        .size            n00074_lit_integer_bx, .-n00074_lit_integer_bx
                        .type            n00075_var_bx, @function
n00075_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_var_α:             mov              r11, 174
                        mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 208], rax           # result
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00076_iterate_α
                        .size            n00075_var_bx, .-n00075_var_bx
                        .type            n00076_iterate_bx, @function
n00076_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_iterate_α:         mov              r11, 175
                        mov              qword ptr [rbp + 192], 0
.Literate_α_466_0:      mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 192]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00077_line_mark_α
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00078_lit_integer_α
n00076_iterate_β:         mov              r11, 175
                        inc              qword ptr [rbp + 192];               jmp   .Literate_α_466_0
                        .size            n00076_iterate_bx, .-n00076_iterate_bx
                        .type            n00078_lit_integer_bx, @function
n00078_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_lit_integer_α:     mov              r11, 176
                        mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_467_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00079_coerce_numeric_α
.Llit_integer_α_467_0:  .quad            1
                        .size            n00078_lit_integer_bx, .-n00078_lit_integer_bx
                        .type            n00079_coerce_numeric_bx, @function
n00079_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_coerce_numeric_α:  mov              r11, 177
                        mov              eax, dword ptr [rbp + 176]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_469_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_469_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_469_0
.Lcoerce_numeric_α_469_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00080_binop_α
.Lcoerce_numeric_α_469_0:
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
                        cmp              al, 104;                             je    n00077_line_mark_α
                                                                              jmp   n00080_binop_α
                        .size            n00079_coerce_numeric_bx, .-n00079_coerce_numeric_bx
                        .type            n00080_binop_bx, @function
n00080_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_binop_α:           mov              r11, 178
                        mov              eax, dword ptr [rbp + 160]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_470_2
                        mov              rax, qword ptr [rbp + 168]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_470_0
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax;          jmp   .Lbinop_α_470_7
.Lbinop_α_470_2:        and              edx, 1;                              jz    .Lbinop_α_470_0
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_470_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_470_4
.Lbinop_α_470_3:        movq             xmm0, rsi
.Lbinop_α_470_4:        cmp              cl, 5;                               je    .Lbinop_α_470_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_470_6
.Lbinop_α_470_5:        movq             xmm1, rdi
.Lbinop_α_470_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_470_0
                        mov              qword ptr [rbp + 144], 5
                        mov              qword ptr [rbp + 152], rax
.Lbinop_α_470_7:                                                              jmp   n00081_coerce_numeric_α
.Lbinop_α_470_0:        mov              rdi, qword ptr [rbp + 160]
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
                        cmp              al, 104;                             je    n00077_line_mark_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n00081_coerce_numeric_α
                        .size            n00080_binop_bx, .-n00080_binop_bx
                        .type            n00081_coerce_numeric_bx, @function
n00081_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_coerce_numeric_α:  mov              r11, 179
                        mov              eax, dword ptr [rbp + 144]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_472_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_472_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_472_0
.Lcoerce_numeric_α_472_1:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00082_binop_α
.Lcoerce_numeric_α_472_0:
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
                        cmp              al, 104;                             je    n00077_line_mark_α
                                                                              jmp   n00082_binop_α
                        .size            n00081_coerce_numeric_bx, .-n00081_coerce_numeric_bx
                        .type            n00082_binop_bx, @function
n00082_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_binop_α:           mov              r11, 180
                        mov              eax, 3
                        mov              ecx, dword ptr [rbp + 112]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_473_2
                        mov              rax, 4
                        mov              rdx, qword ptr [rbp + 120]
                        imul             rax, rdx;                            jo    .Lbinop_α_473_0
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax;          jmp   .Lbinop_α_473_7
.Lbinop_α_473_2:        and              edx, 1;                              jz    .Lbinop_α_473_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rbp + 120]
                        cmp              al, 5;                               je    .Lbinop_α_473_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_473_4
.Lbinop_α_473_3:        movq             xmm0, rsi
.Lbinop_α_473_4:        cmp              cl, 5;                               je    .Lbinop_α_473_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_473_6
.Lbinop_α_473_5:        movq             xmm1, rdi
.Lbinop_α_473_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_473_0
                        mov              qword ptr [rbp + 96], 5
                        mov              qword ptr [rbp + 104], rax
.Lbinop_α_473_7:                                                              jmp   n00083_lit_integer_α
.Lbinop_α_473_0:        mov              rdi, qword ptr [rbp + 128]
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
                        cmp              al, 104;                             je    n00077_line_mark_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
                        .size            n00082_binop_bx, .-n00082_binop_bx
                        .type            n00083_lit_integer_bx, @function
n00083_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_lit_integer_α:     mov              r11, 181
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00084_coerce_numeric_α
.Llit_integer_α_474_0:  .quad            3
                        .size            n00083_lit_integer_bx, .-n00083_lit_integer_bx
                        .type            n00084_coerce_numeric_bx, @function
n00084_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_coerce_numeric_α:  mov              r11, 182
                        mov              eax, dword ptr [rbp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_476_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_476_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_476_0
.Lcoerce_numeric_α_476_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax;           jmp   n00085_binop_α
.Lcoerce_numeric_α_476_0:
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
                        cmp              al, 104;                             je    n00077_line_mark_α
                                                                              jmp   n00085_binop_α
                        .size            n00084_coerce_numeric_bx, .-n00084_coerce_numeric_bx
                        .type            n00085_binop_bx, @function
n00085_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_binop_α:           mov              r11, 183
                        mov              eax, dword ptr [rbp + 80]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_477_2
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, 3
                        add              rax, rdx;                            jo    .Lbinop_α_477_0
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax;           jmp   .Lbinop_α_477_7
.Lbinop_α_477_2:        and              edx, 1;                              jz    .Lbinop_α_477_0
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_477_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_477_4
.Lbinop_α_477_3:        movq             xmm0, rsi
.Lbinop_α_477_4:        cmp              cl, 5;                               je    .Lbinop_α_477_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_477_6
.Lbinop_α_477_5:        movq             xmm1, rdi
.Lbinop_α_477_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_477_0
                        mov              qword ptr [rbp + 64], 5
                        mov              qword ptr [rbp + 72], rax
.Lbinop_α_477_7:                                                              jmp   n00086_subscript_α
.Lbinop_α_477_0:        mov              rdi, qword ptr [rbp + 80]
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
                        cmp              al, 104;                             je    n00077_line_mark_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n00086_subscript_α
                        .size            n00085_binop_bx, .-n00085_binop_bx
                        .type            n00086_subscript_bx, @function
n00086_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_subscript_α:       mov              r11, 184
                        mov              rdi, qword ptr [rbp + 48]
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
                        cmp              al, 104;                             je    n00076_iterate_β
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
1:                                                                            jmp   n00087_lit_string_α
                        .size            n00086_subscript_bx, .-n00086_subscript_bx
                        .type            n00087_lit_string_bx, @function
n00087_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_lit_string_α:      mov              r11, 185
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_479_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00088_rev_assign_var_α
.Llit_string_α_479_0:   .quad            .Llit_string_α_479_0_s
.Llit_string_α_479_0_s: .string          "Q"
                        .size            n00087_lit_string_bx, .-n00087_lit_string_bx
                        .type            n00088_rev_assign_var_bx, @function
n00088_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_rev_assign_var_α:  mov              r11, 186
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
                        cmp              al, 104;                             je    n00076_iterate_β
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
1:                                                                            jmp   n00089_bound_α
n00088_rev_assign_var_β:  mov              r11, 186
                        mov              rdi, qword ptr [rbp + 256]
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
1:                                                                            jmp   n00076_iterate_β
                        .size            n00088_rev_assign_var_bx, .-n00088_rev_assign_var_bx
                        .type            n00089_bound_bx, @function
n00089_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_bound_α:           mov              r11, 187
                        mov              qword ptr [rbp + 352], rsp;          jmp   n00090_line_mark_α
                        .size            n00089_bound_bx, .-n00089_bound_bx
                        .type            n00090_line_mark_bx, @function
n00090_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_line_mark_α:       mov              r11, 188
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00091_lit_string_α
                        .size            n00090_line_mark_bx, .-n00090_line_mark_bx
                        .type            n00091_lit_string_bx, @function
n00091_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_485_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00092_var_α
.Llit_string_α_485_0:   .quad            .Llit_string_α_485_0_s
.Llit_string_α_485_0_s: .string          "  "
                        .size            n00091_lit_string_bx, .-n00091_lit_string_bx
                        .type            n00092_var_bx, @function
n00092_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_var_α:             mov              r11, 190
                        mov              rax, qword ptr [r9 + 112]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 624], rax           # result
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00093_line_mark_α
                        .size            n00092_var_bx, .-n00092_var_bx
                        .type            n00093_line_mark_bx, @function
n00093_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_line_mark_α:       mov              r11, 191
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00094_call_icon_α
                        .size            n00093_line_mark_bx, .-n00093_line_mark_bx
                        .type            n00094_call_icon_bx, @function
n00094_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_call_icon_α:       mov              r11, 192
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lcall_icon_α_rkfn490:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn490]
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
                        cmp              al, 104;                             je    n00095_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00095_line_mark_α
n00094_call_icon_β:       mov              r11, 192;                            jmp   n00095_line_mark_α
                        .size            n00094_call_icon_bx, .-n00094_call_icon_bx
                        .type            n00095_line_mark_bx, @function
n00095_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_line_mark_α:       mov              r11, 193
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00096_lit_string_α
                        .size            n00095_line_mark_bx, .-n00095_line_mark_bx
                        .type            n00096_lit_string_bx, @function
n00096_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_493_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00097_var_α
.Llit_string_α_493_0:   .quad            .Llit_string_α_493_0_s
.Llit_string_α_493_0_s: .string          "  "
                        .size            n00096_lit_string_bx, .-n00096_lit_string_bx
                        .type            n00097_var_bx, @function
n00097_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00097_var_α:             mov              r11, 195
                        mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 496], rax           # result
                        mov              qword ptr [rbp + 504], rdx;          jmp   n00098_line_mark_α
                        .size            n00097_var_bx, .-n00097_var_bx
                        .type            n00098_line_mark_bx, @function
n00098_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_line_mark_α:       mov              r11, 196
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00099_call_icon_α
                        .size            n00098_line_mark_bx, .-n00098_line_mark_bx
                        .type            n00099_call_icon_bx, @function
n00099_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_call_icon_α:       mov              r11, 197
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn498:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn498]
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
                        cmp              al, 104;                             je    n00100_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00101_conjunction_α
n00099_call_icon_β:       mov              r11, 197;                            jmp   n00100_unmark_α
                        .size            n00099_call_icon_bx, .-n00099_call_icon_bx
                        .type            n00101_conjunction_bx, @function
n00101_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_conjunction_α:     mov              r11, 198
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 392], rax;          jmp   n00100_unmark_α
n00101_conjunction_β:     mov              r11, 198;                            jmp   n00100_unmark_α
                        .size            n00101_conjunction_bx, .-n00101_conjunction_bx
                        .type            n00100_unmark_bx, @function
n00100_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_unmark_α:          mov              r11, 199
                        mov              rsp, qword ptr [rbp + 352];          jmp   n00088_rev_assign_var_β
                        .size            n00100_unmark_bx, .-n00100_unmark_bx
                        .type            n00077_line_mark_bx, @function
n00077_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_line_mark_α:       mov              r11, 200
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00102_line_mark_α
                        .size            n00077_line_mark_bx, .-n00077_line_mark_bx
                        .type            n00102_line_mark_bx, @function
n00102_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_line_mark_α:       mov              r11, 201
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00103_call_icon_α
                        .size            n00102_line_mark_bx, .-n00102_line_mark_bx
                        .type            n00103_call_icon_bx, @function
n00103_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_call_icon_α:       mov              r11, 202
                        .section         .rodata
.Lcall_icon_α_rkfn507:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn507]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
n00103_call_icon_β:       mov              r11, 202;                            jmp   show_ω
                        .size            n00103_call_icon_bx, .-n00103_call_icon_bx
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
                        lea              rcx, [rip + .Lshow_α_508_3]
                        push             rcx
                        lea              rcx, [rip + .Lshow_α_508_2]
                        push             rcx;                                 jmp   FN__show
.Lshow_α_508_2:         add              rsp, 24
                        pop              r12;                                 jmp   r12
.Lshow_α_508_3:         add              rsp, 24
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
                        sub              rsp, 3712
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3496], rax
                        mov              dword ptr [rsp + 3488], 160
                        mov              dword ptr [rsp + 3492], 3712
                        mov              eax, 0
                        mov              qword ptr [rsp + 3704], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 3488
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
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm509:      .string          "options"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm509]
                        mov              esi, 2
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
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
1:
.Loptions_α_508_247:    mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
options_α_body:
                        .type            n00104_line_mark_bx, @function
n00104_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_line_mark_α:       mov              r11, 203
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 106
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_667_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00105_line_mark_α
.Lline_mark_α_667_0:    .quad            .Lline_mark_α_667_0_s
.Lline_mark_α_667_0_s:  .string          "queens.icn"
                        .size            n00104_line_mark_bx, .-n00104_line_mark_bx
                        .type            n00105_line_mark_bx, @function
n00105_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_line_mark_α:       mov              r11, 204
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00106_var_ref_α
                        .size            n00105_line_mark_bx, .-n00105_line_mark_bx
                        .type            n00106_var_ref_bx, @function
n00106_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n00107_nulltest_var_α
                        .size            n00106_var_ref_bx, .-n00106_var_ref_bx
                        .type            n00107_nulltest_var_bx, @function
n00107_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_nulltest_var_α:    mov              r11, 206
                        mov              eax, dword ptr [rbp + 3184]
                        cmp              al, 104;                             je    n00108_line_mark_α
                        mov              rdi, qword ptr [rbp + 3184]
                        mov              rsi, qword ptr [rbp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00108_line_mark_α
                        cmp              eax, 0;                              jne   n00108_line_mark_α
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3200], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3208], rax
                        push             rax                                  # gc_poll bb_unop.cpp:55
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
1:                                                                            jmp   n00109_lit_charset_α
                        .size            n00107_nulltest_var_bx, .-n00107_nulltest_var_bx
                        .type            n00109_lit_charset_bx, @function
n00109_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_lit_charset_α:     mov              r11, 207
                        mov              qword ptr [rbp + 3280], 2            # result
                        mov              dword ptr [rbp + 3284], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_673_0]
                        mov              qword ptr [rbp + 3288], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_673_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
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
1:                                                                            jmp   n00110_line_mark_α
.Llit_charset_α_673_0:  .quad            .Llit_charset_α_673_0_s
.Llit_charset_α_673_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00109_lit_charset_bx, .-n00109_lit_charset_bx
                        .type            n00110_line_mark_bx, @function
n00110_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00110_line_mark_α:       mov              r11, 208
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00111_call_icon_α
                        .size            n00110_line_mark_bx, .-n00110_line_mark_bx
                        .type            n00111_call_icon_bx, @function
n00111_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_call_icon_α:       mov              r11, 209
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3256], rax
                        .section         .rodata
.Lcall_icon_α_rkfn677:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn677]
                        lea              rsi, [rbp + 3248]
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
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              al, 104;                             je    n00108_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00112_assign_var_α
n00111_call_icon_β:       mov              r11, 209;                            jmp   n00108_line_mark_α
                        .size            n00111_call_icon_bx, .-n00111_call_icon_bx
                        .type            n00112_assign_var_bx, @function
n00112_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_assign_var_α:      mov              r11, 210
                        mov              rdi, qword ptr [rbp + 3200]
                        mov              rsi, qword ptr [rbp + 3208]
                        mov              rdx, qword ptr [rbp + 3232]
                        mov              rcx, qword ptr [rbp + 3240]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00108_line_mark_α
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
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
1:                                                                            jmp   n00108_line_mark_α
                        .size            n00112_assign_var_bx, .-n00112_assign_var_bx
                        .type            n00108_line_mark_bx, @function
n00108_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_line_mark_α:       mov              r11, 211
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00113_line_mark_α
                        .size            n00108_line_mark_bx, .-n00108_line_mark_bx
                        .type            n00113_line_mark_bx, @function
n00113_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00113_line_mark_α:       mov              r11, 212
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00114_call_icon_α
                        .size            n00113_line_mark_bx, .-n00113_line_mark_bx
                        .type            n00114_call_icon_bx, @function
n00114_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_call_icon_α:       mov              r11, 213
                        .section         .rodata
.Lcall_icon_α_rkfn684:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn684]
                        lea              rsi, [rbp + 3152]
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
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              al, 104;                             je    n00115_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00116_assign_α
n00114_call_icon_β:       mov              r11, 213;                            jmp   n00115_line_mark_α
                        .size            n00114_call_icon_bx, .-n00114_call_icon_bx
                        .type            n00116_assign_bx, @function
n00116_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_assign_α:          mov              r11, 214
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx;         jmp   n00115_line_mark_α
                        .size            n00116_assign_bx, .-n00116_assign_bx
                        .type            n00115_line_mark_bx, @function
n00115_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_line_mark_α:       mov              r11, 215
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 109;            jmp   n00117_make_list_α
                        .size            n00115_line_mark_bx, .-n00115_line_mark_bx
                        .type            n00117_make_list_bx, @function
n00117_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_make_list_α:       mov              r11, 216
                        lea              rdi, [rbp + 3120]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:57
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
1:                                                                            jmp   n00118_assign_α
                        .size            n00117_make_list_bx, .-n00117_make_list_bx
                        .type            n00118_assign_bx, @function
n00118_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_assign_α:          mov              r11, 217
                        mov              rax, qword ptr [rbp + 3104]
                        mov              rdx, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n00119_line_mark_α
                        .size            n00118_assign_bx, .-n00118_assign_bx
                        .type            n00119_line_mark_bx, @function
n00119_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_line_mark_α:       mov              r11, 218
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00120_var_ref_α
                        .size            n00119_line_mark_bx, .-n00119_line_mark_bx
                        .type            n00120_var_ref_bx, @function
n00120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n00121_deref_α
                        .size            n00120_var_ref_bx, .-n00120_var_ref_bx
                        .type            n00121_deref_bx, @function
n00121_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_deref_α:           mov              r11, 220
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00122_line_mark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
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
1:                                                                            jmp   n00123_line_mark_α
                        .size            n00121_deref_bx, .-n00121_deref_bx
                        .type            n00123_line_mark_bx, @function
n00123_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_line_mark_α:       mov              r11, 221
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00124_call_icon_α
                        .size            n00123_line_mark_bx, .-n00123_line_mark_bx
                        .type            n00124_call_icon_bx, @function
n00124_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_call_icon_α:       mov              r11, 222
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lcall_icon_α_rkfn699:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn699]
                        lea              rsi, [rbp + 320]
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
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    n00122_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00125_assign_α
n00124_call_icon_β:       mov              r11, 222;                            jmp   n00122_line_mark_α
                        .size            n00124_call_icon_bx, .-n00124_call_icon_bx
                        .type            n00125_assign_bx, @function
n00125_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_assign_α:          mov              r11, 223
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx;         jmp   n00126_var_α
                        .size            n00125_assign_bx, .-n00125_assign_bx
                        .type            n00126_var_bx, @function
n00126_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3080], rax;         jmp   n00127_scan_enter_α
                        .size            n00126_var_bx, .-n00126_var_bx
                        .type            n00127_scan_enter_bx, @function
n00127_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_scan_enter_α:      mov              r11, 225
                        mov              qword ptr [rbp + 400], r13
                        mov              qword ptr [rbp + 408], r14
                        mov              qword ptr [rbp + 416], r15
                        mov              rdi, qword ptr [rbp + 3072]
                        mov              rsi, qword ptr [rbp + 3080]
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
1:                      test             rax, rax;                            je    n00120_var_ref_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00128_disjunction_α
                        .size            n00127_scan_enter_bx, .-n00127_scan_enter_bx
                        .type            n00128_disjunction_bx, @function
n00128_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_disjunction_α:     mov              r11, 226
                        mov              qword ptr [rbp + 464], 0
                        mov              qword ptr [rbp + 472], 0
                        mov              dword ptr [rbp + 480], 0;            jmp   n00129_lit_string_α
.Ldisjunction_γ_533_as: mov              r11, 226
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_706_0
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00130_scan_α
.Ldisjunction_α_706_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_706_1
                        mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 472], rax;          jmp   n00130_scan_α
.Ldisjunction_α_706_1:                                                        jmp   n00130_scan_α
n00128_disjunction_β:     mov              r11, 226
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 0;                              je    n00131_disjunction_β
                                                                              jmp   n00132_scan_α
.Ldisjunction_γ_533_af: mov              r11, 226
.Ldisjunction_ω_533_af: mov              r11, 226
                        add              dword ptr [rbp + 480], 1
                        mov              eax, dword ptr [rbp + 480]
                        cmp              eax, 1;                              je    n00133_var_ref_α
                                                                              jmp   n00132_scan_α
                        .size            n00128_disjunction_bx, .-n00128_disjunction_bx
                        .type            n00130_scan_bx, @function
n00130_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_scan_α:            mov              r11, 227
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 400]
                        mov              r14, qword ptr [rbp + 408]
                        mov              r15, qword ptr [rbp + 416];          jmp   n00120_var_ref_α
n00130_scan_β:            mov              r11, 227
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
                        mov              r14, rax;                            jmp   n00128_disjunction_β
                                                                              jmp   n00120_var_ref_α
                        .size            n00130_scan_bx, .-n00130_scan_bx
                        .type            n00134_conjunction_bx, @function
n00134_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_conjunction_α:     mov              r11, 228;                            jmp   .Ldisjunction_γ_533_as
n00134_conjunction_β:     mov              r11, 228;                            jmp   n00132_scan_α
                        .size            n00134_conjunction_bx, .-n00134_conjunction_bx
                        .type            n00133_var_ref_bx, @function
n00133_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx;         jmp   n00135_var_ref_α
n00133_var_ref_β:         mov              r11, 229;                            jmp   n00132_scan_α
                        .size            n00133_var_ref_bx, .-n00133_var_ref_bx
                        .type            n00135_var_ref_bx, @function
n00135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_var_ref_α:         mov              r11, 230
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3392]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx;         jmp   n00136_deref_α
                        .size            n00135_var_ref_bx, .-n00135_var_ref_bx
                        .type            n00136_deref_bx, @function
n00136_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_deref_α:           mov              r11, 231
                        mov              rdi, qword ptr [rbp + 3008]
                        mov              rsi, qword ptr [rbp + 3016]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00132_scan_α
                        mov              qword ptr [rbp + 3040], rax
                        mov              qword ptr [rbp + 3048], rdx
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
1:                                                                            jmp   n00137_deref_α
                        .size            n00136_deref_bx, .-n00136_deref_bx
                        .type            n00137_deref_bx, @function
n00137_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_deref_α:           mov              r11, 232
                        mov              rdi, qword ptr [rbp + 3024]
                        mov              rsi, qword ptr [rbp + 3032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00132_scan_α
                        mov              qword ptr [rbp + 3056], rax
                        mov              qword ptr [rbp + 3064], rdx
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
1:                                                                            jmp   n00138_line_mark_α
                        .size            n00137_deref_bx, .-n00137_deref_bx
                        .type            n00138_line_mark_bx, @function
n00138_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_line_mark_α:       mov              r11, 233
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 131;            jmp   n00139_call_icon_α
                        .size            n00138_line_mark_bx, .-n00138_line_mark_bx
                        .type            n00139_call_icon_bx, @function
n00139_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_call_icon_α:       mov              r11, 234
                        mov              rax, qword ptr [rbp + 3056]
                        mov              qword ptr [rbp + 2976], rax
                        mov              rax, qword ptr [rbp + 3064]
                        mov              qword ptr [rbp + 2984], rax
                        mov              rax, qword ptr [rbp + 3040]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3048]
                        mov              qword ptr [rbp + 2968], rax
                        .section         .rodata
.Lcall_icon_α_rkfn719:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn719]
                        lea              rsi, [rbp + 2960]
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
                        mov              qword ptr [rbp + 2944], rax
                        mov              qword ptr [rbp + 2952], rdx
                        cmp              al, 104;                             je    n00132_scan_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   .Ldisjunction_γ_533_as
n00139_call_icon_β:       mov              r11, 234;                            jmp   n00132_scan_α
                        .size            n00139_call_icon_bx, .-n00139_call_icon_bx
                        .type            n00129_lit_string_bx, @function
n00129_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_lit_string_α:      mov              r11, 235
                        mov              qword ptr [rbp + 2912], 2            # result
                        mov              dword ptr [rbp + 2916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_720_0]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n00140_scan_match_α
n00129_lit_string_β:      mov              r11, 235;                            jmp   .Ldisjunction_ω_533_af
.Llit_string_α_720_0:   .quad            .Llit_string_α_720_0_s
.Llit_string_α_720_0_s: .string          "-"
                        .size            n00129_lit_string_bx, .-n00129_lit_string_bx
                        .type            n00140_scan_match_bx, @function
n00140_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_scan_match_α:      mov              r11, 236
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_533_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_722_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_533_af
                        mov              qword ptr [rbp + 2880], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2888], rax;         jmp   n00141_scan_tab_α
.Lscan_match_α_722_0:   .quad            .Lscan_match_α_722_0_s
.Lscan_match_α_722_0_s: .string          "-"
                        .size            n00140_scan_match_bx, .-n00140_scan_match_bx
                        .type            n00141_scan_tab_bx, @function
n00141_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_scan_tab_α:        mov              r11, 237
                        mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_533_af
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
1:                      mov              rdi, qword ptr [rbp + 2880]
                        mov              rsi, qword ptr [rbp + 2888]
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_724_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_724_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_533_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_533_af
                        mov              qword ptr [rbp + 2864], r14
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
1:                      mov              qword ptr [rbp + 2848], rax
                        mov              qword ptr [rbp + 2856], rdx;         jmp   n00142_lit_integer_α
n00141_scan_tab_β:        mov              r11, 237
                        mov              r14, qword ptr [rbp + 2864];         jmp   .Ldisjunction_ω_533_af
                        .size            n00141_scan_tab_bx, .-n00141_scan_tab_bx
                        .type            n00142_lit_integer_bx, @function
n00142_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_lit_integer_α:     mov              r11, 238
                        mov              qword ptr [rbp + 2832], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_725_0]
                        mov              qword ptr [rbp + 2840], rax;         jmp   n00143_line_mark_α
.Llit_integer_α_725_0:  .quad            0
                        .size            n00142_lit_integer_bx, .-n00142_lit_integer_bx
                        .type            n00143_line_mark_bx, @function
n00143_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_line_mark_α:       mov              r11, 239
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00144_scan_pos_α
                        .size            n00143_line_mark_bx, .-n00143_line_mark_bx
                        .type            n00144_scan_pos_bx, @function
n00144_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_scan_pos_α:        mov              r11, 240
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_729_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_729_0:     cmp              rax, 1;                              jl    n00145_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00145_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00145_var_α
                        mov              qword ptr [rbp + 2800], 3
                        mov              qword ptr [rbp + 2808], rax;         jmp   n00141_scan_tab_β
                        .size            n00144_scan_pos_bx, .-n00144_scan_pos_bx
                        .type            n00145_var_bx, @function
n00145_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_var_α:             mov              r11, 241
                        mov              qword ptr [rbp + 2784], 0
                        mov              qword ptr [rbp + 2792], 0;           jmp   n00146_conjunction_α
n00145_var_β:             mov              r11, 241;                            jmp   n00141_scan_tab_β
                        .size            n00145_var_bx, .-n00145_var_bx
                        .type            n00146_conjunction_bx, @function
n00146_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_conjunction_α:     mov              r11, 242
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2776], rax;         jmp   n00147_line_mark_α
n00146_conjunction_β:     mov              r11, 242;                            jmp   .Ldisjunction_ω_533_af
                        .size            n00146_conjunction_bx, .-n00146_conjunction_bx
                        .type            n00147_line_mark_bx, @function
n00147_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_line_mark_α:       mov              r11, 243
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00148_disjunction_α
                        .size            n00147_line_mark_bx, .-n00147_line_mark_bx
                        .type            n00148_disjunction_bx, @function
n00148_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_disjunction_α:     mov              r11, 244
                        mov              qword ptr [rbp + 2528], 0
                        mov              qword ptr [rbp + 2536], 0
                        mov              dword ptr [rbp + 2544], 0;           jmp   n00149_lit_string_α
.Ldisjunction_γ_551_as: mov              r11, 244
                        mov              eax, dword ptr [rbp + 2544]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_735_0
                                                                              jmp   n00150_line_mark_α
.Ldisjunction_α_735_0:                                                        jmp   n00150_line_mark_α
n00148_disjunction_β:     mov              r11, 244
                        mov              eax, dword ptr [rbp + 2544];         jmp   n00150_line_mark_α
.Ldisjunction_γ_551_af: mov              r11, 244
.Ldisjunction_ω_551_af: mov              r11, 244
                        add              dword ptr [rbp + 2544], 1
                        mov              eax, dword ptr [rbp + 2544];         jmp   n00150_line_mark_α
                        .size            n00148_disjunction_bx, .-n00148_disjunction_bx
                        .type            n00150_line_mark_bx, @function
n00150_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_line_mark_α:       mov              r11, 245
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00151_lit_integer_α
                        .size            n00150_line_mark_bx, .-n00150_line_mark_bx
                        .type            n00151_lit_integer_bx, @function
n00151_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_lit_integer_α:     mov              r11, 246
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_738_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n00152_line_mark_α
.Llit_integer_α_738_0:  .quad            1
                        .size            n00151_lit_integer_bx, .-n00151_lit_integer_bx
                        .type            n00152_line_mark_bx, @function
n00152_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_line_mark_α:       mov              r11, 247
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00153_scan_move_α
                        .size            n00152_line_mark_bx, .-n00152_line_mark_bx
                        .type            n00153_scan_move_bx, @function
n00153_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_scan_move_α:       mov              r11, 248
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00132_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00132_scan_α
                        mov              qword ptr [rbp + 544], r14
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
1:                      mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n00154_assign_α
n00153_scan_move_β:       mov              r11, 248
                        mov              r14, qword ptr [rbp + 544];          jmp   n00132_scan_α
                        .size            n00153_scan_move_bx, .-n00153_scan_move_bx
                        .type            n00154_assign_bx, @function
n00154_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_assign_α:          mov              r11, 249
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx;         jmp   n00131_disjunction_α
                        .size            n00154_assign_bx, .-n00154_assign_bx
                        .type            n00131_disjunction_bx, @function
n00131_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_disjunction_α:     mov              r11, 250
                        mov              qword ptr [rbp + 592], 0
                        mov              qword ptr [rbp + 600], 0
                        mov              dword ptr [rbp + 608], 0;            jmp   n00155_var_ref_α
.Ldisjunction_γ_557_as: mov              r11, 250
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_745_0
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00151_lit_integer_α
.Ldisjunction_α_745_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_745_1
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00151_lit_integer_α
.Ldisjunction_α_745_1:                                                        jmp   n00151_lit_integer_α
n00131_disjunction_β:     mov              r11, 250
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 0;                              je    n00156_disjunction_β
                                                                              jmp   n00151_lit_integer_α
.Ldisjunction_γ_557_af: mov              r11, 250
.Ldisjunction_ω_557_af: mov              r11, 250
                        add              dword ptr [rbp + 608], 1
                        mov              eax, dword ptr [rbp + 608]
                        cmp              eax, 1;                              je    n00157_lit_string_α
                                                                              jmp   n00151_lit_integer_α
                        .size            n00131_disjunction_bx, .-n00131_disjunction_bx
                        .type            n00157_lit_string_bx, @function
n00157_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_lit_string_α:      mov              r11, 251
                        mov              qword ptr [rbp + 2448], 2            # result
                        mov              dword ptr [rbp + 2452], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_746_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n00158_var_ref_α
n00157_lit_string_β:      mov              r11, 251;                            jmp   n00151_lit_integer_α
.Llit_string_α_746_0:   .quad            .Llit_string_α_746_0_s
.Llit_string_α_746_0_s: .string          "Unrecognized option: -"
                        .size            n00157_lit_string_bx, .-n00157_lit_string_bx
                        .type            n00158_var_ref_bx, @function
n00158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_ref_α:         mov              r11, 252
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx;         jmp   n00159_deref_α
                        .size            n00158_var_ref_bx, .-n00158_var_ref_bx
                        .type            n00159_deref_bx, @function
n00159_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_deref_α:           mov              r11, 253
                        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00151_lit_integer_α
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
1:                                                                            jmp   n00160_line_mark_α
                        .size            n00159_deref_bx, .-n00159_deref_bx
                        .type            n00160_line_mark_bx, @function
n00160_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00160_line_mark_α:       mov              r11, 254
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00161_call_icon_α
                        .size            n00160_line_mark_bx, .-n00160_line_mark_bx
                        .type            n00161_call_icon_bx, @function
n00161_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_call_icon_α:       mov              r11, 255
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        .section         .rodata
.Lcall_icon_α_rkfn753:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn753]
                        lea              rsi, [rbp + 2400]
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
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    n00151_lit_integer_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   .Ldisjunction_γ_557_as
n00161_call_icon_β:       mov              r11, 255;                            jmp   n00151_lit_integer_α
                        .size            n00161_call_icon_bx, .-n00161_call_icon_bx
                        .type            n00155_var_ref_bx, @function
n00155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_var_ref_α:         mov              r11, 256
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx;         jmp   n00162_var_ref_α
n00155_var_ref_β:         mov              r11, 256;                            jmp   .Ldisjunction_ω_557_af
                        .size            n00155_var_ref_bx, .-n00155_var_ref_bx
                        .type            n00162_var_ref_bx, @function
n00162_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_var_ref_α:         mov              r11, 257
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx;         jmp   n00163_deref_α
                        .size            n00162_var_ref_bx, .-n00162_var_ref_bx
                        .type            n00163_deref_bx, @function
n00163_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_deref_α:           mov              r11, 258
                        mov              rdi, qword ptr [rbp + 2304]
                        mov              rsi, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_557_af
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
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
1:                                                                            jmp   n00164_deref_α
                        .size            n00163_deref_bx, .-n00163_deref_bx
                        .type            n00164_deref_bx, @function
n00164_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_deref_α:           mov              r11, 259
                        mov              rdi, qword ptr [rbp + 2320]
                        mov              rsi, qword ptr [rbp + 2328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_557_af
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
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
1:                                                                            jmp   n00165_line_mark_α
                        .size            n00164_deref_bx, .-n00164_deref_bx
                        .type            n00165_line_mark_bx, @function
n00165_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_line_mark_α:       mov              r11, 260
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00166_call_builtin_gen_α
                        .size            n00165_line_mark_bx, .-n00165_line_mark_bx
                        .type            n00166_call_builtin_gen_bx, @function
n00166_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_call_builtin_gen_α:
                        mov              r11, 261
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2248], rax
                        mov              qword ptr [rbp + 2272], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_762_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn261: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn261]
                        lea              rsi, [rbp + 2240]
                        mov              edx, 2
                        lea              rcx, [rbp + 2272]
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
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_557_af
                                                                              jmp   n00167_lit_integer_α
n00166_call_builtin_gen_β:
                        mov              r11, 261;                            jmp   .Lcall_builtin_gen_α_762_60
                        .size            n00166_call_builtin_gen_bx, .-n00166_call_builtin_gen_bx
                        .type            n00167_lit_integer_bx, @function
n00167_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_lit_integer_α:     mov              r11, 262
                        mov              qword ptr [rbp + 2368], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_763_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n00168_coerce_numeric_α
.Llit_integer_α_763_0:  .quad            1
                        .size            n00167_lit_integer_bx, .-n00167_lit_integer_bx
                        .type            n00168_coerce_numeric_bx, @function
n00168_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_coerce_numeric_α:  mov              r11, 263
                        mov              eax, dword ptr [rbp + 2224]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_765_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_765_0
                        mov              eax, dword ptr [rbp + 2368]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_765_0
.Lcoerce_numeric_α_765_1:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n00169_binop_α
.Lcoerce_numeric_α_765_0:
                        lea              rdi, [rbp + 2224]
                        lea              rsi, [rbp + 2368]
                        lea              rdx, [rbp + 2208]
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
1:                      mov              eax, dword ptr [rbp + 2208]
                        cmp              al, 104;                             je    .Ldisjunction_ω_557_af
                                                                              jmp   n00169_binop_α
                        .size            n00168_coerce_numeric_bx, .-n00168_coerce_numeric_bx
                        .type            n00169_binop_bx, @function
n00169_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_binop_α:           mov              r11, 264
                        mov              eax, dword ptr [rbp + 2208]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_766_2
                        mov              rax, qword ptr [rbp + 2216]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_766_0
                        mov              qword ptr [rbp + 2192], 3
                        mov              qword ptr [rbp + 2200], rax;         jmp   .Lbinop_α_766_7
.Lbinop_α_766_2:        and              edx, 1;                              jz    .Lbinop_α_766_0
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_766_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_766_4
.Lbinop_α_766_3:        movq             xmm0, rsi
.Lbinop_α_766_4:        cmp              cl, 5;                               je    .Lbinop_α_766_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_766_6
.Lbinop_α_766_5:        movq             xmm1, rdi
.Lbinop_α_766_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_766_0
                        mov              qword ptr [rbp + 2192], 5
                        mov              qword ptr [rbp + 2200], rax
.Lbinop_α_766_7:                                                              jmp   n00170_assign_α
.Lbinop_α_766_0:        mov              rdi, qword ptr [rbp + 2208]
                        mov              rsi, qword ptr [rbp + 2216]
                        mov              rdx, qword ptr [rbp + 2368]
                        mov              rcx, qword ptr [rbp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_557_af
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:297
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
1:                                                                            jmp   n00170_assign_α
                        .size            n00169_binop_bx, .-n00169_binop_bx
                        .type            n00170_assign_bx, @function
n00170_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_assign_α:          mov              r11, 265
                        mov              rax, qword ptr [rbp + 2192]
                        mov              rdx, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx;         jmp   n00171_var_ref_α
                        .size            n00170_assign_bx, .-n00170_assign_bx
                        .type            n00171_var_ref_bx, @function
n00171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3344]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n00172_var_α
                        .size            n00171_var_ref_bx, .-n00171_var_ref_bx
                        .type            n00172_var_bx, @function
n00172_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_var_α:             mov              r11, 267
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 648], rax;          jmp   n00173_subscript_α
                        .size            n00172_var_bx, .-n00172_var_bx
                        .type            n00173_subscript_bx, @function
n00173_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_subscript_α:       mov              r11, 268
                        mov              rdi, qword ptr [rbp + 624]
                        mov              rsi, qword ptr [rbp + 632]
                        mov              rdx, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00151_lit_integer_α
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
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
1:                                                                            jmp   n00156_disjunction_α
                        .size            n00173_subscript_bx, .-n00173_subscript_bx
                        .type            n00156_disjunction_bx, @function
n00156_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_disjunction_α:     mov              r11, 269
                        mov              qword ptr [rbp + 688], 0
                        mov              qword ptr [rbp + 696], 0
                        mov              dword ptr [rbp + 704], 0;            jmp   n00174_lit_charset_α
.Ldisjunction_γ_576_as: mov              r11, 269
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_774_0
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00175_assign_var_α
.Ldisjunction_α_774_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_774_1
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 696], rax;          jmp   n00175_assign_var_α
.Ldisjunction_α_774_1:                                                        jmp   n00175_assign_var_α
n00156_disjunction_β:     mov              r11, 269
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 0;                              je    n00151_lit_integer_α
                                                                              jmp   n00151_lit_integer_α
.Ldisjunction_γ_576_af: mov              r11, 269
.Ldisjunction_ω_576_af: mov              r11, 269
                        add              dword ptr [rbp + 704], 1
                        mov              eax, dword ptr [rbp + 704]
                        cmp              eax, 1;                              je    n00176_lit_integer_α
                                                                              jmp   n00151_lit_integer_α
                        .size            n00156_disjunction_bx, .-n00156_disjunction_bx
                        .type            n00175_assign_var_bx, @function
n00175_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_assign_var_α:      mov              r11, 270
                        mov              rdi, qword ptr [rbp + 656]
                        mov              rsi, qword ptr [rbp + 664]
                        mov              rdx, qword ptr [rbp + 688]
                        mov              rcx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00151_lit_integer_α
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
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
1:                                                                            jmp   .Ldisjunction_γ_557_as
n00175_assign_var_β:      mov              r11, 270;                            jmp   n00151_lit_integer_α
                        .size            n00175_assign_var_bx, .-n00175_assign_var_bx
                        .type            n00176_lit_integer_bx, @function
n00176_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_lit_integer_α:     mov              r11, 271
                        mov              qword ptr [rbp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_776_0]
                        mov              qword ptr [rbp + 2184], rax;         jmp   .Ldisjunction_γ_576_as
n00176_lit_integer_β:     mov              r11, 271;                            jmp   n00151_lit_integer_α
.Llit_integer_α_776_0:  .quad            1
                        .size            n00176_lit_integer_bx, .-n00176_lit_integer_bx
                        .type            n00174_lit_charset_bx, @function
n00174_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_lit_charset_α:     mov              r11, 272
                        mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_777_0]
                        mov              qword ptr [rbp + 2056], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_777_0]
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
                        push             rax                                  # gc_poll bb_lit_scalar.cpp:90
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
1:                                                                            jmp   n00177_var_ref_α
n00174_lit_charset_β:     mov              r11, 272;                            jmp   .Ldisjunction_ω_576_af
.Llit_charset_α_777_0:  .quad            .Llit_charset_α_777_0_s
.Llit_charset_α_777_0_s:
                        .string          "+.:"
                        .size            n00174_lit_charset_bx, .-n00174_lit_charset_bx
                        .type            n00177_var_ref_bx, @function
n00177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx;         jmp   n00178_var_α
                        .size            n00177_var_ref_bx, .-n00177_var_ref_bx
                        .type            n00178_var_bx, @function
n00178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_var_α:             mov              r11, 274
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n00179_subscript_α
                        .size            n00178_var_bx, .-n00178_var_bx
                        .type            n00179_subscript_bx, @function
n00179_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_subscript_α:       mov              r11, 275
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2096]
                        mov              rcx, qword ptr [rbp + 2104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_576_af
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
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
1:                                                                            jmp   n00180_deref_α
                        .size            n00179_subscript_bx, .-n00179_subscript_bx
                        .type            n00180_deref_bx, @function
n00180_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_deref_α:           mov              r11, 276
                        mov              rdi, qword ptr [rbp + 2112]
                        mov              rsi, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_576_af
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
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
1:                                                                            jmp   n00181_assign_α
                        .size            n00180_deref_bx, .-n00180_deref_bx
                        .type            n00181_assign_bx, @function
n00181_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_assign_α:          mov              r11, 277
                        mov              rax, qword ptr [rbp + 2128]
                        mov              rdx, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx;         jmp   n00182_var_ref_α
                        .size            n00181_assign_bx, .-n00181_assign_bx
                        .type            n00182_var_ref_bx, @function
n00182_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3440]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n00183_deref_α
                        .size            n00182_var_ref_bx, .-n00182_var_ref_bx
                        .type            n00183_deref_bx, @function
n00183_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_deref_α:           mov              r11, 279
                        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_576_af
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
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
1:                                                                            jmp   n00184_line_mark_α
                        .size            n00183_deref_bx, .-n00183_deref_bx
                        .type            n00184_line_mark_bx, @function
n00184_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_line_mark_α:       mov              r11, 280
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 117;            jmp   n00185_call_icon_α
                        .size            n00184_line_mark_bx, .-n00184_line_mark_bx
                        .type            n00185_call_icon_bx, @function
n00185_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_call_icon_α:       mov              r11, 281
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
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
.Lcall_icon_α_bynamefn281: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn281]
                        lea              rsi, [rbp + 2000]
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
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_576_af
                                                                              jmp   n00186_line_mark_α
n00185_call_icon_β:       mov              r11, 281;                            jmp   .Ldisjunction_ω_576_af
                        .size            n00185_call_icon_bx, .-n00185_call_icon_bx
                        .type            n00186_line_mark_bx, @function
n00186_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_line_mark_α:       mov              r11, 282
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00187_disjunction_α
                        .size            n00186_line_mark_bx, .-n00186_line_mark_bx
                        .type            n00187_disjunction_bx, @function
n00187_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_disjunction_α:     mov              r11, 283
                        mov              qword ptr [rbp + 1616], 0
                        mov              qword ptr [rbp + 1624], 0
                        mov              dword ptr [rbp + 1632], 0;           jmp   n00188_lit_string_α
.Ldisjunction_γ_590_as: mov              r11, 283
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_794_0
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n00189_assign_α
.Ldisjunction_α_794_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_794_1
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n00189_assign_α
.Ldisjunction_α_794_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_794_2
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n00189_assign_α
.Ldisjunction_α_794_2:                                                        jmp   n00189_assign_α
n00187_disjunction_β:     mov              r11, 283
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 0;                              je    n00190_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_590_af
                                                                              jmp   .Ldisjunction_ω_590_af
.Ldisjunction_γ_590_af: mov              r11, 283
.Ldisjunction_ω_590_af: mov              r11, 283
                        add              dword ptr [rbp + 1632], 1
                        mov              eax, dword ptr [rbp + 1632]
                        cmp              eax, 1;                              je    n00191_var_ref_α
                        cmp              eax, 2;                              je    n00192_lit_string_α
                                                                              jmp   n00193_line_mark_α
                        .size            n00187_disjunction_bx, .-n00187_disjunction_bx
                        .type            n00189_assign_bx, @function
n00189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_assign_α:          mov              r11, 284
                        mov              rax, qword ptr [rbp + 1616]
                        mov              rdx, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx;         jmp   n00193_line_mark_α
                        .size            n00189_assign_bx, .-n00189_assign_bx
                        .type            n00193_line_mark_bx, @function
n00193_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_line_mark_α:       mov              r11, 285
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00194_var_α
                        .size            n00193_line_mark_bx, .-n00193_line_mark_bx
                        .type            n00194_var_bx, @function
n00194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_var_α:             mov              r11, 286
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 760], rax;          jmp   n00195_lit_string_α
                        .size            n00194_var_bx, .-n00194_var_bx
                        .type            n00195_lit_string_bx, @function
n00195_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_lit_string_α:      mov              r11, 287
                        mov              qword ptr [rbp + 1504], 2            # result
                        mov              dword ptr [rbp + 1508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_800_0]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n00196_call_builtin_α
.Llit_string_α_800_0:   .quad            .Llit_string_α_800_0_s
.Llit_string_α_800_0_s: .string          ":"
                        .size            n00195_lit_string_bx, .-n00195_lit_string_bx
                        .type            n00196_call_builtin_bx, @function
n00196_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_call_builtin_α:    mov              r11, 288
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1576], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn802: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn802]
                        lea              rsi, [rbp + 1568]
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
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n00197_lit_string_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00198_var_α
n00196_call_builtin_β:    mov              r11, 288;                            jmp   n00197_lit_string_α
                        .size            n00196_call_builtin_bx, .-n00196_call_builtin_bx
                        .type            n00198_var_bx, @function
n00198_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_α:             mov              r11, 289
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00199_assign_α
                        .size            n00198_var_bx, .-n00198_var_bx
                        .type            n00199_assign_bx, @function
n00199_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00200_var_α
                        .size            n00199_assign_bx, .-n00199_assign_bx
                        .type            n00197_lit_string_bx, @function
n00197_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_lit_string_α:      mov              r11, 291
                        mov              qword ptr [rbp + 1136], 2            # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_806_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n00201_call_builtin_α
.Llit_string_α_806_0:   .quad            .Llit_string_α_806_0_s
.Llit_string_α_806_0_s: .string          "+"
                        .size            n00197_lit_string_bx, .-n00197_lit_string_bx
                        .type            n00201_call_builtin_bx, @function
n00201_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_call_builtin_α:    mov              r11, 292
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1480], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn808: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn808]
                        lea              rsi, [rbp + 1472]
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
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    n00202_lit_string_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00203_disjunction_α
n00201_call_builtin_β:    mov              r11, 292;                            jmp   n00202_lit_string_α
                        .size            n00201_call_builtin_bx, .-n00201_call_builtin_bx
                        .type            n00203_disjunction_bx, @function
n00203_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_disjunction_α:     mov              r11, 293
                        mov              qword ptr [rbp + 1168], 0
                        mov              qword ptr [rbp + 1176], 0
                        mov              dword ptr [rbp + 1184], 0;           jmp   n00204_var_ref_α
.Ldisjunction_γ_600_as: mov              r11, 293
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_810_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00205_assign_α
.Ldisjunction_α_810_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_810_1
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00205_assign_α
.Ldisjunction_α_810_1:                                                        jmp   n00205_assign_α
n00203_disjunction_β:     mov              r11, 293
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_600_af
                                                                              jmp   .Ldisjunction_ω_600_af
.Ldisjunction_γ_600_af: mov              r11, 293
.Ldisjunction_ω_600_af: mov              r11, 293
                        add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1;                              je    n00206_lit_string_α
                                                                              jmp   n00151_lit_integer_α
                        .size            n00203_disjunction_bx, .-n00203_disjunction_bx
                        .type            n00205_assign_bx, @function
n00205_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_assign_α:          mov              r11, 294
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00200_var_α
                        .size            n00205_assign_bx, .-n00205_assign_bx
                        .type            n00206_lit_string_bx, @function
n00206_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_lit_string_α:      mov              r11, 295
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_812_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00207_var_ref_α
n00206_lit_string_β:      mov              r11, 295;                            jmp   .Ldisjunction_ω_600_af
.Llit_string_α_812_0:   .quad            .Llit_string_α_812_0_s
.Llit_string_α_812_0_s: .string          "-"
                        .size            n00206_lit_string_bx, .-n00206_lit_string_bx
                        .type            n00207_var_ref_bx, @function
n00207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n00208_lit_string_α
                        .size            n00207_var_ref_bx, .-n00207_var_ref_bx
                        .type            n00208_lit_string_bx, @function
n00208_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rbp + 1408], 2            # result
                        mov              dword ptr [rbp + 1412], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_815_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n00209_deref_α
.Llit_string_α_815_0:   .quad            .Llit_string_α_815_0_s
.Llit_string_α_815_0_s: .string          " needs numeric parameter"
                        .size            n00208_lit_string_bx, .-n00208_lit_string_bx
                        .type            n00209_deref_bx, @function
n00209_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_deref_α:           mov              r11, 298
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              rsi, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_600_af
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
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
1:                                                                            jmp   n00210_line_mark_α
                        .size            n00209_deref_bx, .-n00209_deref_bx
                        .type            n00210_line_mark_bx, @function
n00210_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_line_mark_α:       mov              r11, 299
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00211_call_icon_α
                        .size            n00210_line_mark_bx, .-n00210_line_mark_bx
                        .type            n00211_call_icon_bx, @function
n00211_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_call_icon_α:       mov              r11, 300
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1304], rax
                        .section         .rodata
.Lcall_icon_α_rkfn820:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn820]
                        lea              rsi, [rbp + 1296]
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
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_600_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   .Ldisjunction_γ_600_as
n00211_call_icon_β:       mov              r11, 300;                            jmp   .Ldisjunction_ω_600_af
                        .size            n00211_call_icon_bx, .-n00211_call_icon_bx
                        .type            n00204_var_ref_bx, @function
n00204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_ref_α:         mov              r11, 301
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n00212_deref_α
n00204_var_ref_β:         mov              r11, 301;                            jmp   .Ldisjunction_ω_600_af
                        .size            n00204_var_ref_bx, .-n00204_var_ref_bx
                        .type            n00212_deref_bx, @function
n00212_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_deref_α:           mov              r11, 302
                        mov              rdi, qword ptr [rbp + 1248]
                        mov              rsi, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_600_af
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
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
1:                                                                            jmp   n00213_line_mark_α
                        .size            n00212_deref_bx, .-n00212_deref_bx
                        .type            n00213_line_mark_bx, @function
n00213_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_line_mark_α:       mov              r11, 303
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00214_call_icon_α
                        .size            n00213_line_mark_bx, .-n00213_line_mark_bx
                        .type            n00214_call_icon_bx, @function
n00214_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_call_icon_α:       mov              r11, 304
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn827:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn827]
                        lea              rsi, [rbp + 1216]
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
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_600_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   .Ldisjunction_γ_600_as
n00214_call_icon_β:       mov              r11, 304;                            jmp   .Ldisjunction_ω_600_af
                        .size            n00214_call_icon_bx, .-n00214_call_icon_bx
                        .type            n00202_lit_string_bx, @function
n00202_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_string_α:      mov              r11, 305
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_828_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00215_call_builtin_α
.Llit_string_α_828_0:   .quad            .Llit_string_α_828_0_s
.Llit_string_α_828_0_s: .string          "."
                        .size            n00202_lit_string_bx, .-n00202_lit_string_bx
                        .type            n00215_call_builtin_bx, @function
n00215_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_call_builtin_α:    mov              r11, 306
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn830: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn830]
                        lea              rsi, [rbp + 1104]
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
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n00151_lit_integer_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00216_disjunction_α
n00215_call_builtin_β:    mov              r11, 306;                            jmp   n00151_lit_integer_α
                        .size            n00215_call_builtin_bx, .-n00215_call_builtin_bx
                        .type            n00216_disjunction_bx, @function
n00216_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_disjunction_α:     mov              r11, 307
                        mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0;            jmp   n00217_var_ref_α
.Ldisjunction_γ_614_as: mov              r11, 307
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_832_0
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00218_assign_α
.Ldisjunction_α_832_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_832_1
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00218_assign_α
.Ldisjunction_α_832_1:                                                        jmp   n00218_assign_α
n00216_disjunction_β:     mov              r11, 307
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_614_af
                                                                              jmp   .Ldisjunction_ω_614_af
.Ldisjunction_γ_614_af: mov              r11, 307
.Ldisjunction_ω_614_af: mov              r11, 307
                        add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1;                              je    n00219_lit_string_α
                                                                              jmp   n00151_lit_integer_α
                        .size            n00216_disjunction_bx, .-n00216_disjunction_bx
                        .type            n00218_assign_bx, @function
n00218_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_assign_α:          mov              r11, 308
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 3424], rax
                        mov              qword ptr [rbp + 3432], rdx;         jmp   n00200_var_α
                        .size            n00218_assign_bx, .-n00218_assign_bx
                        .type            n00200_var_bx, @function
n00200_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_var_α:             mov              r11, 309
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 744], rax;          jmp   n00220_conjunction_α
                        .size            n00200_var_bx, .-n00200_var_bx
                        .type            n00220_conjunction_bx, @function
n00220_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_conjunction_α:     mov              r11, 310
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 728], rax;          jmp   .Ldisjunction_γ_576_as
n00220_conjunction_β:     mov              r11, 310;                            jmp   n00151_lit_integer_α
                        .size            n00220_conjunction_bx, .-n00220_conjunction_bx
                        .type            n00219_lit_string_bx, @function
n00219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_lit_string_α:      mov              r11, 311
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_837_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n00221_var_ref_α
n00219_lit_string_β:      mov              r11, 311;                            jmp   .Ldisjunction_ω_614_af
.Llit_string_α_837_0:   .quad            .Llit_string_α_837_0_s
.Llit_string_α_837_0_s: .string          "-"
                        .size            n00219_lit_string_bx, .-n00219_lit_string_bx
                        .type            n00221_var_ref_bx, @function
n00221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_var_ref_α:         mov              r11, 312
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n00222_lit_string_α
                        .size            n00221_var_ref_bx, .-n00221_var_ref_bx
                        .type            n00222_lit_string_bx, @function
n00222_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_lit_string_α:      mov              r11, 313
                        mov              qword ptr [rbp + 1040], 2            # result
                        mov              dword ptr [rbp + 1044], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_840_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n00223_deref_α
.Llit_string_α_840_0:   .quad            .Llit_string_α_840_0_s
.Llit_string_α_840_0_s: .string          " needs numeric parameter"
                        .size            n00222_lit_string_bx, .-n00222_lit_string_bx
                        .type            n00223_deref_bx, @function
n00223_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_deref_α:           mov              r11, 314
                        mov              rdi, qword ptr [rbp + 1024]
                        mov              rsi, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_614_af
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
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
1:                                                                            jmp   n00224_line_mark_α
                        .size            n00223_deref_bx, .-n00223_deref_bx
                        .type            n00224_line_mark_bx, @function
n00224_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_line_mark_α:       mov              r11, 315
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00225_call_icon_α
                        .size            n00224_line_mark_bx, .-n00224_line_mark_bx
                        .type            n00225_call_icon_bx, @function
n00225_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_call_icon_α:       mov              r11, 316
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lcall_icon_α_rkfn845:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn845]
                        lea              rsi, [rbp + 928]
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
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_614_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   .Ldisjunction_γ_614_as
n00225_call_icon_β:       mov              r11, 316;                            jmp   .Ldisjunction_ω_614_af
                        .size            n00225_call_icon_bx, .-n00225_call_icon_bx
                        .type            n00217_var_ref_bx, @function
n00217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_var_ref_α:         mov              r11, 317
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3456]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n00226_deref_α
n00217_var_ref_β:         mov              r11, 317;                            jmp   .Ldisjunction_ω_614_af
                        .size            n00217_var_ref_bx, .-n00217_var_ref_bx
                        .type            n00226_deref_bx, @function
n00226_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_deref_α:           mov              r11, 318
                        mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_614_af
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
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
1:                                                                            jmp   n00227_line_mark_α
                        .size            n00226_deref_bx, .-n00226_deref_bx
                        .type            n00227_line_mark_bx, @function
n00227_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_line_mark_α:       mov              r11, 319
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00228_call_icon_α
                        .size            n00227_line_mark_bx, .-n00227_line_mark_bx
                        .type            n00228_call_icon_bx, @function
n00228_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_call_icon_α:       mov              r11, 320
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_icon_α_rkfn852:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn852]
                        lea              rsi, [rbp + 848]
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
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_614_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   .Ldisjunction_γ_614_as
n00228_call_icon_β:       mov              r11, 320;                            jmp   .Ldisjunction_ω_614_af
                        .size            n00228_call_icon_bx, .-n00228_call_icon_bx
                        .type            n00192_lit_string_bx, @function
n00192_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_lit_string_α:      mov              r11, 321
                        mov              qword ptr [rbp + 1904], 2            # result
                        mov              dword ptr [rbp + 1908], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_853_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n00229_var_ref_α
n00192_lit_string_β:      mov              r11, 321;                            jmp   .Ldisjunction_ω_590_af
.Llit_string_α_853_0:   .quad            .Llit_string_α_853_0_s
.Llit_string_α_853_0_s: .string          "No parameter following -"
                        .size            n00192_lit_string_bx, .-n00192_lit_string_bx
                        .type            n00229_var_ref_bx, @function
n00229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_var_ref_α:         mov              r11, 322
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3408]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n00230_deref_α
                        .size            n00229_var_ref_bx, .-n00229_var_ref_bx
                        .type            n00230_deref_bx, @function
n00230_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_deref_α:           mov              r11, 323
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_590_af
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
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
n00231_line_mark_α:       mov              r11, 324
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00232_call_icon_α
                        .size            n00231_line_mark_bx, .-n00231_line_mark_bx
                        .type            n00232_call_icon_bx, @function
n00232_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_call_icon_α:       mov              r11, 325
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        .section         .rodata
.Lcall_icon_α_rkfn860:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn860]
                        lea              rsi, [rbp + 1856]
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
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_590_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   .Ldisjunction_γ_590_as
n00232_call_icon_β:       mov              r11, 325;                            jmp   .Ldisjunction_ω_590_af
                        .size            n00232_call_icon_bx, .-n00232_call_icon_bx
                        .type            n00191_var_ref_bx, @function
n00191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx;         jmp   n00233_deref_α
n00191_var_ref_β:         mov              r11, 326;                            jmp   .Ldisjunction_ω_590_af
                        .size            n00191_var_ref_bx, .-n00191_var_ref_bx
                        .type            n00233_deref_bx, @function
n00233_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_deref_α:           mov              r11, 327
                        mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_590_af
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
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
1:                                                                            jmp   n00234_line_mark_α
                        .size            n00233_deref_bx, .-n00233_deref_bx
                        .type            n00234_line_mark_bx, @function
n00234_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_line_mark_α:       mov              r11, 328
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00235_call_icon_α
                        .size            n00234_line_mark_bx, .-n00234_line_mark_bx
                        .type            n00235_call_icon_bx, @function
n00235_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_call_icon_α:       mov              r11, 329
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1784], rax
                        .section         .rodata
.Lcall_icon_α_rkfn867:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn867]
                        lea              rsi, [rbp + 1776]
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
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_590_af
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   .Ldisjunction_γ_590_as
n00235_call_icon_β:       mov              r11, 329;                            jmp   .Ldisjunction_ω_590_af
                        .size            n00235_call_icon_bx, .-n00235_call_icon_bx
                        .type            n00188_lit_string_bx, @function
n00188_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rbp + 1664], 2            # result
                        mov              dword ptr [rbp + 1668], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_868_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n00236_lit_integer_α
n00188_lit_string_β:      mov              r11, 330;                            jmp   .Ldisjunction_ω_590_af
.Llit_string_α_868_0:   .quad            .Llit_string_α_868_0_s
.Llit_string_α_868_0_s: .string          ""
                        .size            n00188_lit_string_bx, .-n00188_lit_string_bx
                        .type            n00236_lit_integer_bx, @function
n00236_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_lit_integer_α:     mov              r11, 331
                        mov              qword ptr [rbp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_869_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n00237_line_mark_α
.Llit_integer_α_869_0:  .quad            0
                        .size            n00236_lit_integer_bx, .-n00236_lit_integer_bx
                        .type            n00237_line_mark_bx, @function
n00237_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_line_mark_α:       mov              r11, 332
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00190_scan_tab_α
                        .size            n00237_line_mark_bx, .-n00237_line_mark_bx
                        .type            n00190_scan_tab_bx, @function
n00190_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_scan_tab_α:        mov              r11, 333
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_873_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_873_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_590_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_590_af
                        mov              qword ptr [rbp + 1712], r14
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
1:                      mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n00238_binop_test_α
n00190_scan_tab_β:        mov              r11, 333
                        mov              r14, qword ptr [rbp + 1712];         jmp   .Ldisjunction_ω_590_af
                        .size            n00190_scan_tab_bx, .-n00190_scan_tab_bx
                        .type            n00238_binop_test_bx, @function
n00238_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_binop_test_α:      mov              r11, 334
                        mov              rdi, qword ptr [rbp + 1664]
                        mov              rsi, qword ptr [rbp + 1672]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
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
1:                      test             eax, eax;                            jz    n00190_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
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
1:                                                                            jmp   .Ldisjunction_γ_590_as
n00238_binop_test_β:      mov              r11, 334;                            jmp   n00190_scan_tab_β
                        .size            n00238_binop_test_bx, .-n00238_binop_test_bx
                        .type            n00132_scan_bx, @function
n00132_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00132_scan_α:            mov              r11, 335
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 400]
                        mov              r14, qword ptr [rbp + 408]
                        mov              r15, qword ptr [rbp + 416];          jmp   n00120_var_ref_α
n00132_scan_β:            mov              r11, 335;                            jmp   n00120_var_ref_α
                        .size            n00132_scan_bx, .-n00132_scan_bx
                        .type            n00149_lit_string_bx, @function
n00149_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_lit_string_α:      mov              r11, 336
                        mov              qword ptr [rbp + 2720], 2            # result
                        mov              dword ptr [rbp + 2724], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_877_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n00239_scan_match_α
n00149_lit_string_β:      mov              r11, 336;                            jmp   .Ldisjunction_ω_551_af
.Llit_string_α_877_0:   .quad            .Llit_string_α_877_0_s
.Llit_string_α_877_0_s: .string          "-"
                        .size            n00149_lit_string_bx, .-n00149_lit_string_bx
                        .type            n00239_scan_match_bx, @function
n00239_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_scan_match_α:      mov              r11, 337
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_551_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_879_0]
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
                        test             eax, eax;                            jne   .Ldisjunction_ω_551_af
                        mov              qword ptr [rbp + 2688], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 2696], rax;         jmp   n00240_scan_tab_α
.Lscan_match_α_879_0:   .quad            .Lscan_match_α_879_0_s
.Lscan_match_α_879_0_s: .string          "-"
                        .size            n00239_scan_match_bx, .-n00239_scan_match_bx
                        .type            n00240_scan_tab_bx, @function
n00240_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_scan_tab_α:        mov              r11, 338
                        mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
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
                        test             eax, eax;                            jz    .Ldisjunction_ω_551_af
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
1:                      mov              rdi, qword ptr [rbp + 2688]
                        mov              rsi, qword ptr [rbp + 2696]
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
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_881_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_881_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_551_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_551_af
                        mov              qword ptr [rbp + 2672], r14
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
1:                      mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx;         jmp   n00241_lit_integer_α
n00240_scan_tab_β:        mov              r11, 338
                        mov              r14, qword ptr [rbp + 2672];         jmp   .Ldisjunction_ω_551_af
                        .size            n00240_scan_tab_bx, .-n00240_scan_tab_bx
                        .type            n00241_lit_integer_bx, @function
n00241_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_lit_integer_α:     mov              r11, 339
                        mov              qword ptr [rbp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_882_0]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n00242_line_mark_α
.Llit_integer_α_882_0:  .quad            0
                        .size            n00241_lit_integer_bx, .-n00241_lit_integer_bx
                        .type            n00242_line_mark_bx, @function
n00242_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_line_mark_α:       mov              r11, 340
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00243_scan_pos_α
                        .size            n00242_line_mark_bx, .-n00242_line_mark_bx
                        .type            n00243_scan_pos_bx, @function
n00243_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_scan_pos_α:        mov              r11, 341
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_886_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_886_0:     cmp              rax, 1;                              jl    n00240_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00240_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00240_scan_tab_β
                        mov              qword ptr [rbp + 2608], 3
                        mov              qword ptr [rbp + 2616], rax;         jmp   n00244_conjunction_α
                        .size            n00243_scan_pos_bx, .-n00243_scan_pos_bx
                        .type            n00244_conjunction_bx, @function
n00244_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_conjunction_α:     mov              r11, 342
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2600], rax;         jmp   n00245_scan_α
n00244_conjunction_β:     mov              r11, 342;                            jmp   .Ldisjunction_ω_551_af
                        .size            n00244_conjunction_bx, .-n00244_conjunction_bx
                        .type            n00245_scan_bx, @function
n00245_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_scan_α:            mov              r11, 343
                        mov              rdi, qword ptr [rbp + 400]
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave_ns@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 400]
                        mov              r14, qword ptr [rbp + 408]
                        mov              r15, qword ptr [rbp + 416];          jmp   n00246_var_α
n00245_scan_β:            mov              r11, 343;                            jmp   n00246_var_α
                        .size            n00245_scan_bx, .-n00245_scan_bx
                        .type            n00246_var_bx, @function
n00246_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_var_α:             mov              r11, 344
                        mov              qword ptr [rbp + 2560], 0
                        mov              qword ptr [rbp + 2568], 0;           jmp   n00247_assign_α
n00246_var_β:             mov              r11, 344;                            jmp   n00248_var_α
                        .size            n00246_var_bx, .-n00246_var_bx
                        .type            n00247_assign_bx, @function
n00247_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_assign_α:          mov              r11, 345
                        mov              rax, qword ptr [rbp + 2560]
                        mov              rdx, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n00248_var_α
                        .size            n00247_assign_bx, .-n00247_assign_bx
                        .type            n00248_var_bx, @function
n00248_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_α:             mov              r11, 346
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00122_line_mark_α
                        .size            n00248_var_bx, .-n00248_var_bx
                        .type            n00122_line_mark_bx, @function
n00122_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_line_mark_α:       mov              r11, 347
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00249_var_ref_α
                        .size            n00122_line_mark_bx, .-n00122_line_mark_bx
                        .type            n00249_var_ref_bx, @function
n00249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_var_ref_α:         mov              r11, 348
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00250_var_ref_α
                        .size            n00249_var_ref_bx, .-n00249_var_ref_bx
                        .type            n00250_var_ref_bx, @function
n00250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_var_ref_α:         mov              r11, 349
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 3360]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00251_deref_α
                        .size            n00250_var_ref_bx, .-n00250_var_ref_bx
                        .type            n00251_deref_bx, @function
n00251_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_deref_α:           mov              r11, 350
                        mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00252_line_mark_α
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
1:                                                                            jmp   n00253_line_mark_α
                        .size            n00251_deref_bx, .-n00251_deref_bx
                        .type            n00253_line_mark_bx, @function
n00253_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_line_mark_α:       mov              r11, 351
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00254_call_icon_α
                        .size            n00253_line_mark_bx, .-n00253_line_mark_bx
                        .type            n00254_call_icon_bx, @function
n00254_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_icon_α:       mov              r11, 352
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        .section         .rodata
.Lcall_icon_α_rkfn904:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn904]
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
                        cmp              al, 104;                             je    n00252_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00255_deref_α
n00254_call_icon_β:       mov              r11, 352;                            jmp   n00252_line_mark_α
                        .size            n00254_call_icon_bx, .-n00254_call_icon_bx
                        .type            n00255_deref_bx, @function
n00255_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_deref_α:           mov              r11, 353
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00252_line_mark_α
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
1:                                                                            jmp   n00256_line_mark_α
                        .size            n00255_deref_bx, .-n00255_deref_bx
                        .type            n00256_line_mark_bx, @function
n00256_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_line_mark_α:       mov              r11, 354
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00257_call_icon_α
                        .size            n00256_line_mark_bx, .-n00256_line_mark_bx
                        .type            n00257_call_icon_bx, @function
n00257_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_call_icon_α:       mov              r11, 355
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_icon_α_rkfn909:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn909]
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
                        cmp              al, 104;                             je    n00252_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00249_var_ref_α
n00257_call_icon_β:       mov              r11, 355;                            jmp   n00252_line_mark_α
                        .size            n00257_call_icon_bx, .-n00257_call_icon_bx
                        .type            n00252_line_mark_bx, @function
n00252_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_line_mark_α:       mov              r11, 356
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00258_var_α
                        .size            n00252_line_mark_bx, .-n00252_line_mark_bx
                        .type            n00258_var_bx, @function
n00258_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_var_α:             mov              r11, 357
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 56], rax;           jmp   n00259_return_α
                        .size            n00258_var_bx, .-n00258_var_bx
                        .type            n00259_return_bx, @function
n00259_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_return_α:          mov              r11, 358
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00259_return_bx, .-n00259_return_bx
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
                        lea              rsp, [rbp + 3712]
                        mov              rbp, qword ptr [rbp + 3704];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 3712]
                        mov              rbp, qword ptr [rbp + 3704];         jmp   qword ptr [rsp + 8]
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
                        lea              rcx, [rip + .Loptions_α_915_3]
                        push             rcx
                        lea              rcx, [rip + .Loptions_α_915_2]
                        push             rcx;                                 jmp   FN__options
.Loptions_α_915_2:      add              rsp, 24
                        pop              r12;                                 jmp   r12
.Loptions_α_915_3:      add              rsp, 24
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            15944265059674
                        .quad            34359738576
                        .quad            .Lgcmap_options_s
                        .quad            3488
                        .quad            32
                        .quad            439804651110400
                        .quad            8804682957200
                        .quad            26392574034328
                        .quad            52776558133680
                        .quad            17596481012192
                        .quad            52776558133744
                        .quad            17596481012256
                        .quad            52776558133808
                        .quad            17596481012320
                        .quad            87960930222704
                        .quad            17596481012416
                        .quad            105553116267216
                        .quad            17596481012528
                        .quad            387028092977984
                        .quad            17596481012896
                        .quad            474989023200432
                        .quad            17596481013344
                        .quad            70368744179312
                        .quad            17596481013424
                        .quad            598134325511872
                        .quad            17596481013984
                        .quad            281474976712944
                        .quad            17596481014256
                        .quad            123145302313472
                        .quad            17596481014384
                        .quad            17592186047104
                        .quad            17596481014416
                        .quad            158329674402464
                        .quad            17596481014576
                        .quad            17592186047296
                        .quad            17596481014608
                        .quad            633318697601888
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
                        sub              rsp, 976
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 872], rax
                        mov              dword ptr [rsp + 864], 160
                        mov              dword ptr [rsp + 868], 976
                        mov              eax, 0
                        mov              qword ptr [rsp + 968], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 864
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
                        push             rax
                        push             rdx
                        mov              r11, rsp
                        and              rsp, -16
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], r11
                        .section         .rodata
.Licn_trace_nm916:      .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm916]
                        mov              esi, 1
                        lea              rdx, [r11 + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll emit.cpp:2968
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
1:
.Lmain_α_915_247:       mov              rsp, qword ptr [rsp + 0]
                        pop              rdx
                        pop              rax
main_α_body:
                        .type            n00260_line_mark_bx, @function
n00260_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_line_mark_α:       mov              r11, 359
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_961_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00261_line_mark_α
.Lline_mark_α_961_0:    .quad            .Lline_mark_α_961_0_s
.Lline_mark_α_961_0_s:  .string          "queens.icn"
                        .size            n00260_line_mark_bx, .-n00260_line_mark_bx
                        .type            n00261_line_mark_bx, @function
n00261_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_line_mark_α:       mov              r11, 360
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00262_var_ref_α
                        .size            n00261_line_mark_bx, .-n00261_line_mark_bx
                        .type            n00262_var_ref_bx, @function
n00262_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00263_lit_string_α
                        .size            n00262_var_ref_bx, .-n00262_var_ref_bx
                        .type            n00263_lit_string_bx, @function
n00263_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_966_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00264_deref_α
.Llit_string_α_966_0:   .quad            .Llit_string_α_966_0_s
.Llit_string_α_966_0_s: .string          "n+"
                        .size            n00263_lit_string_bx, .-n00263_lit_string_bx
                        .type            n00264_deref_bx, @function
n00264_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_deref_α:           mov              r11, 363
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00265_line_mark_α
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
1:                                                                            jmp   n00266_line_mark_α
                        .size            n00264_deref_bx, .-n00264_deref_bx
                        .type            n00266_line_mark_bx, @function
n00266_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_line_mark_α:       mov              r11, 364
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00267_call_proc_staged_α
                        .size            n00266_line_mark_bx, .-n00266_line_mark_bx
                        .type            n00267_call_proc_staged_bx, @function
n00267_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_call_proc_staged_α:
                        mov              r11, 365
                        lea              rsi, [rbp + 800]
                        lea              rdx, [rbp + 768]
                        call             options_dcα;                         jmp   .Lcall_proc_staged_α_971_2
.Lcall_proc_staged_α_971_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_971_29
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
.Lcall_proc_staged_α_971_29:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    n00265_line_mark_α
                                                                              jmp   n00268_deref_α
n00267_call_proc_staged_β:
                        mov              r11, 365;                            jmp   n00265_line_mark_α
.Lcall_proc_staged_β_971_0:
                        .quad            .Lcall_proc_staged_β_971_0_s
.Lcall_proc_staged_β_971_0_s:
                        .string          "options"
                        .size            n00267_call_proc_staged_bx, .-n00267_call_proc_staged_bx
                        .type            n00268_deref_bx, @function
n00268_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00268_deref_α:           mov              r11, 366
                        mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00265_line_mark_α
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
1:                                                                            jmp   n00269_assign_α
                        .size            n00268_deref_bx, .-n00268_deref_bx
                        .type            n00269_assign_bx, @function
n00269_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_assign_α:          mov              r11, 367
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n00265_line_mark_α
                        .size            n00269_assign_bx, .-n00269_assign_bx
                        .type            n00265_line_mark_bx, @function
n00265_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_line_mark_α:       mov              r11, 368
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00270_disjunction_α
                        .size            n00265_line_mark_bx, .-n00265_line_mark_bx
                        .type            n00270_disjunction_bx, @function
n00270_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_disjunction_α:     mov              r11, 369
                        mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0;            jmp   n00271_var_ref_α
.Ldisjunction_γ_927_as: mov              r11, 369
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_977_0
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00272_assign_α
.Ldisjunction_α_977_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_977_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00272_assign_α
.Ldisjunction_α_977_1:                                                        jmp   n00272_assign_α
n00270_disjunction_β:     mov              r11, 369
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_927_af
                                                                              jmp   .Ldisjunction_ω_927_af
.Ldisjunction_γ_927_af: mov              r11, 369
.Ldisjunction_ω_927_af: mov              r11, 369
                        add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1;                              je    n00273_lit_integer_α
                                                                              jmp   n00274_line_mark_α
                        .size            n00270_disjunction_bx, .-n00270_disjunction_bx
                        .type            n00272_assign_bx, @function
n00272_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_assign_α:          mov              r11, 370
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00274_line_mark_α
                        .size            n00272_assign_bx, .-n00272_assign_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00274_line_mark_α:       mov              r11, 371
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00275_disjunction_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00275_disjunction_bx, @function
n00275_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_disjunction_α:     mov              r11, 372
                        mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0;            jmp   n00276_lit_integer_α
.Ldisjunction_γ_930_as: mov              r11, 372
                        mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_982_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00277_line_mark_α
.Ldisjunction_α_982_0:                                                        jmp   n00277_line_mark_α
n00275_disjunction_β:     mov              r11, 372
                        mov              eax, dword ptr [rbp + 384];          jmp   n00277_line_mark_α
.Ldisjunction_γ_930_af: mov              r11, 372
.Ldisjunction_ω_930_af: mov              r11, 372
                        add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384];          jmp   n00277_line_mark_α
                        .size            n00275_disjunction_bx, .-n00275_disjunction_bx
                        .type            n00276_lit_integer_bx, @function
n00276_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_lit_integer_α:     mov              r11, 373
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_983_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00278_var_α
n00276_lit_integer_β:     mov              r11, 373;                            jmp   .Ldisjunction_ω_930_af
.Llit_integer_α_983_0:  .quad            0
                        .size            n00276_lit_integer_bx, .-n00276_lit_integer_bx
                        .type            n00278_var_bx, @function
n00278_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_var_α:             mov              r11, 374
                        mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 512], rax           # result
                        mov              qword ptr [rbp + 520], rdx;          jmp   n00279_binop_test_α
                        .size            n00278_var_bx, .-n00278_var_bx
                        .type            n00279_binop_test_bx, @function
n00279_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_binop_test_α:      mov              r11, 375
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 112;                             je    .Lbinop_test_α_985_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              al, 112;                             je    .Lbinop_test_α_985_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 3;                               jne   .Lbinop_test_α_985_2
                        mov              eax, dword ptr [rbp + 496]
                        cmp              al, 3;                               jne   .Lbinop_test_α_985_2
.Lbinop_test_α_985_1:   mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 504]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_930_af
                        mov              rcx, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rcx
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rcx;          jmp   n00280_lit_string_α
.Lbinop_test_α_985_0:   mov              rdi, qword ptr [rbp + 512]
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
                        test             eax, eax;                            je    .Lbinop_test_α_985_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_930_af
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
1:                                                                            jmp   n00280_lit_string_α
.Lbinop_test_α_985_2:   mov              rdi, qword ptr [rbp + 512]
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
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_930_af
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
1:                                                                            jmp   n00280_lit_string_α
                        .size            n00279_binop_test_bx, .-n00279_binop_test_bx
                        .type            n00280_lit_string_bx, @function
n00280_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_lit_string_α:      mov              r11, 376
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 37
                        mov              rax, qword ptr [rip + .Llit_string_α_986_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00281_line_mark_α
.Llit_string_α_986_0:   .quad            .Llit_string_α_986_0_s
.Llit_string_α_986_0_s: .string          "-n needs a positive numeric parameter"
                        .size            n00280_lit_string_bx, .-n00280_lit_string_bx
                        .type            n00281_line_mark_bx, @function
n00281_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_line_mark_α:       mov              r11, 377
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00282_call_icon_α
                        .size            n00281_line_mark_bx, .-n00281_line_mark_bx
                        .type            n00282_call_icon_bx, @function
n00282_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_call_icon_α:       mov              r11, 378
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn990:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn990]
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
                        cmp              al, 104;                             je    n00277_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   .Ldisjunction_γ_930_as
n00282_call_icon_β:       mov              r11, 378;                            jmp   n00277_line_mark_α
                        .size            n00282_call_icon_bx, .-n00282_call_icon_bx
                        .type            n00277_line_mark_bx, @function
n00277_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_line_mark_α:       mov              r11, 379
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00283_var_ref_α
                        .size            n00277_line_mark_bx, .-n00277_line_mark_bx
                        .type            n00283_var_ref_bx, @function
n00283_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_var_ref_α:         mov              r11, 380
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00284_deref_α
                        .size            n00283_var_ref_bx, .-n00283_var_ref_bx
                        .type            n00284_deref_bx, @function
n00284_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_deref_α:           mov              r11, 381
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00285_line_mark_α
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
1:                                                                            jmp   n00286_line_mark_α
                        .size            n00284_deref_bx, .-n00284_deref_bx
                        .type            n00286_line_mark_bx, @function
n00286_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_line_mark_α:       mov              r11, 382
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00287_call_icon_α
                        .size            n00286_line_mark_bx, .-n00286_line_mark_bx
                        .type            n00287_call_icon_bx, @function
n00287_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_call_icon_α:       mov              r11, 383
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn999:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn999]
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
                        cmp              al, 104;                             je    n00285_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00288_assign_α
n00287_call_icon_β:       mov              r11, 383;                            jmp   n00285_line_mark_α
                        .size            n00287_call_icon_bx, .-n00287_call_icon_bx
                        .type            n00288_assign_bx, @function
n00288_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_assign_α:          mov              r11, 384
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00285_line_mark_α
                        .size            n00288_assign_bx, .-n00288_assign_bx
                        .type            n00285_line_mark_bx, @function
n00285_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_line_mark_α:       mov              r11, 385
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00289_var_ref_α
                        .size            n00285_line_mark_bx, .-n00285_line_mark_bx
                        .type            n00289_var_ref_bx, @function
n00289_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_var_ref_α:         mov              r11, 386
                        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00290_lit_string_α
                        .size            n00289_var_ref_bx, .-n00289_var_ref_bx
                        .type            n00290_lit_string_bx, @function
n00290_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_lit_string_α:      mov              r11, 387
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_1005_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n00291_deref_α
.Llit_string_α_1005_0:  .quad            .Llit_string_α_1005_0_s
.Llit_string_α_1005_0_s:
                        .string          "-Queens:"
                        .size            n00290_lit_string_bx, .-n00290_lit_string_bx
                        .type            n00291_deref_bx, @function
n00291_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_deref_α:           mov              r11, 388
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00292_line_mark_α
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
1:                                                                            jmp   n00293_line_mark_α
                        .size            n00291_deref_bx, .-n00291_deref_bx
                        .type            n00293_line_mark_bx, @function
n00293_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_line_mark_α:       mov              r11, 389
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00294_call_icon_α
                        .size            n00293_line_mark_bx, .-n00293_line_mark_bx
                        .type            n00294_call_icon_bx, @function
n00294_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_call_icon_α:       mov              r11, 390
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1010: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1010]
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
                        cmp              al, 104;                             je    n00292_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:263
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
1:                                                                            jmp   n00292_line_mark_α
n00294_call_icon_β:       mov              r11, 390;                            jmp   n00292_line_mark_α
                        .size            n00294_call_icon_bx, .-n00294_call_icon_bx
                        .type            n00292_line_mark_bx, @function
n00292_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_line_mark_α:       mov              r11, 391
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00295_lit_integer_α
                        .size            n00292_line_mark_bx, .-n00292_line_mark_bx
                        .type            n00295_lit_integer_bx, @function
n00295_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_lit_integer_α:     mov              r11, 392
                        mov              qword ptr [rbp + 32], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1013_0]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00296_line_mark_α
.Llit_integer_α_1013_0: .quad            1
                        .size            n00295_lit_integer_bx, .-n00295_lit_integer_bx
                        .type            n00296_line_mark_bx, @function
n00296_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_line_mark_α:       mov              r11, 393
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00297_call_proc_staged_α
                        .size            n00296_line_mark_bx, .-n00296_line_mark_bx
                        .type            n00297_call_proc_staged_bx, @function
n00297_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00297_call_proc_staged_α:
                        mov              r11, 394
                        lea              rsi, [rbp + 32]
                        call             q_dcα;                               jmp   .Lcall_proc_staged_α_1017_2
.Lcall_proc_staged_α_1017_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1017_29
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
.Lcall_proc_staged_α_1017_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00298_deref_α
n00297_call_proc_staged_β:
                        mov              r11, 394;                            jmp   main_ω
.Lcall_proc_staged_β_1017_0:
                        .quad            .Lcall_proc_staged_β_1017_0_s
.Lcall_proc_staged_β_1017_0_s:
                        .string          "q"
                        .size            n00297_call_proc_staged_bx, .-n00297_call_proc_staged_bx
                        .type            n00298_deref_bx, @function
n00298_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_deref_α:           mov              r11, 395
                        mov              rdi, qword ptr [rbp + 64]
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
                        .size            n00298_deref_bx, .-n00298_deref_bx
                        .type            n00273_lit_integer_bx, @function
n00273_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_lit_integer_α:     mov              r11, 396
                        mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1019_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   .Ldisjunction_γ_927_as
n00273_lit_integer_β:     mov              r11, 396;                            jmp   .Ldisjunction_ω_927_af
.Llit_integer_α_1019_0: .quad            6
                        .size            n00273_lit_integer_bx, .-n00273_lit_integer_bx
                        .type            n00271_var_ref_bx, @function
n00271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_ref_α:         mov              r11, 397
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00299_lit_string_α
n00271_var_ref_β:         mov              r11, 397;                            jmp   .Ldisjunction_ω_927_af
                        .size            n00271_var_ref_bx, .-n00271_var_ref_bx
                        .type            n00299_lit_string_bx, @function
n00299_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_lit_string_α:      mov              r11, 398
                        mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1022_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00300_subscript_α
.Llit_string_α_1022_0:  .quad            .Llit_string_α_1022_0_s
.Llit_string_α_1022_0_s:
                        .string          "n"
                        .size            n00299_lit_string_bx, .-n00299_lit_string_bx
                        .type            n00300_subscript_bx, @function
n00300_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_subscript_α:       mov              r11, 399
                        mov              rdi, qword ptr [rbp + 592]
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
                        cmp              al, 104;                             je    .Ldisjunction_ω_927_af
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
1:                                                                            jmp   n00301_deref_α
                        .size            n00300_subscript_bx, .-n00300_subscript_bx
                        .type            n00301_deref_bx, @function
n00301_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_deref_α:           mov              r11, 400
                        mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_927_af
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
1:                                                                            jmp   n00302_unop_test_α
                        .size            n00301_deref_bx, .-n00301_deref_bx
                        .type            n00302_unop_test_bx, @function
n00302_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_unop_test_α:       mov              r11, 401
                        mov              eax, dword ptr [rbp + 656]
                        cmp              al, 104;                             je    .Ldisjunction_ω_927_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_927_af
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax;          jmp   .Ldisjunction_γ_927_as
n00302_unop_test_β:       mov              r11, 401;                            jmp   .Ldisjunction_ω_927_af
                        .size            n00302_unop_test_bx, .-n00302_unop_test_bx
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
                        .quad            4193234537818
                        .quad            38654705760
                        .quad            .Lgcmap_main_s
                        .quad            864
                        .quad            5
                        .quad            422212465065984
                        .quad            17596481012096
                        .quad            175921860444560
                        .quad            17596481012272
                        .quad            316659348800064
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
.Lstartup_ign11:        .string          "real"
.Lstartup_ign12:        .string          "integer"
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
.Lstartup_ipp00303_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00303_0
                        .quad            0
.Lstartup_iln00303_0:    .string          "i"
.Lstartup_iln00303_1:    .string          "opts"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00303_0
                        .quad            .Lstartup_iln00303_1
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            -1
                        .long            848
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
                        .long            2256
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__q
                        .quad            q_dcα
                        .quad            0
                        .quad            .Lstartup_ipnames0
                        .long            1
                        .long            0
                        .long            2272
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
                        .long            3392
                        .long            3472
                        .long            3408
                        .long            3344
                        .long            3360
                        .long            3440
                        .long            3456
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
                        .long            3488
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
