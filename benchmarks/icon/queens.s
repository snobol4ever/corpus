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
q_α_body:
                        .type            n0_line_mark_bx, @function
n0_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .rodata
.Lstnof1:               .string          "queens.icn"
                        .popsection
.Lline_mark_α_133_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_133_stno
                        .long            0
                        .long            70
                        .quad            .Lstnof1
                        .popsection
n0_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_134_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n1_line_mark_α
.Lline_mark_α_134_0:    .quad            .Lline_mark_α_134_0_s
.Lline_mark_α_134_0_s:  .string          "queens.icn"
                        .size            n0_line_mark_bx, .-n0_line_mark_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_135_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_135_stno
                        .long            0
                        .long            71
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 71;             jmp   n2_line_mark_α
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_137_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_137_stno
                        .long            0
                        .long            72
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 72;             jmp   n3_disjunction_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_disjunction_bx, @function
n3_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:       mov              qword ptr [rbp + 1568], 0
                        mov              qword ptr [rbp + 1576], 0
                        mov              dword ptr [rbp + 1584], 0;           jmp   n4_var_α
.Ldisjunction_γ_3_as:   mov              eax, dword ptr [rbp + 1584]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_140_0
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n42_line_mark_α
.Ldisjunction_α_140_0:                                                        jmp   n42_line_mark_α
n3_disjunction_β:       mov              eax, dword ptr [rbp + 1584];         jmp   n41_goto_β
.Ldisjunction_γ_3_af:
.Ldisjunction_ω_3_af:   add              dword ptr [rbp + 1584], 1
                        mov              eax, dword ptr [rbp + 1584];         jmp   n42_line_mark_α
                        .size            n3_disjunction_bx, .-n3_disjunction_bx
                        .type            n4_var_bx, @function
n4_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               mov              rax, qword ptr [r9 + 80]             # q__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rbp + 2240], rax          # result
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n5_unop_test_α
n4_var_β:                                                                     jmp   .Ldisjunction_ω_3_af
                        .size            n4_var_bx, .-n4_var_bx
                        .type            n5_unop_test_bx, @function
n5_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_unop_test_α:         mov              eax, dword ptr [rbp + 2240]
                        cmp              al, 104;                             je    .Ldisjunction_ω_3_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_3_af
                        mov              qword ptr [rbp + 2224], 0
                        mov              qword ptr [rbp + 2232], 0;           jmp   n6_lit_integer_α
                        .size            n5_unop_test_bx, .-n5_unop_test_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              qword ptr [rbp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_143_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n7_assign_α
.Llit_integer_α_143_0:  .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rbp + 2208]
                        mov              rdx, qword ptr [rbp + 2216]
                        mov              qword ptr [r9 + 80], rax             # q__INITFLAG__0
                        mov              qword ptr [r9 + 88], rdx;            jmp   n8_line_mark_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_line_mark_bx, @function
n8_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_145_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_145_stno
                        .long            0
                        .long            73
                        .quad            .Lstnof1
                        .popsection
n8_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n9_lit_integer_α
                        .size            n8_line_mark_bx, .-n8_line_mark_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              qword ptr [rbp + 2128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_147_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n10_var_α
.Llit_integer_α_147_0:  .quad            2
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_var_bx, @function
n10_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 2144], rax          # result
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n11_coerce_numeric_α
                        .size            n10_var_bx, .-n10_var_bx
                        .type            n11_coerce_numeric_bx, @function
n11_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2144]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_150_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_150_0
                        mov              eax, dword ptr [rbp + 2128]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_150_0
.Lcoerce_numeric_α_150_1:
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n12_binop_α
.Lcoerce_numeric_α_150_0:
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
                        cmp              al, 104;                             je    n20_line_mark_α
                                                                              jmp   n12_binop_α
                        .size            n11_coerce_numeric_bx, .-n11_coerce_numeric_bx
                        .type            n12_binop_bx, @function
n12_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rbp + 2112]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_151_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 2120]
                        imul             rax, rdx;                            jo    .Lbinop_α_151_0
                        mov              qword ptr [rbp + 2096], 3
                        mov              qword ptr [rbp + 2104], rax;         jmp   .Lbinop_α_151_7
.Lbinop_α_151_2:        and              edx, 1;                              jz    .Lbinop_α_151_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 2120]
                        cmp              al, 5;                               je    .Lbinop_α_151_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_151_4
.Lbinop_α_151_3:        movq             xmm0, rsi
.Lbinop_α_151_4:        cmp              cl, 5;                               je    .Lbinop_α_151_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_151_6
.Lbinop_α_151_5:        movq             xmm1, rdi
.Lbinop_α_151_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_151_0
                        mov              qword ptr [rbp + 2096], 5
                        mov              qword ptr [rbp + 2104], rax
.Lbinop_α_151_7:                                                              jmp   n13_lit_integer_α
.Lbinop_α_151_0:        mov              rdi, qword ptr [rbp + 2128]
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
                        cmp              al, 104;                             je    n20_line_mark_α
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n13_lit_integer_α
                        .size            n12_binop_bx, .-n12_binop_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rbp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_152_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n14_coerce_numeric_α
.Llit_integer_α_152_0:  .quad            1
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_coerce_numeric_bx, @function
n14_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2096]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_154_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_154_0
                        mov              eax, dword ptr [rbp + 2160]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_154_0
.Lcoerce_numeric_α_154_1:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n15_binop_α
.Lcoerce_numeric_α_154_0:
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
                        cmp              al, 104;                             je    n20_line_mark_α
                                                                              jmp   n15_binop_α
                        .size            n14_coerce_numeric_bx, .-n14_coerce_numeric_bx
                        .type            n15_binop_bx, @function
n15_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            mov              eax, dword ptr [rbp + 2080]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_155_2
                        mov              rax, qword ptr [rbp + 2088]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_155_0
                        mov              qword ptr [rbp + 2064], 3
                        mov              qword ptr [rbp + 2072], rax;         jmp   .Lbinop_α_155_7
.Lbinop_α_155_2:        and              edx, 1;                              jz    .Lbinop_α_155_0
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_155_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_155_4
.Lbinop_α_155_3:        movq             xmm0, rsi
.Lbinop_α_155_4:        cmp              cl, 5;                               je    .Lbinop_α_155_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_155_6
.Lbinop_α_155_5:        movq             xmm1, rdi
.Lbinop_α_155_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_155_0
                        mov              qword ptr [rbp + 2064], 5
                        mov              qword ptr [rbp + 2072], rax
.Lbinop_α_155_7:                                                              jmp   n16_lit_integer_α
.Lbinop_α_155_0:        mov              rdi, qword ptr [rbp + 2080]
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
                        cmp              al, 104;                             je    n20_line_mark_α
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n16_lit_integer_α
                        .size            n15_binop_bx, .-n15_binop_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              qword ptr [rbp + 2176], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_156_0]
                        mov              qword ptr [rbp + 2184], rax;         jmp   n17_line_mark_α
.Llit_integer_α_156_0:  .quad            0
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_157_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_157_stno
                        .long            0
                        .long            73
                        .quad            .Lstnof1
                        .popsection
n17_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 73;             jmp   n18_call_icon_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_call_icon_bx, @function
n18_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_icon_α:        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        .section         .rodata
.Lcall_icon_α_rkfn160:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn160]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n20_line_mark_α
                                                                              jmp   n19_assign_α
n18_call_icon_β:                                                              jmp   n20_line_mark_α
                        .size            n18_call_icon_bx, .-n18_call_icon_bx
                        .type            n19_assign_bx, @function
n19_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rbp + 2000]
                        mov              rdx, qword ptr [rbp + 2008]
                        mov              qword ptr [r9 + 32], rax             # q__STATIC__up
                        mov              qword ptr [r9 + 40], rdx;            jmp   n20_line_mark_α
                        .size            n19_assign_bx, .-n19_assign_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_162_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_162_stno
                        .long            0
                        .long            74
                        .quad            .Lstnof1
                        .popsection
n20_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 74;             jmp   n21_lit_integer_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              qword ptr [rbp + 1920], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_164_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n22_var_α
.Llit_integer_α_164_0:  .quad            2
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1936], rax          # result
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n23_coerce_numeric_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_coerce_numeric_bx, @function
n23_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1936]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_167_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_167_0
                        mov              eax, dword ptr [rbp + 1920]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_167_0
.Lcoerce_numeric_α_167_1:
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n24_binop_α
.Lcoerce_numeric_α_167_0:
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
                        cmp              al, 104;                             je    n32_line_mark_α
                                                                              jmp   n24_binop_α
                        .size            n23_coerce_numeric_bx, .-n23_coerce_numeric_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              eax, 3
                        mov              ecx, dword ptr [rbp + 1904]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_168_2
                        mov              rax, 2
                        mov              rdx, qword ptr [rbp + 1912]
                        imul             rax, rdx;                            jo    .Lbinop_α_168_0
                        mov              qword ptr [rbp + 1888], 3
                        mov              qword ptr [rbp + 1896], rax;         jmp   .Lbinop_α_168_7
.Lbinop_α_168_2:        and              edx, 1;                              jz    .Lbinop_α_168_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rbp + 1912]
                        cmp              al, 5;                               je    .Lbinop_α_168_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_168_4
.Lbinop_α_168_3:        movq             xmm0, rsi
.Lbinop_α_168_4:        cmp              cl, 5;                               je    .Lbinop_α_168_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_168_6
.Lbinop_α_168_5:        movq             xmm1, rdi
.Lbinop_α_168_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_168_0
                        mov              qword ptr [rbp + 1888], 5
                        mov              qword ptr [rbp + 1896], rax
.Lbinop_α_168_7:                                                              jmp   n25_lit_integer_α
.Lbinop_α_168_0:        mov              rdi, qword ptr [rbp + 1920]
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
                        cmp              al, 104;                             je    n32_line_mark_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n25_lit_integer_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              qword ptr [rbp + 1952], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n26_coerce_numeric_α
.Llit_integer_α_169_0:  .quad            1
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_coerce_numeric_bx, @function
n26_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:   mov              eax, dword ptr [rbp + 1888]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_171_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_171_0
                        mov              eax, dword ptr [rbp + 1952]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_171_0
.Lcoerce_numeric_α_171_1:
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n27_binop_α
.Lcoerce_numeric_α_171_0:
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
                        cmp              al, 104;                             je    n32_line_mark_α
                                                                              jmp   n27_binop_α
                        .size            n26_coerce_numeric_bx, .-n26_coerce_numeric_bx
                        .type            n27_binop_bx, @function
n27_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:            mov              eax, dword ptr [rbp + 1872]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_172_2
                        mov              rax, qword ptr [rbp + 1880]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_172_0
                        mov              qword ptr [rbp + 1856], 3
                        mov              qword ptr [rbp + 1864], rax;         jmp   .Lbinop_α_172_7
.Lbinop_α_172_2:        and              edx, 1;                              jz    .Lbinop_α_172_0
                        mov              rsi, qword ptr [rbp + 1880]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_172_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_172_4
.Lbinop_α_172_3:        movq             xmm0, rsi
.Lbinop_α_172_4:        cmp              cl, 5;                               je    .Lbinop_α_172_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_172_6
.Lbinop_α_172_5:        movq             xmm1, rdi
.Lbinop_α_172_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_172_0
                        mov              qword ptr [rbp + 1856], 5
                        mov              qword ptr [rbp + 1864], rax
.Lbinop_α_172_7:                                                              jmp   n28_lit_integer_α
.Lbinop_α_172_0:        mov              rdi, qword ptr [rbp + 1872]
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
                        cmp              al, 104;                             je    n32_line_mark_α
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n28_lit_integer_α
                        .size            n27_binop_bx, .-n27_binop_bx
                        .type            n28_lit_integer_bx, @function
n28_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n29_line_mark_α
.Llit_integer_α_173_0:  .quad            0
                        .size            n28_lit_integer_bx, .-n28_lit_integer_bx
                        .type            n29_line_mark_bx, @function
n29_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_174_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_174_stno
                        .long            0
                        .long            74
                        .quad            .Lstnof1
                        .popsection
n29_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 74;             jmp   n30_call_icon_α
                        .size            n29_line_mark_bx, .-n29_line_mark_bx
                        .type            n30_call_icon_bx, @function
n30_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_call_icon_α:        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
                        .section         .rodata
.Lcall_icon_α_rkfn177:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn177]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n32_line_mark_α
                                                                              jmp   n31_assign_α
n30_call_icon_β:                                                              jmp   n32_line_mark_α
                        .size            n30_call_icon_bx, .-n30_call_icon_bx
                        .type            n31_assign_bx, @function
n31_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              rax, qword ptr [rbp + 1792]
                        mov              rdx, qword ptr [rbp + 1800]
                        mov              qword ptr [r9 + 48], rax             # q__STATIC__down
                        mov              qword ptr [r9 + 56], rdx;            jmp   n32_line_mark_α
                        .size            n31_assign_bx, .-n31_assign_bx
                        .type            n32_line_mark_bx, @function
n32_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_179_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_179_stno
                        .long            0
                        .long            75
                        .quad            .Lstnof1
                        .popsection
n32_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n33_var_ref_α
                        .size            n32_line_mark_bx, .-n32_line_mark_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n34_lit_integer_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              qword ptr [rbp + 1728], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n35_deref_α
.Llit_integer_α_183_0:  .quad            0
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_deref_bx, @function
n35_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_deref_α:            mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_21:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n42_line_mark_α
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
1:                                                                            jmp   n36_line_mark_α
                        .size            n35_deref_bx, .-n35_deref_bx
                        .type            n36_line_mark_bx, @function
n36_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_185_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_185_stno
                        .long            0
                        .long            75
                        .quad            .Lstnof1
                        .popsection
n36_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75;             jmp   n37_call_icon_α
                        .size            n36_line_mark_bx, .-n36_line_mark_bx
                        .type            n37_call_icon_bx, @function
n37_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_icon_α:        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1672], rax
                        .section         .rodata
.Lcall_icon_α_rkfn188:  .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn188]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n42_line_mark_α
                                                                              jmp   n38_assign_α
n37_call_icon_β:                                                              jmp   n42_line_mark_α
                        .size            n37_call_icon_bx, .-n37_call_icon_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rbp + 1648]
                        mov              rdx, qword ptr [rbp + 1656]
                        mov              qword ptr [r9 + 64], rax             # q__STATIC__rows
                        mov              qword ptr [r9 + 72], rdx
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n39_conjunction_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_conjunction_bx, @function
n39_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_conjunction_α:      mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n40_conjunction_α
n39_conjunction_β:                                                            jmp   n42_line_mark_α
                        .size            n39_conjunction_bx, .-n39_conjunction_bx
                        .type            n40_conjunction_bx, @function
n40_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_conjunction_α:      mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax;         jmp   .Ldisjunction_γ_3_as
n40_conjunction_β:                                                            jmp   n42_line_mark_α
                        .size            n40_conjunction_bx, .-n40_conjunction_bx
                        .type            n41_goto_bx, @function
n41_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:                                                                   jmp   n42_line_mark_α
n41_goto_β:                                                                   jmp   n42_line_mark_α
                        .size            n41_goto_bx, .-n41_goto_bx
                        .type            n42_line_mark_bx, @function
n42_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_193_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_193_stno
                        .long            0
                        .long            77
                        .quad            .Lstnof1
                        .popsection
n42_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n43_lit_integer_α
                        .size            n42_line_mark_bx, .-n42_line_mark_bx
                        .type            n43_lit_integer_bx, @function
n43_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_195_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n44_var_ref_α
.Llit_integer_α_195_0:  .quad            0
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052352                      # q__STATIC__rows
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n45_lit_integer_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_198_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n46_var_α
.Llit_integer_α_198_0:  .quad            1
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_var_bx, @function
n46_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 672], rax           # result
                        mov              qword ptr [rbp + 680], rdx;          jmp   n47_to_α
                        .size            n46_var_bx, .-n46_var_bx
                        .type            n47_to_bx, @function
n47_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_to_α:               mov              rdi, qword ptr [rbp + 656]
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
.Lto_α_201_0:           mov              rax, qword ptr [rbp + 640]
                        mov              rcx, qword ptr [rbp + 680]
                        cmp              rax, rcx;                            jg    q_ω
                        mov              qword ptr [rbp + 624], 3
                        mov              qword ptr [rbp + 632], rax;          jmp   n48_assign_α
n47_to_β:               inc              qword ptr [rbp + 640];               jo    q_ω
                                                                              jmp   .Lto_α_201_0
                        .size            n47_to_bx, .-n47_to_bx
                        .type            n48_assign_bx, @function
n48_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n49_subscript_α
                        .size            n48_assign_bx, .-n48_assign_bx
                        .type            n49_subscript_bx, @function
n49_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:        mov              rdi, qword ptr [rbp + 592]
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
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n50_deref_α
                        .size            n49_subscript_bx, .-n49_subscript_bx
                        .type            n50_deref_bx, @function
n50_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_deref_α:            mov              rdi, qword ptr [rbp + 688]
                        mov              rsi, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_35:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n51_binop_test_α
                        .size            n50_deref_bx, .-n50_deref_bx
                        .type            n51_binop_test_bx, @function
n51_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_test_α:       mov              eax, dword ptr [rbp + 576]
                        cmp              al, 112;                             je    .Lbinop_test_α_205_0
                        mov              eax, dword ptr [rbp + 704]
                        cmp              al, 112;                             je    .Lbinop_test_α_205_0
                        mov              eax, dword ptr [rbp + 576]
                        cmp              al, 3;                               jne   .Lbinop_test_α_205_2
                        mov              eax, dword ptr [rbp + 704]
                        cmp              al, 3;                               jne   .Lbinop_test_α_205_2
.Lbinop_test_α_205_1:   mov              rax, qword ptr [rbp + 584]
                        mov              rcx, qword ptr [rbp + 712]
                        cmp              rax, rcx;                            jne   n47_to_β
                        mov              rcx, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 560], rcx
                        mov              rcx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 568], rcx;          jmp   n52_var_ref_α
.Lbinop_test_α_205_0:   mov              rdi, qword ptr [rbp + 576]
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
                        test             eax, eax;                            je    .Lbinop_test_α_205_2
                        cmp              eax, 1;                              je    n47_to_β
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
1:                                                                            jmp   n52_var_ref_α
.Lbinop_test_α_205_2:   mov              rdi, qword ptr [rbp + 576]
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
1:                      test             eax, eax;                            jz    n47_to_β
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
1:                                                                            jmp   n52_var_ref_α
                        .size            n51_binop_test_bx, .-n51_binop_test_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052320                      # q__STATIC__up
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n53_var_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 840], rax;          jmp   n54_var_α
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 848], rax           # result
                        mov              qword ptr [rbp + 856], rdx;          jmp   n55_coerce_numeric_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_coerce_numeric_bx, @function
n55_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   mov              eax, dword ptr [rbp + 848]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_212_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_212_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_212_0
.Lcoerce_numeric_α_212_1:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax;          jmp   n56_coerce_numeric_α
.Lcoerce_numeric_α_212_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n56_coerce_numeric_α
                        .size            n55_coerce_numeric_bx, .-n55_coerce_numeric_bx
                        .type            n56_coerce_numeric_bx, @function
n56_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_214_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_214_0
                        mov              eax, dword ptr [rbp + 848]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_214_0
.Lcoerce_numeric_α_214_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 808], rax;          jmp   n57_binop_α
.Lcoerce_numeric_α_214_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n57_binop_α
                        .size            n56_coerce_numeric_bx, .-n56_coerce_numeric_bx
                        .type            n57_binop_bx, @function
n57_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            mov              eax, dword ptr [rbp + 816]
                        mov              ecx, dword ptr [rbp + 800]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_215_2
                        mov              rax, qword ptr [rbp + 824]
                        mov              rdx, qword ptr [rbp + 808]
                        add              rax, rdx;                            jo    .Lbinop_α_215_0
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax;          jmp   .Lbinop_α_215_7
.Lbinop_α_215_2:        and              edx, 1;                              jz    .Lbinop_α_215_0
                        mov              rsi, qword ptr [rbp + 824]
                        mov              rdi, qword ptr [rbp + 808]
                        cmp              al, 5;                               je    .Lbinop_α_215_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_215_4
.Lbinop_α_215_3:        movq             xmm0, rsi
.Lbinop_α_215_4:        cmp              cl, 5;                               je    .Lbinop_α_215_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_215_6
.Lbinop_α_215_5:        movq             xmm1, rdi
.Lbinop_α_215_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_215_0
                        mov              qword ptr [rbp + 784], 5
                        mov              qword ptr [rbp + 792], rax
.Lbinop_α_215_7:                                                              jmp   n58_var_α
.Lbinop_α_215_0:        mov              rdi, qword ptr [rbp + 816]
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
                        cmp              al, 104;                             je    n47_to_β
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n58_var_α
                        .size            n57_binop_bx, .-n57_binop_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 872], rax;          jmp   n59_coerce_numeric_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_coerce_numeric_bx, @function
n59_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   mov              eax, dword ptr [rbp + 784]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_219_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_219_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_219_0
.Lcoerce_numeric_α_219_1:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 776], rax;          jmp   n60_coerce_numeric_α
.Lcoerce_numeric_α_219_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n60_coerce_numeric_α
                        .size            n59_coerce_numeric_bx, .-n59_coerce_numeric_bx
                        .type            n60_coerce_numeric_bx, @function
n60_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_221_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_221_0
                        mov              eax, dword ptr [rbp + 784]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_221_0
.Lcoerce_numeric_α_221_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 760], rax;          jmp   n61_binop_α
.Lcoerce_numeric_α_221_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n61_binop_α
                        .size            n60_coerce_numeric_bx, .-n60_coerce_numeric_bx
                        .type            n61_binop_bx, @function
n61_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            mov              eax, dword ptr [rbp + 768]
                        mov              ecx, dword ptr [rbp + 752]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_222_2
                        mov              rax, qword ptr [rbp + 776]
                        mov              rdx, qword ptr [rbp + 760]
                        sub              rax, rdx;                            jo    .Lbinop_α_222_0
                        mov              qword ptr [rbp + 736], 3
                        mov              qword ptr [rbp + 744], rax;          jmp   .Lbinop_α_222_7
.Lbinop_α_222_2:        and              edx, 1;                              jz    .Lbinop_α_222_0
                        mov              rsi, qword ptr [rbp + 776]
                        mov              rdi, qword ptr [rbp + 760]
                        cmp              al, 5;                               je    .Lbinop_α_222_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_222_4
.Lbinop_α_222_3:        movq             xmm0, rsi
.Lbinop_α_222_4:        cmp              cl, 5;                               je    .Lbinop_α_222_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_222_6
.Lbinop_α_222_5:        movq             xmm1, rdi
.Lbinop_α_222_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_222_0
                        mov              qword ptr [rbp + 736], 5
                        mov              qword ptr [rbp + 744], rax
.Lbinop_α_222_7:                                                              jmp   n62_subscript_α
.Lbinop_α_222_0:        mov              rdi, qword ptr [rbp + 768]
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
                        cmp              al, 104;                             je    n47_to_β
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n62_subscript_α
                        .size            n61_binop_bx, .-n61_binop_bx
                        .type            n62_subscript_bx, @function
n62_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:        mov              rdi, qword ptr [rbp + 720]
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
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n63_deref_α
                        .size            n62_subscript_bx, .-n62_subscript_bx
                        .type            n63_deref_bx, @function
n63_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_deref_α:            mov              rdi, qword ptr [rbp + 880]
                        mov              rsi, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_57:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n64_binop_test_α
                        .size            n63_deref_bx, .-n63_deref_bx
                        .type            n64_binop_test_bx, @function
n64_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_test_α:       mov              eax, dword ptr [rbp + 560]
                        cmp              al, 112;                             je    .Lbinop_test_α_225_0
                        mov              eax, dword ptr [rbp + 896]
                        cmp              al, 112;                             je    .Lbinop_test_α_225_0
                        mov              eax, dword ptr [rbp + 560]
                        cmp              al, 3;                               jne   .Lbinop_test_α_225_2
                        mov              eax, dword ptr [rbp + 896]
                        cmp              al, 3;                               jne   .Lbinop_test_α_225_2
.Lbinop_test_α_225_1:   mov              rax, qword ptr [rbp + 568]
                        mov              rcx, qword ptr [rbp + 904]
                        cmp              rax, rcx;                            jne   n47_to_β
                        mov              rcx, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 544], rcx
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 552], rcx;          jmp   n65_var_ref_α
.Lbinop_test_α_225_0:   mov              rdi, qword ptr [rbp + 560]
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
                        test             eax, eax;                            je    .Lbinop_test_α_225_2
                        cmp              eax, 1;                              je    n47_to_β
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
1:                                                                            jmp   n65_var_ref_α
.Lbinop_test_α_225_2:   mov              rdi, qword ptr [rbp + 560]
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
1:                      test             eax, eax;                            jz    n47_to_β
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
1:                                                                            jmp   n65_var_ref_α
                        .size            n64_binop_test_bx, .-n64_binop_test_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052336                      # q__STATIC__down
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n66_var_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n67_var_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n68_coerce_numeric_α
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_coerce_numeric_bx, @function
n68_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_233_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_233_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_233_0
.Lcoerce_numeric_α_233_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n69_coerce_numeric_α
.Lcoerce_numeric_α_233_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n69_coerce_numeric_α
                        .size            n68_coerce_numeric_bx, .-n68_coerce_numeric_bx
                        .type            n69_coerce_numeric_bx, @function
n69_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_235_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_235_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_235_0
.Lcoerce_numeric_α_235_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 984], rax;          jmp   n70_binop_α
.Lcoerce_numeric_α_235_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n70_binop_α
                        .size            n69_coerce_numeric_bx, .-n69_coerce_numeric_bx
                        .type            n70_binop_bx, @function
n70_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:            mov              eax, dword ptr [rbp + 992]
                        mov              ecx, dword ptr [rbp + 976]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_236_2
                        mov              rax, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 984]
                        add              rax, rdx;                            jo    .Lbinop_α_236_0
                        mov              qword ptr [rbp + 960], 3
                        mov              qword ptr [rbp + 968], rax;          jmp   .Lbinop_α_236_7
.Lbinop_α_236_2:        and              edx, 1;                              jz    .Lbinop_α_236_0
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdi, qword ptr [rbp + 984]
                        cmp              al, 5;                               je    .Lbinop_α_236_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_236_4
.Lbinop_α_236_3:        movq             xmm0, rsi
.Lbinop_α_236_4:        cmp              cl, 5;                               je    .Lbinop_α_236_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_236_6
.Lbinop_α_236_5:        movq             xmm1, rdi
.Lbinop_α_236_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_236_0
                        mov              qword ptr [rbp + 960], 5
                        mov              qword ptr [rbp + 968], rax
.Lbinop_α_236_7:                                                              jmp   n71_lit_integer_α
.Lbinop_α_236_0:        mov              rdi, qword ptr [rbp + 992]
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
                        cmp              al, 104;                             je    n47_to_β
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n71_lit_integer_α
                        .size            n70_binop_bx, .-n70_binop_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      mov              qword ptr [rbp + 1040], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_237_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n72_coerce_numeric_α
.Llit_integer_α_237_0:  .quad            1
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_coerce_numeric_bx, @function
n72_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_coerce_numeric_α:   mov              eax, dword ptr [rbp + 960]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_239_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_239_0
                        mov              eax, dword ptr [rbp + 1040]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_239_0
.Lcoerce_numeric_α_239_1:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 952], rax;          jmp   n73_binop_α
.Lcoerce_numeric_α_239_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n73_binop_α
                        .size            n72_coerce_numeric_bx, .-n72_coerce_numeric_bx
                        .type            n73_binop_bx, @function
n73_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            mov              eax, dword ptr [rbp + 944]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_240_2
                        mov              rax, qword ptr [rbp + 952]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_240_0
                        mov              qword ptr [rbp + 928], 3
                        mov              qword ptr [rbp + 936], rax;          jmp   .Lbinop_α_240_7
.Lbinop_α_240_2:        and              edx, 1;                              jz    .Lbinop_α_240_0
                        mov              rsi, qword ptr [rbp + 952]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_240_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_240_4
.Lbinop_α_240_3:        movq             xmm0, rsi
.Lbinop_α_240_4:        cmp              cl, 5;                               je    .Lbinop_α_240_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_240_6
.Lbinop_α_240_5:        movq             xmm1, rdi
.Lbinop_α_240_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_240_0
                        mov              qword ptr [rbp + 928], 5
                        mov              qword ptr [rbp + 936], rax
.Lbinop_α_240_7:                                                              jmp   n74_subscript_α
.Lbinop_α_240_0:        mov              rdi, qword ptr [rbp + 944]
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
                        cmp              al, 104;                             je    n47_to_β
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n74_subscript_α
                        .size            n73_binop_bx, .-n73_binop_bx
                        .type            n74_subscript_bx, @function
n74_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_subscript_α:        mov              rdi, qword ptr [rbp + 912]
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
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n75_deref_α
                        .size            n74_subscript_bx, .-n74_subscript_bx
                        .type            n75_deref_bx, @function
n75_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            mov              rdi, qword ptr [rbp + 1056]
                        mov              rsi, qword ptr [rbp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_77:          mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n76_binop_test_α
                        .size            n75_deref_bx, .-n75_deref_bx
                        .type            n76_binop_test_bx, @function
n76_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_test_α:       mov              eax, dword ptr [rbp + 544]
                        cmp              al, 112;                             je    .Lbinop_test_α_243_0
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              al, 112;                             je    .Lbinop_test_α_243_0
                        mov              eax, dword ptr [rbp + 544]
                        cmp              al, 3;                               jne   .Lbinop_test_α_243_2
                        mov              eax, dword ptr [rbp + 1072]
                        cmp              al, 3;                               jne   .Lbinop_test_α_243_2
.Lbinop_test_α_243_1:   mov              rax, qword ptr [rbp + 552]
                        mov              rcx, qword ptr [rbp + 1080]
                        cmp              rax, rcx;                            jne   n47_to_β
                        mov              rcx, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 528], rcx
                        mov              rcx, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 536], rcx;          jmp   n77_var_ref_α
.Lbinop_test_α_243_0:   mov              rdi, qword ptr [rbp + 544]
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
                        test             eax, eax;                            je    .Lbinop_test_α_243_2
                        cmp              eax, 1;                              je    n47_to_β
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
1:                                                                            jmp   n77_var_ref_α
.Lbinop_test_α_243_2:   mov              rdi, qword ptr [rbp + 544]
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
1:                      test             eax, eax;                            jz    n47_to_β
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
1:                                                                            jmp   n77_var_ref_α
                        .size            n76_binop_test_bx, .-n76_binop_test_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052352                      # q__STATIC__rows
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx;           jmp   n78_var_α
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 56], rax;           jmp   n79_subscript_α
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_subscript_bx, @function
n79_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_subscript_α:        mov              rdi, qword ptr [rbp + 32]
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
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n80_var_ref_α
                        .size            n79_subscript_bx, .-n79_subscript_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052320                      # q__STATIC__up
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n81_var_α
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 232], rax;          jmp   n82_var_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 240], rax           # result
                        mov              qword ptr [rbp + 248], rdx;          jmp   n83_coerce_numeric_α
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_coerce_numeric_bx, @function
n83_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_coerce_numeric_α:   mov              eax, dword ptr [rbp + 240]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_255_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_255_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_255_0
.Lcoerce_numeric_α_255_1:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax;          jmp   n84_coerce_numeric_α
.Lcoerce_numeric_α_255_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n84_coerce_numeric_α
                        .size            n83_coerce_numeric_bx, .-n83_coerce_numeric_bx
                        .type            n84_coerce_numeric_bx, @function
n84_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_257_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_257_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_257_0
.Lcoerce_numeric_α_257_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 200], rax;          jmp   n85_binop_α
.Lcoerce_numeric_α_257_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n85_binop_α
                        .size            n84_coerce_numeric_bx, .-n84_coerce_numeric_bx
                        .type            n85_binop_bx, @function
n85_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            mov              eax, dword ptr [rbp + 208]
                        mov              ecx, dword ptr [rbp + 192]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_258_2
                        mov              rax, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 200]
                        add              rax, rdx;                            jo    .Lbinop_α_258_0
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax;          jmp   .Lbinop_α_258_7
.Lbinop_α_258_2:        and              edx, 1;                              jz    .Lbinop_α_258_0
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdi, qword ptr [rbp + 200]
                        cmp              al, 5;                               je    .Lbinop_α_258_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_258_4
.Lbinop_α_258_3:        movq             xmm0, rsi
.Lbinop_α_258_4:        cmp              cl, 5;                               je    .Lbinop_α_258_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_258_6
.Lbinop_α_258_5:        movq             xmm1, rdi
.Lbinop_α_258_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_258_0
                        mov              qword ptr [rbp + 176], 5
                        mov              qword ptr [rbp + 184], rax
.Lbinop_α_258_7:                                                              jmp   n86_var_α
.Lbinop_α_258_0:        mov              rdi, qword ptr [rbp + 208]
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
                        cmp              al, 104;                             je    n47_to_β
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n86_var_α
                        .size            n85_binop_bx, .-n85_binop_bx
                        .type            n86_var_bx, @function
n86_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:              mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 264], rax;          jmp   n87_coerce_numeric_α
                        .size            n86_var_bx, .-n86_var_bx
                        .type            n87_coerce_numeric_bx, @function
n87_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:   mov              eax, dword ptr [rbp + 176]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_262_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_262_0
.Lcoerce_numeric_α_262_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax;          jmp   n88_coerce_numeric_α
.Lcoerce_numeric_α_262_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n88_coerce_numeric_α
                        .size            n87_coerce_numeric_bx, .-n87_coerce_numeric_bx
                        .type            n88_coerce_numeric_bx, @function
n88_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_264_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_264_0
                        mov              eax, dword ptr [rbp + 176]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_264_0
.Lcoerce_numeric_α_264_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 152], rax;          jmp   n89_binop_α
.Lcoerce_numeric_α_264_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n89_binop_α
                        .size            n88_coerce_numeric_bx, .-n88_coerce_numeric_bx
                        .type            n89_binop_bx, @function
n89_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:            mov              eax, dword ptr [rbp + 160]
                        mov              ecx, dword ptr [rbp + 144]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_265_2
                        mov              rax, qword ptr [rbp + 168]
                        mov              rdx, qword ptr [rbp + 152]
                        sub              rax, rdx;                            jo    .Lbinop_α_265_0
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax;          jmp   .Lbinop_α_265_7
.Lbinop_α_265_2:        and              edx, 1;                              jz    .Lbinop_α_265_0
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdi, qword ptr [rbp + 152]
                        cmp              al, 5;                               je    .Lbinop_α_265_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_265_4
.Lbinop_α_265_3:        movq             xmm0, rsi
.Lbinop_α_265_4:        cmp              cl, 5;                               je    .Lbinop_α_265_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_265_6
.Lbinop_α_265_5:        movq             xmm1, rdi
.Lbinop_α_265_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_265_0
                        mov              qword ptr [rbp + 128], 5
                        mov              qword ptr [rbp + 136], rax
.Lbinop_α_265_7:                                                              jmp   n90_subscript_α
.Lbinop_α_265_0:        mov              rdi, qword ptr [rbp + 160]
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
                        cmp              al, 104;                             je    n47_to_β
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n90_subscript_α
                        .size            n89_binop_bx, .-n89_binop_bx
                        .type            n90_subscript_bx, @function
n90_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_subscript_α:        mov              rdi, qword ptr [rbp + 112]
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
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n91_var_ref_α
                        .size            n90_subscript_bx, .-n90_subscript_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              rax, 4294967336
                        mov              rdx, 1879052336                      # q__STATIC__down
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n92_var_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 424], rax;          jmp   n93_var_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 440], rax;          jmp   n94_coerce_numeric_α
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_coerce_numeric_bx, @function
n94_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_274_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_274_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_274_0
.Lcoerce_numeric_α_274_1:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 408], rax;          jmp   n95_coerce_numeric_α
.Lcoerce_numeric_α_274_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n95_coerce_numeric_α
                        .size            n94_coerce_numeric_bx, .-n94_coerce_numeric_bx
                        .type            n95_coerce_numeric_bx, @function
n95_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:   mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_276_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_276_0
                        mov              eax, dword ptr [rbp + 2304]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_276_0
.Lcoerce_numeric_α_276_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 392], rax;          jmp   n96_binop_α
.Lcoerce_numeric_α_276_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n96_binop_α
                        .size            n95_coerce_numeric_bx, .-n95_coerce_numeric_bx
                        .type            n96_binop_bx, @function
n96_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            mov              eax, dword ptr [rbp + 400]
                        mov              ecx, dword ptr [rbp + 384]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_277_2
                        mov              rax, qword ptr [rbp + 408]
                        mov              rdx, qword ptr [rbp + 392]
                        add              rax, rdx;                            jo    .Lbinop_α_277_0
                        mov              qword ptr [rbp + 368], 3
                        mov              qword ptr [rbp + 376], rax;          jmp   .Lbinop_α_277_7
.Lbinop_α_277_2:        and              edx, 1;                              jz    .Lbinop_α_277_0
                        mov              rsi, qword ptr [rbp + 408]
                        mov              rdi, qword ptr [rbp + 392]
                        cmp              al, 5;                               je    .Lbinop_α_277_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_277_4
.Lbinop_α_277_3:        movq             xmm0, rsi
.Lbinop_α_277_4:        cmp              cl, 5;                               je    .Lbinop_α_277_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_277_6
.Lbinop_α_277_5:        movq             xmm1, rdi
.Lbinop_α_277_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_277_0
                        mov              qword ptr [rbp + 368], 5
                        mov              qword ptr [rbp + 376], rax
.Lbinop_α_277_7:                                                              jmp   n97_lit_integer_α
.Lbinop_α_277_0:        mov              rdi, qword ptr [rbp + 400]
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
                        cmp              al, 104;                             je    n47_to_β
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n97_lit_integer_α
                        .size            n96_binop_bx, .-n96_binop_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              qword ptr [rbp + 448], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_278_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n98_coerce_numeric_α
.Llit_integer_α_278_0:  .quad            1
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_coerce_numeric_bx, @function
n98_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_coerce_numeric_α:   mov              eax, dword ptr [rbp + 368]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_280_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_280_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_280_0
.Lcoerce_numeric_α_280_1:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 360], rax;          jmp   n99_binop_α
.Lcoerce_numeric_α_280_0:
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
                        cmp              al, 104;                             je    n47_to_β
                                                                              jmp   n99_binop_α
                        .size            n98_coerce_numeric_bx, .-n98_coerce_numeric_bx
                        .type            n99_binop_bx, @function
n99_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_α:            mov              eax, dword ptr [rbp + 352]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_281_2
                        mov              rax, qword ptr [rbp + 360]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_281_0
                        mov              qword ptr [rbp + 336], 3
                        mov              qword ptr [rbp + 344], rax;          jmp   .Lbinop_α_281_7
.Lbinop_α_281_2:        and              edx, 1;                              jz    .Lbinop_α_281_0
                        mov              rsi, qword ptr [rbp + 360]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_281_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_281_4
.Lbinop_α_281_3:        movq             xmm0, rsi
.Lbinop_α_281_4:        cmp              cl, 5;                               je    .Lbinop_α_281_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_281_6
.Lbinop_α_281_5:        movq             xmm1, rdi
.Lbinop_α_281_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_281_0
                        mov              qword ptr [rbp + 336], 5
                        mov              qword ptr [rbp + 344], rax
.Lbinop_α_281_7:                                                              jmp   n00001_subscript_α
.Lbinop_α_281_0:        mov              rdi, qword ptr [rbp + 352]
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
                        cmp              al, 104;                             je    n47_to_β
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n00001_subscript_α
                        .size            n99_binop_bx, .-n99_binop_bx
                        .type            n00001_subscript_bx, @function
n00001_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_subscript_α:       mov              rdi, qword ptr [rbp + 320]
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
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n00002_lit_integer_α
                        .size            n00001_subscript_bx, .-n00001_subscript_bx
                        .type            n00002_lit_integer_bx, @function
n00002_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_lit_integer_α:     mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_283_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00003_rev_assign_var_α
.Llit_integer_α_283_0:  .quad            1
                        .size            n00002_lit_integer_bx, .-n00002_lit_integer_bx
                        .type            n00003_rev_assign_var_bx, @function
n00003_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 464]
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
                        cmp              al, 104;                             je    n47_to_β
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
1:                                                                            jmp   n00004_rev_assign_var_α
n00003_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 464]
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
1:                                                                            jmp   n47_to_β
                        .size            n00003_rev_assign_var_bx, .-n00003_rev_assign_var_bx
                        .type            n00004_rev_assign_var_bx, @function
n00004_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 272]
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
                        cmp              al, 104;                             je    n00003_rev_assign_var_β
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
1:                                                                            jmp   n00005_rev_assign_var_α
n00004_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 272]
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
1:                                                                            jmp   n00003_rev_assign_var_β
                        .size            n00004_rev_assign_var_bx, .-n00004_rev_assign_var_bx
                        .type            n00005_rev_assign_var_bx, @function
n00005_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 64]
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
                        cmp              al, 104;                             je    n00004_rev_assign_var_β
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
1:                                                                            jmp   n00006_conjunction_α
n00005_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 64]
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
1:                                                                            jmp   n00004_rev_assign_var_β
                        .size            n00005_rev_assign_var_bx, .-n00005_rev_assign_var_bx
                        .type            n00006_conjunction_bx, @function
n00006_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_conjunction_α:     mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00007_bound_α
n00006_conjunction_β:                                                           jmp   q_ω
                        .size            n00006_conjunction_bx, .-n00006_conjunction_bx
                        .type            n00007_bound_bx, @function
n00007_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_bound_α:           mov              qword ptr [rbp + 1104], rsp;         jmp   n00008_line_mark_α
                        .size            n00007_bound_bx, .-n00007_bound_bx
                        .type            n00008_line_mark_bx, @function
n00008_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_290_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_290_stno
                        .long            0
                        .long            79
                        .quad            .Lstnof1
                        .popsection
n00008_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79;             jmp   n00009_line_mark_α
                        .size            n00008_line_mark_bx, .-n00008_line_mark_bx
                        .type            n00009_line_mark_bx, @function
n00009_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_292_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_292_stno
                        .long            0
                        .long            79
                        .quad            .Lstnof1
                        .popsection
n00009_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79;             jmp   n00010_var_ref_α
                        .size            n00009_line_mark_bx, .-n00009_line_mark_bx
                        .type            n00010_var_ref_bx, @function
n00010_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052304                      # solution
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n00011_var_α
                        .size            n00010_var_ref_bx, .-n00010_var_ref_bx
                        .type            n00011_var_bx, @function
n00011_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_var_α:             mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n00012_subscript_α
                        .size            n00011_var_bx, .-n00011_var_bx
                        .type            n00012_subscript_bx, @function
n00012_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_subscript_α:       mov              rdi, qword ptr [rbp + 1440]
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
                        cmp              al, 104;                             je    n00013_line_mark_α
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
1:                                                                            jmp   n00014_var_α
                        .size            n00012_subscript_bx, .-n00012_subscript_bx
                        .type            n00014_var_bx, @function
n00014_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_var_α:             mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n00015_assign_var_α
                        .size            n00014_var_bx, .-n00014_var_bx
                        .type            n00015_assign_var_bx, @function
n00015_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_assign_var_α:      mov              rdi, qword ptr [rbp + 1472]
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
                        cmp              al, 104;                             je    n00013_line_mark_α
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
1:                                                                            jmp   n00013_line_mark_α
                        .size            n00015_assign_var_bx, .-n00015_assign_var_bx
                        .type            n00013_line_mark_bx, @function
n00013_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_302_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_302_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
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
                        cmp              eax, 0;                              jne   .Ldisjunction_α_305_0
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00018_conjunction_α
.Ldisjunction_α_305_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_305_1
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n00018_conjunction_α
.Ldisjunction_α_305_1:                                                        jmp   n00018_conjunction_α
n00016_disjunction_β:     mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 0;                              je    n00019_unmark_α
                                                                              jmp   n00019_unmark_α
.Ldisjunction_γ_115_af:
.Ldisjunction_ω_115_af: add              dword ptr [rbp + 1184], 1
                        mov              eax, dword ptr [rbp + 1184]
                        cmp              eax, 1;                              je    n00020_line_mark_α
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
                        .type            n00020_line_mark_bx, @function
n00020_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_307_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_307_stno
                        .long            0
                        .long            81
                        .quad            .Lstnof1
                        .popsection
n00020_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00021_var_α
n00020_line_mark_β:                                                             jmp   n00021_var_α
                        .size            n00020_line_mark_bx, .-n00020_line_mark_bx
                        .type            n00021_var_bx, @function
n00021_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_var_α:             mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n00022_lit_integer_α
                        .size            n00021_var_bx, .-n00021_var_bx
                        .type            n00022_lit_integer_bx, @function
n00022_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_lit_integer_α:     mov              qword ptr [rbp + 1392], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_311_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n00023_coerce_numeric_α
.Llit_integer_α_311_0:  .quad            1
                        .size            n00022_lit_integer_bx, .-n00022_lit_integer_bx
                        .type            n00023_coerce_numeric_bx, @function
n00023_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_313_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_313_0
                        mov              eax, dword ptr [rbp + 1392]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_313_0
.Lcoerce_numeric_α_313_1:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n00024_binop_α
.Lcoerce_numeric_α_313_0:
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
                        cmp              al, 104;                             je    n00019_unmark_α
                                                                              jmp   n00024_binop_α
                        .size            n00023_coerce_numeric_bx, .-n00023_coerce_numeric_bx
                        .type            n00024_binop_bx, @function
n00024_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_binop_α:           mov              eax, dword ptr [rbp + 1360]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_314_2
                        mov              rax, qword ptr [rbp + 1368]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_314_0
                        mov              qword ptr [rbp + 1344], 3
                        mov              qword ptr [rbp + 1352], rax;         jmp   .Lbinop_α_314_7
.Lbinop_α_314_2:        and              edx, 1;                              jz    .Lbinop_α_314_0
                        mov              rsi, qword ptr [rbp + 1368]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_314_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_314_4
.Lbinop_α_314_3:        movq             xmm0, rsi
.Lbinop_α_314_4:        cmp              cl, 5;                               je    .Lbinop_α_314_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_314_6
.Lbinop_α_314_5:        movq             xmm1, rdi
.Lbinop_α_314_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_314_0
                        mov              qword ptr [rbp + 1344], 5
                        mov              qword ptr [rbp + 1352], rax
.Lbinop_α_314_7:                                                              jmp   n00025_line_mark_α
.Lbinop_α_314_0:        mov              rdi, qword ptr [rbp + 1360]
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
                        cmp              al, 104;                             je    n00019_unmark_α
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n00025_line_mark_α
                        .size            n00024_binop_bx, .-n00024_binop_bx
                        .type            n00025_line_mark_bx, @function
n00025_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_315_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_315_stno
                        .long            0
                        .long            81
                        .quad            .Lstnof1
                        .popsection
n00025_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81;             jmp   n00026_call_proc_staged_α
                        .size            n00025_line_mark_bx, .-n00025_line_mark_bx
                        .type            n00026_call_proc_staged_bx, @function
n00026_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_318_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_318_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 1344]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_318_3:
.Lgcsite_q_139:         mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 81
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_318_2
.Lcall_proc_staged_α_318_4:
.Lgcsite_q_138:         mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 81
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_318_2:
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n00019_unmark_α
                                                                              jmp   n00027_deref_α
n00026_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 81
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00019_unmark_α
.Lcall_proc_staged_β_318_0:
                        .quad            .Lcall_proc_staged_β_318_0_s
.Lcall_proc_staged_β_318_0_s:
                        .string          "q"
                        .size            n00026_call_proc_staged_bx, .-n00026_call_proc_staged_bx
                        .type            n00027_deref_bx, @function
n00027_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_deref_α:           mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_141:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00019_unmark_α
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
.Lgcsite_q_140:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_115_as
n00027_deref_β:                                                                 jmp   n00019_unmark_α
                        .size            n00027_deref_bx, .-n00027_deref_bx
                        .type            n00017_var_bx, @function
n00017_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_var_α:             mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n00028_var_α
n00017_var_β:                                                                   jmp   .Ldisjunction_ω_115_af
                        .size            n00017_var_bx, .-n00017_var_bx
                        .type            n00028_var_bx, @function
n00028_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 1280], rax          # result
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n00029_binop_test_α
                        .size            n00028_var_bx, .-n00028_var_bx
                        .type            n00029_binop_test_bx, @function
n00029_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_binop_test_α:      mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 112;                             je    .Lbinop_test_α_323_0
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 112;                             je    .Lbinop_test_α_323_0
                        mov              eax, dword ptr [rbp + 2416]
                        cmp              al, 3;                               jne   .Lbinop_test_α_323_2
                        mov              eax, dword ptr [rbp + 1280]
                        cmp              al, 3;                               jne   .Lbinop_test_α_323_2
.Lbinop_test_α_323_1:   mov              rax, qword ptr [rbp + 2424]
                        mov              rcx, qword ptr [rbp + 1288]
                        cmp              rax, rcx;                            jne   .Ldisjunction_ω_115_af
                        mov              rcx, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rcx
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rcx;         jmp   n00030_line_mark_α
.Lbinop_test_α_323_0:   mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8d, 9
                        lea              r9, [rbp + 1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
.Lgcsite_q_147:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_323_2
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
.Lgcsite_q_146:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00030_line_mark_α
.Lbinop_test_α_323_2:   mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_q_145:         push             rax
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
.Lgcsite_q_144:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_115_af
                        mov              rdi, qword ptr [rbp + 2416]
                        mov              rsi, qword ptr [rbp + 2424]
                        mov              rdx, qword ptr [rbp + 1280]
                        mov              rcx, qword ptr [rbp + 1288]
                        lea              r8, [rbp + 1248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
.Lgcsite_q_143:         mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_q_142:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00030_line_mark_α
                        .size            n00029_binop_test_bx, .-n00029_binop_test_bx
                        .type            n00030_line_mark_bx, @function
n00030_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_324_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_324_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n00030_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 80;             jmp   n00031_call_proc_staged_α
                        .size            n00030_line_mark_bx, .-n00030_line_mark_bx
                        .type            n00031_call_proc_staged_bx, @function
n00031_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_327_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_327_3]
                        push             rcx
                        sub              rsp, 0
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_327_3:
.Lgcsite_q_149:         mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_327_2
.Lcall_proc_staged_α_327_4:
.Lgcsite_q_148:         mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_327_2:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    n00019_unmark_α
                                                                              jmp   n00032_deref_α
n00031_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00019_unmark_α
.Lcall_proc_staged_β_327_0:
                        .quad            .Lcall_proc_staged_β_327_0_s
.Lcall_proc_staged_β_327_0_s:
                        .string          "show"
                        .size            n00031_call_proc_staged_bx, .-n00031_call_proc_staged_bx
                        .type            n00032_deref_bx, @function
n00032_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_deref_α:           mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_q_151:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00019_unmark_α
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
.Lgcsite_q_150:         mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_115_as
n00032_deref_β:                                                                 jmp   n00019_unmark_α
                        .size            n00032_deref_bx, .-n00032_deref_bx
                        .type            n00019_unmark_bx, @function
n00019_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_unmark_α:          mov              rsp, qword ptr [rbp + 1104];         jmp   n00033_line_mark_α
                        .size            n00019_unmark_bx, .-n00019_unmark_bx
                        .type            n00033_line_mark_bx, @function
n00033_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_331_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_331_stno
                        .long            0
                        .long            77
                        .quad            .Lstnof1
                        .popsection
n00033_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77;             jmp   n00005_rev_assign_var_β
                        .size            n00033_line_mark_bx, .-n00033_line_mark_bx
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
                        lea              rsp, [rbp + 2432]
                        mov              rbp, qword ptr [rbp + 2408];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 2432]
                        mov              rbp, qword ptr [rbp + 2408];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_q:
                        .quad            10377987444058
                        .quad            515396075600
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
.Lgcsites_q_0:          .quad            152
                        .quad            .Lgcmap_q
                        .quad            9223653408752273792
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
                        .quad            65538
                        .quad            .Lgcsite_q_139
                        .quad            65538
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
                        .quad            .Lgcsite_q_148
                        .quad            65538
                        .quad            .Lgcsite_q_149
                        .quad            65538
                        .quad            .Lgcsite_q_150
                        .quad            65537
                        .quad            .Lgcsite_q_151
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
show_α_body:
                        .type            n00034_line_mark_bx, @function
n00034_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_412_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_412_stno
                        .long            0
                        .long            88
                        .quad            .Lstnof1
                        .popsection
n00034_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 88
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_413_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00035_line_mark_α
.Lline_mark_α_413_0:    .quad            .Lline_mark_α_413_0_s
.Lline_mark_α_413_0_s:  .string          "queens.icn"
                        .size            n00034_line_mark_bx, .-n00034_line_mark_bx
                        .type            n00035_line_mark_bx, @function
n00035_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_414_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_414_stno
                        .long            0
                        .long            89
                        .quad            .Lstnof1
                        .popsection
n00035_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 89;             jmp   n00036_disjunction_α
                        .size            n00035_line_mark_bx, .-n00035_line_mark_bx
                        .type            n00036_disjunction_bx, @function
n00036_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_disjunction_α:     mov              qword ptr [rbp + 1024], 0
                        mov              qword ptr [rbp + 1032], 0
                        mov              dword ptr [rbp + 1040], 0;           jmp   n00037_var_α
.Ldisjunction_γ_335_as: mov              eax, dword ptr [rbp + 1040]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_417_0
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n00038_line_mark_α
.Ldisjunction_α_417_0:                                                        jmp   n00038_line_mark_α
n00036_disjunction_β:     mov              eax, dword ptr [rbp + 1040];         jmp   n00039_goto_β
.Ldisjunction_γ_335_af:
.Ldisjunction_ω_335_af: add              dword ptr [rbp + 1040], 1
                        mov              eax, dword ptr [rbp + 1040];         jmp   n00038_line_mark_α
                        .size            n00036_disjunction_bx, .-n00036_disjunction_bx
                        .type            n00037_var_bx, @function
n00037_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_var_α:             mov              rax, qword ptr [r9 + 144]            # show__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rbp + 1568], rax          # result
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n00040_unop_test_α
n00037_var_β:                                                                   jmp   .Ldisjunction_ω_335_af
                        .size            n00037_var_bx, .-n00037_var_bx
                        .type            n00040_unop_test_bx, @function
n00040_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_unop_test_α:       mov              eax, dword ptr [rbp + 1568]
                        cmp              al, 104;                             je    .Ldisjunction_ω_335_af
                        cmp              eax, 0;                              jne   .Ldisjunction_ω_335_af
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0;           jmp   n00041_lit_integer_α
                        .size            n00040_unop_test_bx, .-n00040_unop_test_bx
                        .type            n00041_lit_integer_bx, @function
n00041_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_lit_integer_α:     mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_420_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n00042_assign_α
.Llit_integer_α_420_0:  .quad            1
                        .size            n00041_lit_integer_bx, .-n00041_lit_integer_bx
                        .type            n00042_assign_bx, @function
n00042_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_assign_α:          mov              rax, qword ptr [rbp + 1536]
                        mov              rdx, qword ptr [rbp + 1544]
                        mov              qword ptr [r9 + 144], rax            # show__INITFLAG__0
                        mov              qword ptr [r9 + 152], rdx;           jmp   n00043_line_mark_α
                        .size            n00042_assign_bx, .-n00042_assign_bx
                        .type            n00043_line_mark_bx, @function
n00043_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_422_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_422_stno
                        .long            0
                        .long            90
                        .quad            .Lstnof1
                        .popsection
n00043_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 90;             jmp   n00044_lit_integer_α
                        .size            n00043_line_mark_bx, .-n00043_line_mark_bx
                        .type            n00044_lit_integer_bx, @function
n00044_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_lit_integer_α:     mov              qword ptr [rbp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_424_0]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n00045_assign_α
.Llit_integer_α_424_0:  .quad            0
                        .size            n00044_lit_integer_bx, .-n00044_lit_integer_bx
                        .type            n00045_assign_bx, @function
n00045_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00045_assign_α:          mov              rax, qword ptr [rbp + 1504]
                        mov              rdx, qword ptr [rbp + 1512]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx;           jmp   n00046_line_mark_α
                        .size            n00045_assign_bx, .-n00045_assign_bx
                        .type            n00046_line_mark_bx, @function
n00046_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_426_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_426_stno
                        .long            0
                        .long            91
                        .quad            .Lstnof1
                        .popsection
n00046_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00047_lit_string_α
                        .size            n00046_line_mark_bx, .-n00046_line_mark_bx
                        .type            n00047_lit_string_bx, @function
n00047_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_lit_string_α:      mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_428_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n00048_var_ref_α
.Llit_string_α_428_0:   .quad            .Llit_string_α_428_0_s
.Llit_string_α_428_0_s: .string          "|   "
                        .size            n00047_lit_string_bx, .-n00047_lit_string_bx
                        .type            n00048_var_ref_bx, @function
n00048_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n00049_deref_α
                        .size            n00048_var_ref_bx, .-n00048_var_ref_bx
                        .type            n00049_deref_bx, @function
n00049_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00049_deref_α:           mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00050_line_mark_α
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
1:                                                                            jmp   n00051_line_mark_α
                        .size            n00049_deref_bx, .-n00049_deref_bx
                        .type            n00051_line_mark_bx, @function
n00051_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_432_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_432_stno
                        .long            0
                        .long            91
                        .quad            .Lstnof1
                        .popsection
n00051_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 91;             jmp   n00052_call_icon_α
                        .size            n00051_line_mark_bx, .-n00051_line_mark_bx
                        .type            n00052_call_icon_bx, @function
n00052_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_call_icon_α:       mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        .section         .rodata
.Lcall_icon_α_rkfn435:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn435]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00050_line_mark_α
                                                                              jmp   n00053_lit_string_α
n00052_call_icon_β:                                                             jmp   n00050_line_mark_α
                        .size            n00052_call_icon_bx, .-n00052_call_icon_bx
                        .type            n00053_lit_string_bx, @function
n00053_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_lit_string_α:      mov              qword ptr [rbp + 1456], 2            # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_436_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n00054_binop_α
.Llit_string_α_436_0:   .quad            .Llit_string_α_436_0_s
.Llit_string_α_436_0_s: .string          "|"
                        .size            n00053_lit_string_bx, .-n00053_lit_string_bx
                        .type            n00054_binop_bx, @function
n00054_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_binop_α:           mov              rdi, qword ptr [rbp + 1328]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
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
1:                                                                            jmp   n00055_assign_α
                        .size            n00054_binop_bx, .-n00054_binop_bx
                        .type            n00055_assign_bx, @function
n00055_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_assign_α:          mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        mov              qword ptr [r9 + 112], rax            # show__STATIC__line
                        mov              qword ptr [r9 + 120], rdx;           jmp   n00050_line_mark_α
                        .size            n00055_assign_bx, .-n00055_assign_bx
                        .type            n00050_line_mark_bx, @function
n00050_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_439_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_439_stno
                        .long            0
                        .long            92
                        .quad            .Lstnof1
                        .popsection
n00050_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 92;             jmp   n00056_lit_string_α
                        .size            n00050_line_mark_bx, .-n00050_line_mark_bx
                        .type            n00056_lit_string_bx, @function
n00056_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_lit_string_α:      mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_441_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n00057_var_ref_α
.Llit_string_α_441_0:   .quad            .Llit_string_α_441_0_s
.Llit_string_α_441_0_s: .string          "----"
                        .size            n00056_lit_string_bx, .-n00056_lit_string_bx
                        .type            n00057_var_ref_bx, @function
n00057_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n00058_deref_α
                        .size            n00057_var_ref_bx, .-n00057_var_ref_bx
                        .type            n00058_deref_bx, @function
n00058_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00058_deref_α:           mov              rdi, qword ptr [rbp + 1216]
                        mov              rsi, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_show_7:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00038_line_mark_α
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
1:                                                                            jmp   n00059_line_mark_α
                        .size            n00058_deref_bx, .-n00058_deref_bx
                        .type            n00059_line_mark_bx, @function
n00059_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_445_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_445_stno
                        .long            0
                        .long            92
                        .quad            .Lstnof1
                        .popsection
n00059_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 92;             jmp   n00060_call_icon_α
                        .size            n00059_line_mark_bx, .-n00059_line_mark_bx
                        .type            n00060_call_icon_bx, @function
n00060_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_call_icon_α:       mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lcall_icon_α_rkfn448:  .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn448]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00038_line_mark_α
                                                                              jmp   n00061_lit_string_α
n00060_call_icon_β:                                                             jmp   n00038_line_mark_α
                        .size            n00060_call_icon_bx, .-n00060_call_icon_bx
                        .type            n00061_lit_string_bx, @function
n00061_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_lit_string_α:      mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_449_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n00062_binop_α
.Llit_string_α_449_0:   .quad            .Llit_string_α_449_0_s
.Llit_string_α_449_0_s: .string          "-"
                        .size            n00061_lit_string_bx, .-n00061_lit_string_bx
                        .type            n00062_binop_bx, @function
n00062_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_binop_α:           mov              rdi, qword ptr [rbp + 1120]
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
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:84
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
1:                                                                            jmp   n00063_assign_α
                        .size            n00062_binop_bx, .-n00062_binop_bx
                        .type            n00063_assign_bx, @function
n00063_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_assign_α:          mov              rax, qword ptr [rbp + 1104]
                        mov              rdx, qword ptr [rbp + 1112]
                        mov              qword ptr [r9 + 128], rax            # show__STATIC__border
                        mov              qword ptr [r9 + 136], rdx
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n00064_conjunction_α
                        .size            n00063_assign_bx, .-n00063_assign_bx
                        .type            n00064_conjunction_bx, @function
n00064_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_conjunction_α:     mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n00065_conjunction_α
n00064_conjunction_β:                                                           jmp   n00038_line_mark_α
                        .size            n00064_conjunction_bx, .-n00064_conjunction_bx
                        .type            n00065_conjunction_bx, @function
n00065_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_conjunction_α:     mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax;         jmp   .Ldisjunction_γ_335_as
n00065_conjunction_β:                                                           jmp   n00038_line_mark_α
                        .size            n00065_conjunction_bx, .-n00065_conjunction_bx
                        .type            n00039_goto_bx, @function
n00039_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_goto_α:                                                                  jmp   n00038_line_mark_α
n00039_goto_β:                                                                  jmp   n00038_line_mark_α
                        .size            n00039_goto_bx, .-n00039_goto_bx
                        .type            n00038_line_mark_bx, @function
n00038_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_455_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_455_stno
                        .long            0
                        .long            94
                        .quad            .Lstnof1
                        .popsection
n00038_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00066_lit_string_α
                        .size            n00038_line_mark_bx, .-n00038_line_mark_bx
                        .type            n00066_lit_string_bx, @function
n00066_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_lit_string_α:      mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_457_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00067_lit_integer_α
.Llit_string_α_457_0:   .quad            .Llit_string_α_457_0_s
.Llit_string_α_457_0_s: .string          "solution: "
                        .size            n00066_lit_string_bx, .-n00066_lit_string_bx
                        .type            n00067_lit_integer_bx, @function
n00067_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_lit_integer_α:     mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_458_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n00068_var_α
.Llit_integer_α_458_0:  .quad            1
                        .size            n00067_lit_integer_bx, .-n00067_lit_integer_bx
                        .type            n00068_var_bx, @function
n00068_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_var_α:             mov              rax, qword ptr [r9 + 96]             # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rbp + 992], rax           # result
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n00069_coerce_numeric_α
                        .size            n00068_var_bx, .-n00068_var_bx
                        .type            n00069_coerce_numeric_bx, @function
n00069_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_coerce_numeric_α:  mov              eax, dword ptr [rbp + 992]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_461_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_461_0
                        mov              eax, dword ptr [rbp + 976]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_461_0
.Lcoerce_numeric_α_461_1:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00070_binop_α
.Lcoerce_numeric_α_461_0:
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
                        cmp              al, 104;                             je    n00071_line_mark_α
                                                                              jmp   n00070_binop_α
                        .size            n00069_coerce_numeric_bx, .-n00069_coerce_numeric_bx
                        .type            n00070_binop_bx, @function
n00070_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00070_binop_α:           mov              eax, dword ptr [rbp + 960]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_462_2
                        mov              rax, qword ptr [rbp + 968]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_462_0
                        mov              qword ptr [rbp + 944], 3
                        mov              qword ptr [rbp + 952], rax;          jmp   .Lbinop_α_462_7
.Lbinop_α_462_2:        and              edx, 1;                              jz    .Lbinop_α_462_0
                        mov              rsi, qword ptr [rbp + 968]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_462_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_462_4
.Lbinop_α_462_3:        movq             xmm0, rsi
.Lbinop_α_462_4:        cmp              cl, 5;                               je    .Lbinop_α_462_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_462_6
.Lbinop_α_462_5:        movq             xmm1, rdi
.Lbinop_α_462_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_462_0
                        mov              qword ptr [rbp + 944], 5
                        mov              qword ptr [rbp + 952], rax
.Lbinop_α_462_7:                                                              jmp   n00072_assign_α
.Lbinop_α_462_0:        mov              rdi, qword ptr [rbp + 960]
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
                        cmp              al, 104;                             je    n00071_line_mark_α
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n00072_assign_α
                        .size            n00070_binop_bx, .-n00070_binop_bx
                        .type            n00072_assign_bx, @function
n00072_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00072_assign_α:          mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [r9 + 96], rax             # show__STATIC__count
                        mov              qword ptr [r9 + 104], rdx
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n00073_line_mark_α
                        .size            n00072_assign_bx, .-n00072_assign_bx
                        .type            n00073_line_mark_bx, @function
n00073_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_464_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_464_stno
                        .long            0
                        .long            94
                        .quad            .Lstnof1
                        .popsection
n00073_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 94;             jmp   n00074_call_icon_α
                        .size            n00073_line_mark_bx, .-n00073_line_mark_bx
                        .type            n00074_call_icon_bx, @function
n00074_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_call_icon_α:       mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_icon_α_rkfn467:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn467]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00071_line_mark_α
                                                                              jmp   n00071_line_mark_α
n00074_call_icon_β:                                                             jmp   n00071_line_mark_α
                        .size            n00074_call_icon_bx, .-n00074_call_icon_bx
                        .type            n00071_line_mark_bx, @function
n00071_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_468_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_468_stno
                        .long            0
                        .long            95
                        .quad            .Lstnof1
                        .popsection
n00071_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00075_lit_string_α
                        .size            n00071_line_mark_bx, .-n00071_line_mark_bx
                        .type            n00075_lit_string_bx, @function
n00075_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_lit_string_α:      mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_470_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00076_var_α
.Llit_string_α_470_0:   .quad            .Llit_string_α_470_0_s
.Llit_string_α_470_0_s: .string          "  "
                        .size            n00075_lit_string_bx, .-n00075_lit_string_bx
                        .type            n00076_var_bx, @function
n00076_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00076_var_α:             mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 800], rax           # result
                        mov              qword ptr [rbp + 808], rdx;          jmp   n00077_line_mark_α
                        .size            n00076_var_bx, .-n00076_var_bx
                        .type            n00077_line_mark_bx, @function
n00077_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_472_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_472_stno
                        .long            0
                        .long            95
                        .quad            .Lstnof1
                        .popsection
n00077_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 95;             jmp   n00078_call_icon_α
                        .size            n00077_line_mark_bx, .-n00077_line_mark_bx
                        .type            n00078_call_icon_bx, @function
n00078_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00078_call_icon_α:       mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        .section         .rodata
.Lcall_icon_α_rkfn475:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn475]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00079_line_mark_α
                                                                              jmp   n00079_line_mark_α
n00078_call_icon_β:                                                             jmp   n00079_line_mark_α
                        .size            n00078_call_icon_bx, .-n00078_call_icon_bx
                        .type            n00079_line_mark_bx, @function
n00079_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_476_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_476_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00079_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00080_var_ref_α
                        .size            n00079_line_mark_bx, .-n00079_line_mark_bx
                        .type            n00080_var_ref_bx, @function
n00080_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052400                      # show__STATIC__line
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00081_lit_integer_α
                        .size            n00080_var_ref_bx, .-n00080_var_ref_bx
                        .type            n00081_lit_integer_bx, @function
n00081_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_lit_integer_α:     mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_480_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n00082_var_α
.Llit_integer_α_480_0:  .quad            4
                        .size            n00081_lit_integer_bx, .-n00081_lit_integer_bx
                        .type            n00082_var_bx, @function
n00082_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_var_α:             mov              rax, qword ptr [r9 + 16]             # solution
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rbp + 208], rax           # result
                        mov              qword ptr [rbp + 216], rdx;          jmp   n00083_iterate_α
                        .size            n00082_var_bx, .-n00082_var_bx
                        .type            n00083_iterate_bx, @function
n00083_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00083_iterate_α:         mov              qword ptr [rbp + 192], 0
.Literate_α_483_0:      mov              rdi, qword ptr [rbp + 208]
                        mov              rsi, qword ptr [rbp + 216]
                        mov              rdx, qword ptr [rbp + 192]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
.Lgcsite_show_21:       mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n00084_line_mark_α
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
1:                                                                            jmp   n00085_lit_integer_α
n00083_iterate_β:         inc              qword ptr [rbp + 192];               jmp   .Literate_α_483_0
                        .size            n00083_iterate_bx, .-n00083_iterate_bx
                        .type            n00085_lit_integer_bx, @function
n00085_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_lit_integer_α:     mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_484_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n00086_coerce_numeric_α
.Llit_integer_α_484_0:  .quad            1
                        .size            n00085_lit_integer_bx, .-n00085_lit_integer_bx
                        .type            n00086_coerce_numeric_bx, @function
n00086_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_coerce_numeric_α:  mov              eax, dword ptr [rbp + 176]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_486_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_486_0
                        mov              eax, dword ptr [rbp + 224]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_486_0
.Lcoerce_numeric_α_486_1:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00087_binop_α
.Lcoerce_numeric_α_486_0:
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
                        cmp              al, 104;                             je    n00084_line_mark_α
                                                                              jmp   n00087_binop_α
                        .size            n00086_coerce_numeric_bx, .-n00086_coerce_numeric_bx
                        .type            n00087_binop_bx, @function
n00087_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_binop_α:           mov              eax, dword ptr [rbp + 160]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_487_2
                        mov              rax, qword ptr [rbp + 168]
                        mov              rdx, 1
                        sub              rax, rdx;                            jo    .Lbinop_α_487_0
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax;          jmp   .Lbinop_α_487_7
.Lbinop_α_487_2:        and              edx, 1;                              jz    .Lbinop_α_487_0
                        mov              rsi, qword ptr [rbp + 168]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_487_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_487_4
.Lbinop_α_487_3:        movq             xmm0, rsi
.Lbinop_α_487_4:        cmp              cl, 5;                               je    .Lbinop_α_487_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_487_6
.Lbinop_α_487_5:        movq             xmm1, rdi
.Lbinop_α_487_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_487_0
                        mov              qword ptr [rbp + 144], 5
                        mov              qword ptr [rbp + 152], rax
.Lbinop_α_487_7:                                                              jmp   n00088_coerce_numeric_α
.Lbinop_α_487_0:        mov              rdi, qword ptr [rbp + 160]
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
                        cmp              al, 104;                             je    n00084_line_mark_α
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n00088_coerce_numeric_α
                        .size            n00087_binop_bx, .-n00087_binop_bx
                        .type            n00088_coerce_numeric_bx, @function
n00088_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_coerce_numeric_α:  mov              eax, dword ptr [rbp + 144]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_489_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_489_0
                        mov              eax, dword ptr [rbp + 128]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_489_0
.Lcoerce_numeric_α_489_1:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax;          jmp   n00089_binop_α
.Lcoerce_numeric_α_489_0:
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
                        cmp              al, 104;                             je    n00084_line_mark_α
                                                                              jmp   n00089_binop_α
                        .size            n00088_coerce_numeric_bx, .-n00088_coerce_numeric_bx
                        .type            n00089_binop_bx, @function
n00089_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_binop_α:           mov              eax, 3
                        mov              ecx, dword ptr [rbp + 112]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_490_2
                        mov              rax, 4
                        mov              rdx, qword ptr [rbp + 120]
                        imul             rax, rdx;                            jo    .Lbinop_α_490_0
                        mov              qword ptr [rbp + 96], 3
                        mov              qword ptr [rbp + 104], rax;          jmp   .Lbinop_α_490_7
.Lbinop_α_490_2:        and              edx, 1;                              jz    .Lbinop_α_490_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rbp + 120]
                        cmp              al, 5;                               je    .Lbinop_α_490_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_490_4
.Lbinop_α_490_3:        movq             xmm0, rsi
.Lbinop_α_490_4:        cmp              cl, 5;                               je    .Lbinop_α_490_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_490_6
.Lbinop_α_490_5:        movq             xmm1, rdi
.Lbinop_α_490_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_490_0
                        mov              qword ptr [rbp + 96], 5
                        mov              qword ptr [rbp + 104], rax
.Lbinop_α_490_7:                                                              jmp   n00090_lit_integer_α
.Lbinop_α_490_0:        mov              rdi, qword ptr [rbp + 128]
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
                        cmp              al, 104;                             je    n00084_line_mark_α
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n00090_lit_integer_α
                        .size            n00089_binop_bx, .-n00089_binop_bx
                        .type            n00090_lit_integer_bx, @function
n00090_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_lit_integer_α:     mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_491_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00091_coerce_numeric_α
.Llit_integer_α_491_0:  .quad            3
                        .size            n00090_lit_integer_bx, .-n00090_lit_integer_bx
                        .type            n00091_coerce_numeric_bx, @function
n00091_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_coerce_numeric_α:  mov              eax, dword ptr [rbp + 96]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_493_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_493_0
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_493_0
.Lcoerce_numeric_α_493_1:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 88], rax;           jmp   n00092_binop_α
.Lcoerce_numeric_α_493_0:
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
                        cmp              al, 104;                             je    n00084_line_mark_α
                                                                              jmp   n00092_binop_α
                        .size            n00091_coerce_numeric_bx, .-n00091_coerce_numeric_bx
                        .type            n00092_binop_bx, @function
n00092_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_binop_α:           mov              eax, dword ptr [rbp + 80]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_494_2
                        mov              rax, qword ptr [rbp + 88]
                        mov              rdx, 3
                        add              rax, rdx;                            jo    .Lbinop_α_494_0
                        mov              qword ptr [rbp + 64], 3
                        mov              qword ptr [rbp + 72], rax;           jmp   .Lbinop_α_494_7
.Lbinop_α_494_2:        and              edx, 1;                              jz    .Lbinop_α_494_0
                        mov              rsi, qword ptr [rbp + 88]
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_494_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_494_4
.Lbinop_α_494_3:        movq             xmm0, rsi
.Lbinop_α_494_4:        cmp              cl, 5;                               je    .Lbinop_α_494_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_494_6
.Lbinop_α_494_5:        movq             xmm1, rdi
.Lbinop_α_494_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_494_0
                        mov              qword ptr [rbp + 64], 5
                        mov              qword ptr [rbp + 72], rax
.Lbinop_α_494_7:                                                              jmp   n00093_subscript_α
.Lbinop_α_494_0:        mov              rdi, qword ptr [rbp + 80]
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
                        cmp              al, 104;                             je    n00084_line_mark_α
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n00093_subscript_α
                        .size            n00092_binop_bx, .-n00092_binop_bx
                        .type            n00093_subscript_bx, @function
n00093_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_subscript_α:       mov              rdi, qword ptr [rbp + 48]
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
                        cmp              al, 104;                             je    n00083_iterate_β
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
1:                                                                            jmp   n00094_lit_string_α
                        .size            n00093_subscript_bx, .-n00093_subscript_bx
                        .type            n00094_lit_string_bx, @function
n00094_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_lit_string_α:      mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_496_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00095_rev_assign_var_α
.Llit_string_α_496_0:   .quad            .Llit_string_α_496_0_s
.Llit_string_α_496_0_s: .string          "Q"
                        .size            n00094_lit_string_bx, .-n00094_lit_string_bx
                        .type            n00095_rev_assign_var_bx, @function
n00095_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_rev_assign_var_α:  mov              rdi, qword ptr [rbp + 256]
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
                        cmp              al, 104;                             je    n00083_iterate_β
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
1:                                                                            jmp   n00096_bound_α
n00095_rev_assign_var_β:  mov              rdi, qword ptr [rbp + 256]
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
1:                                                                            jmp   n00083_iterate_β
                        .size            n00095_rev_assign_var_bx, .-n00095_rev_assign_var_bx
                        .type            n00096_bound_bx, @function
n00096_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00096_bound_α:           mov              qword ptr [rbp + 352], rsp;          jmp   n00097_line_mark_α
                        .size            n00096_bound_bx, .-n00096_bound_bx
                        .type            n00097_line_mark_bx, @function
n00097_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_500_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_500_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00097_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00098_line_mark_α
                        .size            n00097_line_mark_bx, .-n00097_line_mark_bx
                        .type            n00098_line_mark_bx, @function
n00098_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_502_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_502_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00098_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00099_lit_string_α
                        .size            n00098_line_mark_bx, .-n00098_line_mark_bx
                        .type            n00099_lit_string_bx, @function
n00099_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_lit_string_α:      mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_504_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00100_var_α
.Llit_string_α_504_0:   .quad            .Llit_string_α_504_0_s
.Llit_string_α_504_0_s: .string          "  "
                        .size            n00099_lit_string_bx, .-n00099_lit_string_bx
                        .type            n00100_var_bx, @function
n00100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00100_var_α:             mov              rax, qword ptr [r9 + 112]            # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rbp + 640], rax           # result
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00101_line_mark_α
                        .size            n00100_var_bx, .-n00100_var_bx
                        .type            n00101_line_mark_bx, @function
n00101_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_506_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_506_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00101_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 97;             jmp   n00102_call_icon_α
                        .size            n00101_line_mark_bx, .-n00101_line_mark_bx
                        .type            n00102_call_icon_bx, @function
n00102_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00102_call_icon_α:       mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        .section         .rodata
.Lcall_icon_α_rkfn509:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn509]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00103_line_mark_α
                                                                              jmp   n00103_line_mark_α
n00102_call_icon_β:                                                             jmp   n00103_line_mark_α
                        .size            n00102_call_icon_bx, .-n00102_call_icon_bx
                        .type            n00103_line_mark_bx, @function
n00103_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_510_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_510_stno
                        .long            0
                        .long            98
                        .quad            .Lstnof1
                        .popsection
n00103_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00104_lit_string_α
                        .size            n00103_line_mark_bx, .-n00103_line_mark_bx
                        .type            n00104_lit_string_bx, @function
n00104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_lit_string_α:      mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_512_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n00105_var_α
.Llit_string_α_512_0:   .quad            .Llit_string_α_512_0_s
.Llit_string_α_512_0_s: .string          "  "
                        .size            n00104_lit_string_bx, .-n00104_lit_string_bx
                        .type            n00105_var_bx, @function
n00105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00105_var_α:             mov              rax, qword ptr [r9 + 128]            # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rbp + 512], rax           # result
                        mov              qword ptr [rbp + 520], rdx;          jmp   n00106_line_mark_α
                        .size            n00105_var_bx, .-n00105_var_bx
                        .type            n00106_line_mark_bx, @function
n00106_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_514_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_514_stno
                        .long            0
                        .long            98
                        .quad            .Lstnof1
                        .popsection
n00106_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 98;             jmp   n00107_call_icon_α
                        .size            n00106_line_mark_bx, .-n00106_line_mark_bx
                        .type            n00107_call_icon_bx, @function
n00107_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_call_icon_α:       mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lcall_icon_α_rkfn517:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn517]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00108_unmark_α
                                                                              jmp   n00109_conjunction_α
n00107_call_icon_β:                                                             jmp   n00108_unmark_α
                        .size            n00107_call_icon_bx, .-n00107_call_icon_bx
                        .type            n00109_conjunction_bx, @function
n00109_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00109_conjunction_α:     mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 408], rax;          jmp   n00108_unmark_α
n00109_conjunction_β:                                                           jmp   n00108_unmark_α
                        .size            n00109_conjunction_bx, .-n00109_conjunction_bx
                        .type            n00108_unmark_bx, @function
n00108_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_unmark_α:          mov              rsp, qword ptr [rbp + 352];          jmp   n00110_line_mark_α
                        .size            n00108_unmark_bx, .-n00108_unmark_bx
                        .type            n00110_line_mark_bx, @function
n00110_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_521_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_521_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00110_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 96;             jmp   n00095_rev_assign_var_β
                        .size            n00110_line_mark_bx, .-n00110_line_mark_bx
                        .type            n00084_line_mark_bx, @function
n00084_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_523_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_523_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00084_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00111_line_mark_α
                        .size            n00084_line_mark_bx, .-n00084_line_mark_bx
                        .type            n00111_line_mark_bx, @function
n00111_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_525_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_525_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00111_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 100;            jmp   n00112_call_icon_α
                        .size            n00111_line_mark_bx, .-n00111_line_mark_bx
                        .type            n00112_call_icon_bx, @function
n00112_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00112_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn528:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn528]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
n00112_call_icon_β:                                                             jmp   show_ω
                        .size            n00112_call_icon_bx, .-n00112_call_icon_bx
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
                        lea              rsp, [rbp + 1680]
                        mov              rbp, qword ptr [rbp + 1672];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 1680]
                        mov              rbp, qword ptr [rbp + 1672];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_show:
                        .quad            7216891514202
                        .quad            515396075568
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
                        .quad            9223653477471749776
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
                        sub              rsp, 4080
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 4072
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_options]
                        mov              qword ptr [rsp + 3864], rax
                        mov              dword ptr [rsp + 3856], 160
                        mov              dword ptr [rsp + 3860], 4080
                        mov              eax, 0
                        mov              qword ptr [rsp + 4072], rbp
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
options_α_body:
                        .type            n00113_line_mark_bx, @function
n00113_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_698_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_698_stno
                        .long            0
                        .long            106
                        .quad            .Lstnof1
                        .popsection
n00113_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 106
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_699_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00114_line_mark_α
.Lline_mark_α_699_0:    .quad            .Lline_mark_α_699_0_s
.Lline_mark_α_699_0_s:  .string          "queens.icn"
                        .size            n00113_line_mark_bx, .-n00113_line_mark_bx
                        .type            n00114_line_mark_bx, @function
n00114_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_700_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_700_stno
                        .long            0
                        .long            107
                        .quad            .Lstnof1
                        .popsection
n00114_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00115_var_ref_α
                        .size            n00114_line_mark_bx, .-n00114_line_mark_bx
                        .type            n00115_var_ref_bx, @function
n00115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4096]
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx;         jmp   n00116_nulltest_var_α
                        .size            n00115_var_ref_bx, .-n00115_var_ref_bx
                        .type            n00116_nulltest_var_bx, @function
n00116_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00116_nulltest_var_α:    mov              eax, dword ptr [rbp + 3568]
                        cmp              al, 104;                             je    n00117_line_mark_α
                        mov              rdi, qword ptr [rbp + 3568]
                        mov              rsi, qword ptr [rbp + 3576]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_1:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00117_line_mark_α
                        cmp              eax, 0;                              jne   n00117_line_mark_α
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3592], rax
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
1:                                                                            jmp   n00118_lit_charset_α
                        .size            n00116_nulltest_var_bx, .-n00116_nulltest_var_bx
                        .type            n00118_lit_charset_bx, @function
n00118_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00118_lit_charset_α:     mov              qword ptr [rbp + 3664], 2            # result
                        mov              dword ptr [rbp + 3668], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_705_0]
                        mov              qword ptr [rbp + 3672], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_705_0]
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
1:                                                                            jmp   n00119_line_mark_α
.Llit_charset_α_705_0:  .quad            .Llit_charset_α_705_0_s
.Llit_charset_α_705_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00118_lit_charset_bx, .-n00118_lit_charset_bx
                        .type            n00119_line_mark_bx, @function
n00119_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_706_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_706_stno
                        .long            0
                        .long            107
                        .quad            .Lstnof1
                        .popsection
n00119_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 107;            jmp   n00120_call_icon_α
                        .size            n00119_line_mark_bx, .-n00119_line_mark_bx
                        .type            n00120_call_icon_bx, @function
n00120_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_call_icon_α:       mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3640], rax
                        .section         .rodata
.Lcall_icon_α_rkfn709:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn709]
                        lea              rsi, [rbp + 3632]
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
                        mov              qword ptr [rbp + 3616], rax
                        mov              qword ptr [rbp + 3624], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00117_line_mark_α
                                                                              jmp   n00121_assign_var_α
n00120_call_icon_β:                                                             jmp   n00117_line_mark_α
                        .size            n00120_call_icon_bx, .-n00120_call_icon_bx
                        .type            n00121_assign_var_bx, @function
n00121_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00121_assign_var_α:      mov              rdi, qword ptr [rbp + 3584]
                        mov              rsi, qword ptr [rbp + 3592]
                        mov              rdx, qword ptr [rbp + 3616]
                        mov              rcx, qword ptr [rbp + 3624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_7:     mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00117_line_mark_α
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
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
1:                                                                            jmp   n00117_line_mark_α
                        .size            n00121_assign_var_bx, .-n00121_assign_var_bx
                        .type            n00117_line_mark_bx, @function
n00117_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_711_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_711_stno
                        .long            0
                        .long            108
                        .quad            .Lstnof1
                        .popsection
n00117_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00122_line_mark_α
                        .size            n00117_line_mark_bx, .-n00117_line_mark_bx
                        .type            n00122_line_mark_bx, @function
n00122_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_713_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_713_stno
                        .long            0
                        .long            108
                        .quad            .Lstnof1
                        .popsection
n00122_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 108;            jmp   n00123_call_icon_α
                        .size            n00122_line_mark_bx, .-n00122_line_mark_bx
                        .type            n00123_call_icon_bx, @function
n00123_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00123_call_icon_α:       .section         .rodata
.Lcall_icon_α_rkfn716:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn716]
                        lea              rsi, [rbp + 3536]
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
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00124_line_mark_α
                                                                              jmp   n00125_assign_α
n00123_call_icon_β:                                                             jmp   n00124_line_mark_α
                        .size            n00123_call_icon_bx, .-n00123_call_icon_bx
                        .type            n00125_assign_bx, @function
n00125_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_assign_α:          mov              rax, qword ptr [rbp + 3520]
                        mov              rdx, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n00124_line_mark_α
                        .size            n00125_assign_bx, .-n00125_assign_bx
                        .type            n00124_line_mark_bx, @function
n00124_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_718_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_718_stno
                        .long            0
                        .long            109
                        .quad            .Lstnof1
                        .popsection
n00124_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 109;            jmp   n00126_make_list_α
                        .size            n00124_line_mark_bx, .-n00124_line_mark_bx
                        .type            n00126_make_list_bx, @function
n00126_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_make_list_α:       lea              rdi, [rbp + 3504]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
.Lgcsite_options_11:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
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
1:                                                                            jmp   n00127_assign_α
                        .size            n00126_make_list_bx, .-n00126_make_list_bx
                        .type            n00127_assign_bx, @function
n00127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00127_assign_α:          mov              rax, qword ptr [rbp + 3488]
                        mov              rdx, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n00128_line_mark_α
                        .size            n00127_assign_bx, .-n00127_assign_bx
                        .type            n00128_line_mark_bx, @function
n00128_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_723_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_723_stno
                        .long            0
                        .long            110
                        .quad            .Lstnof1
                        .popsection
n00128_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00129_bound_α
                        .size            n00128_line_mark_bx, .-n00128_line_mark_bx
                        .type            n00129_bound_bx, @function
n00129_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_bound_α:           mov              qword ptr [rbp + 416], rsp;          jmp   n00130_var_ref_α
                        .size            n00129_bound_bx, .-n00129_bound_bx
                        .type            n00130_var_ref_bx, @function
n00130_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n00131_deref_α
                        .size            n00130_var_ref_bx, .-n00130_var_ref_bx
                        .type            n00131_deref_bx, @function
n00131_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00131_deref_α:           mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_13:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00132_line_mark_α
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
1:                                                                            jmp   n00133_line_mark_α
                        .size            n00131_deref_bx, .-n00131_deref_bx
                        .type            n00133_line_mark_bx, @function
n00133_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_730_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_730_stno
                        .long            0
                        .long            110
                        .quad            .Lstnof1
                        .popsection
n00133_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00134_call_icon_α
                        .size            n00133_line_mark_bx, .-n00133_line_mark_bx
                        .type            n00134_call_icon_bx, @function
n00134_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_call_icon_α:       mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        .section         .rodata
.Lcall_icon_α_rkfn733:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn733]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00132_line_mark_α
                                                                              jmp   n00135_assign_α
n00134_call_icon_β:                                                             jmp   n00132_line_mark_α
                        .size            n00134_call_icon_bx, .-n00134_call_icon_bx
                        .type            n00135_assign_bx, @function
n00135_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00135_assign_α:          mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx;         jmp   n00136_line_mark_α
                        .size            n00135_assign_bx, .-n00135_assign_bx
                        .type            n00136_line_mark_bx, @function
n00136_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_735_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_735_stno
                        .long            0
                        .long            111
                        .quad            .Lstnof1
                        .popsection
n00136_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 111;            jmp   n00137_var_α
                        .size            n00136_line_mark_bx, .-n00136_line_mark_bx
                        .type            n00137_var_bx, @function
n00137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_var_α:             mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3448], rax;         jmp   n00138_scan_enter_α
                        .size            n00137_var_bx, .-n00137_var_bx
                        .type            n00138_scan_enter_bx, @function
n00138_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_scan_enter_α:      mov              dword ptr [rbp + 480], 2
                        mov              dword ptr [rbp + 484], 0
                        mov              qword ptr [rbp + 488], r13
                        mov              qword ptr [rbp + 496], r14
                        mov              qword ptr [rbp + 504], r15
                        mov              rdi, qword ptr [rbp + 3440]
                        mov              rsi, qword ptr [rbp + 3448]
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
1:                      test             rax, rax;                            je    n00139_unmark_α
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14, 0;                              jmp   n00140_disjunction_α
                        .size            n00138_scan_enter_bx, .-n00138_scan_enter_bx
                        .type            n00140_disjunction_bx, @function
n00140_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_disjunction_α:     mov              qword ptr [rbp + 608], 0
                        mov              qword ptr [rbp + 616], 0
                        mov              dword ptr [rbp + 624], 0;            jmp   n00141_lit_string_α
.Ldisjunction_γ_554_as: mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_742_0
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00142_scan_α
.Ldisjunction_α_742_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_742_1
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00142_scan_α
.Ldisjunction_α_742_1:                                                        jmp   n00142_scan_α
n00140_disjunction_β:     mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 0;                              je    n00143_disjunction_β
                                                                              jmp   n00144_scan_α
.Ldisjunction_γ_554_af:
.Ldisjunction_ω_554_af: add              dword ptr [rbp + 624], 1
                        mov              eax, dword ptr [rbp + 624]
                        cmp              eax, 1;                              je    n00145_line_mark_α
                                                                              jmp   n00144_scan_α
                        .size            n00140_disjunction_bx, .-n00140_disjunction_bx
                        .type            n00142_scan_bx, @function
n00142_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_scan_α:            mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 520], rax
                        mov              dword ptr [rbp + 544], r14d
                        mov              dword ptr [rbp + 532], r15d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_22:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 536], rax
                        mov              dword ptr [rbp + 528], 2
                        mov              rdi, qword ptr [rbp + 488]
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_21:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 488]
                        mov              r14, qword ptr [rbp + 496]
                        mov              r15, qword ptr [rbp + 504];          jmp   n00139_unmark_α
n00142_scan_β:            mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_20:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              rdi, qword ptr [rbp + 536]
                        mov              esi, dword ptr [rbp + 532]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_reenter_live@PLT
.Lgcsite_options_19:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        mov              r15, rdx
                        mov              r14d, dword ptr [rbp + 544]
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_18:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n00140_disjunction_β
                                                                              jmp   n00139_unmark_α
                        .size            n00142_scan_bx, .-n00142_scan_bx
                        .type            n00146_conjunction_bx, @function
n00146_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_conjunction_α:                                                           jmp   .Ldisjunction_γ_554_as
n00146_conjunction_β:                                                           jmp   n00144_scan_α
                        .size            n00146_conjunction_bx, .-n00146_conjunction_bx
                        .type            n00145_line_mark_bx, @function
n00145_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_746_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_746_stno
                        .long            0
                        .long            131
                        .quad            .Lstnof1
                        .popsection
n00145_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 131;            jmp   n00147_var_ref_α
n00145_line_mark_β:                                                             jmp   n00147_var_ref_α
                        .size            n00145_line_mark_bx, .-n00145_line_mark_bx
                        .type            n00147_var_ref_bx, @function
n00147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx;         jmp   n00148_var_ref_α
                        .size            n00147_var_ref_bx, .-n00147_var_ref_bx
                        .type            n00148_var_ref_bx, @function
n00148_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3776]
                        mov              qword ptr [rbp + 3376], rax
                        mov              qword ptr [rbp + 3384], rdx;         jmp   n00149_deref_α
                        .size            n00148_var_ref_bx, .-n00148_var_ref_bx
                        .type            n00149_deref_bx, @function
n00149_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_deref_α:           mov              rdi, qword ptr [rbp + 3360]
                        mov              rsi, qword ptr [rbp + 3368]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_24:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00144_scan_α
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
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
1:                                                                            jmp   n00150_deref_α
                        .size            n00149_deref_bx, .-n00149_deref_bx
                        .type            n00150_deref_bx, @function
n00150_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00150_deref_α:           mov              rdi, qword ptr [rbp + 3376]
                        mov              rsi, qword ptr [rbp + 3384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_26:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00144_scan_α
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
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
.Lgcsite_options_25:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00151_line_mark_α
                        .size            n00150_deref_bx, .-n00150_deref_bx
                        .type            n00151_line_mark_bx, @function
n00151_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_754_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_754_stno
                        .long            0
                        .long            131
                        .quad            .Lstnof1
                        .popsection
n00151_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 131;            jmp   n00152_call_icon_α
                        .size            n00151_line_mark_bx, .-n00151_line_mark_bx
                        .type            n00152_call_icon_bx, @function
n00152_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_call_icon_α:       mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3392]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3400]
                        mov              qword ptr [rbp + 3320], rax
                        .section         .rodata
.Lcall_icon_α_rkfn757:  .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn757]
                        lea              rsi, [rbp + 3312]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_27:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_28:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00144_scan_α
                                                                              jmp   .Ldisjunction_γ_554_as
n00152_call_icon_β:                                                             jmp   n00144_scan_α
                        .size            n00152_call_icon_bx, .-n00152_call_icon_bx
                        .type            n00141_lit_string_bx, @function
n00141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_lit_string_α:      mov              qword ptr [rbp + 3264], 2            # result
                        mov              dword ptr [rbp + 3268], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_758_0]
                        mov              qword ptr [rbp + 3272], rax;         jmp   n00153_scan_match_α
n00141_lit_string_β:                                                            jmp   .Ldisjunction_ω_554_af
.Llit_string_α_758_0:   .quad            .Llit_string_α_758_0_s
.Llit_string_α_758_0_s: .string          "-"
                        .size            n00141_lit_string_bx, .-n00141_lit_string_bx
                        .type            n00153_scan_match_bx, @function
n00153_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_554_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_760_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
.Lgcsite_options_29:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_554_af
                        mov              qword ptr [rbp + 3232], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3240], rax;         jmp   n00154_scan_tab_α
.Lscan_match_α_760_0:   .quad            .Lscan_match_α_760_0_s
.Lscan_match_α_760_0_s: .string          "-"
                        .size            n00153_scan_match_bx, .-n00153_scan_match_bx
                        .type            n00154_scan_tab_bx, @function
n00154_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_scan_tab_α:        mov              rdi, qword ptr [rbp + 3232]
                        mov              rsi, qword ptr [rbp + 3240]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_35:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_554_af
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
.Lgcsite_options_34:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 3232]
                        mov              rsi, qword ptr [rbp + 3240]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_33:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_32:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_762_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_762_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_554_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_554_af
                        mov              qword ptr [rbp + 3216], r14
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
.Lgcsite_options_31:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_30:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n00155_lit_integer_α
n00154_scan_tab_β:        mov              r14, qword ptr [rbp + 3216];         jmp   .Ldisjunction_ω_554_af
                        .size            n00154_scan_tab_bx, .-n00154_scan_tab_bx
                        .type            n00155_lit_integer_bx, @function
n00155_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00155_lit_integer_α:     mov              qword ptr [rbp + 3184], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_763_0]
                        mov              qword ptr [rbp + 3192], rax;         jmp   n00156_line_mark_α
.Llit_integer_α_763_0:  .quad            0
                        .size            n00155_lit_integer_bx, .-n00155_lit_integer_bx
                        .type            n00156_line_mark_bx, @function
n00156_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_764_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_764_stno
                        .long            0
                        .long            112
                        .quad            .Lstnof1
                        .popsection
n00156_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 112;            jmp   n00157_scan_pos_α
                        .size            n00156_line_mark_bx, .-n00156_line_mark_bx
                        .type            n00157_scan_pos_bx, @function
n00157_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_767_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_767_0:     cmp              rax, 1;                              jl    n00158_var_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00158_var_α
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00158_var_α
                        mov              qword ptr [rbp + 3152], 3
                        mov              qword ptr [rbp + 3160], rax;         jmp   n00154_scan_tab_β
                        .size            n00157_scan_pos_bx, .-n00157_scan_pos_bx
                        .type            n00158_var_bx, @function
n00158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_var_α:             mov              qword ptr [rbp + 3136], 0
                        mov              qword ptr [rbp + 3144], 0;           jmp   n00159_conjunction_α
n00158_var_β:                                                                   jmp   n00154_scan_tab_β
                        .size            n00158_var_bx, .-n00158_var_bx
                        .type            n00159_conjunction_bx, @function
n00159_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00159_conjunction_α:     mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3128], rax;         jmp   n00160_line_mark_α
n00159_conjunction_β:                                                           jmp   .Ldisjunction_ω_554_af
                        .size            n00159_conjunction_bx, .-n00159_conjunction_bx
                        .type            n00160_line_mark_bx, @function
n00160_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_770_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_770_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00160_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00161_line_mark_α
                        .size            n00160_line_mark_bx, .-n00160_line_mark_bx
                        .type            n00161_line_mark_bx, @function
n00161_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_772_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_772_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00161_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00162_disjunction_α
                        .size            n00161_line_mark_bx, .-n00161_line_mark_bx
                        .type            n00162_disjunction_bx, @function
n00162_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_disjunction_α:     mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0
                        mov              dword ptr [rbp + 2848], 0;           jmp   n00163_lit_string_α
.Ldisjunction_γ_574_as: mov              eax, dword ptr [rbp + 2848]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_775_0
                                                                              jmp   n00164_line_mark_α
.Ldisjunction_α_775_0:                                                        jmp   n00164_line_mark_α
n00162_disjunction_β:     mov              eax, dword ptr [rbp + 2848];         jmp   n00164_line_mark_α
.Ldisjunction_γ_574_af:
.Ldisjunction_ω_574_af: add              dword ptr [rbp + 2848], 1
                        mov              eax, dword ptr [rbp + 2848];         jmp   n00164_line_mark_α
                        .size            n00162_disjunction_bx, .-n00162_disjunction_bx
                        .type            n00164_line_mark_bx, @function
n00164_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_776_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_776_stno
                        .long            0
                        .long            114
                        .quad            .Lstnof1
                        .popsection
n00164_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00165_bound_α
                        .size            n00164_line_mark_bx, .-n00164_line_mark_bx
                        .type            n00165_bound_bx, @function
n00165_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_bound_α:           mov              qword ptr [rbp + 752], rsp;          jmp   n00166_lit_integer_α
                        .size            n00165_bound_bx, .-n00165_bound_bx
                        .type            n00166_lit_integer_bx, @function
n00166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00166_lit_integer_α:     mov              qword ptr [rbp + 720], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_780_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n00167_line_mark_α
.Llit_integer_α_780_0:  .quad            1
                        .size            n00166_lit_integer_bx, .-n00166_lit_integer_bx
                        .type            n00167_line_mark_bx, @function
n00167_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_781_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_781_stno
                        .long            0
                        .long            114
                        .quad            .Lstnof1
                        .popsection
n00167_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00168_scan_move_α
                        .size            n00167_line_mark_bx, .-n00167_line_mark_bx
                        .type            n00168_scan_move_bx, @function
n00168_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_scan_move_α:       mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jl    n00144_scan_α
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00144_scan_α
                        mov              qword ptr [rbp + 688], r14
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
.Lgcsite_options_37:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_36:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n00169_assign_α
n00168_scan_move_β:       mov              r14, qword ptr [rbp + 688];          jmp   n00144_scan_α
                        .size            n00168_scan_move_bx, .-n00168_scan_move_bx
                        .type            n00169_assign_bx, @function
n00169_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00169_assign_α:          mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx;         jmp   n00170_line_mark_α
                        .size            n00169_assign_bx, .-n00169_assign_bx
                        .type            n00170_line_mark_bx, @function
n00170_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_786_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_786_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00170_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00143_disjunction_α
                        .size            n00170_line_mark_bx, .-n00170_line_mark_bx
                        .type            n00143_disjunction_bx, @function
n00143_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_disjunction_α:     mov              qword ptr [rbp + 800], 0
                        mov              qword ptr [rbp + 808], 0
                        mov              dword ptr [rbp + 816], 0;            jmp   n00171_var_ref_α
.Ldisjunction_γ_582_as: mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_789_0
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00172_unmark_α
.Ldisjunction_α_789_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_789_1
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 808], rax;          jmp   n00172_unmark_α
.Ldisjunction_α_789_1:                                                        jmp   n00172_unmark_α
n00143_disjunction_β:     mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 0;                              je    n00173_disjunction_β
                                                                              jmp   n00172_unmark_α
.Ldisjunction_γ_582_af:
.Ldisjunction_ω_582_af: add              dword ptr [rbp + 816], 1
                        mov              eax, dword ptr [rbp + 816]
                        cmp              eax, 1;                              je    n00174_line_mark_α
                                                                              jmp   n00172_unmark_α
                        .size            n00143_disjunction_bx, .-n00143_disjunction_bx
                        .type            n00174_line_mark_bx, @function
n00174_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_790_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_790_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00174_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00175_lit_string_α
n00174_line_mark_β:                                                             jmp   n00175_lit_string_α
                        .size            n00174_line_mark_bx, .-n00174_line_mark_bx
                        .type            n00175_lit_string_bx, @function
n00175_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_lit_string_α:      mov              qword ptr [rbp + 2720], 2            # result
                        mov              dword ptr [rbp + 2724], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_792_0]
                        mov              qword ptr [rbp + 2728], rax;         jmp   n00176_var_ref_α
.Llit_string_α_792_0:   .quad            .Llit_string_α_792_0_s
.Llit_string_α_792_0_s: .string          "Unrecognized option: -"
                        .size            n00175_lit_string_bx, .-n00175_lit_string_bx
                        .type            n00176_var_ref_bx, @function
n00176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx;         jmp   n00177_deref_α
                        .size            n00176_var_ref_bx, .-n00176_var_ref_bx
                        .type            n00177_deref_bx, @function
n00177_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00177_deref_α:           mov              rdi, qword ptr [rbp + 2752]
                        mov              rsi, qword ptr [rbp + 2760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_39:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00172_unmark_α
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
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
.Lgcsite_options_38:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00178_line_mark_α
                        .size            n00177_deref_bx, .-n00177_deref_bx
                        .type            n00178_line_mark_bx, @function
n00178_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_796_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_796_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00178_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 129;            jmp   n00179_call_icon_α
                        .size            n00178_line_mark_bx, .-n00178_line_mark_bx
                        .type            n00179_call_icon_bx, @function
n00179_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_call_icon_α:       mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2720]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2728]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lcall_icon_α_rkfn799:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn799]
                        lea              rsi, [rbp + 2672]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_40:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_41:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00172_unmark_α
                                                                              jmp   .Ldisjunction_γ_582_as
n00179_call_icon_β:                                                             jmp   n00172_unmark_α
                        .size            n00179_call_icon_bx, .-n00179_call_icon_bx
                        .type            n00171_var_ref_bx, @function
n00171_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx;         jmp   n00180_var_ref_α
n00171_var_ref_β:                                                               jmp   .Ldisjunction_ω_582_af
                        .size            n00171_var_ref_bx, .-n00171_var_ref_bx
                        .type            n00180_var_ref_bx, @function
n00180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4096]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx;         jmp   n00181_deref_α
                        .size            n00180_var_ref_bx, .-n00180_var_ref_bx
                        .type            n00181_deref_bx, @function
n00181_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_deref_α:           mov              rdi, qword ptr [rbp + 2576]
                        mov              rsi, qword ptr [rbp + 2584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_43:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_582_af
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
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
1:                                                                            jmp   n00182_deref_α
                        .size            n00181_deref_bx, .-n00181_deref_bx
                        .type            n00182_deref_bx, @function
n00182_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_deref_α:           mov              rdi, qword ptr [rbp + 2592]
                        mov              rsi, qword ptr [rbp + 2600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_45:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_582_af
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
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
.Lgcsite_options_44:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00183_line_mark_α
                        .size            n00182_deref_bx, .-n00182_deref_bx
                        .type            n00183_line_mark_bx, @function
n00183_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_806_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_806_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00183_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 115;            jmp   n00184_call_builtin_gen_α
                        .size            n00183_line_mark_bx, .-n00183_line_mark_bx
                        .type            n00184_call_builtin_gen_bx, @function
n00184_call_builtin_gen_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2520], rax
                        mov              qword ptr [rbp + 2544], 0
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_46:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_builtin_gen_α_808_60:
                        .section         .rodata
.Lcall_builtin_gen_α_bynamegenfn278: .string          "find"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_gen_α_bynamegenfn278]
                        lea              rsi, [rbp + 2512]
                        mov              edx, 2
                        lea              rcx, [rbp + 2544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_gen_strict@PLT
.Lgcsite_options_47:    push             rax
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
.Lgcsite_options_48:    mov              r8,  qword ptr [rip + rtccb+40]
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
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              al, 104;                             je    .Ldisjunction_ω_582_af
                                                                              jmp   n00185_lit_integer_α
n00184_call_builtin_gen_β:
                                                                              jmp   .Lcall_builtin_gen_α_808_60
                        .size            n00184_call_builtin_gen_bx, .-n00184_call_builtin_gen_bx
                        .type            n00185_lit_integer_bx, @function
n00185_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_lit_integer_α:     mov              qword ptr [rbp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_809_0]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n00186_coerce_numeric_α
.Llit_integer_α_809_0:  .quad            1
                        .size            n00185_lit_integer_bx, .-n00185_lit_integer_bx
                        .type            n00186_coerce_numeric_bx, @function
n00186_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2496]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_811_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_811_0
                        mov              eax, dword ptr [rbp + 2640]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_811_0
.Lcoerce_numeric_α_811_1:
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2504]
                        mov              qword ptr [rbp + 2488], rax;         jmp   n00187_binop_α
.Lcoerce_numeric_α_811_0:
                        lea              rdi, [rbp + 2496]
                        lea              rsi, [rbp + 2640]
                        lea              rdx, [rbp + 2480]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_options_50:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
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
1:                      mov              eax, dword ptr [rbp + 2480]
                        cmp              al, 104;                             je    .Ldisjunction_ω_582_af
                                                                              jmp   n00187_binop_α
                        .size            n00186_coerce_numeric_bx, .-n00186_coerce_numeric_bx
                        .type            n00187_binop_bx, @function
n00187_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00187_binop_α:           mov              eax, dword ptr [rbp + 2480]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_812_2
                        mov              rax, qword ptr [rbp + 2488]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_812_0
                        mov              qword ptr [rbp + 2464], 3
                        mov              qword ptr [rbp + 2472], rax;         jmp   .Lbinop_α_812_7
.Lbinop_α_812_2:        and              edx, 1;                              jz    .Lbinop_α_812_0
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_812_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_812_4
.Lbinop_α_812_3:        movq             xmm0, rsi
.Lbinop_α_812_4:        cmp              cl, 5;                               je    .Lbinop_α_812_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_812_6
.Lbinop_α_812_5:        movq             xmm1, rdi
.Lbinop_α_812_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_812_0
                        mov              qword ptr [rbp + 2464], 5
                        mov              qword ptr [rbp + 2472], rax
.Lbinop_α_812_7:                                                              jmp   n00188_assign_α
.Lbinop_α_812_0:        mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdx, qword ptr [rbp + 2640]
                        mov              rcx, qword ptr [rbp + 2648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_options_52:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_582_af
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:312
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
1:                                                                            jmp   n00188_assign_α
                        .size            n00187_binop_bx, .-n00187_binop_bx
                        .type            n00188_assign_bx, @function
n00188_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_assign_α:          mov              rax, qword ptr [rbp + 2464]
                        mov              rdx, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 3840], rax
                        mov              qword ptr [rbp + 3848], rdx;         jmp   n00189_line_mark_α
                        .size            n00188_assign_bx, .-n00188_assign_bx
                        .type            n00189_line_mark_bx, @function
n00189_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_814_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_814_stno
                        .long            0
                        .long            116
                        .quad            .Lstnof1
                        .popsection
n00189_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 116;            jmp   n00190_var_ref_α
                        .size            n00189_line_mark_bx, .-n00189_line_mark_bx
                        .type            n00190_var_ref_bx, @function
n00190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3728]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n00191_var_α
                        .size            n00190_var_ref_bx, .-n00190_var_ref_bx
                        .type            n00191_var_bx, @function
n00191_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_var_α:             mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 856], rax;          jmp   n00192_subscript_α
                        .size            n00191_var_bx, .-n00191_var_bx
                        .type            n00192_subscript_bx, @function
n00192_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_subscript_α:       mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              rdx, qword ptr [rbp + 848]
                        mov              rcx, qword ptr [rbp + 856]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_options_54:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00172_unmark_α
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
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
.Lgcsite_options_53:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00173_disjunction_α
                        .size            n00192_subscript_bx, .-n00192_subscript_bx
                        .type            n00173_disjunction_bx, @function
n00173_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00173_disjunction_α:     mov              qword ptr [rbp + 896], 0
                        mov              qword ptr [rbp + 904], 0
                        mov              dword ptr [rbp + 912], 0;            jmp   n00193_lit_charset_α
.Ldisjunction_γ_603_as: mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_822_0
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00194_assign_var_α
.Ldisjunction_α_822_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_822_1
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 904], rax;          jmp   n00194_assign_var_α
.Ldisjunction_α_822_1:                                                        jmp   n00194_assign_var_α
n00173_disjunction_β:     mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 0;                              je    n00195_disjunction_β
                                                                              jmp   n00172_unmark_α
.Ldisjunction_γ_603_af:
.Ldisjunction_ω_603_af: add              dword ptr [rbp + 912], 1
                        mov              eax, dword ptr [rbp + 912]
                        cmp              eax, 1;                              je    n00196_lit_integer_α
                                                                              jmp   n00172_unmark_α
                        .size            n00173_disjunction_bx, .-n00173_disjunction_bx
                        .type            n00194_assign_var_bx, @function
n00194_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_assign_var_α:      mov              rdi, qword ptr [rbp + 864]
                        mov              rsi, qword ptr [rbp + 872]
                        mov              rdx, qword ptr [rbp + 896]
                        mov              rcx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_options_56:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00172_unmark_α
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
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
.Lgcsite_options_55:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_582_as
n00194_assign_var_β:                                                            jmp   n00172_unmark_α
                        .size            n00194_assign_var_bx, .-n00194_assign_var_bx
                        .type            n00196_lit_integer_bx, @function
n00196_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_lit_integer_α:     mov              qword ptr [rbp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_824_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   .Ldisjunction_γ_603_as
n00196_lit_integer_β:                                                           jmp   n00172_unmark_α
.Llit_integer_α_824_0:  .quad            1
                        .size            n00196_lit_integer_bx, .-n00196_lit_integer_bx
                        .type            n00193_lit_charset_bx, @function
n00193_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_lit_charset_α:     mov              qword ptr [rbp + 2304], 2            # result
                        mov              dword ptr [rbp + 2308], -1
                        mov              rax, qword ptr [rip + .Llit_charset_α_825_0]
                        mov              qword ptr [rbp + 2312], rax
                        push             rax
                        push             rdx
                        mov              rdi, qword ptr [rip + .Llit_charset_α_825_0]
                        mov              rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_cset_register@PLT
.Lgcsite_options_58:    mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_57:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00197_var_ref_α
n00193_lit_charset_β:                                                           jmp   .Ldisjunction_ω_603_af
.Llit_charset_α_825_0:  .quad            .Llit_charset_α_825_0_s
.Llit_charset_α_825_0_s:
                        .string          "+.:"
                        .size            n00193_lit_charset_bx, .-n00193_lit_charset_bx
                        .type            n00197_var_ref_bx, @function
n00197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4096]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n00198_var_α
                        .size            n00197_var_ref_bx, .-n00197_var_ref_bx
                        .type            n00198_var_bx, @function
n00198_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_var_α:             mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n00199_subscript_α
                        .size            n00198_var_bx, .-n00198_var_bx
                        .type            n00199_subscript_bx, @function
n00199_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_subscript_α:       mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              rdx, qword ptr [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_options_60:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_603_af
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
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
.Lgcsite_options_59:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00200_deref_α
                        .size            n00199_subscript_bx, .-n00199_subscript_bx
                        .type            n00200_deref_bx, @function
n00200_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_deref_α:           mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_62:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_603_af
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
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
1:                                                                            jmp   n00201_assign_α
                        .size            n00200_deref_bx, .-n00200_deref_bx
                        .type            n00201_assign_bx, @function
n00201_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_assign_α:          mov              rax, qword ptr [rbp + 2384]
                        mov              rdx, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n00202_var_ref_α
                        .size            n00201_assign_bx, .-n00201_assign_bx
                        .type            n00202_var_ref_bx, @function
n00202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3808]
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx;         jmp   n00203_deref_α
                        .size            n00202_var_ref_bx, .-n00202_var_ref_bx
                        .type            n00203_deref_bx, @function
n00203_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_deref_α:           mov              rdi, qword ptr [rbp + 2400]
                        mov              rsi, qword ptr [rbp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_64:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_603_af
                        mov              qword ptr [rbp + 2416], rax
                        mov              qword ptr [rbp + 2424], rdx
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
.Lgcsite_options_63:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00204_line_mark_α
                        .size            n00203_deref_bx, .-n00203_deref_bx
                        .type            n00204_line_mark_bx, @function
n00204_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_836_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_836_stno
                        .long            0
                        .long            117
                        .quad            .Lstnof1
                        .popsection
n00204_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 117;            jmp   n00205_call_icon_α
                        .size            n00204_line_mark_bx, .-n00204_line_mark_bx
                        .type            n00205_call_icon_bx, @function
n00205_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_call_icon_α:       mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rdi, r14
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_out@PLT
.Lgcsite_options_65:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        .section         .rodata
.Lcall_icon_α_bynamefn299: .string          "any"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_bynamefn299]
                        lea              rsi, [rbp + 2256]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196712
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_66:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        push             rax
                        push             rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_sync_in@PLT
.Lgcsite_options_68:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r14, rax
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_67:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, rax
                        pop              rdx
                        pop              rax
                        push             rax                                  # gc_poll bb_call.cpp:569
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_603_af
                                                                              jmp   n00206_line_mark_α
n00205_call_icon_β:                                                             jmp   .Ldisjunction_ω_603_af
                        .size            n00205_call_icon_bx, .-n00205_call_icon_bx
                        .type            n00206_line_mark_bx, @function
n00206_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_839_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_839_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00206_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00207_disjunction_α
                        .size            n00206_line_mark_bx, .-n00206_line_mark_bx
                        .type            n00207_disjunction_bx, @function
n00207_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_disjunction_α:     mov              qword ptr [rbp + 1872], 0
                        mov              qword ptr [rbp + 1880], 0
                        mov              dword ptr [rbp + 1888], 0;           jmp   n00208_lit_string_α
.Ldisjunction_γ_617_as: mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_842_0
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n00209_assign_α
.Ldisjunction_α_842_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_842_1
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n00209_assign_α
.Ldisjunction_α_842_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_842_2
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n00209_assign_α
.Ldisjunction_α_842_2:                                                        jmp   n00209_assign_α
n00207_disjunction_β:     mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 0;                              je    n00210_scan_tab_β
                        cmp              eax, 1;                              je    .Ldisjunction_ω_617_af
                                                                              jmp   .Ldisjunction_ω_617_af
.Ldisjunction_γ_617_af:
.Ldisjunction_ω_617_af: add              dword ptr [rbp + 1888], 1
                        mov              eax, dword ptr [rbp + 1888]
                        cmp              eax, 1;                              je    n00211_var_ref_α
                        cmp              eax, 2;                              je    n00212_lit_string_α
                                                                              jmp   n00213_line_mark_α
                        .size            n00207_disjunction_bx, .-n00207_disjunction_bx
                        .type            n00209_assign_bx, @function
n00209_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_assign_α:          mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 3824], rax
                        mov              qword ptr [rbp + 3832], rdx;         jmp   n00213_line_mark_α
                        .size            n00209_assign_bx, .-n00209_assign_bx
                        .type            n00213_line_mark_bx, @function
n00213_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_844_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_844_stno
                        .long            0
                        .long            120
                        .quad            .Lstnof1
                        .popsection
n00213_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 120;            jmp   n00214_var_α
                        .size            n00213_line_mark_bx, .-n00213_line_mark_bx
                        .type            n00214_var_bx, @function
n00214_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_var_α:             mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 952], rax;          jmp   n00195_disjunction_α
                        .size            n00214_var_bx, .-n00214_var_bx
                        .type            n00195_disjunction_bx, @function
n00195_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00195_disjunction_α:     mov              qword ptr [rbp + 960], 0
                        mov              qword ptr [rbp + 968], 0
                        mov              dword ptr [rbp + 976], 0;            jmp   n00215_lit_string_α
.Ldisjunction_γ_621_as: mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_849_0
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00216_conjunction_α
.Ldisjunction_α_849_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_849_1
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00216_conjunction_α
.Ldisjunction_α_849_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_849_2
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 968], rax;          jmp   n00216_conjunction_α
.Ldisjunction_α_849_2:                                                        jmp   n00216_conjunction_α
n00195_disjunction_β:     mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 0;                              je    n00172_unmark_α
                        cmp              eax, 1;                              je    n00217_disjunction_β
                                                                              jmp   n00218_disjunction_β
.Ldisjunction_γ_621_af:
.Ldisjunction_ω_621_af: add              dword ptr [rbp + 976], 1
                        mov              eax, dword ptr [rbp + 976]
                        cmp              eax, 1;                              je    n00219_lit_string_α
                        cmp              eax, 2;                              je    n00220_lit_string_α
                                                                              jmp   n00172_unmark_α
                        .size            n00195_disjunction_bx, .-n00195_disjunction_bx
                        .type            n00216_conjunction_bx, @function
n00216_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_conjunction_α:     mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax;          jmp   .Ldisjunction_γ_603_as
n00216_conjunction_β:                                                           jmp   n00172_unmark_α
                        .size            n00216_conjunction_bx, .-n00216_conjunction_bx
                        .type            n00220_lit_string_bx, @function
n00220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_lit_string_α:      mov              qword ptr [rbp + 1776], 2            # result
                        mov              dword ptr [rbp + 1780], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_851_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n00221_call_builtin_α
n00220_lit_string_β:                                                            jmp   .Ldisjunction_ω_621_af
.Llit_string_α_851_0:   .quad            .Llit_string_α_851_0_s
.Llit_string_α_851_0_s: .string          "."
                        .size            n00220_lit_string_bx, .-n00220_lit_string_bx
                        .type            n00221_call_builtin_bx, @function
n00221_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_call_builtin_α:    mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1832], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn853: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn853]
                        lea              rsi, [rbp + 1824]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_70:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_71:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_621_af
                                                                              jmp   n00222_line_mark_α
n00221_call_builtin_β:                                                          jmp   .Ldisjunction_ω_621_af
                        .size            n00221_call_builtin_bx, .-n00221_call_builtin_bx
                        .type            n00222_line_mark_bx, @function
n00222_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_854_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_854_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00222_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00218_disjunction_α
                        .size            n00222_line_mark_bx, .-n00222_line_mark_bx
                        .type            n00218_disjunction_bx, @function
n00218_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_disjunction_α:     mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1480], 0
                        mov              dword ptr [rbp + 1488], 0;           jmp   n00223_var_ref_α
.Ldisjunction_γ_626_as: mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_857_0
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1480], rax;         jmp   .Ldisjunction_γ_621_as
.Ldisjunction_α_857_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_857_1
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1480], rax;         jmp   .Ldisjunction_γ_621_as
.Ldisjunction_α_857_1:                                                        jmp   .Ldisjunction_γ_621_as
n00218_disjunction_β:     mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_626_af
                                                                              jmp   .Ldisjunction_ω_626_af
.Ldisjunction_γ_626_af:
.Ldisjunction_ω_626_af: add              dword ptr [rbp + 1488], 1
                        mov              eax, dword ptr [rbp + 1488]
                        cmp              eax, 1;                              je    n00224_lit_string_α
                                                                              jmp   n00172_unmark_α
                        .size            n00218_disjunction_bx, .-n00218_disjunction_bx
                        .type            n00224_lit_string_bx, @function
n00224_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_lit_string_α:      mov              qword ptr [rbp + 1664], 2            # result
                        mov              dword ptr [rbp + 1668], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_858_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n00225_var_ref_α
n00224_lit_string_β:                                                            jmp   .Ldisjunction_ω_626_af
.Llit_string_α_858_0:   .quad            .Llit_string_α_858_0_s
.Llit_string_α_858_0_s: .string          "-"
                        .size            n00224_lit_string_bx, .-n00224_lit_string_bx
                        .type            n00225_var_ref_bx, @function
n00225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n00226_lit_string_α
                        .size            n00225_var_ref_bx, .-n00225_var_ref_bx
                        .type            n00226_lit_string_bx, @function
n00226_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00226_lit_string_α:      mov              qword ptr [rbp + 1712], 2            # result
                        mov              dword ptr [rbp + 1716], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_861_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n00227_deref_α
.Llit_string_α_861_0:   .quad            .Llit_string_α_861_0_s
.Llit_string_α_861_0_s: .string          " needs numeric parameter"
                        .size            n00226_lit_string_bx, .-n00226_lit_string_bx
                        .type            n00227_deref_bx, @function
n00227_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_deref_α:           mov              rdi, qword ptr [rbp + 1696]
                        mov              rsi, qword ptr [rbp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_73:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_626_af
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
.Lgcsite_options_72:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00228_line_mark_α
                        .size            n00227_deref_bx, .-n00227_deref_bx
                        .type            n00228_line_mark_bx, @function
n00228_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_863_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_863_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00228_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 125;            jmp   n00229_call_icon_α
                        .size            n00228_line_mark_bx, .-n00228_line_mark_bx
                        .type            n00229_call_icon_bx, @function
n00229_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_call_icon_α:       mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1608], rax
                        .section         .rodata
.Lcall_icon_α_rkfn866:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn866]
                        lea              rsi, [rbp + 1600]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_74:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_75:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_626_af
                                                                              jmp   .Ldisjunction_γ_626_as
n00229_call_icon_β:                                                             jmp   .Ldisjunction_ω_626_af
                        .size            n00229_call_icon_bx, .-n00229_call_icon_bx
                        .type            n00223_var_ref_bx, @function
n00223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n00230_deref_α
n00223_var_ref_β:                                                               jmp   .Ldisjunction_ω_626_af
                        .size            n00223_var_ref_bx, .-n00223_var_ref_bx
                        .type            n00230_deref_bx, @function
n00230_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_deref_α:           mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_77:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_626_af
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
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
.Lgcsite_options_76:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00231_line_mark_α
                        .size            n00230_deref_bx, .-n00230_deref_bx
                        .type            n00231_line_mark_bx, @function
n00231_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_870_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_870_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00231_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 124;            jmp   n00232_call_icon_α
                        .size            n00231_line_mark_bx, .-n00231_line_mark_bx
                        .type            n00232_call_icon_bx, @function
n00232_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_call_icon_α:       mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                        .section         .rodata
.Lcall_icon_α_rkfn873:  .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn873]
                        lea              rsi, [rbp + 1520]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_78:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_626_af
                                                                              jmp   .Ldisjunction_γ_626_as
n00232_call_icon_β:                                                             jmp   .Ldisjunction_ω_626_af
                        .size            n00232_call_icon_bx, .-n00232_call_icon_bx
                        .type            n00219_lit_string_bx, @function
n00219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00219_lit_string_α:      mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_874_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n00233_call_builtin_α
n00219_lit_string_β:                                                            jmp   .Ldisjunction_ω_621_af
.Llit_string_α_874_0:   .quad            .Llit_string_α_874_0_s
.Llit_string_α_874_0_s: .string          "+"
                        .size            n00219_lit_string_bx, .-n00219_lit_string_bx
                        .type            n00233_call_builtin_bx, @function
n00233_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_call_builtin_α:    mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1448], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn876: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn876]
                        lea              rsi, [rbp + 1440]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_80:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_81:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_621_af
                                                                              jmp   n00234_line_mark_α
n00233_call_builtin_β:                                                          jmp   .Ldisjunction_ω_621_af
                        .size            n00233_call_builtin_bx, .-n00233_call_builtin_bx
                        .type            n00234_line_mark_bx, @function
n00234_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_877_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_877_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00234_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00217_disjunction_α
                        .size            n00234_line_mark_bx, .-n00234_line_mark_bx
                        .type            n00217_disjunction_bx, @function
n00217_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_disjunction_α:     mov              qword ptr [rbp + 1088], 0
                        mov              qword ptr [rbp + 1096], 0
                        mov              dword ptr [rbp + 1104], 0;           jmp   n00235_var_ref_α
.Ldisjunction_γ_640_as: mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_880_0
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1096], rax;         jmp   .Ldisjunction_γ_621_as
.Ldisjunction_α_880_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_880_1
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1096], rax;         jmp   .Ldisjunction_γ_621_as
.Ldisjunction_α_880_1:                                                        jmp   .Ldisjunction_γ_621_as
n00217_disjunction_β:     mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_640_af
                                                                              jmp   .Ldisjunction_ω_640_af
.Ldisjunction_γ_640_af:
.Ldisjunction_ω_640_af: add              dword ptr [rbp + 1104], 1
                        mov              eax, dword ptr [rbp + 1104]
                        cmp              eax, 1;                              je    n00236_lit_string_α
                                                                              jmp   n00172_unmark_α
                        .size            n00217_disjunction_bx, .-n00217_disjunction_bx
                        .type            n00236_lit_string_bx, @function
n00236_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_lit_string_α:      mov              qword ptr [rbp + 1280], 2            # result
                        mov              dword ptr [rbp + 1284], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_881_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n00237_var_ref_α
n00236_lit_string_β:                                                            jmp   .Ldisjunction_ω_640_af
.Llit_string_α_881_0:   .quad            .Llit_string_α_881_0_s
.Llit_string_α_881_0_s: .string          "-"
                        .size            n00236_lit_string_bx, .-n00236_lit_string_bx
                        .type            n00237_var_ref_bx, @function
n00237_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n00238_lit_string_α
                        .size            n00237_var_ref_bx, .-n00237_var_ref_bx
                        .type            n00238_lit_string_bx, @function
n00238_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_lit_string_α:      mov              qword ptr [rbp + 1328], 2            # result
                        mov              dword ptr [rbp + 1332], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_884_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n00239_deref_α
.Llit_string_α_884_0:   .quad            .Llit_string_α_884_0_s
.Llit_string_α_884_0_s: .string          " needs numeric parameter"
                        .size            n00238_lit_string_bx, .-n00238_lit_string_bx
                        .type            n00239_deref_bx, @function
n00239_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_deref_α:           mov              rdi, qword ptr [rbp + 1312]
                        mov              rsi, qword ptr [rbp + 1320]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_83:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_640_af
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
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
.Lgcsite_options_82:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00240_line_mark_α
                        .size            n00239_deref_bx, .-n00239_deref_bx
                        .type            n00240_line_mark_bx, @function
n00240_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_886_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_886_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00240_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 123;            jmp   n00241_call_icon_α
                        .size            n00240_line_mark_bx, .-n00240_line_mark_bx
                        .type            n00241_call_icon_bx, @function
n00241_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00241_call_icon_α:       mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1224], rax
                        .section         .rodata
.Lcall_icon_α_rkfn889:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn889]
                        lea              rsi, [rbp + 1216]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_84:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_85:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_640_af
                                                                              jmp   .Ldisjunction_γ_640_as
n00241_call_icon_β:                                                             jmp   .Ldisjunction_ω_640_af
                        .size            n00241_call_icon_bx, .-n00241_call_icon_bx
                        .type            n00235_var_ref_bx, @function
n00235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00235_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3824]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n00242_deref_α
n00235_var_ref_β:                                                               jmp   .Ldisjunction_ω_640_af
                        .size            n00235_var_ref_bx, .-n00235_var_ref_bx
                        .type            n00242_deref_bx, @function
n00242_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_deref_α:           mov              rdi, qword ptr [rbp + 1168]
                        mov              rsi, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_87:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_640_af
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
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
.Lgcsite_options_86:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00243_line_mark_α
                        .size            n00242_deref_bx, .-n00242_deref_bx
                        .type            n00243_line_mark_bx, @function
n00243_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_893_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_893_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00243_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 122;            jmp   n00244_call_icon_α
                        .size            n00243_line_mark_bx, .-n00243_line_mark_bx
                        .type            n00244_call_icon_bx, @function
n00244_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00244_call_icon_α:       mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        .section         .rodata
.Lcall_icon_α_rkfn896:  .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn896]
                        lea              rsi, [rbp + 1136]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_88:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_640_af
                                                                              jmp   .Ldisjunction_γ_640_as
n00244_call_icon_β:                                                             jmp   .Ldisjunction_ω_640_af
                        .size            n00244_call_icon_bx, .-n00244_call_icon_bx
                        .type            n00215_lit_string_bx, @function
n00215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00215_lit_string_α:      mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_897_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n00245_call_builtin_α
n00215_lit_string_β:                                                            jmp   .Ldisjunction_ω_621_af
.Llit_string_α_897_0:   .quad            .Llit_string_α_897_0_s
.Llit_string_α_897_0_s: .string          ":"
                        .size            n00215_lit_string_bx, .-n00215_lit_string_bx
                        .type            n00245_call_builtin_bx, @function
n00245_call_builtin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_call_builtin_α:    mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1064], rax
                        .section         .rodata
.Lcall_builtin_α_rkfn899: .string          "IDENTICAL"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_builtin_α_rkfn899]
                        lea              rsi, [rbp + 1056]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 589859
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_90:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_91:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_621_af
                                                                              jmp   n00246_var_α
n00245_call_builtin_β:                                                          jmp   .Ldisjunction_ω_621_af
                        .size            n00245_call_builtin_bx, .-n00245_call_builtin_bx
                        .type            n00246_var_bx, @function
n00246_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_var_α:             mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 1000], rax;         jmp   .Ldisjunction_γ_621_as
n00246_var_β:                                                                   jmp   n00172_unmark_α
                        .size            n00246_var_bx, .-n00246_var_bx
                        .type            n00212_lit_string_bx, @function
n00212_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_lit_string_α:      mov              qword ptr [rbp + 2160], 2            # result
                        mov              dword ptr [rbp + 2164], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_902_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n00247_var_ref_α
n00212_lit_string_β:                                                            jmp   .Ldisjunction_ω_617_af
.Llit_string_α_902_0:   .quad            .Llit_string_α_902_0_s
.Llit_string_α_902_0_s: .string          "No parameter following -"
                        .size            n00212_lit_string_bx, .-n00212_lit_string_bx
                        .type            n00247_var_ref_bx, @function
n00247_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00247_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3792]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n00248_deref_α
                        .size            n00247_var_ref_bx, .-n00247_var_ref_bx
                        .type            n00248_deref_bx, @function
n00248_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_deref_α:           mov              rdi, qword ptr [rbp + 2192]
                        mov              rsi, qword ptr [rbp + 2200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_93:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_617_af
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
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
.Lgcsite_options_92:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00249_line_mark_α
                        .size            n00248_deref_bx, .-n00248_deref_bx
                        .type            n00249_line_mark_bx, @function
n00249_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_906_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_906_stno
                        .long            0
                        .long            119
                        .quad            .Lstnof1
                        .popsection
n00249_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 119;            jmp   n00250_call_icon_α
                        .size            n00249_line_mark_bx, .-n00249_line_mark_bx
                        .type            n00250_call_icon_bx, @function
n00250_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_call_icon_α:       mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2120], rax
                        .section         .rodata
.Lcall_icon_α_rkfn909:  .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn909]
                        lea              rsi, [rbp + 2112]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_94:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_95:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_617_af
                                                                              jmp   .Ldisjunction_γ_617_as
n00250_call_icon_β:                                                             jmp   .Ldisjunction_ω_617_af
                        .size            n00250_call_icon_bx, .-n00250_call_icon_bx
                        .type            n00211_var_ref_bx, @function
n00211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx;         jmp   n00251_deref_α
n00211_var_ref_β:                                                               jmp   .Ldisjunction_ω_617_af
                        .size            n00211_var_ref_bx, .-n00211_var_ref_bx
                        .type            n00251_deref_bx, @function
n00251_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_deref_α:           mov              rdi, qword ptr [rbp + 2064]
                        mov              rsi, qword ptr [rbp + 2072]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_97:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_617_af
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
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
.Lgcsite_options_96:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00252_line_mark_α
                        .size            n00251_deref_bx, .-n00251_deref_bx
                        .type            n00252_line_mark_bx, @function
n00252_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_913_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_913_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00252_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00253_call_icon_α
                        .size            n00252_line_mark_bx, .-n00252_line_mark_bx
                        .type            n00253_call_icon_bx, @function
n00253_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00253_call_icon_α:       mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2040], rax
                        .section         .rodata
.Lcall_icon_α_rkfn916:  .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn916]
                        lea              rsi, [rbp + 2032]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_98:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_99:    mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    .Ldisjunction_ω_617_af
                                                                              jmp   .Ldisjunction_γ_617_as
n00253_call_icon_β:                                                             jmp   .Ldisjunction_ω_617_af
                        .size            n00253_call_icon_bx, .-n00253_call_icon_bx
                        .type            n00208_lit_string_bx, @function
n00208_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_lit_string_α:      mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_917_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n00254_lit_integer_α
n00208_lit_string_β:                                                            jmp   .Ldisjunction_ω_617_af
.Llit_string_α_917_0:   .quad            .Llit_string_α_917_0_s
.Llit_string_α_917_0_s: .string          ""
                        .size            n00208_lit_string_bx, .-n00208_lit_string_bx
                        .type            n00254_lit_integer_bx, @function
n00254_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_lit_integer_α:     mov              qword ptr [rbp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_918_0]
                        mov              qword ptr [rbp + 2008], rax;         jmp   n00255_line_mark_α
.Llit_integer_α_918_0:  .quad            0
                        .size            n00254_lit_integer_bx, .-n00254_lit_integer_bx
                        .type            n00255_line_mark_bx, @function
n00255_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_919_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_919_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00255_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 118;            jmp   n00210_scan_tab_α
                        .size            n00255_line_mark_bx, .-n00255_line_mark_bx
                        .type            n00210_scan_tab_bx, @function
n00210_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_scan_tab_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_922_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_922_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_617_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_617_af
                        mov              qword ptr [rbp + 1968], r14
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
.Lgcsite_options_101:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_100:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n00256_binop_test_α
n00210_scan_tab_β:        mov              r14, qword ptr [rbp + 1968];         jmp   .Ldisjunction_ω_617_af
                        .size            n00210_scan_tab_bx, .-n00210_scan_tab_bx
                        .type            n00256_binop_test_bx, @function
n00256_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00256_binop_test_α:      mov              rdi, qword ptr [rbp + 1920]
                        mov              rsi, qword ptr [rbp + 1928]
                        mov              rdx, qword ptr [rbp + 1952]
                        mov              rcx, qword ptr [rbp + 1960]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_105:   push             rax
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
.Lgcsite_options_104:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    n00210_scan_tab_β
                        mov              rdi, qword ptr [rbp + 1952]
                        mov              rsi, qword ptr [rbp + 1960]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_options_103:   mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
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
.Lgcsite_options_102:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   .Ldisjunction_γ_617_as
n00256_binop_test_β:                                                            jmp   n00210_scan_tab_β
                        .size            n00256_binop_test_bx, .-n00256_binop_test_bx
                        .type            n00172_unmark_bx, @function
n00172_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_unmark_α:          mov              rsp, qword ptr [rbp + 752];          jmp   n00257_line_mark_α
                        .size            n00172_unmark_bx, .-n00172_unmark_bx
                        .type            n00257_line_mark_bx, @function
n00257_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_926_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_926_stno
                        .long            0
                        .long            114
                        .quad            .Lstnof1
                        .popsection
n00257_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 114;            jmp   n00165_bound_α
                        .size            n00257_line_mark_bx, .-n00257_line_mark_bx
                        .type            n00144_scan_bx, @function
n00144_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00144_scan_α:            mov              dword ptr [rbp + 592], r14d
                        mov              dword ptr [rbp + 580], r15d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_107:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 584], rax
                        mov              dword ptr [rbp + 576], 2
                        mov              rdi, qword ptr [rbp + 488]
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_106:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 488]
                        mov              r14, qword ptr [rbp + 496]
                        mov              r15, qword ptr [rbp + 504];          jmp   n00139_unmark_α
n00144_scan_β:                                                                  jmp   n00139_unmark_α
                        .size            n00144_scan_bx, .-n00144_scan_bx
                        .type            n00163_lit_string_bx, @function
n00163_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00163_lit_string_α:      mov              qword ptr [rbp + 3056], 2            # result
                        mov              dword ptr [rbp + 3060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_930_0]
                        mov              qword ptr [rbp + 3064], rax;         jmp   n00258_scan_match_α
n00163_lit_string_β:                                                            jmp   .Ldisjunction_ω_574_af
.Llit_string_α_930_0:   .quad            .Llit_string_α_930_0_s
.Llit_string_α_930_0_s: .string          "-"
                        .size            n00163_lit_string_bx, .-n00163_lit_string_bx
                        .type            n00258_scan_match_bx, @function
n00258_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_scan_match_α:      mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jl    .Ldisjunction_ω_574_af
                        mov              rdi, qword ptr [rip + .Lscan_match_α_932_0]
                        mov              rsi, r13
                        add              rsi, r14
                        mov              rdx, 1
                        push             r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             memcmp@PLT
.Lgcsite_options_108:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r12
                        test             eax, eax;                            jne   .Ldisjunction_ω_574_af
                        mov              qword ptr [rbp + 3024], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rbp + 3032], rax;         jmp   n00259_scan_tab_α
.Lscan_match_α_932_0:   .quad            .Lscan_match_α_932_0_s
.Lscan_match_α_932_0_s: .string          "-"
                        .size            n00258_scan_match_bx, .-n00258_scan_match_bx
                        .type            n00259_scan_tab_bx, @function
n00259_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_scan_tab_α:        mov              rdi, qword ptr [rbp + 3024]
                        mov              rsi, qword ptr [rbp + 3032]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_options_114:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 8
                        test             eax, eax;                            jz    .Ldisjunction_ω_574_af
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
.Lgcsite_options_113:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rbp + 3024]
                        mov              rsi, qword ptr [rbp + 3032]
                        sub              rsp, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_112:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_111:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_934_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_934_0:     cmp              rax, 1;                              jl    .Ldisjunction_ω_574_af
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_574_af
                        mov              qword ptr [rbp + 3008], r14
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
.Lgcsite_options_110:   mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_options_109:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx;         jmp   n00260_lit_integer_α
n00259_scan_tab_β:        mov              r14, qword ptr [rbp + 3008];         jmp   .Ldisjunction_ω_574_af
                        .size            n00259_scan_tab_bx, .-n00259_scan_tab_bx
                        .type            n00260_lit_integer_bx, @function
n00260_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_lit_integer_α:     mov              qword ptr [rbp + 2976], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_935_0]
                        mov              qword ptr [rbp + 2984], rax;         jmp   n00261_line_mark_α
.Llit_integer_α_935_0:  .quad            0
                        .size            n00260_lit_integer_bx, .-n00260_lit_integer_bx
                        .type            n00261_line_mark_bx, @function
n00261_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_936_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_936_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00261_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 113;            jmp   n00262_scan_pos_α
                        .size            n00261_line_mark_bx, .-n00261_line_mark_bx
                        .type            n00262_scan_pos_bx, @function
n00262_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00262_scan_pos_α:        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_939_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_939_0:     cmp              rax, 1;                              jl    n00259_scan_tab_β
                        mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jg    n00259_scan_tab_β
                        mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            jne   n00259_scan_tab_β
                        mov              qword ptr [rbp + 2944], 3
                        mov              qword ptr [rbp + 2952], rax;         jmp   n00263_conjunction_α
                        .size            n00262_scan_pos_bx, .-n00262_scan_pos_bx
                        .type            n00263_conjunction_bx, @function
n00263_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_conjunction_α:     mov              rax, qword ptr [rbp + 2944]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2952]
                        mov              qword ptr [rbp + 2936], rax;         jmp   n00264_scan_α
n00263_conjunction_β:                                                           jmp   .Ldisjunction_ω_574_af
                        .size            n00263_conjunction_bx, .-n00263_conjunction_bx
                        .type            n00264_scan_bx, @function
n00264_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_scan_α:            mov              dword ptr [rbp + 2912], r14d
                        mov              dword ptr [rbp + 2900], r15d
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_live_subj@PLT
.Lgcsite_options_116:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2904], rax
                        mov              dword ptr [rbp + 2896], 2
                        mov              rdi, qword ptr [rbp + 488]
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_scan_leave@PLT
.Lgcsite_options_115:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rbp + 488]
                        mov              r14, qword ptr [rbp + 496]
                        mov              r15, qword ptr [rbp + 504];          jmp   n00265_var_α
n00264_scan_β:                                                                  jmp   n00265_var_α
                        .size            n00264_scan_bx, .-n00264_scan_bx
                        .type            n00265_var_bx, @function
n00265_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00265_var_α:             mov              qword ptr [rbp + 2864], 0
                        mov              qword ptr [rbp + 2872], 0;           jmp   n00266_assign_α
n00265_var_β:                                                                   jmp   n00267_var_α
                        .size            n00265_var_bx, .-n00265_var_bx
                        .type            n00266_assign_bx, @function
n00266_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_assign_α:          mov              rax, qword ptr [rbp + 2864]
                        mov              rdx, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n00267_var_α
                        .size            n00266_assign_bx, .-n00266_assign_bx
                        .type            n00267_var_bx, @function
n00267_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_var_α:             mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 296], rax;          jmp   n00132_line_mark_α
                        .size            n00267_var_bx, .-n00267_var_bx
                        .type            n00139_unmark_bx, @function
n00139_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_unmark_α:          mov              rsp, qword ptr [rbp + 416];          jmp   n00268_line_mark_α
                        .size            n00139_unmark_bx, .-n00139_unmark_bx
                        .type            n00268_line_mark_bx, @function
n00268_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_949_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_949_stno
                        .long            0
                        .long            110
                        .quad            .Lstnof1
                        .popsection
n00268_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 110;            jmp   n00129_bound_α
                        .size            n00268_line_mark_bx, .-n00268_line_mark_bx
                        .type            n00132_line_mark_bx, @function
n00132_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_951_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_951_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00132_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00269_bound_α
                        .size            n00132_line_mark_bx, .-n00132_line_mark_bx
                        .type            n00269_bound_bx, @function
n00269_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_bound_α:           mov              qword ptr [rbp + 240], rsp;          jmp   n00270_var_ref_α
                        .size            n00269_bound_bx, .-n00269_bound_bx
                        .type            n00270_var_ref_bx, @function
n00270_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00270_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 4080]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n00271_var_ref_α
                        .size            n00270_var_ref_bx, .-n00270_var_ref_bx
                        .type            n00271_var_ref_bx, @function
n00271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 3744]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00272_deref_α
                        .size            n00271_var_ref_bx, .-n00271_var_ref_bx
                        .type            n00272_deref_bx, @function
n00272_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_deref_α:           mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_118:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00273_line_mark_α
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
.Lgcsite_options_117:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00274_line_mark_α
                        .size            n00272_deref_bx, .-n00272_deref_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_960_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_960_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00274_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00275_call_icon_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00275_call_icon_bx, @function
n00275_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_call_icon_α:       mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_icon_α_rkfn963:  .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn963]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_119:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
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
1:                      cmp              al, 104;                             je    n00273_line_mark_α
                                                                              jmp   n00276_deref_α
n00275_call_icon_β:                                                             jmp   n00273_line_mark_α
                        .size            n00275_call_icon_bx, .-n00275_call_icon_bx
                        .type            n00276_deref_bx, @function
n00276_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_deref_α:           mov              rdi, qword ptr [rbp + 112]
                        mov              rsi, qword ptr [rbp + 120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_options_122:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00273_line_mark_α
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
.Lgcsite_options_121:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00277_line_mark_α
                        .size            n00276_deref_bx, .-n00276_deref_bx
                        .type            n00277_line_mark_bx, @function
n00277_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_965_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_965_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00277_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 133;            jmp   n00278_call_icon_α
                        .size            n00277_line_mark_bx, .-n00277_line_mark_bx
                        .type            n00278_call_icon_bx, @function
n00278_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_call_icon_α:       mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 72], rax
                        .section         .rodata
.Lcall_icon_α_rkfn968:  .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn968]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_123:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_options_124:   mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00273_line_mark_α
                                                                              jmp   n00279_unmark_α
n00278_call_icon_β:                                                             jmp   n00273_line_mark_α
                        .size            n00278_call_icon_bx, .-n00278_call_icon_bx
                        .type            n00279_unmark_bx, @function
n00279_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_unmark_α:          mov              rsp, qword ptr [rbp + 240];          jmp   n00269_bound_α
                        .size            n00279_unmark_bx, .-n00279_unmark_bx
                        .type            n00273_line_mark_bx, @function
n00273_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_971_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_971_stno
                        .long            0
                        .long            134
                        .quad            .Lstnof1
                        .popsection
n00273_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 134;            jmp   n00280_var_α
                        .size            n00273_line_mark_bx, .-n00273_line_mark_bx
                        .type            n00280_var_bx, @function
n00280_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_var_α:             mov              rax, qword ptr [rbp + 3728]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 3736]
                        mov              qword ptr [rbp + 24], rax;           jmp   n00281_return_α
                        .size            n00280_var_bx, .-n00280_var_bx
                        .type            n00281_return_bx, @function
n00281_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00281_return_α:          mov              rax, qword ptr [rbp + 16]
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00281_return_bx, .-n00281_return_bx
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
                        lea              rsp, [rbp + 4112]
                        mov              rbp, qword ptr [rbp + 4072];         jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 4112]
                        mov              rbp, qword ptr [rbp + 4072];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_options:
                        .quad            17524813024602
                        .quad            515396075728
                        .quad            .Lgcmap_options_s
                        .quad            3856
                        .quad            45
                        .quad            263882790666240
                        .quad            17596481011952
                        .quad            175921860444416
                        .quad            17596481012128
                        .quad            70368744178096
                        .quad            17596481012208
                        .quad            35184372089344
                        .quad            17596481012256
                        .quad            35184372089392
                        .quad            17596481012304
                        .quad            17592186045024
                        .quad            17596481012336
                        .quad            52776558133888
                        .quad            17596481012400
                        .quad            52776558133952
                        .quad            17596481012464
                        .quad            52776558134016
                        .quad            17596481012528
                        .quad            87960930222912
                        .quad            17596481012624
                        .quad            52776558134176
                        .quad            17596481012688
                        .quad            123145302311904
                        .quad            17596481012816
                        .quad            404620279022688
                        .quad            17596481013200
                        .quad            422212465067488
                        .quad            17596481013600
                        .quad            70368744179568
                        .quad            17596481013680
                        .quad            615726511556544
                        .quad            17596481014256
                        .quad            316659348802048
                        .quad            17596481014560
                        .quad            52776558136112
                        .quad            17596481014624
                        .quad            87960930225008
                        .quad            17596481014720
                        .quad            17592186047440
                        .quad            17596481014752
                        .quad            175921860447216
                        .quad            17596481014928
                        .quad            17592186047648
                        .quad            17596481014960
                        .quad            650910883646656
.Lgcmap_options_s:      .string          "options"
.Lgcsites_options_2:    .quad            125
                        .quad            .Lgcmap_options
                        .quad            9223653340032798736
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
                        .quad            .Lgcsite_options_121
                        .quad            65537
                        .quad            .Lgcsite_options_122
                        .quad            65537
                        .quad            .Lgcsite_options_123
                        .quad            65537
                        .quad            .Lgcsite_options_124
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
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
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
                        cmp              ecx, 0;                              jbe   .Lmain_α_975_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_975_220:
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
main_α_body:
                        .type            n00282_call_bx, @function
n00282_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_call_α:            lea              rdi, [rbp + 864]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:273
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
1:                      cmp              al, 104;                             je    n00283_line_mark_α
                                                                              jmp   n00283_line_mark_α
n00282_call_β:                                                                  jmp   n00283_line_mark_α
                        .size            n00282_call_bx, .-n00282_call_bx
                        .type            n00283_line_mark_bx, @function
n00283_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1021_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1021_stno
                        .long            0
                        .long            53
                        .quad            .Lstnof1
                        .popsection
n00283_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1022_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n00284_line_mark_α
.Lline_mark_α_1022_0:   .quad            .Lline_mark_α_1022_0_s
.Lline_mark_α_1022_0_s: .string          "queens.icn"
                        .size            n00283_line_mark_bx, .-n00283_line_mark_bx
                        .type            n00284_line_mark_bx, @function
n00284_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1023_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1023_stno
                        .long            0
                        .long            56
                        .quad            .Lstnof1
                        .popsection
n00284_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00285_var_ref_α
                        .size            n00284_line_mark_bx, .-n00284_line_mark_bx
                        .type            n00285_var_ref_bx, @function
n00285_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n00286_lit_string_α
                        .size            n00285_var_ref_bx, .-n00285_var_ref_bx
                        .type            n00286_lit_string_bx, @function
n00286_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00286_lit_string_α:      mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1027_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n00287_deref_α
.Llit_string_α_1027_0:  .quad            .Llit_string_α_1027_0_s
.Llit_string_α_1027_0_s:
                        .string          "n+"
                        .size            n00286_lit_string_bx, .-n00286_lit_string_bx
                        .type            n00287_deref_bx, @function
n00287_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00287_deref_α:           mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_3:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00288_line_mark_α
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
1:                                                                            jmp   n00289_line_mark_α
                        .size            n00287_deref_bx, .-n00287_deref_bx
                        .type            n00289_line_mark_bx, @function
n00289_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1029_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1029_stno
                        .long            0
                        .long            56
                        .quad            .Lstnof1
                        .popsection
n00289_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56;             jmp   n00290_call_proc_staged_α
                        .size            n00289_line_mark_bx, .-n00289_line_mark_bx
                        .type            n00290_call_proc_staged_bx, @function
n00290_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00290_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1032_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1032_3]
                        push             rcx
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
.Lcall_proc_staged_α_1032_3:
.Lgcsite_main_5:        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 56
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1032_2
.Lcall_proc_staged_α_1032_4:
.Lgcsite_main_4:        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 56
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1032_2:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    n00288_line_mark_α
                                                                              jmp   n00291_deref_α
n00290_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 56
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   n00288_line_mark_α
.Lcall_proc_staged_β_1032_0:
                        .quad            .Lcall_proc_staged_β_1032_0_s
.Lcall_proc_staged_β_1032_0_s:
                        .string          "options"
                        .size            n00290_call_proc_staged_bx, .-n00290_call_proc_staged_bx
                        .type            n00291_deref_bx, @function
n00291_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_deref_α:           mov              rdi, qword ptr [rbp + 720]
                        mov              rsi, qword ptr [rbp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_7:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00288_line_mark_α
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
.Lgcsite_main_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00292_assign_α
                        .size            n00291_deref_bx, .-n00291_deref_bx
                        .type            n00292_assign_bx, @function
n00292_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_assign_α:          mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n00288_line_mark_α
                        .size            n00292_assign_bx, .-n00292_assign_bx
                        .type            n00288_line_mark_bx, @function
n00288_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1035_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1035_stno
                        .long            0
                        .long            57
                        .quad            .Lstnof1
                        .popsection
n00288_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57;             jmp   n00293_disjunction_α
                        .size            n00288_line_mark_bx, .-n00288_line_mark_bx
                        .type            n00293_disjunction_bx, @function
n00293_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_disjunction_α:     mov              qword ptr [rbp + 544], 0
                        mov              qword ptr [rbp + 552], 0
                        mov              dword ptr [rbp + 560], 0;            jmp   n00294_var_ref_α
.Ldisjunction_γ_987_as: mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1038_0
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00295_assign_α
.Ldisjunction_α_1038_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1038_1
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 552], rax;          jmp   n00295_assign_α
.Ldisjunction_α_1038_1:                                                       jmp   n00295_assign_α
n00293_disjunction_β:     mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_987_af
                                                                              jmp   .Ldisjunction_ω_987_af
.Ldisjunction_γ_987_af:
.Ldisjunction_ω_987_af: add              dword ptr [rbp + 560], 1
                        mov              eax, dword ptr [rbp + 560]
                        cmp              eax, 1;                              je    n00296_lit_integer_α
                                                                              jmp   n00297_line_mark_α
                        .size            n00293_disjunction_bx, .-n00293_disjunction_bx
                        .type            n00295_assign_bx, @function
n00295_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_assign_α:          mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [r9 + 0], rax              # n
                        mov              qword ptr [r9 + 8], rdx;             jmp   n00297_line_mark_α
                        .size            n00295_assign_bx, .-n00295_assign_bx
                        .type            n00297_line_mark_bx, @function
n00297_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1040_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1040_stno
                        .long            0
                        .long            58
                        .quad            .Lstnof1
                        .popsection
n00297_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00298_disjunction_α
                        .size            n00297_line_mark_bx, .-n00297_line_mark_bx
                        .type            n00298_disjunction_bx, @function
n00298_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_disjunction_α:     mov              qword ptr [rbp + 368], 0
                        mov              qword ptr [rbp + 376], 0
                        mov              dword ptr [rbp + 384], 0;            jmp   n00299_lit_integer_α
.Ldisjunction_γ_990_as: mov              eax, dword ptr [rbp + 384]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1043_0
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax;          jmp   n00300_line_mark_α
.Ldisjunction_α_1043_0:                                                       jmp   n00300_line_mark_α
n00298_disjunction_β:     mov              eax, dword ptr [rbp + 384];          jmp   n00300_line_mark_α
.Ldisjunction_γ_990_af:
.Ldisjunction_ω_990_af: add              dword ptr [rbp + 384], 1
                        mov              eax, dword ptr [rbp + 384];          jmp   n00300_line_mark_α
                        .size            n00298_disjunction_bx, .-n00298_disjunction_bx
                        .type            n00299_lit_integer_bx, @function
n00299_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_lit_integer_α:     mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1044_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00301_var_α
n00299_lit_integer_β:                                                           jmp   .Ldisjunction_ω_990_af
.Llit_integer_α_1044_0: .quad            0
                        .size            n00299_lit_integer_bx, .-n00299_lit_integer_bx
                        .type            n00301_var_bx, @function
n00301_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00301_var_α:             mov              rax, qword ptr [r9 + 0]              # n
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rbp + 512], rax           # result
                        mov              qword ptr [rbp + 520], rdx;          jmp   n00302_binop_test_α
                        .size            n00301_var_bx, .-n00301_var_bx
                        .type            n00302_binop_test_bx, @function
n00302_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00302_binop_test_α:      mov              eax, dword ptr [rbp + 512]
                        cmp              al, 112;                             je    .Lbinop_test_α_1046_0
                        mov              eax, dword ptr [rbp + 496]
                        cmp              al, 112;                             je    .Lbinop_test_α_1046_0
                        mov              eax, dword ptr [rbp + 512]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1046_2
                        mov              eax, dword ptr [rbp + 496]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1046_2
.Lbinop_test_α_1046_1:  mov              rax, qword ptr [rbp + 520]
                        mov              rcx, qword ptr [rbp + 504]
                        cmp              rax, rcx;                            jg    .Ldisjunction_ω_990_af
                        mov              rcx, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 480], rcx
                        mov              rcx, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 488], rcx;          jmp   n00303_lit_string_α
.Lbinop_test_α_1046_0:  mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 6
                        lea              r9, [rbp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_overload@PLT
.Lgcsite_main_13:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            je    .Lbinop_test_α_1046_2
                        cmp              eax, 1;                              je    .Ldisjunction_ω_990_af
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
.Lgcsite_main_12:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00303_lit_string_α
.Lbinop_test_α_1046_2:  mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        mov              r8d, 6
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_main_11:       push             rax
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
.Lgcsite_main_10:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jz    .Ldisjunction_ω_990_af
                        mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              rdx, qword ptr [rbp + 496]
                        mov              rcx, qword ptr [rbp + 504]
                        lea              r8, [rbp + 480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_relop_val_coerce@PLT
.Lgcsite_main_9:        mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00303_lit_string_α
                        .size            n00302_binop_test_bx, .-n00302_binop_test_bx
                        .type            n00303_lit_string_bx, @function
n00303_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_lit_string_α:      mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 37
                        mov              rax, qword ptr [rip + .Llit_string_α_1047_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n00304_line_mark_α
.Llit_string_α_1047_0:  .quad            .Llit_string_α_1047_0_s
.Llit_string_α_1047_0_s:
                        .string          "-n needs a positive numeric parameter"
                        .size            n00303_lit_string_bx, .-n00303_lit_string_bx
                        .type            n00304_line_mark_bx, @function
n00304_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1048_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1048_stno
                        .long            0
                        .long            58
                        .quad            .Lstnof1
                        .popsection
n00304_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58;             jmp   n00305_call_icon_α
                        .size            n00304_line_mark_bx, .-n00304_line_mark_bx
                        .type            n00305_call_icon_bx, @function
n00305_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_call_icon_α:       mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1051: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1051]
                        lea              rsi, [rbp + 416]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_14:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00300_line_mark_α
                                                                              jmp   .Ldisjunction_γ_990_as
n00305_call_icon_β:                                                             jmp   n00300_line_mark_α
                        .size            n00305_call_icon_bx, .-n00305_call_icon_bx
                        .type            n00300_line_mark_bx, @function
n00300_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1052_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1052_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n00300_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00306_var_ref_α
                        .size            n00300_line_mark_bx, .-n00300_line_mark_bx
                        .type            n00306_var_ref_bx, @function
n00306_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_var_ref_α:         mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n00307_deref_α
                        .size            n00306_var_ref_bx, .-n00306_var_ref_bx
                        .type            n00307_deref_bx, @function
n00307_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_deref_α:           mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00308_line_mark_α
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
.Lgcsite_main_16:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00309_line_mark_α
                        .size            n00307_deref_bx, .-n00307_deref_bx
                        .type            n00309_line_mark_bx, @function
n00309_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1057_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1057_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n00309_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 60;             jmp   n00310_call_icon_α
                        .size            n00309_line_mark_bx, .-n00309_line_mark_bx
                        .type            n00310_call_icon_bx, @function
n00310_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00310_call_icon_α:      mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1060: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1060]
                        lea              rsi, [rbp + 288]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_18:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_19:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00308_line_mark_α
                                                                              jmp   n00311_assign_α
n00310_call_icon_β:                                                            jmp   n00308_line_mark_α
                        .size            n00310_call_icon_bx, .-n00310_call_icon_bx
                        .type            n00311_assign_bx, @function
n00311_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_assign_α:         mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [r9 + 16], rax             # solution
                        mov              qword ptr [r9 + 24], rdx;            jmp   n00308_line_mark_α
                        .size            n00311_assign_bx, .-n00311_assign_bx
                        .type            n00308_line_mark_bx, @function
n00308_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1062_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1062_stno
                        .long            0
                        .long            61
                        .quad            .Lstnof1
                        .popsection
n00308_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00312_var_ref_α
                        .size            n00308_line_mark_bx, .-n00308_line_mark_bx
                        .type            n00312_var_ref_bx, @function
n00312_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_var_ref_α:        mov              rax, 4294967336
                        mov              rdx, 1879052288                      # n
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n00313_lit_string_α
                        .size            n00312_var_ref_bx, .-n00312_var_ref_bx
                        .type            n00313_lit_string_bx, @function
n00313_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00313_lit_string_α:     mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_1066_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n00314_deref_α
.Llit_string_α_1066_0:  .quad            .Llit_string_α_1066_0_s
.Llit_string_α_1066_0_s:
                        .string          "-Queens:"
                        .size            n00313_lit_string_bx, .-n00313_lit_string_bx
                        .type            n00314_deref_bx, @function
n00314_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_deref_α:          mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_21:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00315_line_mark_α
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
.Lgcsite_main_20:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00316_line_mark_α
                        .size            n00314_deref_bx, .-n00314_deref_bx
                        .type            n00316_line_mark_bx, @function
n00316_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1068_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1068_stno
                        .long            0
                        .long            61
                        .quad            .Lstnof1
                        .popsection
n00316_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 61;             jmp   n00317_call_icon_α
                        .size            n00316_line_mark_bx, .-n00316_line_mark_bx
                        .type            n00317_call_icon_bx, @function
n00317_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00317_call_icon_α:      mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lcall_icon_α_rkfn1071: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn1071]
                        lea              rsi, [rbp + 128]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:336
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_23:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00315_line_mark_α
                                                                              jmp   n00315_line_mark_α
n00317_call_icon_β:                                                            jmp   n00315_line_mark_α
                        .size            n00317_call_icon_bx, .-n00317_call_icon_bx
                        .type            n00315_line_mark_bx, @function
n00315_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1072_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1072_stno
                        .long            0
                        .long            62
                        .quad            .Lstnof1
                        .popsection
n00315_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00318_lit_integer_α
                        .size            n00315_line_mark_bx, .-n00315_line_mark_bx
                        .type            n00318_lit_integer_bx, @function
n00318_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_lit_integer_α:    mov              qword ptr [rbp + 32], 3              # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1074_0]
                        mov              qword ptr [rbp + 40], rax;           jmp   n00319_line_mark_α
.Llit_integer_α_1074_0: .quad            1
                        .size            n00318_lit_integer_bx, .-n00318_lit_integer_bx
                        .type            n00319_line_mark_bx, @function
n00319_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1075_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_1075_stno
                        .long            0
                        .long            62
                        .quad            .Lstnof1
                        .popsection
n00319_line_mark_α:      mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 62;             jmp   n00320_call_proc_staged_α
                        .size            n00319_line_mark_bx, .-n00319_line_mark_bx
                        .type            n00320_call_proc_staged_bx, @function
n00320_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_call_proc_staged_α:
                        lea              rcx, [rip + .Lcall_proc_staged_α_1078_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1078_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rbp + 32]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rbp + 40]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_rt_gen_procs@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 0]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_1078_3:
.Lgcsite_main_25:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 62
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1078_2
.Lcall_proc_staged_α_1078_4:
.Lgcsite_main_24:       mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 62
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1078_2:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n00321_deref_α
n00320_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rcx + 0], 62
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_file@GOTPCREL]
                        mov              qword ptr [rcx + 0], r11;            jmp   main_ω
.Lcall_proc_staged_β_1078_0:
                        .quad            .Lcall_proc_staged_β_1078_0_s
.Lcall_proc_staged_β_1078_0_s:
                        .string          "q"
                        .size            n00320_call_proc_staged_bx, .-n00320_call_proc_staged_bx
                        .type            n00321_deref_bx, @function
n00321_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00321_deref_α:          mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_27:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_26:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   main_ω
                        .size            n00321_deref_bx, .-n00321_deref_bx
                        .type            n00296_lit_integer_bx, @function
n00296_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00296_lit_integer_α:    mov              qword ptr [rbp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1080_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   .Ldisjunction_γ_987_as
n00296_lit_integer_β:                                                          jmp   .Ldisjunction_ω_987_af
.Llit_integer_α_1080_0: .quad            6
                        .size            n00296_lit_integer_bx, .-n00296_lit_integer_bx
                        .type            n00294_var_ref_bx, @function
n00294_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_var_ref_α:        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n00322_lit_string_α
n00294_var_ref_β:                                                              jmp   .Ldisjunction_ω_987_af
                        .size            n00294_var_ref_bx, .-n00294_var_ref_bx
                        .type            n00322_lit_string_bx, @function
n00322_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00322_lit_string_α:     mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1083_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00323_subscript_α
.Llit_string_α_1083_0:  .quad            .Llit_string_α_1083_0_s
.Llit_string_α_1083_0_s:
                        .string          "n"
                        .size            n00322_lit_string_bx, .-n00322_lit_string_bx
                        .type            n00323_subscript_bx, @function
n00323_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_subscript_α:      mov              rdi, qword ptr [rbp + 592]
                        mov              rsi, qword ptr [rbp + 600]
                        mov              rdx, qword ptr [rbp + 608]
                        mov              rcx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_29:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_987_af
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
.Lgcsite_main_28:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00324_deref_α
                        .size            n00323_subscript_bx, .-n00323_subscript_bx
                        .type            n00324_deref_bx, @function
n00324_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_deref_α:          mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_31:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    .Ldisjunction_ω_987_af
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
.Lgcsite_main_30:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00325_unop_test_α
                        .size            n00324_deref_bx, .-n00324_deref_bx
                        .type            n00325_unop_test_bx, @function
n00325_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_unop_test_α:      mov              eax, dword ptr [rbp + 656]
                        cmp              al, 104;                             je    .Ldisjunction_ω_987_af
                        cmp              eax, 0;                              je    .Ldisjunction_ω_987_af
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 584], rax;          jmp   .Ldisjunction_γ_987_as
n00325_unop_test_β:                                                            jmp   .Ldisjunction_ω_987_af
                        .size            n00325_unop_test_bx, .-n00325_unop_test_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
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
                        .quad            382252089440
                        .quad            .Lgcmap_main_s
                        .quad            880
                        .quad            5
                        .quad            422212465065984
                        .quad            17596481012096
                        .quad            175921860444560
                        .quad            17596481012272
                        .quad            334251534844480
.Lgcmap_main_s:         .string          "main"
.Lgcsites_main_3:       .quad            32
                        .quad            .Lgcmap_main
                        .quad            9223653477471749088
                        .quad            .Lgcsite_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_1
                        .quad            65537
                        .quad            .Lgcsite_main_2
                        .quad            65537
                        .quad            .Lgcsite_main_3
                        .quad            65537
                        .quad            .Lgcsite_main_4
                        .quad            65538
                        .quad            .Lgcsite_main_5
                        .quad            65538
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
                        .quad            65538
                        .quad            .Lgcsite_main_25
                        .quad            65538
                        .quad            .Lgcsite_main_26
                        .quad            65537
                        .quad            .Lgcsite_main_27
                        .quad            65537
                        .quad            .Lgcsite_main_28
                        .quad            65537
                        .quad            .Lgcsite_main_29
                        .quad            65537
                        .quad            .Lgcsite_main_30
                        .quad            65537
                        .quad            .Lgcsite_main_31
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
.Lstartup_ipp00326_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00326_0
                        .quad            0
.Lstartup_iln00326_0:    .string          "i"
.Lstartup_iln00326_1:    .string          "opts"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00326_0
                        .quad            .Lstartup_iln00326_1
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
                        .long            3776
                        .long            3840
                        .long            3792
                        .long            3728
                        .long            3744
                        .long            3808
                        .long            3824
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
                        .long            3856
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
                        .section         .rodata
.S0:                    .string          "queens.icn"
                        .text
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
