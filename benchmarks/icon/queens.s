                        .intel_syntax    noprefix
                        .text
                        .file            1 "queens.icn"
                        .file            2 "<included>"
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_q_0:
FN__q:
                        sub              rsp, 144
                        mov              rdi, rsp
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        movups           xmmword ptr [rdi + 0], xmm0
                        movups           xmmword ptr [rdi + 16], xmm0
                        movups           xmmword ptr [rdi + 32], xmm0
                        movups           xmmword ptr [rdi + 48], xmm0
                        movups           xmmword ptr [rdi + 64], xmm0
                        movups           xmmword ptr [rdi + 80], xmm0
                        movups           xmmword ptr [rdi + 96], xmm0
                        movups           xmmword ptr [rdi + 112], xmm0
                        mov              qword ptr [rdi + 128], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_q qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
q_α_body:
                        .type            n0_line_mark_bx, @function
n0_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
                        .pushsection     .rodata
.Lstnof1:               .string          "queens.icn"
                        .popsection
.Lline_mark_α_132_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_132_stno
                        .long            0
                        .long            70
                        .quad            .Lstnof1
                        .popsection
n0_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 70
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_133_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n1_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_133_0: .quad .Lline_mark_α_133_0_s; .popsection
.Lline_mark_α_133_0_s:  .string          "queens.icn"
                        .size            n0_line_mark_bx, .-n0_line_mark_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
.Lline_mark_α_134_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_134_stno
                        .long            0
                        .long            71
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 71;           jmp   n2_line_mark_α
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
.Lline_mark_α_136_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_136_stno
                        .long            0
                        .long            72
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 72;           jmp   n3_disjunction_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_disjunction_bx, @function
n3_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_disjunction_α:       mov              qword ptr [rbp + 16], 0
                        mov              qword ptr [rbp + 24], 0
                        mov              dword ptr [rbp + 32], 0
                        mov              qword ptr [rbp + 40], rsp;           jmp   n4_var_α
.Ldisjunction_γ_3_as:   mov              eax, dword ptr [rbp + 32]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_139_0
                                                                              jmp   n42_line_mark_α
.Ldisjunction_α_139_0:                                                        jmp   n42_line_mark_α
n3_disjunction_β:       mov              eax, dword ptr [rbp + 32];           jmp   n41_goto_β
.Ldisjunction_γ_3_af:
.Ldisjunction_ω_3_af:   add              dword ptr [rbp + 32], 1
                        mov              eax, dword ptr [rbp + 32];           jmp   n42_line_mark_α
                        .size            n3_disjunction_bx, .-n3_disjunction_bx
                        .type            n4_var_bx, @function
n4_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_α:               sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11936]          # q__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 11944]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n5_unop_test_α
n4_var_β:               add              rsp, 16;                             jmp   .Ldisjunction_ω_3_af
                        .size            n4_var_bx, .-n4_var_bx
                        .type            n5_unop_test_bx, @function
n5_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_unop_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_141_998
                        add              rsp, 16;                             jmp   n4_var_β
.Lunop_test_α_141_998:  cmp              eax, 0;                              je    .Lunop_test_α_141_999
                        add              rsp, 16;                             jmp   n4_var_β
.Lunop_test_α_141_999:  mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n6_lit_integer_α
                        .size            n5_unop_test_bx, .-n5_unop_test_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_142_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_assign_α
.Llit_integer_α_142_0:  .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11936], rax          # q__INITFLAG__0
                        mov              qword ptr [r9 + 11944], rdx;         jmp   n8_line_mark_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_line_mark_bx, @function
n8_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 73 0
.Lline_mark_α_144_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_144_stno
                        .long            0
                        .long            73
                        .quad            .Lstnof1
                        .popsection
n8_line_mark_α:         mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 73;           jmp   n9_lit_integer_α
                        .size            n8_line_mark_bx, .-n8_line_mark_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_146_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_var_α
.Llit_integer_α_146_0:  .quad            2
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_var_bx, @function
n10_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # n
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n11_coerce_numeric_α
                        .size            n10_var_bx, .-n10_var_bx
                        .type            n11_coerce_numeric_bx, @function
n11_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_149_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_149_0
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_149_0
.Lcoerce_numeric_α_149_1:
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_binop_α
.Lcoerce_numeric_α_149_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_1:           push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_0:           mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_149_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n20_line_mark_α
.Lcoerce_numeric_α_149_999:
                                                                              jmp   n12_binop_α
                        .size            n11_coerce_numeric_bx, .-n11_coerce_numeric_bx
                        .type            n12_binop_bx, @function
n12_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              al, 3;                               jne   .Lbinop_α_150_2
                        mov              rax, 2
                        imul             rax, rdx;                            jo    .Lbinop_α_150_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_150_7
.Lbinop_α_150_2:        mov              ecx, eax
                        mov              edx, eax
                        and              edx, 1;                              jz    .Lbinop_α_150_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 24]            # coerce_numeric
                        cvtsi2sd         xmm0, rsi
                        cmp              cl, 5;                               je    .Lbinop_α_150_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_150_6
.Lbinop_α_150_5:        movq             xmm1, rdi
.Lbinop_α_150_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_150_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_150_7:                                                              jmp   n13_lit_integer_α
.Lbinop_α_150_0:        mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul_big@PLT
.Lgcsite_q_3:           mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_150_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n20_line_mark_α
.Lbinop_α_150_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_2:           mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n13_lit_integer_α
                        .size            n12_binop_bx, .-n12_binop_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_151_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_coerce_numeric_α
.Llit_integer_α_151_0:  .quad            1
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_coerce_numeric_bx, @function
n14_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_153_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_153_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_153_0
.Lcoerce_numeric_α_153_1:
                        mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_binop_α
.Lcoerce_numeric_α_153_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_5:           push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_4:           mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_153_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n20_line_mark_α
.Lcoerce_numeric_α_153_999:
                                                                              jmp   n15_binop_α
                        .size            n14_coerce_numeric_bx, .-n14_coerce_numeric_bx
                        .type            n15_binop_bx, @function
n15_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_154_2
                        sub              rax, 1;                              jo    .Lbinop_α_154_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_154_7
.Lbinop_α_154_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_154_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_154_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_154_4
.Lbinop_α_154_3:        movq             xmm0, rsi
.Lbinop_α_154_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_154_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_154_7:                                                              jmp   n16_lit_integer_α
.Lbinop_α_154_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_sub_big@PLT
.Lgcsite_q_7:           mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_154_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n20_line_mark_α
.Lbinop_α_154_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_6:           mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n16_lit_integer_α
                        .size            n15_binop_bx, .-n15_binop_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_155_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_line_mark_α
.Llit_integer_α_155_0:  .quad            0
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_156_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_156_stno
                        .long            0
                        .long            73
                        .quad            .Lstnof1
                        .popsection
n17_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 73;           jmp   n18_call_byname_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_call_byname_bx, @function
n18_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_byname_α:      sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd159: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd159]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_q_8:           mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_9:           mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_158_999
                        add              rsp, 48
                        add              rsp, 128;                            jmp   n20_line_mark_α
.Lcall_byname_α_158_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n19_assign_α
                        .size            n18_call_byname_bx, .-n18_call_byname_bx
                        .type            n19_assign_bx, @function
n19_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11888], rax          # q__STATIC__up
                        mov              qword ptr [r9 + 11896], rdx
                        add              rsp, 176;                            jmp   n20_line_mark_α
                        .size            n19_assign_bx, .-n19_assign_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 74 0
.Lline_mark_α_161_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_161_stno
                        .long            0
                        .long            74
                        .quad            .Lstnof1
                        .popsection
n20_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 74;           jmp   n21_lit_integer_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_163_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n22_var_α
.Llit_integer_α_163_0:  .quad            2
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # n
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n23_coerce_numeric_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_coerce_numeric_bx, @function
n23_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_166_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_166_0
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_166_0
.Lcoerce_numeric_α_166_1:
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n24_binop_α
.Lcoerce_numeric_α_166_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_11:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_10:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_166_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n32_line_mark_α
.Lcoerce_numeric_α_166_999:
                                                                              jmp   n24_binop_α
                        .size            n23_coerce_numeric_bx, .-n23_coerce_numeric_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              al, 3;                               jne   .Lbinop_α_167_2
                        mov              rax, 2
                        imul             rax, rdx;                            jo    .Lbinop_α_167_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_167_7
.Lbinop_α_167_2:        mov              ecx, eax
                        mov              edx, eax
                        and              edx, 1;                              jz    .Lbinop_α_167_0
                        mov              rsi, 2
                        mov              rdi, qword ptr [rsp + 24]            # coerce_numeric
                        cvtsi2sd         xmm0, rsi
                        cmp              cl, 5;                               je    .Lbinop_α_167_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_167_6
.Lbinop_α_167_5:        movq             xmm1, rdi
.Lbinop_α_167_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_167_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_167_7:                                                              jmp   n25_lit_integer_α
.Lbinop_α_167_0:        mov              rdi, qword ptr [rsp + 48]            # lit_integer
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul_big@PLT
.Lgcsite_q_13:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_167_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n32_line_mark_α
.Lbinop_α_167_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_12:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n25_lit_integer_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_168_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_coerce_numeric_α
.Llit_integer_α_168_0:  .quad            1
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_coerce_numeric_bx, @function
n26_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_170_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_170_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_170_0
.Lcoerce_numeric_α_170_1:
                        mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_binop_α
.Lcoerce_numeric_α_170_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_15:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_14:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_170_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n32_line_mark_α
.Lcoerce_numeric_α_170_999:
                                                                              jmp   n27_binop_α
                        .size            n26_coerce_numeric_bx, .-n26_coerce_numeric_bx
                        .type            n27_binop_bx, @function
n27_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_171_2
                        sub              rax, 1;                              jo    .Lbinop_α_171_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_171_7
.Lbinop_α_171_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_171_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_171_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_171_4
.Lbinop_α_171_3:        movq             xmm0, rsi
.Lbinop_α_171_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_171_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_171_7:                                                              jmp   n28_lit_integer_α
.Lbinop_α_171_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_sub_big@PLT
.Lgcsite_q_17:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_171_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n32_line_mark_α
.Lbinop_α_171_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_16:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n28_lit_integer_α
                        .size            n27_binop_bx, .-n27_binop_bx
                        .type            n28_lit_integer_bx, @function
n28_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_172_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n29_line_mark_α
.Llit_integer_α_172_0:  .quad            0
                        .size            n28_lit_integer_bx, .-n28_lit_integer_bx
                        .type            n29_line_mark_bx, @function
n29_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_173_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_173_stno
                        .long            0
                        .long            74
                        .quad            .Lstnof1
                        .popsection
n29_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 74;           jmp   n30_call_byname_α
                        .size            n29_line_mark_bx, .-n29_line_mark_bx
                        .type            n30_call_byname_bx, @function
n30_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_call_byname_α:      sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd176: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd176]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_q_18:          mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_19:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_175_999
                        add              rsp, 48
                        add              rsp, 128;                            jmp   n32_line_mark_α
.Lcall_byname_α_175_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_assign_α
                        .size            n30_call_byname_bx, .-n30_call_byname_bx
                        .type            n31_assign_bx, @function
n31_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11904], rax          # q__STATIC__down
                        mov              qword ptr [r9 + 11912], rdx
                        add              rsp, 176;                            jmp   n32_line_mark_α
                        .size            n31_assign_bx, .-n31_assign_bx
                        .type            n32_line_mark_bx, @function
n32_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
.Lline_mark_α_178_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_178_stno
                        .long            0
                        .long            75
                        .quad            .Lstnof1
                        .popsection
n32_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 75;           jmp   n33_var_ref_α
                        .size            n32_line_mark_bx, .-n32_line_mark_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # n
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_lit_integer_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_182_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n35_deref_α
.Llit_integer_α_182_0:  .quad            0
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_deref_bx, @function
n35_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_q_21:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_183_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n42_line_mark_α
.Lderef_α_183_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_20:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n36_line_mark_α
                        .size            n35_deref_bx, .-n35_deref_bx
                        .type            n36_line_mark_bx, @function
n36_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_184_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_184_stno
                        .long            0
                        .long            75
                        .quad            .Lstnof1
                        .popsection
n36_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 75;           jmp   n37_call_byname_α
                        .size            n36_line_mark_bx, .-n36_line_mark_bx
                        .type            n37_call_byname_bx, @function
n37_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_byname_α:      sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd187: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd187]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_q_22:          mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_23:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_186_999
                        add              rsp, 48
                        add              rsp, 96;                             jmp   n42_line_mark_α
.Lcall_byname_α_186_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_assign_α
                        .size            n37_call_byname_bx, .-n37_call_byname_bx
                        .type            n38_assign_bx, @function
n38_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11920], rax          # q__STATIC__rows
                        mov              qword ptr [r9 + 11928], rdx;         jmp   n39_conjunction_α
                        .size            n38_assign_bx, .-n38_assign_bx
                        .type            n39_conjunction_bx, @function
n39_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_conjunction_α:                                                            jmp   n40_conjunction_α
n39_conjunction_β:                                                            jmp   n42_line_mark_α
                        .size            n39_conjunction_bx, .-n39_conjunction_bx
                        .type            n40_conjunction_bx, @function
n40_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_conjunction_α:      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 24], rax
                        add              rsp, 144;                            jmp   .Ldisjunction_γ_3_as
n40_conjunction_β:      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 24], rax
                        add              rsp, 144;                            jmp   n42_line_mark_α
                        .size            n40_conjunction_bx, .-n40_conjunction_bx
                        .type            n41_goto_bx, @function
n41_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_goto_α:                                                                   jmp   n42_line_mark_α
n41_goto_β:                                                                   jmp   n42_line_mark_α
                        .size            n41_goto_bx, .-n41_goto_bx
                        .type            n42_line_mark_bx, @function
n42_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 77 0
.Lline_mark_α_192_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_192_stno
                        .long            0
                        .long            77
                        .quad            .Lstnof1
                        .popsection
n42_line_mark_α:        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 77;           jmp   n43_lit_integer_α
                        .size            n42_line_mark_bx, .-n42_line_mark_bx
                        .type            n43_lit_integer_bx, @function
n43_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_194_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_var_ref_α
.Llit_integer_α_194_0:  .quad            0
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064208                      # q__STATIC__rows
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_lit_integer_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_197_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_var_α
.Llit_integer_α_197_0:  .quad            1
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_var_bx, @function
n46_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              sub              rsp, 32
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              rax, qword ptr [r9 + 11856]          # n
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n47_to_α
                        .size            n46_var_bx, .-n46_var_bx
                        .type            n47_to_bx, @function
n47_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_to_α:               sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 64]            # lit_integer
                        mov              rsi, qword ptr [rsp + 72]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_q_31:          test             eax, eax;                            jne   .Lto_α_200_996
                        add              rsp, 32
                        add              rsp, 80;                             jmp   q_ω
.Lto_α_200_996:         push             rax                                  # gc_poll bb_to.cpp:44
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_30:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_q_29:          test             eax, eax;                            jne   .Lto_α_200_997
                        add              rsp, 32
                        add              rsp, 80;                             jmp   q_ω
.Lto_α_200_997:         push             rax                                  # gc_poll bb_to.cpp:44
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_28:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 64]            # lit_integer
                        mov              rsi, qword ptr [rsp + 72]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_q_27:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 16], rax
                        push             rax                                  # gc_poll bb_to.cpp:137
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_26:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_q_25:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 24], rax
.Lto_α_200_0:           mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            jle   .Lto_α_200_998
                        add              rsp, 32
                        add              rsp, 80;                             jmp   q_ω
.Lto_α_200_998:         mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_to.cpp:157
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_24:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n48_assign_α
n47_to_β:               inc              qword ptr [rsp + 16];                jno   .Lto_β_200_999
                        add              rsp, 32
                        add              rsp, 80;                             jmp   q_ω
.Lto_β_200_999:                                                               jmp   .Lto_α_200_0
                        .size            n47_to_bx, .-n47_to_bx
                        .type            n48_assign_bx, @function
n48_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              rax, qword ptr [rsp + 0]             # to
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx;           jmp   n49_subscript_α
                        .size            n48_assign_bx, .-n48_assign_bx
                        .type            n49_subscript_bx, @function
n49_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_subscript_α:        sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_202_1:    mov              rdi, qword ptr [rsp + 96]            # var_ref
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 64]            # assign
                        mov              rcx, qword ptr [rsp + 72]
                        test             eax, eax;                            jne   .Lsubscript_α_202_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_q_35:          cmp              al, 255;                             jne   .Lsubscript_α_202_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_202_1
.Lsubscript_α_202_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_34:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_202_3
.Lsubscript_α_202_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_q_33:          push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_32:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_202_3:    cmp              al, 104;                             jne   .Lsubscript_α_202_999
                        add              rsp, 16;                             jmp   n47_to_β
.Lsubscript_α_202_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n50_deref_α
                        .size            n49_subscript_bx, .-n49_subscript_bx
                        .type            n50_deref_bx, @function
n50_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_q_37:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_203_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n47_to_β
.Lderef_α_203_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_36:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n51_binop_test_α
n50_deref_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n47_to_β
                        .size            n50_deref_bx, .-n50_deref_bx
                        .type            n51_binop_test_bx, @function
n51_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_binop_test_α:       sub              rsp, 16
                        mov              eax, dword ptr [rsp + 144]
                        cmp              al, 3;                               jne   .Lbinop_test_α_204_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_204_2
.Lbinop_test_α_204_1:   mov              rax, qword ptr [rsp + 152]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            je    .Lbinop_test_α_204_998
                        add              rsp, 16;                             jmp   n50_deref_β
.Lbinop_test_α_204_998: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx;            jmp   n52_var_ref_α
.Lbinop_test_α_204_2:   mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_q_41:          push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_40:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_204_999
                        add              rsp, 16;                             jmp   n50_deref_β
.Lbinop_test_α_204_999: mov              rdi, qword ptr [rsp + 144]
                        mov              rsi, qword ptr [rsp + 152]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        lea              r8, [rsp + 0]
                        call             qword ptr [rip + rt_relop_val_coerce@GOTPCREL]
.Lgcsite_q_39:          push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_38:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n52_var_ref_α
n51_binop_test_β:       add              rsp, 16;                             jmp   n50_deref_β
                        .size            n51_binop_test_bx, .-n51_binop_test_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064176                      # q__STATIC__up
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_var_α
n52_var_ref_β:          add              rsp, 16;                             jmp   n51_binop_test_β
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:                                                                    jmp   n54_var_α
n53_var_β:                                                                    jmp   n52_var_ref_β
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # n
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_coerce_numeric_α
n54_var_β:              add              rsp, 16;                             jmp   n53_var_β
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_coerce_numeric_bx, @function
n55_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_211_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_211_0
                        mov              eax, dword ptr [rsp + 144]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_211_0
.Lcoerce_numeric_α_211_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_coerce_numeric_α
.Lcoerce_numeric_α_211_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 144]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_43:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_42:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_211_999
                        add              rsp, 16;                             jmp   n54_var_β
.Lcoerce_numeric_α_211_999:
                                                                              jmp   n56_coerce_numeric_α
n55_coerce_numeric_β:   add              rsp, 16;                             jmp   n54_var_β
                        .size            n55_coerce_numeric_bx, .-n55_coerce_numeric_bx
                        .type            n56_coerce_numeric_bx, @function
n56_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 160]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_213_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_213_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_213_0
.Lcoerce_numeric_α_213_1:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 168]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_binop_α
.Lcoerce_numeric_α_213_0:
                        lea              rdi, [rsp + 160]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_45:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_44:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_213_999
                        add              rsp, 16;                             jmp   n55_coerce_numeric_β
.Lcoerce_numeric_α_213_999:
                                                                              jmp   n57_binop_α
n56_coerce_numeric_β:   add              rsp, 16;                             jmp   n55_coerce_numeric_β
                        .size            n56_coerce_numeric_bx, .-n56_coerce_numeric_bx
                        .type            n57_binop_bx, @function
n57_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_214_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_214_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_214_7
.Lbinop_α_214_2:        and              edx, 1;                              jz    .Lbinop_α_214_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
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
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_214_7:                                                              jmp   n58_var_α
.Lbinop_α_214_0:        mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add_big@PLT
.Lgcsite_q_47:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_214_999
                        add              rsp, 16;                             jmp   n56_coerce_numeric_β
.Lbinop_α_214_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_46:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n58_var_α
n57_binop_β:            add              rsp, 16;                             jmp   n56_coerce_numeric_β
                        .size            n57_binop_bx, .-n57_binop_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:                                                                    jmp   n59_coerce_numeric_α
n58_var_β:                                                                    jmp   n57_binop_β
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_coerce_numeric_bx, @function
n59_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_218_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_218_0
                        mov              eax, dword ptr [rbp + 144]           # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_218_0
.Lcoerce_numeric_α_218_1:
                        mov              rax, qword ptr [rsp + 16]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_coerce_numeric_α
.Lcoerce_numeric_α_218_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rbp + 144]                     # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_49:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_48:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_218_999
                        add              rsp, 16;                             jmp   n58_var_β
.Lcoerce_numeric_α_218_999:
                                                                              jmp   n60_coerce_numeric_α
n59_coerce_numeric_β:   add              rsp, 16;                             jmp   n58_var_β
                        .size            n59_coerce_numeric_bx, .-n59_coerce_numeric_bx
                        .type            n60_coerce_numeric_bx, @function
n60_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rbp + 144]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_220_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_220_0
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_220_0
.Lcoerce_numeric_α_220_1:
                        mov              rax, qword ptr [rbp + 144]           # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rbp + 152]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n61_binop_α
.Lcoerce_numeric_α_220_0:
                        lea              rdi, [rbp + 144]
                        lea              rsi, [rsp + 32]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281483583422566
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_51:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_50:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_220_999
                        add              rsp, 16;                             jmp   n59_coerce_numeric_β
.Lcoerce_numeric_α_220_999:
                                                                              jmp   n61_binop_α
n60_coerce_numeric_β:   add              rsp, 16;                             jmp   n59_coerce_numeric_β
                        .size            n60_coerce_numeric_bx, .-n60_coerce_numeric_bx
                        .type            n61_binop_bx, @function
n61_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_221_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx;                            jo    .Lbinop_α_221_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_221_7
.Lbinop_α_221_2:        and              edx, 1;                              jz    .Lbinop_α_221_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
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
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_221_7:                                                              jmp   n62_subscript_α
.Lbinop_α_221_0:        mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub_big@PLT
.Lgcsite_q_53:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_221_999
                        add              rsp, 16;                             jmp   n60_coerce_numeric_β
.Lbinop_α_221_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_52:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n62_subscript_α
n61_binop_β:            add              rsp, 16;                             jmp   n60_coerce_numeric_β
                        .size            n61_binop_bx, .-n61_binop_bx
                        .type            n62_subscript_bx, @function
n62_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:        sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_222_1:    mov              rdi, qword ptr [rsp + 128]           # var_ref
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_222_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_q_57:          cmp              al, 255;                             jne   .Lsubscript_α_222_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_222_1
.Lsubscript_α_222_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_56:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_222_3
.Lsubscript_α_222_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_q_55:          push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_54:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_222_3:    cmp              al, 104;                             jne   .Lsubscript_α_222_999
                        add              rsp, 16;                             jmp   n61_binop_β
.Lsubscript_α_222_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_deref_α
                        .size            n62_subscript_bx, .-n62_subscript_bx
                        .type            n63_deref_bx, @function
n63_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_q_59:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_223_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   n47_to_β
.Lderef_α_223_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_58:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n64_binop_test_α
n63_deref_β:            add              rsp, 16
                        add              rsp, 192;                            jmp   n47_to_β
                        .size            n63_deref_bx, .-n63_deref_bx
                        .type            n64_binop_test_bx, @function
n64_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_binop_test_α:       sub              rsp, 16
                        mov              eax, dword ptr [rsp + 176]
                        cmp              al, 3;                               jne   .Lbinop_test_α_224_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_224_2
.Lbinop_test_α_224_1:   mov              rax, qword ptr [rsp + 184]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            je    .Lbinop_test_α_224_998
                        add              rsp, 16;                             jmp   n63_deref_β
.Lbinop_test_α_224_998: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx;            jmp   n65_var_ref_α
.Lbinop_test_α_224_2:   mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_q_63:          push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_62:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_224_999
                        add              rsp, 16;                             jmp   n63_deref_β
.Lbinop_test_α_224_999: mov              rdi, qword ptr [rsp + 176]
                        mov              rsi, qword ptr [rsp + 184]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        lea              r8, [rsp + 0]
                        call             qword ptr [rip + rt_relop_val_coerce@GOTPCREL]
.Lgcsite_q_61:          push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_60:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n65_var_ref_α
n64_binop_test_β:       add              rsp, 16;                             jmp   n63_deref_β
                        .size            n64_binop_test_bx, .-n64_binop_test_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064192                      # q__STATIC__down
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_var_α
n65_var_ref_β:          add              rsp, 16;                             jmp   n64_binop_test_β
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:                                                                    jmp   n67_var_α
n66_var_β:                                                                    jmp   n65_var_ref_β
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:                                                                    jmp   n68_coerce_numeric_α
n67_var_β:                                                                    jmp   n66_var_β
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_coerce_numeric_bx, @function
n68_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 304]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_232_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_232_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_232_0
.Lcoerce_numeric_α_232_1:
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 312]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_coerce_numeric_α
.Lcoerce_numeric_α_232_0:
                        lea              rdi, [rsp + 304]
                        lea              rsi, [rbp + 144]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_65:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_64:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_232_999
                        add              rsp, 16;                             jmp   n67_var_β
.Lcoerce_numeric_α_232_999:
                                                                              jmp   n69_coerce_numeric_α
n68_coerce_numeric_β:   add              rsp, 16;                             jmp   n67_var_β
                        .size            n68_coerce_numeric_bx, .-n68_coerce_numeric_bx
                        .type            n69_coerce_numeric_bx, @function
n69_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rbp + 144]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_234_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_234_0
                        mov              eax, dword ptr [rsp + 320]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_234_0
.Lcoerce_numeric_α_234_1:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rbp + 152]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_binop_α
.Lcoerce_numeric_α_234_0:
                        lea              rdi, [rbp + 144]
                        lea              rsi, [rsp + 320]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_67:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_66:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_234_999
                        add              rsp, 16;                             jmp   n68_coerce_numeric_β
.Lcoerce_numeric_α_234_999:
                                                                              jmp   n70_binop_α
n69_coerce_numeric_β:   add              rsp, 16;                             jmp   n68_coerce_numeric_β
                        .size            n69_coerce_numeric_bx, .-n69_coerce_numeric_bx
                        .type            n70_binop_bx, @function
n70_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_235_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_235_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_235_7
.Lbinop_α_235_2:        and              edx, 1;                              jz    .Lbinop_α_235_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_235_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_235_4
.Lbinop_α_235_3:        movq             xmm0, rsi
.Lbinop_α_235_4:        cmp              cl, 5;                               je    .Lbinop_α_235_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_235_6
.Lbinop_α_235_5:        movq             xmm1, rdi
.Lbinop_α_235_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_235_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_235_7:                                                              jmp   n71_lit_integer_α
.Lbinop_α_235_0:        mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add_big@PLT
.Lgcsite_q_69:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_235_999
                        add              rsp, 16;                             jmp   n69_coerce_numeric_β
.Lbinop_α_235_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_68:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n71_lit_integer_α
n70_binop_β:            add              rsp, 16;                             jmp   n69_coerce_numeric_β
                        .size            n70_binop_bx, .-n70_binop_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_236_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_coerce_numeric_α
n71_lit_integer_β:      add              rsp, 16;                             jmp   n70_binop_β
.Llit_integer_α_236_0:  .quad            1
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_coerce_numeric_bx, @function
n72_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_238_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_238_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_238_0
.Lcoerce_numeric_α_238_1:
                        mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_binop_α
.Lcoerce_numeric_α_238_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_71:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_70:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_238_999
                        add              rsp, 16;                             jmp   n71_lit_integer_β
.Lcoerce_numeric_α_238_999:
                                                                              jmp   n73_binop_α
n72_coerce_numeric_β:   add              rsp, 16;                             jmp   n71_lit_integer_β
                        .size            n72_coerce_numeric_bx, .-n72_coerce_numeric_bx
                        .type            n73_binop_bx, @function
n73_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_239_2
                        sub              rax, 1;                              jo    .Lbinop_α_239_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_239_7
.Lbinop_α_239_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_239_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_239_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_239_4
.Lbinop_α_239_3:        movq             xmm0, rsi
.Lbinop_α_239_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_239_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_239_7:                                                              jmp   n74_subscript_α
.Lbinop_α_239_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_sub_big@PLT
.Lgcsite_q_73:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_239_999
                        add              rsp, 16;                             jmp   n72_coerce_numeric_β
.Lbinop_α_239_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_72:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n74_subscript_α
n73_binop_β:            add              rsp, 16;                             jmp   n72_coerce_numeric_β
                        .size            n73_binop_bx, .-n73_binop_bx
                        .type            n74_subscript_bx, @function
n74_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_subscript_α:        sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_240_1:    mov              rdi, qword ptr [rsp + 112]           # var_ref
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_240_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_q_77:          cmp              al, 255;                             jne   .Lsubscript_α_240_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_240_1
.Lsubscript_α_240_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_76:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_240_3
.Lsubscript_α_240_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_q_75:          push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_74:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_240_3:    cmp              al, 104;                             jne   .Lsubscript_α_240_999
                        add              rsp, 16;                             jmp   n73_binop_β
.Lsubscript_α_240_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n75_deref_α
                        .size            n74_subscript_bx, .-n74_subscript_bx
                        .type            n75_deref_bx, @function
n75_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_q_79:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_241_999
                        add              rsp, 16
                        add              rsp, 352;                            jmp   n47_to_β
.Lderef_α_241_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_78:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n76_binop_test_α
n75_deref_β:            add              rsp, 16
                        add              rsp, 352;                            jmp   n47_to_β
                        .size            n75_deref_bx, .-n75_deref_bx
                        .type            n76_binop_test_bx, @function
n76_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_binop_test_α:       sub              rsp, 16
                        mov              eax, dword ptr [rsp + 160]
                        cmp              al, 3;                               jne   .Lbinop_test_α_242_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_242_2
.Lbinop_test_α_242_1:   mov              rax, qword ptr [rsp + 168]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            je    .Lbinop_test_α_242_998
                        add              rsp, 16;                             jmp   n75_deref_β
.Lbinop_test_α_242_998: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx;            jmp   n77_var_ref_α
.Lbinop_test_α_242_2:   mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_q_83:          push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_82:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_242_999
                        add              rsp, 16;                             jmp   n75_deref_β
.Lbinop_test_α_242_999: mov              rdi, qword ptr [rsp + 160]
                        mov              rsi, qword ptr [rsp + 168]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        lea              r8, [rsp + 0]
                        call             qword ptr [rip + rt_relop_val_coerce@GOTPCREL]
.Lgcsite_q_81:          push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_80:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n77_var_ref_α
n76_binop_test_β:       add              rsp, 16;                             jmp   n75_deref_β
                        .size            n76_binop_test_bx, .-n76_binop_test_bx
                        .type            n77_var_ref_bx, @function
n77_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064208                      # q__STATIC__rows
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_var_α
n77_var_ref_β:          add              rsp, 16;                             jmp   n76_binop_test_β
                        .size            n77_var_ref_bx, .-n77_var_ref_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:                                                                    jmp   n79_subscript_α
n78_var_β:                                                                    jmp   n77_var_ref_β
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_subscript_bx, @function
n79_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 464]           # var
                        mov              rcx, qword ptr [rsp + 472]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_q_85:          cmp              al, 104;                             jne   .Lsubscript_α_247_999
                        add              rsp, 16;                             jmp   n78_var_β
.Lsubscript_α_247_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_84:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n80_var_ref_α
                        .size            n79_subscript_bx, .-n79_subscript_bx
                        .type            n80_var_ref_bx, @function
n80_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064176                      # q__STATIC__up
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_var_α
n80_var_ref_β:          add              rsp, 16
                        add              rsp, 416;                            jmp   n47_to_β
                        .size            n80_var_ref_bx, .-n80_var_ref_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:                                                                    jmp   n82_var_α
n81_var_β:                                                                    jmp   n80_var_ref_β
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_var_bx, @function
n82_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # n
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n83_coerce_numeric_α
n82_var_β:              add              rsp, 16;                             jmp   n81_var_β
                        .size            n82_var_bx, .-n82_var_bx
                        .type            n83_coerce_numeric_bx, @function
n83_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_254_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_254_0
                        mov              eax, dword ptr [rsp + 512]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_254_0
.Lcoerce_numeric_α_254_1:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n84_coerce_numeric_α
.Lcoerce_numeric_α_254_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 512]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_87:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_86:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_254_999
                        add              rsp, 16;                             jmp   n82_var_β
.Lcoerce_numeric_α_254_999:
                                                                              jmp   n84_coerce_numeric_α
n83_coerce_numeric_β:   add              rsp, 16;                             jmp   n82_var_β
                        .size            n83_coerce_numeric_bx, .-n83_coerce_numeric_bx
                        .type            n84_coerce_numeric_bx, @function
n84_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 528]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_256_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_256_0
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_256_0
.Lcoerce_numeric_α_256_1:
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 536]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_binop_α
.Lcoerce_numeric_α_256_0:
                        lea              rdi, [rsp + 528]
                        lea              rsi, [rsp + 32]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_89:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_88:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_256_999
                        add              rsp, 16;                             jmp   n83_coerce_numeric_β
.Lcoerce_numeric_α_256_999:
                                                                              jmp   n85_binop_α
n84_coerce_numeric_β:   add              rsp, 16;                             jmp   n83_coerce_numeric_β
                        .size            n84_coerce_numeric_bx, .-n84_coerce_numeric_bx
                        .type            n85_binop_bx, @function
n85_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_257_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_257_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_257_7
.Lbinop_α_257_2:        and              edx, 1;                              jz    .Lbinop_α_257_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_257_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_257_4
.Lbinop_α_257_3:        movq             xmm0, rsi
.Lbinop_α_257_4:        cmp              cl, 5;                               je    .Lbinop_α_257_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_257_6
.Lbinop_α_257_5:        movq             xmm1, rdi
.Lbinop_α_257_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_257_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_257_7:                                                              jmp   n86_var_α
.Lbinop_α_257_0:        mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add_big@PLT
.Lgcsite_q_91:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_257_999
                        add              rsp, 16;                             jmp   n84_coerce_numeric_β
.Lbinop_α_257_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_90:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n86_var_α
n85_binop_β:            add              rsp, 16;                             jmp   n84_coerce_numeric_β
                        .size            n85_binop_bx, .-n85_binop_bx
                        .type            n86_var_bx, @function
n86_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_α:                                                                    jmp   n87_coerce_numeric_α
n86_var_β:                                                                    jmp   n85_binop_β
                        .size            n86_var_bx, .-n86_var_bx
                        .type            n87_coerce_numeric_bx, @function
n87_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_261_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_261_0
                        mov              eax, dword ptr [rbp + 144]           # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_261_0
.Lcoerce_numeric_α_261_1:
                        mov              rax, qword ptr [rsp + 16]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n88_coerce_numeric_α
.Lcoerce_numeric_α_261_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rbp + 144]                     # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_93:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_92:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_261_999
                        add              rsp, 16;                             jmp   n86_var_β
.Lcoerce_numeric_α_261_999:
                                                                              jmp   n88_coerce_numeric_α
n87_coerce_numeric_β:   add              rsp, 16;                             jmp   n86_var_β
                        .size            n87_coerce_numeric_bx, .-n87_coerce_numeric_bx
                        .type            n88_coerce_numeric_bx, @function
n88_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rbp + 144]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_263_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_263_0
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_263_0
.Lcoerce_numeric_α_263_1:
                        mov              rax, qword ptr [rbp + 144]           # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rbp + 152]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n89_binop_α
.Lcoerce_numeric_α_263_0:
                        lea              rdi, [rbp + 144]
                        lea              rsi, [rsp + 32]                      # binop
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281483583422566
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_95:          push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_94:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_263_999
                        add              rsp, 16;                             jmp   n87_coerce_numeric_β
.Lcoerce_numeric_α_263_999:
                                                                              jmp   n89_binop_α
n88_coerce_numeric_β:   add              rsp, 16;                             jmp   n87_coerce_numeric_β
                        .size            n88_coerce_numeric_bx, .-n88_coerce_numeric_bx
                        .type            n89_binop_bx, @function
n89_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_264_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        sub              rax, rdx;                            jo    .Lbinop_α_264_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_264_7
.Lbinop_α_264_2:        and              edx, 1;                              jz    .Lbinop_α_264_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_264_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_264_4
.Lbinop_α_264_3:        movq             xmm0, rsi
.Lbinop_α_264_4:        cmp              cl, 5;                               je    .Lbinop_α_264_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_264_6
.Lbinop_α_264_5:        movq             xmm1, rdi
.Lbinop_α_264_6:        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_264_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_264_7:                                                              jmp   n90_subscript_α
.Lbinop_α_264_0:        mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_sub_big@PLT
.Lgcsite_q_97:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_264_999
                        add              rsp, 16;                             jmp   n88_coerce_numeric_β
.Lbinop_α_264_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_96:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n90_subscript_α
n89_binop_β:            add              rsp, 16;                             jmp   n88_coerce_numeric_β
                        .size            n89_binop_bx, .-n89_binop_bx
                        .type            n90_subscript_bx, @function
n90_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 128]           # var_ref
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_q_99:          cmp              al, 104;                             jne   .Lsubscript_α_265_999
                        add              rsp, 16;                             jmp   n89_binop_β
.Lsubscript_α_265_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_98:          mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n91_var_ref_α
                        .size            n90_subscript_bx, .-n90_subscript_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064192                      # q__STATIC__down
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_var_α
n91_var_ref_β:          add              rsp, 16
                        add              rsp, 560;                            jmp   n47_to_β
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:                                                                    jmp   n93_var_α
n92_var_β:                                                                    jmp   n91_var_ref_β
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:                                                                    jmp   n94_coerce_numeric_α
n93_var_β:                                                                    jmp   n92_var_β
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_coerce_numeric_bx, @function
n94_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 640]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_273_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_273_0
                        mov              eax, dword ptr [rbp + 144]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_273_0
.Lcoerce_numeric_α_273_1:
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 648]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_coerce_numeric_α
.Lcoerce_numeric_α_273_0:
                        lea              rdi, [rsp + 640]
                        lea              rsi, [rbp + 144]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_101:         push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_100:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_273_999
                        add              rsp, 16;                             jmp   n93_var_β
.Lcoerce_numeric_α_273_999:
                                                                              jmp   n95_coerce_numeric_α
n94_coerce_numeric_β:   add              rsp, 16;                             jmp   n93_var_β
                        .size            n94_coerce_numeric_bx, .-n94_coerce_numeric_bx
                        .type            n95_coerce_numeric_bx, @function
n95_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rbp + 144]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_275_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_275_0
                        mov              eax, dword ptr [rsp + 656]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_275_0
.Lcoerce_numeric_α_275_1:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rbp + 152]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_binop_α
.Lcoerce_numeric_α_275_0:
                        lea              rdi, [rbp + 144]
                        lea              rsi, [rsp + 656]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_103:         push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_102:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_275_999
                        add              rsp, 16;                             jmp   n94_coerce_numeric_β
.Lcoerce_numeric_α_275_999:
                                                                              jmp   n96_binop_α
n95_coerce_numeric_β:   add              rsp, 16;                             jmp   n94_coerce_numeric_β
                        .size            n95_coerce_numeric_bx, .-n95_coerce_numeric_bx
                        .type            n96_binop_bx, @function
n96_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_binop_α:            sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_276_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rax, rdx;                            jo    .Lbinop_α_276_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_276_7
.Lbinop_α_276_2:        and              edx, 1;                              jz    .Lbinop_α_276_0
                        mov              rsi, qword ptr [rsp + 40]            # coerce_numeric
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_276_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_276_4
.Lbinop_α_276_3:        movq             xmm0, rsi
.Lbinop_α_276_4:        cmp              cl, 5;                               je    .Lbinop_α_276_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_276_6
.Lbinop_α_276_5:        movq             xmm1, rdi
.Lbinop_α_276_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_276_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_276_7:                                                              jmp   n97_lit_integer_α
.Lbinop_α_276_0:        mov              rdi, qword ptr [rsp + 32]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_add_big@PLT
.Lgcsite_q_105:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_276_999
                        add              rsp, 16;                             jmp   n95_coerce_numeric_β
.Lbinop_α_276_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_104:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n97_lit_integer_α
n96_binop_β:            add              rsp, 16;                             jmp   n95_coerce_numeric_β
                        .size            n96_binop_bx, .-n96_binop_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_277_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_coerce_numeric_α
n97_lit_integer_β:      add              rsp, 16;                             jmp   n96_binop_β
.Llit_integer_α_277_0:  .quad            1
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_coerce_numeric_bx, @function
n98_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_279_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_279_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_279_0
.Lcoerce_numeric_α_279_1:
                        mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_binop_α
.Lcoerce_numeric_α_279_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_107:         push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_106:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_279_999
                        add              rsp, 16;                             jmp   n97_lit_integer_β
.Lcoerce_numeric_α_279_999:
                                                                              jmp   n99_binop_α
n98_coerce_numeric_β:   add              rsp, 16;                             jmp   n97_lit_integer_β
                        .size            n98_coerce_numeric_bx, .-n98_coerce_numeric_bx
                        .type            n99_binop_bx, @function
n99_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_280_2
                        sub              rax, 1;                              jo    .Lbinop_α_280_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_280_7
.Lbinop_α_280_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_280_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_280_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_280_4
.Lbinop_α_280_3:        movq             xmm0, rsi
.Lbinop_α_280_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_280_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_280_7:                                                              jmp   n00001_subscript_α
.Lbinop_α_280_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_sub_big@PLT
.Lgcsite_q_109:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_280_999
                        add              rsp, 16;                             jmp   n98_coerce_numeric_β
.Lbinop_α_280_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_108:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00001_subscript_α
n99_binop_β:            add              rsp, 16;                             jmp   n98_coerce_numeric_β
                        .size            n99_binop_bx, .-n99_binop_bx
                        .type            n00001_subscript_bx, @function
n00001_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 112]           # var_ref
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_q_111:         cmp              al, 104;                             jne   .Lsubscript_α_281_999
                        add              rsp, 16;                             jmp   n99_binop_β
.Lsubscript_α_281_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_110:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00002_lit_integer_α
                        .size            n00001_subscript_bx, .-n00001_subscript_bx
                        .type            n00002_lit_integer_bx, @function
n00002_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_282_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00003_rev_assign_var_α
n00002_lit_integer_β:     add              rsp, 16
                        add              rsp, 688;                            jmp   n47_to_β
.Llit_integer_α_282_0:  .quad            1
                        .size            n00002_lit_integer_bx, .-n00002_lit_integer_bx
                        .type            n00003_rev_assign_var_bx, @function
n00003_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_rev_assign_var_α:  sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 48]            # d
                        mov              rsi, qword ptr [rsp + 56]            # d
                        call             rt_deref@PLT
.Lgcsite_q_117:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:22
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_116:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_q_115:         cmp              al, 104;                             jne   .Lrev_assign_var_α_283_999
                        add              rsp, 32;                             jmp   n00002_lit_integer_β
.Lrev_assign_var_α_283_999:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_114:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00004_rev_assign_var_α
n00003_rev_assign_var_β:  mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_q_113:         push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_112:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 32;                             jmp   n00002_lit_integer_β
                        .size            n00003_rev_assign_var_bx, .-n00003_rev_assign_var_bx
                        .type            n00004_rev_assign_var_bx, @function
n00004_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_rev_assign_var_α:  sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 208]           # d
                        mov              rsi, qword ptr [rsp + 216]           # d
                        call             rt_deref@PLT
.Lgcsite_q_123:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:22
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_122:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_q_121:         cmp              al, 104;                             jne   .Lrev_assign_var_α_284_999
                        add              rsp, 32;                             jmp   n00003_rev_assign_var_β
.Lrev_assign_var_α_284_999:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_120:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00005_rev_assign_var_α
n00004_rev_assign_var_β:  mov              rdi, qword ptr [rsp + 208]
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_q_119:         push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_118:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 32;                             jmp   n00003_rev_assign_var_β
                        .size            n00004_rev_assign_var_bx, .-n00004_rev_assign_var_bx
                        .type            n00005_rev_assign_var_bx, @function
n00005_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_rev_assign_var_α:  sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 384]           # d
                        mov              rsi, qword ptr [rsp + 392]           # d
                        call             rt_deref@PLT
.Lgcsite_q_129:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:22
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_128:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_q_127:         cmp              al, 104;                             jne   .Lrev_assign_var_α_285_999
                        add              rsp, 32;                             jmp   n00004_rev_assign_var_β
.Lrev_assign_var_α_285_999:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_126:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00006_conjunction_α
n00005_rev_assign_var_β:  mov              rdi, qword ptr [rsp + 384]
                        mov              rsi, qword ptr [rsp + 392]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_q_125:         push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_124:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 32;                             jmp   n00004_rev_assign_var_β
                        .size            n00005_rev_assign_var_bx, .-n00005_rev_assign_var_bx
                        .type            n00006_conjunction_bx, @function
n00006_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_conjunction_α:                                                           jmp   n00007_bound_α
n00006_conjunction_β:                                                           jmp   q_ω
                        .size            n00006_conjunction_bx, .-n00006_conjunction_bx
                        .type            n00007_bound_bx, @function
n00007_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00008_line_mark_α
                        .size            n00007_bound_bx, .-n00007_bound_bx
                        .type            n00008_line_mark_bx, @function
n00008_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_289_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_289_stno
                        .long            0
                        .long            79
                        .quad            .Lstnof1
                        .popsection
n00008_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 79;           jmp   n00009_line_mark_α
                        .size            n00008_line_mark_bx, .-n00008_line_mark_bx
                        .type            n00009_line_mark_bx, @function
n00009_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
.Lline_mark_α_291_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_291_stno
                        .long            0
                        .long            79
                        .quad            .Lstnof1
                        .popsection
n00009_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 79;           jmp   n00010_var_ref_α
                        .size            n00009_line_mark_bx, .-n00009_line_mark_bx
                        .type            n00010_var_ref_bx, @function
n00010_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064160                      # solution
                        mov              qword ptr [rsp + 8], rax;            jmp   n00011_var_α
                        .size            n00010_var_ref_bx, .-n00010_var_ref_bx
                        .type            n00011_var_bx, @function
n00011_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_var_α:                                                                   jmp   n00012_var_α
                        .size            n00011_var_bx, .-n00011_var_bx
                        .type            n00012_var_bx, @function
n00012_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_var_α:                                                                   jmp   n00013_assign_var_α
                        .size            n00012_var_bx, .-n00012_var_bx
                        .type            n00013_assign_var_bx, @function
n00013_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 144]           # var
                        mov              rcx, qword ptr [rbp + 152]
                        cmp              dil, 40;                             jne   .Lassign_var_α_300_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_300_0
                        test             rsi, rsi;                            je    .Lassign_var_α_300_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_300_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_300_1
.Lassign_var_α_300_5:   cmp              dil, 24;                             je    .Lassign_var_α_300_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_300_0
.Lassign_var_α_300_1:   test             rsi, rsi;                            je    .Lassign_var_α_300_0
                        mov              r8, qword ptr [rsp + 896]
                        mov              r9, qword ptr [rsp + 904]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_q_135:         cmp              al, 104;                             jne   .Lassign_var_α_300_997
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00014_line_mark_α
.Lassign_var_α_300_997: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:79
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_134:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      add              rsp, 32;                             jmp   n00014_line_mark_α
.Lassign_var_α_300_0:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_q_133:         push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_q_132:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lassign_var_α_300_998
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00014_line_mark_α
.Lassign_var_α_300_998: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 896]           # var
                        mov              rcx, qword ptr [rsp + 904]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_q_131:         cmp              al, 104;                             jne   .Lassign_var_α_300_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00014_line_mark_α
.Lassign_var_α_300_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:99
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_130:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      add              rsp, 32;                             jmp   n00014_line_mark_α
                        .size            n00013_assign_var_bx, .-n00013_assign_var_bx
                        .type            n00014_line_mark_bx, @function
n00014_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 80 0
.Lline_mark_α_301_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_301_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n00014_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 80;           jmp   n00015_disjunction_α
                        .size            n00014_line_mark_bx, .-n00014_line_mark_bx
                        .type            n00015_disjunction_bx, @function
n00015_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00016_var_α
.Ldisjunction_γ_114_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_304_0
                                                                              jmp   n00017_conjunction_α
.Ldisjunction_α_304_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_304_1
                                                                              jmp   n00017_conjunction_α
.Ldisjunction_α_304_1:                                                        jmp   n00017_conjunction_α
n00015_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    n00018_unmark_α
                                                                              jmp   n00018_unmark_α
.Ldisjunction_γ_114_af:
.Ldisjunction_ω_114_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00019_line_mark_α
                        add              rsp, 32
                        add              rsp, -32;                            jmp   n00018_unmark_α
                        .size            n00015_disjunction_bx, .-n00015_disjunction_bx
                        .type            n00017_conjunction_bx, @function
n00017_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_conjunction_α:                                                           jmp   n00018_unmark_α
n00017_conjunction_β:                                                           jmp   n00018_unmark_α
                        .size            n00017_conjunction_bx, .-n00017_conjunction_bx
                        .type            n00019_line_mark_bx, @function
n00019_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_306_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_306_stno
                        .long            0
                        .long            81
                        .quad            .Lstnof1
                        .popsection
n00019_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 81;           jmp   n00020_var_α
n00019_line_mark_β:                                                             jmp   n00020_var_α
                        .size            n00019_line_mark_bx, .-n00019_line_mark_bx
                        .type            n00020_var_bx, @function
n00020_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_α:                                                                   jmp   n00021_lit_integer_α
                        .size            n00020_var_bx, .-n00020_var_bx
                        .type            n00021_lit_integer_bx, @function
n00021_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_310_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00022_coerce_numeric_α
.Llit_integer_α_310_0:  .quad            1
                        .size            n00021_lit_integer_bx, .-n00021_lit_integer_bx
                        .type            n00022_coerce_numeric_bx, @function
n00022_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rbp + 144]           # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_312_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_312_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_312_0
.Lcoerce_numeric_α_312_1:
                        mov              rax, qword ptr [rbp + 144]           # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rbp + 152]           # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00023_binop_α
.Lcoerce_numeric_α_312_0:
                        lea              rdi, [rbp + 144]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_q_137:         push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_136:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_312_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00018_unmark_α
.Lcoerce_numeric_α_312_999:
                                                                              jmp   n00023_binop_α
                        .size            n00022_coerce_numeric_bx, .-n00022_coerce_numeric_bx
                        .type            n00023_binop_bx, @function
n00023_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_313_2
                        add              rax, 1;                              jo    .Lbinop_α_313_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_313_7
.Lbinop_α_313_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_313_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_313_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_313_4
.Lbinop_α_313_3:        movq             xmm0, rsi
.Lbinop_α_313_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_313_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_313_7:                                                              jmp   n00024_line_mark_α
.Lbinop_α_313_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_q_139:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_313_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00018_unmark_α
.Lbinop_α_313_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_138:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00024_line_mark_α
                        .size            n00023_binop_bx, .-n00023_binop_bx
                        .type            n00024_line_mark_bx, @function
n00024_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_314_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_314_stno
                        .long            0
                        .long            81
                        .quad            .Lstnof1
                        .popsection
n00024_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 81;           jmp   n00025_call_proc_staged_α
                        .size            n00024_line_mark_bx, .-n00024_line_mark_bx
                        .type            n00025_call_proc_staged_bx, @function
n00025_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_317_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_317_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 17600]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_317_3:
.Lgcsite_q_141:         mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 81
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_317_2
.Lcall_proc_staged_α_317_4:
.Lgcsite_q_140:         mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 81
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_317_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_317_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00018_unmark_α
.Lcall_proc_staged_α_317_999:
                                                                              jmp   n00026_deref_α
n00025_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 81
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00018_unmark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_317_0: .quad .Lcall_proc_staged_β_317_0_s; .popsection
.Lcall_proc_staged_β_317_0_s:
                        .string          "q"
                        .size            n00025_call_proc_staged_bx, .-n00025_call_proc_staged_bx
                        .type            n00026_deref_bx, @function
n00026_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_q_143:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_318_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00018_unmark_α
.Lderef_α_318_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_142:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 88], rax
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_114_as
n00026_deref_β:           add              rsp, 16
                        add              rsp, 64;                             jmp   n00018_unmark_α
                        .size            n00026_deref_bx, .-n00026_deref_bx
                        .type            n00016_var_bx, @function
n00016_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_var_α:                                                                   jmp   n00027_var_α
n00016_var_β:                                                                   jmp   .Ldisjunction_ω_114_af
                        .size            n00016_var_bx, .-n00016_var_bx
                        .type            n00027_var_bx, @function
n00027_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # n
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00028_binop_test_α
n00027_var_β:             add              rsp, 16;                             jmp   n00016_var_β
                        .size            n00027_var_bx, .-n00027_var_bx
                        .type            n00028_binop_test_bx, @function
n00028_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_binop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rbp + 144]
                        cmp              al, 3;                               jne   .Lbinop_test_α_322_2
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_322_2
.Lbinop_test_α_322_1:   mov              rax, qword ptr [rbp + 152]
                        mov              rcx, qword ptr [rsp + 24]
                        cmp              rax, rcx;                            je    .Lbinop_test_α_322_998
                        add              rsp, 16;                             jmp   n00027_var_β
.Lbinop_test_α_322_998: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00029_line_mark_α
.Lbinop_test_α_322_2:   mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 9
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_q_147:         push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_146:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_322_999
                        add              rsp, 16;                             jmp   n00027_var_β
.Lbinop_test_α_322_999: mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        lea              r8, [rsp + 0]
                        call             qword ptr [rip + rt_relop_val_coerce@GOTPCREL]
.Lgcsite_q_145:         push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_144:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00029_line_mark_α
                        .size            n00028_binop_test_bx, .-n00028_binop_test_bx
                        .type            n00029_line_mark_bx, @function
n00029_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_323_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_323_stno
                        .long            0
                        .long            80
                        .quad            .Lstnof1
                        .popsection
n00029_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 80;           jmp   n00030_call_proc_staged_α
                        .size            n00029_line_mark_bx, .-n00029_line_mark_bx
                        .type            n00030_call_proc_staged_bx, @function
n00030_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_326_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_326_3]
                        push             rcx
                        sub              rsp, 0
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 17600]
                        mov              rax, qword ptr [rax + 136];          jmp   rax
.Lcall_proc_staged_α_326_3:
.Lgcsite_q_149:         mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_326_2
.Lcall_proc_staged_α_326_4:
.Lgcsite_q_148:         mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_326_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_326_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00018_unmark_α
.Lcall_proc_staged_α_326_999:
                                                                              jmp   n00031_deref_α
n00030_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 80
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00018_unmark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_326_0: .quad .Lcall_proc_staged_β_326_0_s; .popsection
.Lcall_proc_staged_β_326_0_s:
                        .string          "show"
                        .size            n00030_call_proc_staged_bx, .-n00030_call_proc_staged_bx
                        .type            n00031_deref_bx, @function
n00031_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_q_151:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_327_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00018_unmark_α
.Lderef_α_327_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_q_150:         mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 72], rax
                        add              rsp, 64;                             jmp   .Ldisjunction_γ_114_as
n00031_deref_β:           add              rsp, 16
                        add              rsp, 48;                             jmp   n00018_unmark_α
                        .size            n00031_deref_bx, .-n00031_deref_bx
                        .type            n00018_unmark_bx, @function
n00018_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_unmark_α:                                                                jmp   n00032_line_mark_α
                        .size            n00018_unmark_bx, .-n00018_unmark_bx
                        .type            n00032_line_mark_bx, @function
n00032_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_330_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_330_stno
                        .long            0
                        .long            77
                        .quad            .Lstnof1
                        .popsection
n00032_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 77
                        add              rsp, 48;                             jmp   n00005_rev_assign_var_β
                        .size            n00032_line_mark_bx, .-n00032_line_mark_bx
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 136];          jmp   qword ptr [rsp]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 160]
                        mov              rbp, qword ptr [rbp + 136];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_q:
                        .quad            619821747546
                        .quad            515396075600
                        .quad            .Lgcmap_q_s
                        .quad            48
                        .quad            2
                        .quad            35184372088832
                        .quad            17596481011744
.Lgcmap_q_s:            .string          "q"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_q_0:          .quad            152
                        .quad            .Lgcmap_q
                        .quad            9223389622598369440
                        .quad            .Lgccode_q_0
                        .quad            .Lgcsite_q_1-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677856
                        .quad            12
                        .quad            .Lgcsite_q_0-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677856
                        .quad            20
                        .quad            .Lgcsite_q_3-.Lgccode_q_0
                        .quad            65537
                        .quad            51539612448
                        .quad            14
                        .quad            .Lgcsite_q_2-.Lgccode_q_0
                        .quad            65537
                        .quad            51539612448
                        .quad            22
                        .quad            .Lgcsite_q_5-.Lgccode_q_0
                        .quad            65537
                        .quad            68719481632
                        .quad            18
                        .quad            .Lgcsite_q_4-.Lgccode_q_0
                        .quad            65537
                        .quad            68719481632
                        .quad            26
                        .quad            .Lgcsite_q_7-.Lgccode_q_0
                        .quad            65537
                        .quad            77309416224
                        .quad            20
                        .quad            .Lgcsite_q_6-.Lgccode_q_0
                        .quad            65537
                        .quad            77309416224
                        .quad            28
                        .quad            .Lgcsite_q_8-.Lgccode_q_0
                        .quad            65537
                        .quad            94489285408
                        .quad            28
                        .quad            .Lgcsite_q_9-.Lgccode_q_0
                        .quad            65537
                        .quad            94489285408
                        .quad            32
                        .quad            .Lgcsite_q_11-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677864
                        .quad            12
                        .quad            .Lgcsite_q_10-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677864
                        .quad            20
                        .quad            .Lgcsite_q_13-.Lgccode_q_0
                        .quad            65537
                        .quad            51539612456
                        .quad            14
                        .quad            .Lgcsite_q_12-.Lgccode_q_0
                        .quad            65537
                        .quad            51539612456
                        .quad            22
                        .quad            .Lgcsite_q_15-.Lgccode_q_0
                        .quad            65537
                        .quad            68719481640
                        .quad            18
                        .quad            .Lgcsite_q_14-.Lgccode_q_0
                        .quad            65537
                        .quad            68719481640
                        .quad            26
                        .quad            .Lgcsite_q_17-.Lgccode_q_0
                        .quad            65537
                        .quad            77309416232
                        .quad            20
                        .quad            .Lgcsite_q_16-.Lgccode_q_0
                        .quad            65537
                        .quad            77309416232
                        .quad            28
                        .quad            .Lgcsite_q_18-.Lgccode_q_0
                        .quad            65537
                        .quad            94489285416
                        .quad            28
                        .quad            .Lgcsite_q_19-.Lgccode_q_0
                        .quad            65537
                        .quad            94489285416
                        .quad            32
                        .quad            .Lgcsite_q_21-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677872
                        .quad            12
                        .quad            .Lgcsite_q_20-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677872
                        .quad            20
                        .quad            .Lgcsite_q_22-.Lgccode_q_0
                        .quad            65537
                        .quad            51539612464
                        .quad            18
                        .quad            .Lgcsite_q_23-.Lgccode_q_0
                        .quad            65537
                        .quad            51539612464
                        .quad            22
                        .quad            .Lgcsite_q_31-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677880
                        .quad            14
                        .quad            .Lgcsite_q_30-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677880
                        .quad            22
                        .quad            .Lgcsite_q_29-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677880
                        .quad            14
                        .quad            .Lgcsite_q_28-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677880
                        .quad            22
                        .quad            .Lgcsite_q_27-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677880
                        .quad            14
                        .quad            .Lgcsite_q_26-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677880
                        .quad            22
                        .quad            .Lgcsite_q_25-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677880
                        .quad            14
                        .quad            .Lgcsite_q_24-.Lgccode_q_0
                        .quad            65537
                        .quad            42949677880
                        .quad            22
                        .quad            .Lgcsite_q_35-.Lgccode_q_0
                        .quad            65537
                        .quad            60129547064
                        .quad            16
                        .quad            .Lgcsite_q_34-.Lgccode_q_0
                        .quad            65537
                        .quad            60129547064
                        .quad            20
                        .quad            .Lgcsite_q_33-.Lgccode_q_0
                        .quad            65537
                        .quad            60129547064
                        .quad            16
                        .quad            .Lgcsite_q_32-.Lgccode_q_0
                        .quad            65537
                        .quad            60129547064
                        .quad            20
                        .quad            .Lgcsite_q_37-.Lgccode_q_0
                        .quad            65537
                        .quad            68719481656
                        .quad            18
                        .quad            .Lgcsite_q_36-.Lgccode_q_0
                        .quad            65537
                        .quad            68719481656
                        .quad            26
                        .quad            .Lgcsite_q_41-.Lgccode_q_0
                        .quad            65537
                        .quad            77309416248
                        .quad            20
                        .quad            .Lgcsite_q_40-.Lgccode_q_0
                        .quad            65537
                        .quad            77309416248
                        .quad            24
                        .quad            .Lgcsite_q_39-.Lgccode_q_0
                        .quad            65537
                        .quad            77309416248
                        .quad            20
                        .quad            .Lgcsite_q_38-.Lgccode_q_0
                        .quad            65537
                        .quad            77309416248
                        .quad            28
                        .quad            .Lgcsite_q_43-.Lgccode_q_0
                        .quad            65537
                        .quad            103079220024
                        .quad            26
                        .quad            .Lgcsite_q_42-.Lgccode_q_0
                        .quad            65537
                        .quad            103079220024
                        .quad            34
                        .quad            .Lgcsite_q_45-.Lgccode_q_0
                        .quad            65537
                        .quad            111669154616
                        .quad            28
                        .quad            .Lgcsite_q_44-.Lgccode_q_0
                        .quad            65537
                        .quad            111669154616
                        .quad            36
                        .quad            .Lgcsite_q_47-.Lgccode_q_0
                        .quad            65537
                        .quad            120259089208
                        .quad            30
                        .quad            .Lgcsite_q_46-.Lgccode_q_0
                        .quad            65537
                        .quad            120259089208
                        .quad            38
                        .quad            .Lgcsite_q_49-.Lgccode_q_0
                        .quad            65537
                        .quad            128849023800
                        .quad            32
                        .quad            .Lgcsite_q_48-.Lgccode_q_0
                        .quad            65537
                        .quad            128849023800
                        .quad            40
                        .quad            .Lgcsite_q_51-.Lgccode_q_0
                        .quad            65537
                        .quad            137438958392
                        .quad            34
                        .quad            .Lgcsite_q_50-.Lgccode_q_0
                        .quad            65537
                        .quad            137438958392
                        .quad            42
                        .quad            .Lgcsite_q_53-.Lgccode_q_0
                        .quad            65537
                        .quad            146028892984
                        .quad            36
                        .quad            .Lgcsite_q_52-.Lgccode_q_0
                        .quad            65537
                        .quad            146028892984
                        .quad            44
                        .quad            .Lgcsite_q_57-.Lgccode_q_0
                        .quad            65537
                        .quad            154618827576
                        .quad            38
                        .quad            .Lgcsite_q_56-.Lgccode_q_0
                        .quad            65537
                        .quad            154618827576
                        .quad            42
                        .quad            .Lgcsite_q_55-.Lgccode_q_0
                        .quad            65537
                        .quad            154618827576
                        .quad            38
                        .quad            .Lgcsite_q_54-.Lgccode_q_0
                        .quad            65537
                        .quad            154618827576
                        .quad            42
                        .quad            .Lgcsite_q_59-.Lgccode_q_0
                        .quad            65537
                        .quad            163208762168
                        .quad            40
                        .quad            .Lgcsite_q_58-.Lgccode_q_0
                        .quad            65537
                        .quad            163208762168
                        .quad            48
                        .quad            .Lgcsite_q_63-.Lgccode_q_0
                        .quad            65537
                        .quad            171798696760
                        .quad            42
                        .quad            .Lgcsite_q_62-.Lgccode_q_0
                        .quad            65537
                        .quad            171798696760
                        .quad            46
                        .quad            .Lgcsite_q_61-.Lgccode_q_0
                        .quad            65537
                        .quad            171798696760
                        .quad            42
                        .quad            .Lgcsite_q_60-.Lgccode_q_0
                        .quad            65537
                        .quad            171798696760
                        .quad            50
                        .quad            .Lgcsite_q_65-.Lgccode_q_0
                        .quad            65537
                        .quad            188978565944
                        .quad            46
                        .quad            .Lgcsite_q_64-.Lgccode_q_0
                        .quad            65537
                        .quad            188978565944
                        .quad            54
                        .quad            .Lgcsite_q_67-.Lgccode_q_0
                        .quad            65537
                        .quad            197568500536
                        .quad            48
                        .quad            .Lgcsite_q_66-.Lgccode_q_0
                        .quad            65537
                        .quad            197568500536
                        .quad            56
                        .quad            .Lgcsite_q_69-.Lgccode_q_0
                        .quad            65537
                        .quad            206158435128
                        .quad            50
                        .quad            .Lgcsite_q_68-.Lgccode_q_0
                        .quad            65537
                        .quad            206158435128
                        .quad            58
                        .quad            .Lgcsite_q_71-.Lgccode_q_0
                        .quad            65537
                        .quad            223338304312
                        .quad            54
                        .quad            .Lgcsite_q_70-.Lgccode_q_0
                        .quad            65537
                        .quad            223338304312
                        .quad            62
                        .quad            .Lgcsite_q_73-.Lgccode_q_0
                        .quad            65537
                        .quad            231928238904
                        .quad            56
                        .quad            .Lgcsite_q_72-.Lgccode_q_0
                        .quad            65537
                        .quad            231928238904
                        .quad            64
                        .quad            .Lgcsite_q_77-.Lgccode_q_0
                        .quad            65537
                        .quad            240518173496
                        .quad            58
                        .quad            .Lgcsite_q_76-.Lgccode_q_0
                        .quad            65537
                        .quad            240518173496
                        .quad            62
                        .quad            .Lgcsite_q_75-.Lgccode_q_0
                        .quad            65537
                        .quad            240518173496
                        .quad            58
                        .quad            .Lgcsite_q_74-.Lgccode_q_0
                        .quad            65537
                        .quad            240518173496
                        .quad            62
                        .quad            .Lgcsite_q_79-.Lgccode_q_0
                        .quad            65537
                        .quad            249108108088
                        .quad            60
                        .quad            .Lgcsite_q_78-.Lgccode_q_0
                        .quad            65537
                        .quad            249108108088
                        .quad            68
                        .quad            .Lgcsite_q_83-.Lgccode_q_0
                        .quad            65537
                        .quad            257698042680
                        .quad            62
                        .quad            .Lgcsite_q_82-.Lgccode_q_0
                        .quad            65537
                        .quad            257698042680
                        .quad            66
                        .quad            .Lgcsite_q_81-.Lgccode_q_0
                        .quad            65537
                        .quad            257698042680
                        .quad            62
                        .quad            .Lgcsite_q_80-.Lgccode_q_0
                        .quad            65537
                        .quad            257698042680
                        .quad            70
                        .quad            .Lgcsite_q_85-.Lgccode_q_0
                        .quad            65537
                        .quad            274877911864
                        .quad            66
                        .quad            .Lgcsite_q_84-.Lgccode_q_0
                        .quad            65537
                        .quad            274877911864
                        .quad            74
                        .quad            .Lgcsite_q_87-.Lgccode_q_0
                        .quad            65537
                        .quad            300647715640
                        .quad            72
                        .quad            .Lgcsite_q_86-.Lgccode_q_0
                        .quad            65537
                        .quad            300647715640
                        .quad            80
                        .quad            .Lgcsite_q_89-.Lgccode_q_0
                        .quad            65537
                        .quad            309237650232
                        .quad            74
                        .quad            .Lgcsite_q_88-.Lgccode_q_0
                        .quad            65537
                        .quad            309237650232
                        .quad            82
                        .quad            .Lgcsite_q_91-.Lgccode_q_0
                        .quad            65537
                        .quad            317827584824
                        .quad            76
                        .quad            .Lgcsite_q_90-.Lgccode_q_0
                        .quad            65537
                        .quad            317827584824
                        .quad            84
                        .quad            .Lgcsite_q_93-.Lgccode_q_0
                        .quad            65537
                        .quad            326417519416
                        .quad            78
                        .quad            .Lgcsite_q_92-.Lgccode_q_0
                        .quad            65537
                        .quad            326417519416
                        .quad            86
                        .quad            .Lgcsite_q_95-.Lgccode_q_0
                        .quad            65537
                        .quad            335007454008
                        .quad            80
                        .quad            .Lgcsite_q_94-.Lgccode_q_0
                        .quad            65537
                        .quad            335007454008
                        .quad            88
                        .quad            .Lgcsite_q_97-.Lgccode_q_0
                        .quad            65537
                        .quad            343597388600
                        .quad            82
                        .quad            .Lgcsite_q_96-.Lgccode_q_0
                        .quad            65537
                        .quad            343597388600
                        .quad            90
                        .quad            .Lgcsite_q_99-.Lgccode_q_0
                        .quad            65537
                        .quad            352187323192
                        .quad            84
                        .quad            .Lgcsite_q_98-.Lgccode_q_0
                        .quad            65537
                        .quad            352187323192
                        .quad            92
                        .quad            .Lgcsite_q_101-.Lgccode_q_0
                        .quad            65537
                        .quad            369367192376
                        .quad            88
                        .quad            .Lgcsite_q_100-.Lgccode_q_0
                        .quad            65537
                        .quad            369367192376
                        .quad            96
                        .quad            .Lgcsite_q_103-.Lgccode_q_0
                        .quad            65537
                        .quad            377957126968
                        .quad            90
                        .quad            .Lgcsite_q_102-.Lgccode_q_0
                        .quad            65537
                        .quad            377957126968
                        .quad            98
                        .quad            .Lgcsite_q_105-.Lgccode_q_0
                        .quad            65537
                        .quad            386547061560
                        .quad            92
                        .quad            .Lgcsite_q_104-.Lgccode_q_0
                        .quad            65537
                        .quad            386547061560
                        .quad            100
                        .quad            .Lgcsite_q_107-.Lgccode_q_0
                        .quad            65537
                        .quad            403726930744
                        .quad            96
                        .quad            .Lgcsite_q_106-.Lgccode_q_0
                        .quad            65537
                        .quad            403726930744
                        .quad            104
                        .quad            .Lgcsite_q_109-.Lgccode_q_0
                        .quad            65537
                        .quad            412316865336
                        .quad            98
                        .quad            .Lgcsite_q_108-.Lgccode_q_0
                        .quad            65537
                        .quad            412316865336
                        .quad            106
                        .quad            .Lgcsite_q_111-.Lgccode_q_0
                        .quad            65537
                        .quad            420906799928
                        .quad            100
                        .quad            .Lgcsite_q_110-.Lgccode_q_0
                        .quad            65537
                        .quad            420906799928
                        .quad            108
                        .quad            .Lgcsite_q_117-.Lgccode_q_0
                        .quad            65537
                        .quad            438086669112
                        .quad            106
                        .quad            .Lgcsite_q_116-.Lgccode_q_0
                        .quad            65537
                        .quad            438086669112
                        .quad            114
                        .quad            .Lgcsite_q_115-.Lgccode_q_0
                        .quad            65537
                        .quad            438086669112
                        .quad            106
                        .quad            .Lgcsite_q_114-.Lgccode_q_0
                        .quad            65537
                        .quad            438086669112
                        .quad            114
                        .quad            .Lgcsite_q_113-.Lgccode_q_0
                        .quad            65537
                        .quad            438086669112
                        .quad            106
                        .quad            .Lgcsite_q_112-.Lgccode_q_0
                        .quad            65537
                        .quad            438086669112
                        .quad            110
                        .quad            .Lgcsite_q_123-.Lgccode_q_0
                        .quad            65537
                        .quad            455266538296
                        .quad            110
                        .quad            .Lgcsite_q_122-.Lgccode_q_0
                        .quad            65537
                        .quad            455266538296
                        .quad            118
                        .quad            .Lgcsite_q_121-.Lgccode_q_0
                        .quad            65537
                        .quad            455266538296
                        .quad            110
                        .quad            .Lgcsite_q_120-.Lgccode_q_0
                        .quad            65537
                        .quad            455266538296
                        .quad            118
                        .quad            .Lgcsite_q_119-.Lgccode_q_0
                        .quad            65537
                        .quad            455266538296
                        .quad            110
                        .quad            .Lgcsite_q_118-.Lgccode_q_0
                        .quad            65537
                        .quad            455266538296
                        .quad            114
                        .quad            .Lgcsite_q_129-.Lgccode_q_0
                        .quad            65537
                        .quad            472446407480
                        .quad            114
                        .quad            .Lgcsite_q_128-.Lgccode_q_0
                        .quad            65537
                        .quad            472446407480
                        .quad            122
                        .quad            .Lgcsite_q_127-.Lgccode_q_0
                        .quad            65537
                        .quad            472446407480
                        .quad            114
                        .quad            .Lgcsite_q_126-.Lgccode_q_0
                        .quad            65537
                        .quad            472446407480
                        .quad            122
                        .quad            .Lgcsite_q_125-.Lgccode_q_0
                        .quad            65537
                        .quad            472446407480
                        .quad            114
                        .quad            .Lgcsite_q_124-.Lgccode_q_0
                        .quad            65537
                        .quad            472446407480
                        .quad            118
                        .quad            .Lgcsite_q_135-.Lgccode_q_0
                        .quad            65537
                        .quad            506806145848
                        .quad            120
                        .quad            .Lgcsite_q_134-.Lgccode_q_0
                        .quad            65537
                        .quad            506806145848
                        .quad            128
                        .quad            .Lgcsite_q_133-.Lgccode_q_0
                        .quad            65537
                        .quad            506806145848
                        .quad            120
                        .quad            .Lgcsite_q_132-.Lgccode_q_0
                        .quad            65537
                        .quad            506806145848
                        .quad            124
                        .quad            .Lgcsite_q_131-.Lgccode_q_0
                        .quad            65537
                        .quad            506806145848
                        .quad            120
                        .quad            .Lgcsite_q_130-.Lgccode_q_0
                        .quad            65537
                        .quad            506806145848
                        .quad            128
                        .quad            .Lgcsite_q_137-.Lgccode_q_0
                        .quad            65537
                        .quad            523986015048
                        .quad            124
                        .quad            .Lgcsite_q_136-.Lgccode_q_0
                        .quad            65537
                        .quad            523986015048
                        .quad            132
                        .quad            .Lgcsite_q_139-.Lgccode_q_0
                        .quad            65537
                        .quad            532575949640
                        .quad            126
                        .quad            .Lgcsite_q_138-.Lgccode_q_0
                        .quad            65537
                        .quad            532575949640
                        .quad            134
                        .quad            .Lgcsite_q_141-.Lgccode_q_0
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_q_140-.Lgccode_q_0
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_q_143-.Lgccode_q_0
                        .quad            65537
                        .quad            549755818824
                        .quad            130
                        .quad            .Lgcsite_q_142-.Lgccode_q_0
                        .quad            65537
                        .quad            549755818824
                        .quad            138
                        .quad            .Lgcsite_q_147-.Lgccode_q_0
                        .quad            65537
                        .quad            523986015064
                        .quad            124
                        .quad            .Lgcsite_q_146-.Lgccode_q_0
                        .quad            65537
                        .quad            523986015064
                        .quad            128
                        .quad            .Lgcsite_q_145-.Lgccode_q_0
                        .quad            65537
                        .quad            523986015064
                        .quad            124
                        .quad            .Lgcsite_q_144-.Lgccode_q_0
                        .quad            65537
                        .quad            523986015064
                        .quad            132
                        .quad            .Lgcsite_q_149-.Lgccode_q_0
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_q_148-.Lgccode_q_0
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_q_151-.Lgccode_q_0
                        .quad            65537
                        .quad            541165884248
                        .quad            128
                        .quad            .Lgcsite_q_150-.Lgccode_q_0
                        .quad            65537
                        .quad            541165884248
                        .quad            136
                        .quad            2796202
                        .quad            2796202
                        .quad            2730
                        .quad            12297829382473032362
                        .quad            9607715855444650
                        .quad            12297829382473032362
                        .quad            12286420300067416746
                        .quad            12297829382473032362
                        .quad            3063048263212640938
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_show_1:
FN__show:
                        sub              rsp, 96
                        mov              rdi, rsp
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        movups           xmmword ptr [rdi + 0], xmm0
                        movups           xmmword ptr [rdi + 16], xmm0
                        movups           xmmword ptr [rdi + 32], xmm0
                        movups           xmmword ptr [rdi + 48], xmm0
                        movups           xmmword ptr [rdi + 64], xmm0
                        mov              qword ptr [rdi + 80], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_show qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
show_α_body:
                        .type            n00033_line_mark_bx, @function
n00033_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 88 0
.Lline_mark_α_411_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_411_stno
                        .long            0
                        .long            88
                        .quad            .Lstnof1
                        .popsection
n00033_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 88
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_412_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n00034_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_412_0: .quad .Lline_mark_α_412_0_s; .popsection
.Lline_mark_α_412_0_s:  .string          "queens.icn"
                        .size            n00033_line_mark_bx, .-n00033_line_mark_bx
                        .type            n00034_line_mark_bx, @function
n00034_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 89 0
.Lline_mark_α_413_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_413_stno
                        .long            0
                        .long            89
                        .quad            .Lstnof1
                        .popsection
n00034_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 89;           jmp   n00035_disjunction_α
                        .size            n00034_line_mark_bx, .-n00034_line_mark_bx
                        .type            n00035_disjunction_bx, @function
n00035_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_disjunction_α:     mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rbp + 8], 0
                        mov              dword ptr [rbp + 16], 0
                        mov              qword ptr [rbp + 24], rsp;           jmp   n00036_var_α
.Ldisjunction_γ_334_as: mov              eax, dword ptr [rbp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_416_0
                                                                              jmp   n00037_line_mark_α
.Ldisjunction_α_416_0:                                                        jmp   n00037_line_mark_α
n00035_disjunction_β:     mov              eax, dword ptr [rbp + 16];           jmp   n00038_goto_β
.Ldisjunction_γ_334_af:
.Ldisjunction_ω_334_af: add              dword ptr [rbp + 16], 1
                        mov              eax, dword ptr [rbp + 16];           jmp   n00037_line_mark_α
                        .size            n00035_disjunction_bx, .-n00035_disjunction_bx
                        .type            n00036_var_bx, @function
n00036_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 12000]          # show__INITFLAG__0
                        mov              rdx, qword ptr [r9 + 12008]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00039_unop_test_α
n00036_var_β:             add              rsp, 16;                             jmp   .Ldisjunction_ω_334_af
                        .size            n00036_var_bx, .-n00036_var_bx
                        .type            n00039_unop_test_bx, @function
n00039_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_unop_test_α:       sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_418_998
                        add              rsp, 16;                             jmp   n00036_var_β
.Lunop_test_α_418_998:  cmp              eax, 0;                              je    .Lunop_test_α_418_999
                        add              rsp, 16;                             jmp   n00036_var_β
.Lunop_test_α_418_999:  mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00040_lit_integer_α
                        .size            n00039_unop_test_bx, .-n00039_unop_test_bx
                        .type            n00040_lit_integer_bx, @function
n00040_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_419_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00041_assign_α
.Llit_integer_α_419_0:  .quad            1
                        .size            n00040_lit_integer_bx, .-n00040_lit_integer_bx
                        .type            n00041_assign_bx, @function
n00041_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 12000], rax          # show__INITFLAG__0
                        mov              qword ptr [r9 + 12008], rdx;         jmp   n00042_line_mark_α
                        .size            n00041_assign_bx, .-n00041_assign_bx
                        .type            n00042_line_mark_bx, @function
n00042_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 90 0
.Lline_mark_α_421_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_421_stno
                        .long            0
                        .long            90
                        .quad            .Lstnof1
                        .popsection
n00042_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 90;           jmp   n00043_lit_integer_α
                        .size            n00042_line_mark_bx, .-n00042_line_mark_bx
                        .type            n00043_lit_integer_bx, @function
n00043_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_423_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00044_assign_α
.Llit_integer_α_423_0:  .quad            0
                        .size            n00043_lit_integer_bx, .-n00043_lit_integer_bx
                        .type            n00044_assign_bx, @function
n00044_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11952], rax          # show__STATIC__count
                        mov              qword ptr [r9 + 11960], rdx
                        add              rsp, 16;                             jmp   n00045_line_mark_α
                        .size            n00044_assign_bx, .-n00044_assign_bx
                        .type            n00045_line_mark_bx, @function
n00045_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 91 0
.Lline_mark_α_425_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_425_stno
                        .long            0
                        .long            91
                        .quad            .Lstnof1
                        .popsection
n00045_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 91;           jmp   n00046_lit_string_α
                        .size            n00045_line_mark_bx, .-n00045_line_mark_bx
                        .type            n00046_lit_string_bx, @function
n00046_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00046_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_427_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00047_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_427_0: .quad .Llit_string_α_427_0_s; .popsection
.Llit_string_α_427_0_s: .string          "|   "
                        .size            n00046_lit_string_bx, .-n00046_lit_string_bx
                        .type            n00047_var_ref_bx, @function
n00047_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00047_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # n
                        mov              qword ptr [rsp + 8], rax;            jmp   n00048_deref_α
                        .size            n00047_var_ref_bx, .-n00047_var_ref_bx
                        .type            n00048_deref_bx, @function
n00048_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00048_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_show_1:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_430_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00049_line_mark_α
.Lderef_α_430_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_0:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00050_line_mark_α
                        .size            n00048_deref_bx, .-n00048_deref_bx
                        .type            n00050_line_mark_bx, @function
n00050_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_431_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_431_stno
                        .long            0
                        .long            91
                        .quad            .Lstnof1
                        .popsection
n00050_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 91;           jmp   n00051_call_byname_α
                        .size            n00050_line_mark_bx, .-n00050_line_mark_bx
                        .type            n00051_call_byname_bx, @function
n00051_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00051_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd434: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd434]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_2:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_3:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_433_999
                        add              rsp, 48
                        add              rsp, 48;                             jmp   n00049_line_mark_α
.Lcall_byname_α_433_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00052_lit_string_α
                        .size            n00051_call_byname_bx, .-n00051_call_byname_bx
                        .type            n00052_lit_string_bx, @function
n00052_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00052_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_435_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00053_binop_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_435_0: .quad .Llit_string_α_435_0_s; .popsection
.Llit_string_α_435_0_s: .string          "|"
                        .size            n00052_lit_string_bx, .-n00052_lit_string_bx
                        .type            n00053_binop_bx, @function
n00053_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00053_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_6:        cmp              al, 255;                             jne   .Lbinop_vd_436_0
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_5:        mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_436_0:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_4:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_436_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n00049_line_mark_α
.Lbinop_α_436_999:                                                            jmp   n00054_assign_α
                        .size            n00053_binop_bx, .-n00053_binop_bx
                        .type            n00054_assign_bx, @function
n00054_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00054_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11968], rax          # show__STATIC__line
                        mov              qword ptr [r9 + 11976], rdx
                        add              rsp, 128;                            jmp   n00049_line_mark_α
                        .size            n00054_assign_bx, .-n00054_assign_bx
                        .type            n00049_line_mark_bx, @function
n00049_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 92 0
.Lline_mark_α_438_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_438_stno
                        .long            0
                        .long            92
                        .quad            .Lstnof1
                        .popsection
n00049_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 92;           jmp   n00055_lit_string_α
                        .size            n00049_line_mark_bx, .-n00049_line_mark_bx
                        .type            n00055_lit_string_bx, @function
n00055_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00055_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_440_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00056_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_440_0: .quad .Llit_string_α_440_0_s; .popsection
.Llit_string_α_440_0_s: .string          "----"
                        .size            n00055_lit_string_bx, .-n00055_lit_string_bx
                        .type            n00056_var_ref_bx, @function
n00056_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00056_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # n
                        mov              qword ptr [rsp + 8], rax;            jmp   n00057_deref_α
                        .size            n00056_var_ref_bx, .-n00056_var_ref_bx
                        .type            n00057_deref_bx, @function
n00057_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00057_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_show_8:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_443_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00037_line_mark_α
.Lderef_α_443_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_7:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00058_line_mark_α
                        .size            n00057_deref_bx, .-n00057_deref_bx
                        .type            n00058_line_mark_bx, @function
n00058_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_444_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_444_stno
                        .long            0
                        .long            92
                        .quad            .Lstnof1
                        .popsection
n00058_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 92;           jmp   n00059_call_byname_α
                        .size            n00058_line_mark_bx, .-n00058_line_mark_bx
                        .type            n00059_call_byname_bx, @function
n00059_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00059_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd447: .string          "repl"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd447]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262299
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_9:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_10:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_446_999
                        add              rsp, 48
                        add              rsp, 96;                             jmp   n00037_line_mark_α
.Lcall_byname_α_446_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00060_lit_string_α
                        .size            n00059_call_byname_bx, .-n00059_call_byname_bx
                        .type            n00060_lit_string_bx, @function
n00060_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00060_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_448_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00061_binop_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_448_0: .quad .Llit_string_α_448_0_s; .popsection
.Llit_string_α_448_0_s: .string          "-"
                        .size            n00060_lit_string_bx, .-n00060_lit_string_bx
                        .type            n00061_binop_bx, @function
n00061_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00061_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # call
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_fracdigit_d@GOTPCREL]
.Lgcsite_show_13:       cmp              al, 255;                             jne   .Lbinop_vd_449_1
                        call             c_str_concat_fracdigit_d@PLT
.Lgcsite_show_12:       mov              r9,  qword ptr [rip + g_rtccb+48]
.Lbinop_vd_449_1:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_11:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lbinop_α_449_999
                        add              rsp, 16
                        add              rsp, 160;                            jmp   n00037_line_mark_α
.Lbinop_α_449_999:                                                            jmp   n00062_assign_α
                        .size            n00061_binop_bx, .-n00061_binop_bx
                        .type            n00062_assign_bx, @function
n00062_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00062_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11984], rax          # show__STATIC__border
                        mov              qword ptr [r9 + 11992], rdx;         jmp   n00063_conjunction_α
                        .size            n00062_assign_bx, .-n00062_assign_bx
                        .type            n00063_conjunction_bx, @function
n00063_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00063_conjunction_α:                                                           jmp   n00064_conjunction_α
n00063_conjunction_β:                                                           jmp   n00037_line_mark_α
                        .size            n00063_conjunction_bx, .-n00063_conjunction_bx
                        .type            n00064_conjunction_bx, @function
n00064_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00064_conjunction_α:     mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 176;                            jmp   .Ldisjunction_γ_334_as
n00064_conjunction_β:     mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 8], rax
                        add              rsp, 176;                            jmp   n00037_line_mark_α
                        .size            n00064_conjunction_bx, .-n00064_conjunction_bx
                        .type            n00038_goto_bx, @function
n00038_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_goto_α:                                                                  jmp   n00037_line_mark_α
n00038_goto_β:                                                                  jmp   n00037_line_mark_α
                        .size            n00038_goto_bx, .-n00038_goto_bx
                        .type            n00037_line_mark_bx, @function
n00037_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 94 0
.Lline_mark_α_454_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_454_stno
                        .long            0
                        .long            94
                        .quad            .Lstnof1
                        .popsection
n00037_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 94;           jmp   n00065_lit_string_α
                        .size            n00037_line_mark_bx, .-n00037_line_mark_bx
                        .type            n00065_lit_string_bx, @function
n00065_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00065_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_456_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00066_lit_integer_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_456_0: .quad .Llit_string_α_456_0_s; .popsection
.Llit_string_α_456_0_s: .string          "solution: "
                        .size            n00065_lit_string_bx, .-n00065_lit_string_bx
                        .type            n00066_lit_integer_bx, @function
n00066_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00066_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_457_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00067_var_α
.Llit_integer_α_457_0:  .quad            1
                        .size            n00066_lit_integer_bx, .-n00066_lit_integer_bx
                        .type            n00067_var_bx, @function
n00067_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00067_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11952]          # show__STATIC__count
                        mov              rdx, qword ptr [r9 + 11960]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00068_coerce_numeric_α
                        .size            n00067_var_bx, .-n00067_var_bx
                        .type            n00068_coerce_numeric_bx, @function
n00068_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00068_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_460_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_460_0
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_460_0
.Lcoerce_numeric_α_460_1:
                        mov              rax, qword ptr [rsp + 16]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n00069_binop_α
.Lcoerce_numeric_α_460_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 32]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_show_15:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_14:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_460_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00070_line_mark_α
.Lcoerce_numeric_α_460_999:
                                                                              jmp   n00069_binop_α
                        .size            n00068_coerce_numeric_bx, .-n00068_coerce_numeric_bx
                        .type            n00069_binop_bx, @function
n00069_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00069_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_461_2
                        add              rax, 1;                              jo    .Lbinop_α_461_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_461_7
.Lbinop_α_461_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_461_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_461_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_461_4
.Lbinop_α_461_3:        movq             xmm0, rsi
.Lbinop_α_461_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_461_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_461_7:                                                              jmp   n00071_assign_α
.Lbinop_α_461_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 48]            # lit_integer
                        mov              rcx, qword ptr [rsp + 56]
                        call             rt_add_big@PLT
.Lgcsite_show_17:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_461_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00070_line_mark_α
.Lbinop_α_461_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_16:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00071_assign_α
                        .size            n00069_binop_bx, .-n00069_binop_bx
                        .type            n00071_assign_bx, @function
n00071_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00071_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11952], rax          # show__STATIC__count
                        mov              qword ptr [r9 + 11960], rdx;         jmp   n00072_line_mark_α
                        .size            n00071_assign_bx, .-n00071_assign_bx
                        .type            n00072_line_mark_bx, @function
n00072_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_463_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_463_stno
                        .long            0
                        .long            94
                        .quad            .Lstnof1
                        .popsection
n00072_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 94;           jmp   n00073_call_byname_α
                        .size            n00072_line_mark_bx, .-n00072_line_mark_bx
                        .type            n00073_call_byname_bx, @function
n00073_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00073_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd466: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd466]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_18:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_19:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_465_999
                        add              rsp, 48
                        add              rsp, 80;                             jmp   n00070_line_mark_α
.Lcall_byname_α_465_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 128;                            jmp   n00070_line_mark_α
                        .size            n00073_call_byname_bx, .-n00073_call_byname_bx
                        .type            n00070_line_mark_bx, @function
n00070_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 95 0
.Lline_mark_α_467_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_467_stno
                        .long            0
                        .long            95
                        .quad            .Lstnof1
                        .popsection
n00070_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 95;           jmp   n00074_lit_string_α
                        .size            n00070_line_mark_bx, .-n00070_line_mark_bx
                        .type            n00074_lit_string_bx, @function
n00074_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00074_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_469_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00075_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_469_0: .quad .Llit_string_α_469_0_s; .popsection
.Llit_string_α_469_0_s: .string          "  "
                        .size            n00074_lit_string_bx, .-n00074_lit_string_bx
                        .type            n00075_var_bx, @function
n00075_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00075_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00076_line_mark_α
                        .size            n00075_var_bx, .-n00075_var_bx
                        .type            n00076_line_mark_bx, @function
n00076_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_471_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_471_stno
                        .long            0
                        .long            95
                        .quad            .Lstnof1
                        .popsection
n00076_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 95;           jmp   n00077_call_byname_α
                        .size            n00076_line_mark_bx, .-n00076_line_mark_bx
                        .type            n00077_call_byname_bx, @function
n00077_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00077_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd474: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd474]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_20:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_21:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_473_999
                        add              rsp, 48
                        add              rsp, 32;                             jmp   n00078_line_mark_α
.Lcall_byname_α_473_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80;                             jmp   n00078_line_mark_α
                        .size            n00077_call_byname_bx, .-n00077_call_byname_bx
                        .type            n00078_line_mark_bx, @function
n00078_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 96 0
.Lline_mark_α_475_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_475_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00078_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 96;           jmp   n00079_var_ref_α
                        .size            n00078_line_mark_bx, .-n00078_line_mark_bx
                        .type            n00079_var_ref_bx, @function
n00079_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00079_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064256                      # show__STATIC__line
                        mov              qword ptr [rsp + 8], rax;            jmp   n00080_lit_integer_α
                        .size            n00079_var_ref_bx, .-n00079_var_ref_bx
                        .type            n00080_lit_integer_bx, @function
n00080_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00080_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_479_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00081_var_α
.Llit_integer_α_479_0:  .quad            4
                        .size            n00080_lit_integer_bx, .-n00080_lit_integer_bx
                        .type            n00081_var_bx, @function
n00081_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00081_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11872]          # solution
                        mov              rdx, qword ptr [r9 + 11880]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00082_iterate_α
                        .size            n00081_var_bx, .-n00081_var_bx
                        .type            n00082_iterate_bx, @function
n00082_iterate_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00082_iterate_α:         sub              rsp, 32
                        mov              qword ptr [rsp + 16], 0
.Literate_α_482_0:      mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        lea              rdx, [rsp + 16]
                        call             qword ptr [rip + rt_list_bang_at@GOTPCREL]
.Lgcsite_show_23:       mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Literate_α_482_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   n00083_line_mark_α
.Literate_α_482_999:    push             rax                                  # gc_poll bb_iterate.cpp:40
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_22:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00084_lit_integer_α
n00082_iterate_β:         inc              qword ptr [rsp + 16];                jmp   .Literate_α_482_0
                        .size            n00082_iterate_bx, .-n00082_iterate_bx
                        .type            n00084_lit_integer_bx, @function
n00084_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00084_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_483_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00085_coerce_numeric_α
.Llit_integer_α_483_0:  .quad            1
                        .size            n00084_lit_integer_bx, .-n00084_lit_integer_bx
                        .type            n00085_coerce_numeric_bx, @function
n00085_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00085_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # iterate
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_485_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_485_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_485_0
.Lcoerce_numeric_α_485_1:
                        mov              rax, qword ptr [rsp + 32]            # iterate
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # iterate
                        mov              qword ptr [rsp + 8], rax;            jmp   n00086_binop_α
.Lcoerce_numeric_α_485_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 8606711910
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_show_25:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_24:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_485_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n00083_line_mark_α
.Lcoerce_numeric_α_485_999:
                                                                              jmp   n00086_binop_α
                        .size            n00085_coerce_numeric_bx, .-n00085_coerce_numeric_bx
                        .type            n00086_binop_bx, @function
n00086_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00086_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_486_2
                        sub              rax, 1;                              jo    .Lbinop_α_486_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_486_7
.Lbinop_α_486_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_486_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_486_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_486_4
.Lbinop_α_486_3:        movq             xmm0, rsi
.Lbinop_α_486_4:        cvtsi2sd         xmm1, rdi
                        subsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_486_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_486_7:                                                              jmp   n00087_coerce_numeric_α
.Lbinop_α_486_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_sub_big@PLT
.Lgcsite_show_27:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_486_999
                        add              rsp, 16
                        add              rsp, 112;                            jmp   n00083_line_mark_α
.Lbinop_α_486_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_26:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00087_coerce_numeric_α
                        .size            n00086_binop_bx, .-n00086_binop_bx
                        .type            n00087_coerce_numeric_bx, @function
n00087_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00087_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_488_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_488_0
                        mov              eax, dword ptr [rsp + 112]           # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_488_0
.Lcoerce_numeric_α_488_1:
                        mov              rax, qword ptr [rsp + 16]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 24]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n00088_binop_α
.Lcoerce_numeric_α_488_0:
                        lea              rdi, [rsp + 16]
                        lea              rsi, [rsp + 112]                     # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 281487878389862
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_show_29:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_28:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_488_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   n00083_line_mark_α
.Lcoerce_numeric_α_488_999:
                                                                              jmp   n00088_binop_α
                        .size            n00087_coerce_numeric_bx, .-n00087_coerce_numeric_bx
                        .type            n00088_binop_bx, @function
n00088_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00088_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              al, 3;                               jne   .Lbinop_α_489_2
                        mov              rax, 4
                        imul             rax, rdx;                            jo    .Lbinop_α_489_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_489_7
.Lbinop_α_489_2:        mov              ecx, eax
                        mov              edx, eax
                        and              edx, 1;                              jz    .Lbinop_α_489_0
                        mov              rsi, 4
                        mov              rdi, qword ptr [rsp + 24]            # coerce_numeric
                        cvtsi2sd         xmm0, rsi
                        cmp              cl, 5;                               je    .Lbinop_α_489_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_489_6
.Lbinop_α_489_5:        movq             xmm1, rdi
.Lbinop_α_489_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_489_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_489_7:                                                              jmp   n00089_lit_integer_α
.Lbinop_α_489_0:        mov              rdi, qword ptr [rsp + 128]           # lit_integer
                        mov              rsi, qword ptr [rsp + 136]
                        mov              rdx, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rcx, qword ptr [rsp + 24]
                        call             rt_mul_big@PLT
.Lgcsite_show_31:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_489_999
                        add              rsp, 16
                        add              rsp, 144;                            jmp   n00083_line_mark_α
.Lbinop_α_489_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_30:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00089_lit_integer_α
                        .size            n00088_binop_bx, .-n00088_binop_bx
                        .type            n00089_lit_integer_bx, @function
n00089_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00089_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_490_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00090_coerce_numeric_α
.Llit_integer_α_490_0:  .quad            3
                        .size            n00089_lit_integer_bx, .-n00089_lit_integer_bx
                        .type            n00090_coerce_numeric_bx, @function
n00090_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00090_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # binop
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_492_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_492_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_492_0
.Lcoerce_numeric_α_492_1:
                        mov              rax, qword ptr [rsp + 32]            # binop
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # binop
                        mov              qword ptr [rsp + 8], rax;            jmp   n00091_binop_α
.Lcoerce_numeric_α_492_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_show_33:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_32:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_492_999
                        add              rsp, 16
                        add              rsp, 176;                            jmp   n00083_line_mark_α
.Lcoerce_numeric_α_492_999:
                                                                              jmp   n00091_binop_α
                        .size            n00090_coerce_numeric_bx, .-n00090_coerce_numeric_bx
                        .type            n00091_binop_bx, @function
n00091_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00091_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_493_2
                        add              rax, 3;                              jo    .Lbinop_α_493_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_493_7
.Lbinop_α_493_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_493_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_493_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_493_4
.Lbinop_α_493_3:        movq             xmm0, rsi
.Lbinop_α_493_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_493_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_493_7:                                                              jmp   n00092_subscript_α
.Lbinop_α_493_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_show_35:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_493_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   n00083_line_mark_α
.Lbinop_α_493_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_34:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00092_subscript_α
                        .size            n00091_binop_bx, .-n00091_binop_bx
                        .type            n00092_subscript_bx, @function
n00092_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00092_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 208]           # var_ref
                        mov              rsi, qword ptr [rsp + 216]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_show_37:       cmp              al, 104;                             jne   .Lsubscript_α_494_999
                        add              rsp, 16
                        add              rsp, 128;                            jmp   n00082_iterate_β
.Lsubscript_α_494_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_36:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00093_lit_string_α
                        .size            n00092_subscript_bx, .-n00092_subscript_bx
                        .type            n00093_lit_string_bx, @function
n00093_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00093_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_495_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00094_rev_assign_var_α
n00093_lit_string_β:      add              rsp, 16
                        add              rsp, 144;                            jmp   n00082_iterate_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_495_0: .quad .Llit_string_α_495_0_s; .popsection
.Llit_string_α_495_0_s: .string          "Q"
                        .size            n00093_lit_string_bx, .-n00093_lit_string_bx
                        .type            n00094_rev_assign_var_bx, @function
n00094_rev_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00094_rev_assign_var_α:  sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 48]            # d
                        mov              rsi, qword ptr [rsp + 56]            # d
                        call             rt_deref@PLT
.Lgcsite_show_43:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:22
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_42:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_show_41:       cmp              al, 104;                             jne   .Lrev_assign_var_α_496_999
                        add              rsp, 32;                             jmp   n00093_lit_string_β
.Lrev_assign_var_α_496_999:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_rev_assign_var.cpp:32
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_40:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00095_bound_α
n00094_rev_assign_var_β:  mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_show_39:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_show_38:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      add              rsp, 32;                             jmp   n00093_lit_string_β
                        .size            n00094_rev_assign_var_bx, .-n00094_rev_assign_var_bx
                        .type            n00095_bound_bx, @function
n00095_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00095_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00096_line_mark_α
                        .size            n00095_bound_bx, .-n00095_bound_bx
                        .type            n00096_line_mark_bx, @function
n00096_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_499_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_499_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00096_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 97;           jmp   n00097_line_mark_α
                        .size            n00096_line_mark_bx, .-n00096_line_mark_bx
                        .type            n00097_line_mark_bx, @function
n00097_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 97 0
.Lline_mark_α_501_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_501_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00097_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 97;           jmp   n00098_lit_string_α
                        .size            n00097_line_mark_bx, .-n00097_line_mark_bx
                        .type            n00098_lit_string_bx, @function
n00098_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00098_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_503_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00099_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_503_0: .quad .Llit_string_α_503_0_s; .popsection
.Llit_string_α_503_0_s: .string          "  "
                        .size            n00098_lit_string_bx, .-n00098_lit_string_bx
                        .type            n00099_var_bx, @function
n00099_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00099_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11968]          # show__STATIC__line
                        mov              rdx, qword ptr [r9 + 11976]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00100_line_mark_α
                        .size            n00099_var_bx, .-n00099_var_bx
                        .type            n00100_line_mark_bx, @function
n00100_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_505_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_505_stno
                        .long            0
                        .long            97
                        .quad            .Lstnof1
                        .popsection
n00100_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 97;           jmp   n00101_call_byname_α
                        .size            n00100_line_mark_bx, .-n00100_line_mark_bx
                        .type            n00101_call_byname_bx, @function
n00101_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00101_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd508: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd508]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_44:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_45:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_507_999
                        add              rsp, 48
                        add              rsp, 32;                             jmp   n00102_line_mark_α
.Lcall_byname_α_507_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 80;                             jmp   n00102_line_mark_α
                        .size            n00101_call_byname_bx, .-n00101_call_byname_bx
                        .type            n00102_line_mark_bx, @function
n00102_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 98 0
.Lline_mark_α_509_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_509_stno
                        .long            0
                        .long            98
                        .quad            .Lstnof1
                        .popsection
n00102_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 98;           jmp   n00103_lit_string_α
                        .size            n00102_line_mark_bx, .-n00102_line_mark_bx
                        .type            n00103_lit_string_bx, @function
n00103_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00103_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_511_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00104_var_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_511_0: .quad .Llit_string_α_511_0_s; .popsection
.Llit_string_α_511_0_s: .string          "  "
                        .size            n00103_lit_string_bx, .-n00103_lit_string_bx
                        .type            n00104_var_bx, @function
n00104_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00104_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11984]          # show__STATIC__border
                        mov              rdx, qword ptr [r9 + 11992]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00105_line_mark_α
                        .size            n00104_var_bx, .-n00104_var_bx
                        .type            n00105_line_mark_bx, @function
n00105_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_513_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_513_stno
                        .long            0
                        .long            98
                        .quad            .Lstnof1
                        .popsection
n00105_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 98;           jmp   n00106_call_byname_α
                        .size            n00105_line_mark_bx, .-n00105_line_mark_bx
                        .type            n00106_call_byname_bx, @function
n00106_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00106_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd516: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd516]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_46:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_47:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_515_999
                        add              rsp, 48
                        add              rsp, -48;                            jmp   n00107_unmark_α
.Lcall_byname_α_515_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00108_conjunction_α
                        .size            n00106_call_byname_bx, .-n00106_call_byname_bx
                        .type            n00108_conjunction_bx, @function
n00108_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00108_conjunction_α:                                                           jmp   n00107_unmark_α
n00108_conjunction_β:                                                           jmp   n00107_unmark_α
                        .size            n00108_conjunction_bx, .-n00108_conjunction_bx
                        .type            n00107_unmark_bx, @function
n00107_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00107_unmark_α:                                                                jmp   n00109_line_mark_α
                        .size            n00107_unmark_bx, .-n00107_unmark_bx
                        .type            n00109_line_mark_bx, @function
n00109_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_520_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_520_stno
                        .long            0
                        .long            96
                        .quad            .Lstnof1
                        .popsection
n00109_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 96
                        add              rsp, 96;                             jmp   n00094_rev_assign_var_β
                        .size            n00109_line_mark_bx, .-n00109_line_mark_bx
                        .type            n00083_line_mark_bx, @function
n00083_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 100 0
.Lline_mark_α_522_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_522_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00083_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 100;          jmp   n00110_line_mark_α
                        .size            n00083_line_mark_bx, .-n00083_line_mark_bx
                        .type            n00110_line_mark_bx, @function
n00110_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_524_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_524_stno
                        .long            0
                        .long            100
                        .quad            .Lstnof1
                        .popsection
n00110_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 100;          jmp   n00111_call_byname_α
                        .size            n00110_line_mark_bx, .-n00110_line_mark_bx
                        .type            n00111_call_byname_bx, @function
n00111_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00111_call_byname_α:     sub              rsp, 16
                        .section         .rodata
.Lcall_byname_α_rkfnzd527: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd527]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_show_48:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_show_49:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_526_999
                        add              rsp, 16;                             jmp   show_ω
.Lcall_byname_α_526_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   show_ω
                        .size            n00111_call_byname_bx, .-n00111_call_byname_bx
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88];           jmp   qword ptr [rsp]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 96]
                        mov              rbp, qword ptr [rbp + 88];           jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_show:
                        .quad            413663317338
                        .quad            515396075568
                        .quad            .Lgcmap_show_s
                        .quad            32
                        .quad            2
                        .quad            17592186044416
                        .quad            17596481011728
.Lgcmap_show_s:         .string          "show"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_show_1:       .quad            50
                        .quad            .Lgcmap_show
                        .quad            9223389626893336672
                        .quad            .Lgccode_show_1
                        .quad            .Lgcsite_show_1-.Lgccode_show_1
                        .quad            65537
                        .quad            42949674592
                        .quad            12
                        .quad            .Lgcsite_show_0-.Lgccode_show_1
                        .quad            65537
                        .quad            42949674592
                        .quad            20
                        .quad            .Lgcsite_show_2-.Lgccode_show_1
                        .quad            65537
                        .quad            51539609184
                        .quad            18
                        .quad            .Lgcsite_show_3-.Lgccode_show_1
                        .quad            65537
                        .quad            51539609184
                        .quad            22
                        .quad            .Lgcsite_show_6-.Lgccode_show_1
                        .quad            65537
                        .quad            85899347552
                        .quad            22
                        .quad            .Lgcsite_show_5-.Lgccode_show_1
                        .quad            65537
                        .quad            85899347552
                        .quad            22
                        .quad            .Lgcsite_show_4-.Lgccode_show_1
                        .quad            65537
                        .quad            85899347552
                        .quad            30
                        .quad            .Lgcsite_show_8-.Lgccode_show_1
                        .quad            65537
                        .quad            42949674600
                        .quad            12
                        .quad            .Lgcsite_show_7-.Lgccode_show_1
                        .quad            65537
                        .quad            42949674600
                        .quad            20
                        .quad            .Lgcsite_show_9-.Lgccode_show_1
                        .quad            65537
                        .quad            51539609192
                        .quad            18
                        .quad            .Lgcsite_show_10-.Lgccode_show_1
                        .quad            65537
                        .quad            51539609192
                        .quad            22
                        .quad            .Lgcsite_show_13-.Lgccode_show_1
                        .quad            65537
                        .quad            85899347560
                        .quad            22
                        .quad            .Lgcsite_show_12-.Lgccode_show_1
                        .quad            65537
                        .quad            85899347560
                        .quad            22
                        .quad            .Lgcsite_show_11-.Lgccode_show_1
                        .quad            65537
                        .quad            85899347560
                        .quad            30
                        .quad            .Lgcsite_show_15-.Lgccode_show_1
                        .quad            65537
                        .quad            25769805424
                        .quad            8
                        .quad            .Lgcsite_show_14-.Lgccode_show_1
                        .quad            65537
                        .quad            25769805424
                        .quad            16
                        .quad            .Lgcsite_show_17-.Lgccode_show_1
                        .quad            65537
                        .quad            34359740016
                        .quad            10
                        .quad            .Lgcsite_show_16-.Lgccode_show_1
                        .quad            65537
                        .quad            34359740016
                        .quad            18
                        .quad            .Lgcsite_show_18-.Lgccode_show_1
                        .quad            65537
                        .quad            42949674608
                        .quad            16
                        .quad            .Lgcsite_show_19-.Lgccode_show_1
                        .quad            65537
                        .quad            42949674608
                        .quad            20
                        .quad            .Lgcsite_show_20-.Lgccode_show_1
                        .quad            65537
                        .quad            17179870840
                        .quad            10
                        .quad            .Lgcsite_show_21-.Lgccode_show_1
                        .quad            65537
                        .quad            17179870840
                        .quad            14
                        .quad            .Lgcsite_show_23-.Lgccode_show_1
                        .quad            65537
                        .quad            25769805440
                        .quad            10
                        .quad            .Lgcsite_show_22-.Lgccode_show_1
                        .quad            65537
                        .quad            25769805440
                        .quad            18
                        .quad            .Lgcsite_show_25-.Lgccode_show_1
                        .quad            65537
                        .quad            51539609216
                        .quad            14
                        .quad            .Lgcsite_show_24-.Lgccode_show_1
                        .quad            65537
                        .quad            51539609216
                        .quad            22
                        .quad            .Lgcsite_show_27-.Lgccode_show_1
                        .quad            65537
                        .quad            60129543808
                        .quad            16
                        .quad            .Lgcsite_show_26-.Lgccode_show_1
                        .quad            65537
                        .quad            60129543808
                        .quad            24
                        .quad            .Lgcsite_show_29-.Lgccode_show_1
                        .quad            65537
                        .quad            68719478400
                        .quad            18
                        .quad            .Lgcsite_show_28-.Lgccode_show_1
                        .quad            65537
                        .quad            68719478400
                        .quad            26
                        .quad            .Lgcsite_show_31-.Lgccode_show_1
                        .quad            65537
                        .quad            77309412992
                        .quad            20
                        .quad            .Lgcsite_show_30-.Lgccode_show_1
                        .quad            65537
                        .quad            77309412992
                        .quad            28
                        .quad            .Lgcsite_show_33-.Lgccode_show_1
                        .quad            65537
                        .quad            94489282176
                        .quad            24
                        .quad            .Lgcsite_show_32-.Lgccode_show_1
                        .quad            65537
                        .quad            94489282176
                        .quad            32
                        .quad            .Lgcsite_show_35-.Lgccode_show_1
                        .quad            65537
                        .quad            103079216768
                        .quad            26
                        .quad            .Lgcsite_show_34-.Lgccode_show_1
                        .quad            65537
                        .quad            103079216768
                        .quad            34
                        .quad            .Lgcsite_show_37-.Lgccode_show_1
                        .quad            65537
                        .quad            111669151360
                        .quad            28
                        .quad            .Lgcsite_show_36-.Lgccode_show_1
                        .quad            65537
                        .quad            111669151360
                        .quad            36
                        .quad            .Lgcsite_show_43-.Lgccode_show_1
                        .quad            65537
                        .quad            128849020544
                        .quad            34
                        .quad            .Lgcsite_show_42-.Lgccode_show_1
                        .quad            65537
                        .quad            128849020544
                        .quad            42
                        .quad            .Lgcsite_show_41-.Lgccode_show_1
                        .quad            65537
                        .quad            128849020544
                        .quad            34
                        .quad            .Lgcsite_show_40-.Lgccode_show_1
                        .quad            65537
                        .quad            128849020544
                        .quad            42
                        .quad            .Lgcsite_show_39-.Lgccode_show_1
                        .quad            65537
                        .quad            128849020544
                        .quad            34
                        .quad            .Lgcsite_show_38-.Lgccode_show_1
                        .quad            65537
                        .quad            128849020544
                        .quad            38
                        .quad            .Lgcsite_show_44-.Lgccode_show_1
                        .quad            65537
                        .quad            171798693504
                        .quad            46
                        .quad            .Lgcsite_show_45-.Lgccode_show_1
                        .quad            65537
                        .quad            171798693504
                        .quad            50
                        .quad            .Lgcsite_show_46-.Lgccode_show_1
                        .quad            65537
                        .quad            171798693512
                        .quad            46
                        .quad            .Lgcsite_show_47-.Lgccode_show_1
                        .quad            65537
                        .quad            171798693512
                        .quad            50
                        .quad            .Lgcsite_show_48-.Lgccode_show_1
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_show_49-.Lgccode_show_1
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            699050
                        .quad            699050
                        .quad            682
                        .quad            10
                        .quad            696500529706
                        .quad            696500529706
                        .popsection
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_options_2:
FN__options:
                        sub              rsp, 592
                        mov              rdi, rsp
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        movups           xmmword ptr [rdi + 0], xmm0
                        movups           xmmword ptr [rdi + 16], xmm0
                        movups           xmmword ptr [rdi + 32], xmm0
                        movups           xmmword ptr [rdi + 48], xmm0
                        movups           xmmword ptr [rdi + 64], xmm0
                        movups           xmmword ptr [rdi + 80], xmm0
                        movups           xmmword ptr [rdi + 96], xmm0
                        movups           xmmword ptr [rdi + 112], xmm0
                        movups           xmmword ptr [rdi + 128], xmm0
                        movups           xmmword ptr [rdi + 144], xmm0
                        movups           xmmword ptr [rdi + 160], xmm0
                        movups           xmmword ptr [rdi + 176], xmm0
                        movups           xmmword ptr [rdi + 192], xmm0
                        movups           xmmword ptr [rdi + 208], xmm0
                        movups           xmmword ptr [rdi + 224], xmm0
                        movups           xmmword ptr [rdi + 240], xmm0
                        movups           xmmword ptr [rdi + 256], xmm0
                        movups           xmmword ptr [rdi + 272], xmm0
                        movups           xmmword ptr [rdi + 288], xmm0
                        movups           xmmword ptr [rdi + 304], xmm0
                        movups           xmmword ptr [rdi + 320], xmm0
                        movups           xmmword ptr [rdi + 336], xmm0
                        movups           xmmword ptr [rdi + 352], xmm0
                        movups           xmmword ptr [rdi + 368], xmm0
                        movups           xmmword ptr [rdi + 384], xmm0
                        movups           xmmword ptr [rdi + 400], xmm0
                        movups           xmmword ptr [rdi + 416], xmm0
                        movups           xmmword ptr [rdi + 432], xmm0
                        movups           xmmword ptr [rdi + 448], xmm0
                        movups           xmmword ptr [rdi + 464], xmm0
                        movups           xmmword ptr [rdi + 480], xmm0
                        movups           xmmword ptr [rdi + 496], xmm0
                        movups           xmmword ptr [rdi + 512], xmm0
                        movups           xmmword ptr [rdi + 528], xmm0
                        movups           xmmword ptr [rdi + 544], xmm0
                        movups           xmmword ptr [rdi + 560], xmm0
                        mov              qword ptr [rdi + 576], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_options qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 584], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
options_α_body:
                        .type            n00112_line_mark_bx, @function
n00112_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 106 0
.Lline_mark_α_711_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_711_stno
                        .long            0
                        .long            106
                        .quad            .Lstnof1
                        .popsection
n00112_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 106
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_712_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n00113_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_712_0: .quad .Lline_mark_α_712_0_s; .popsection
.Lline_mark_α_712_0_s:  .string          "queens.icn"
                        .size            n00112_line_mark_bx, .-n00112_line_mark_bx
                        .type            n00113_line_mark_bx, @function
n00113_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 107 0
.Lline_mark_α_713_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_713_stno
                        .long            0
                        .long            107
                        .quad            .Lstnof1
                        .popsection
n00113_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 107;          jmp   n00114_var_ref_α
                        .size            n00113_line_mark_bx, .-n00113_line_mark_bx
                        .type            n00114_var_ref_bx, @function
n00114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00114_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00115_nulltest_var_α
                        .size            n00114_var_ref_bx, .-n00114_var_ref_bx
                        .type            n00115_nulltest_var_bx, @function
n00115_nulltest_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00115_nulltest_var_α:    sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lnulltest_var_α_717_997
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00116_line_mark_α
.Lnulltest_var_α_717_997:
                        mov              rdi, qword ptr [rsp + 16]            # d
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_1:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lnulltest_var_α_717_998
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00116_line_mark_α
.Lnulltest_var_α_717_998:
                        cmp              eax, 0;                              je    .Lnulltest_var_α_717_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00116_line_mark_α
.Lnulltest_var_α_717_999:
                        mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_unop.cpp:68
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_0:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00117_lit_charset_α
                        .size            n00115_nulltest_var_bx, .-n00115_nulltest_var_bx
                        .type            n00117_lit_charset_bx, @function
n00117_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00117_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_718_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00118_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_718_0: .quad .Llit_charset_α_718_0_s; .popsection
                        .quad            14260561861161254964
                        .quad            0
                        .quad            576460743847706622
                        .quad            0
                        .quad            0
.Llit_charset_α_718_0_s:
                        .string          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
                        .size            n00117_lit_charset_bx, .-n00117_lit_charset_bx
                        .type            n00118_line_mark_bx, @function
n00118_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_719_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_719_stno
                        .long            0
                        .long            107
                        .quad            .Lstnof1
                        .popsection
n00118_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 107;          jmp   n00119_call_byname_α
                        .size            n00118_line_mark_bx, .-n00118_line_mark_bx
                        .type            n00119_call_byname_bx, @function
n00119_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00119_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd722: .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd722]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_2:     mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_3:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_721_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   n00116_line_mark_α
.Lcall_byname_α_721_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00120_assign_var_α
                        .size            n00119_call_byname_bx, .-n00119_call_byname_bx
                        .type            n00120_assign_var_bx, @function
n00120_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00120_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # nulltest_var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_options_5:     cmp              al, 104;                             jne   .Lassign_var_α_723_999
                        add              rsp, 16
                        add              rsp, 80;                             jmp   n00116_line_mark_α
.Lassign_var_α_723_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_4:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      add              rsp, 96;                             jmp   n00116_line_mark_α
                        .size            n00120_assign_var_bx, .-n00120_assign_var_bx
                        .type            n00116_line_mark_bx, @function
n00116_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 108 0
.Lline_mark_α_724_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_724_stno
                        .long            0
                        .long            108
                        .quad            .Lstnof1
                        .popsection
n00116_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 108;          jmp   n00121_line_mark_α
                        .size            n00116_line_mark_bx, .-n00116_line_mark_bx
                        .type            n00121_line_mark_bx, @function
n00121_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_726_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_726_stno
                        .long            0
                        .long            108
                        .quad            .Lstnof1
                        .popsection
n00121_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 108;          jmp   n00122_call_byname_α
                        .size            n00121_line_mark_bx, .-n00121_line_mark_bx
                        .type            n00122_call_byname_bx, @function
n00122_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00122_call_byname_α:     sub              rsp, 16
                        .section         .rodata
.Lcall_byname_α_rkfnzd729: .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd729]
                        xor              esi, esi
                        mov              edx, 0
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_6:     mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_7:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_728_999
                        add              rsp, 16;                             jmp   n00123_line_mark_α
.Lcall_byname_α_728_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00124_assign_α
                        .size            n00122_call_byname_bx, .-n00122_call_byname_bx
                        .type            n00124_assign_bx, @function
n00124_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00124_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        add              rsp, 16;                             jmp   n00123_line_mark_α
                        .size            n00124_assign_bx, .-n00124_assign_bx
                        .type            n00123_line_mark_bx, @function
n00123_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 109 0
.Lline_mark_α_731_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_731_stno
                        .long            0
                        .long            109
                        .quad            .Lstnof1
                        .popsection
n00123_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 109;          jmp   n00125_make_list_α
                        .size            n00123_line_mark_bx, .-n00123_line_mark_bx
                        .type            n00125_make_list_bx, @function
n00125_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00125_make_list_α:       sub              rsp, 16
                        xor              edi, edi
                        mov              esi, 0
                        call             rt_make_list@PLT
.Lgcsite_options_9:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_make_list.cpp:36
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_8:     mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00126_assign_α
                        .size            n00125_make_list_bx, .-n00125_make_list_bx
                        .type            n00126_assign_bx, @function
n00126_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00126_assign_α:          mov              rax, qword ptr [rsp + 0]             # make_list
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        add              rsp, 16;                             jmp   n00127_line_mark_α
                        .size            n00126_assign_bx, .-n00126_assign_bx
                        .type            n00127_line_mark_bx, @function
n00127_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 110 0
.Lline_mark_α_736_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_736_stno
                        .long            0
                        .long            110
                        .quad            .Lstnof1
                        .popsection
n00127_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 110;          jmp   n00128_bound_α
                        .size            n00127_line_mark_bx, .-n00127_line_mark_bx
                        .type            n00128_bound_bx, @function
n00128_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00128_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00129_var_ref_α
n00128_bound_β:           add              rsp, 16
                        add              rsp, -16;                            jmp   n00129_var_ref_α
                        .size            n00128_bound_bx, .-n00128_bound_bx
                        .type            n00129_var_ref_bx, @function
n00129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00129_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 592]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00130_deref_α
                        .size            n00129_var_ref_bx, .-n00129_var_ref_bx
                        .type            n00130_deref_bx, @function
n00130_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00130_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_11:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_742_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00131_line_mark_α
.Lderef_α_742_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_10:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00132_line_mark_α
                        .size            n00130_deref_bx, .-n00130_deref_bx
                        .type            n00132_line_mark_bx, @function
n00132_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_743_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_743_stno
                        .long            0
                        .long            110
                        .quad            .Lstnof1
                        .popsection
n00132_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 110;          jmp   n00133_call_byname_α
                        .size            n00132_line_mark_bx, .-n00132_line_mark_bx
                        .type            n00133_call_byname_bx, @function
n00133_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00133_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd746: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd746]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_12:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_13:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_745_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   n00131_line_mark_α
.Lcall_byname_α_745_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00134_assign_α
                        .size            n00133_call_byname_bx, .-n00133_call_byname_bx
                        .type            n00134_assign_bx, @function
n00134_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00134_assign_α:          mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n00135_line_mark_α
                        .size            n00134_assign_bx, .-n00134_assign_bx
                        .type            n00135_line_mark_bx, @function
n00135_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_748_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_748_stno
                        .long            0
                        .long            111
                        .quad            .Lstnof1
                        .popsection
n00135_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 111;          jmp   n00136_var_α
                        .size            n00135_line_mark_bx, .-n00135_line_mark_bx
                        .type            n00136_var_bx, @function
n00136_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00136_var_α:                                                                   jmp   n00137_scan_enter_α
                        .size            n00136_var_bx, .-n00136_var_bx
                        .type            n00137_scan_enter_bx, @function
n00137_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00137_scan_enter_α:      sub              rsp, 32
                        mov              rcx, 2
                        mov              qword ptr [rsp + 0], rcx
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], r14
                        mov              qword ptr [rsp + 24], r15
                        mov              rax, qword ptr [rbp + 64]
                        cmp              eax, 2;                              jne   .Lscan_enter_α_753_1
                        shr              rax, 32
                        test             eax, eax;                            je    .Lscan_enter_α_753_1
                        cmp              eax, -1;                             je    .Lscan_enter_α_753_1
                        mov              r13, qword ptr [rbp + 72]
                        mov              r15d, eax;                           jmp   .Lscan_enter_α_753_2
.Lscan_enter_α_753_1:   mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        mov              edx, 2
                        call             rt_icn_subject_coerce@PLT
.Lgcsite_options_15:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_14:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_753_999
                        add              rsp, 32
                        add              rsp, -80;                            jmp   n00138_unmark_α
.Lscan_enter_α_753_999: mov              r13, rax
                        mov              r15, rdx
.Lscan_enter_α_753_2:   xor              r14d, r14d;                          jmp   n00139_disjunction_α
                        .size            n00137_scan_enter_bx, .-n00137_scan_enter_bx
                        .type            n00139_disjunction_bx, @function
n00139_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00139_disjunction_α:     mov              qword ptr [rbp + 176], 0
                        mov              qword ptr [rbp + 184], 0
                        mov              dword ptr [rbp + 192], 0
                        mov              qword ptr [rbp + 200], rsp;          jmp   n00140_lit_string_α
.Ldisjunction_γ_553_as: mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_755_0
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 184], rax;          jmp   n00141_scan_α
.Ldisjunction_α_755_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_755_1
                                                                              jmp   n00141_scan_α
.Ldisjunction_α_755_1:                                                        jmp   n00141_scan_α
n00139_disjunction_β:     mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 0;                              je    n00142_disjunction_β
                        add              rsp, 32;                             jmp   n00143_scan_α
.Ldisjunction_γ_553_af:
.Ldisjunction_ω_553_af: add              dword ptr [rbp + 192], 1
                        mov              eax, dword ptr [rbp + 192]
                        cmp              eax, 1;                              je    n00144_line_mark_α
                                                                              jmp   n00143_scan_α
                        .size            n00139_disjunction_bx, .-n00139_disjunction_bx
                        .type            n00141_scan_bx, @function
n00141_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00141_scan_α:            sub              rsp, 48
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 56]
                        mov              r14, qword ptr [rsp + 64]
                        mov              r15, qword ptr [rsp + 72];           jmp   n00138_unmark_α
n00141_scan_β:            mov              qword ptr [rsp + 56], r13
                        mov              qword ptr [rsp + 64], r14
                        mov              qword ptr [rsp + 72], r15
                        mov              r13, qword ptr [rsp + 24]
                        mov              r15d, dword ptr [rsp + 20]
                        mov              r14d, dword ptr [rsp + 32]
                        add              rsp, 48;                             jmp   n00139_disjunction_β
                        .size            n00141_scan_bx, .-n00141_scan_bx
                        .type            n00145_conjunction_bx, @function
n00145_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00145_conjunction_α:     add              rsp, -112;                           jmp   .Ldisjunction_γ_553_as
n00145_conjunction_β:     add              rsp, -112;                           jmp   n00143_scan_α
                        .size            n00145_conjunction_bx, .-n00145_conjunction_bx
                        .type            n00144_line_mark_bx, @function
n00144_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_759_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_759_stno
                        .long            0
                        .long            131
                        .quad            .Lstnof1
                        .popsection
n00144_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 131;          jmp   n00146_var_ref_α
n00144_line_mark_β:                                                             jmp   n00146_var_ref_α
                        .size            n00144_line_mark_bx, .-n00144_line_mark_bx
                        .type            n00146_var_ref_bx, @function
n00146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00146_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00147_var_ref_α
                        .size            n00146_var_ref_bx, .-n00146_var_ref_bx
                        .type            n00147_var_ref_bx, @function
n00147_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00147_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 64]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00148_deref_α
                        .size            n00147_var_ref_bx, .-n00147_var_ref_bx
                        .type            n00148_deref_bx, @function
n00148_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00148_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_17:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_765_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00143_scan_α
.Lderef_α_765_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_16:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00149_deref_α
                        .size            n00148_deref_bx, .-n00148_deref_bx
                        .type            n00149_deref_bx, @function
n00149_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00149_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_19:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_766_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00143_scan_α
.Lderef_α_766_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_18:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00150_line_mark_α
                        .size            n00149_deref_bx, .-n00149_deref_bx
                        .type            n00150_line_mark_bx, @function
n00150_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_767_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_767_stno
                        .long            0
                        .long            131
                        .quad            .Lstnof1
                        .popsection
n00150_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 131;          jmp   n00151_call_byname_α
                        .size            n00150_line_mark_bx, .-n00150_line_mark_bx
                        .type            n00151_call_byname_bx, @function
n00151_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00151_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd770: .string          "put"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd770]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 196758
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_20:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_21:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_769_999
                        add              rsp, 48
                        add              rsp, 64;                             jmp   n00143_scan_α
.Lcall_byname_α_769_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 184], rax
                        add              rsp, 112;                            jmp   .Ldisjunction_γ_553_as
n00151_call_byname_β:     add              rsp, 48
                        add              rsp, 64;                             jmp   n00143_scan_α
                        .size            n00151_call_byname_bx, .-n00151_call_byname_bx
                        .type            n00140_lit_string_bx, @function
n00140_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00140_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_771_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00152_scan_match_α
n00140_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_553_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_771_0: .quad .Llit_string_α_771_0_s; .popsection
.Llit_string_α_771_0_s: .string          "-"
                        .size            n00140_lit_string_bx, .-n00140_lit_string_bx
                        .type            n00152_scan_match_bx, @function
n00152_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00152_scan_match_α:      sub              rsp, 32
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_773_998
                        add              rsp, 32;                             jmp   n00140_lit_string_β
.Lscan_match_α_773_998: mov              rsi, qword ptr [rip + .Lscan_match_α_773_0]
                        mov              rdi, r13
                        add              rdi, r14
                        xor              rcx, rcx
.Lscan_match_α_773_3:   cmp              rcx, 1;                              jge   .Lscan_match_α_773_4
                        movzx            r10d, byte ptr [rsi + rcx]
                        movzx            r11d, byte ptr [rdi + rcx]
                        cmp              r10d, r11d;                          je    .Lscan_match_α_773_999
                        add              rsp, 32;                             jmp   n00140_lit_string_β
.Lscan_match_α_773_999: inc              rcx;                                 jmp   .Lscan_match_α_773_3
.Lscan_match_α_773_4:   mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n00153_scan_tab_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_773_0: .quad .Lscan_match_α_773_0_s; .popsection
.Lscan_match_α_773_0_s: .string          "-"
                        .size            n00152_scan_match_bx, .-n00152_scan_match_bx
                        .type            n00153_scan_tab_bx, @function
n00153_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00153_scan_tab_α:        sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_options_25:    test             eax, eax;                            jne   .Lscan_tab_α_775_997
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_553_af
.Lscan_tab_α_775_997:   push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_24:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_23:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_22:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_775_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_775_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_775_998
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_553_af
.Lscan_tab_α_775_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_775_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_553_af
.Lscan_tab_α_775_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_775_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_775_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_775_2
                        lea              rsi, [rip + .S1]
.Lscan_tab_α_775_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00154_lit_integer_α
n00153_scan_tab_β:        mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_553_af
                        .size            n00153_scan_tab_bx, .-n00153_scan_tab_bx
                        .type            n00154_lit_integer_bx, @function
n00154_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00154_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_776_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00155_line_mark_α
.Llit_integer_α_776_0:  .quad            0
                        .size            n00154_lit_integer_bx, .-n00154_lit_integer_bx
                        .type            n00155_line_mark_bx, @function
n00155_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_777_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_777_stno
                        .long            0
                        .long            112
                        .quad            .Lstnof1
                        .popsection
n00155_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 112;          jmp   n00156_scan_pos_α
                        .size            n00155_line_mark_bx, .-n00155_line_mark_bx
                        .type            n00156_scan_pos_bx, @function
n00156_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00156_scan_pos_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_780_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_780_0:     cmp              rax, 1;                              jge   .Lscan_pos_α_780_997
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00157_var_α
.Lscan_pos_α_780_997:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_pos_α_780_998
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00157_var_α
.Lscan_pos_α_780_998:   mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            je    .Lscan_pos_α_780_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00157_var_α
.Lscan_pos_α_780_999:   mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax
                        add              rsp, 32;                             jmp   n00153_scan_tab_β
                        .size            n00156_scan_pos_bx, .-n00156_scan_pos_bx
                        .type            n00157_var_bx, @function
n00157_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00157_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00158_conjunction_α
                        .size            n00157_var_bx, .-n00157_var_bx
                        .type            n00158_conjunction_bx, @function
n00158_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00158_conjunction_α:                                                           jmp   n00159_line_mark_α
n00158_conjunction_β:                                                           jmp   .Ldisjunction_ω_553_af
                        .size            n00158_conjunction_bx, .-n00158_conjunction_bx
                        .type            n00159_line_mark_bx, @function
n00159_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_783_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_783_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00159_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 113;          jmp   n00160_line_mark_α
                        .size            n00159_line_mark_bx, .-n00159_line_mark_bx
                        .type            n00160_line_mark_bx, @function
n00160_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 113 0
.Lline_mark_α_785_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_785_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00160_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 113;          jmp   n00161_disjunction_α
                        .size            n00160_line_mark_bx, .-n00160_line_mark_bx
                        .type            n00161_disjunction_bx, @function
n00161_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00161_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00162_lit_string_α
.Ldisjunction_γ_573_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_788_0
                        add              rsp, 32;                             jmp   n00163_line_mark_α
.Ldisjunction_α_788_0:  add              rsp, 32;                             jmp   n00163_line_mark_α
n00161_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00163_line_mark_α
.Ldisjunction_γ_573_af:
.Ldisjunction_ω_573_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00163_line_mark_α
                        .size            n00161_disjunction_bx, .-n00161_disjunction_bx
                        .type            n00163_line_mark_bx, @function
n00163_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 114 0
.Lline_mark_α_789_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_789_stno
                        .long            0
                        .long            114
                        .quad            .Lstnof1
                        .popsection
n00163_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 114;          jmp   n00164_bound_α
                        .size            n00163_line_mark_bx, .-n00163_line_mark_bx
                        .type            n00164_bound_bx, @function
n00164_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00164_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00165_lit_integer_α
n00164_bound_β:           add              rsp, 16
                        add              rsp, -16;                            jmp   n00165_lit_integer_α
                        .size            n00164_bound_bx, .-n00164_bound_bx
                        .type            n00165_lit_integer_bx, @function
n00165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00165_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_793_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00166_line_mark_α
.Llit_integer_α_793_0:  .quad            1
                        .size            n00165_lit_integer_bx, .-n00165_lit_integer_bx
                        .type            n00166_line_mark_bx, @function
n00166_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_794_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_794_stno
                        .long            0
                        .long            114
                        .quad            .Lstnof1
                        .popsection
n00166_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 114;          jmp   n00167_scan_move_α
                        .size            n00166_line_mark_bx, .-n00166_line_mark_bx
                        .type            n00167_scan_move_bx, @function
n00167_scan_move_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00167_scan_move_α:       sub              rsp, 32
                        mov              rax, 1
                        add              rax, r14
                        add              rax, 1
                        cmp              rax, 1;                              jge   .Lscan_move_α_797_998
                        add              rsp, 32
                        add              rsp, 128;                            jmp   n00143_scan_α
.Lscan_move_α_797_998:  mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_move_α_797_999
                        add              rsp, 32
                        add              rsp, 128;                            jmp   n00143_scan_α
.Lscan_move_α_797_999:  mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_move_α_797_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_move_α_797_1:    lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_move_α_797_2
                        lea              rsi, [rip + .S1]
.Lscan_move_α_797_2:    shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00168_assign_α
n00167_scan_move_β:       mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, 128;                            jmp   n00143_scan_α
                        .size            n00167_scan_move_bx, .-n00167_scan_move_bx
                        .type            n00168_assign_bx, @function
n00168_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00168_assign_α:          mov              rax, qword ptr [rsp + 0]             # scan_move
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx;           jmp   n00169_line_mark_α
                        .size            n00168_assign_bx, .-n00168_assign_bx
                        .type            n00169_line_mark_bx, @function
n00169_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_799_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_799_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00169_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 115;          jmp   n00142_disjunction_α
                        .size            n00169_line_mark_bx, .-n00169_line_mark_bx
                        .type            n00142_disjunction_bx, @function
n00142_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00142_disjunction_α:     mov              qword ptr [rbp + 208], 0
                        mov              qword ptr [rbp + 216], 0
                        mov              dword ptr [rbp + 224], 0
                        mov              qword ptr [rbp + 232], rsp;          jmp   n00170_var_α
.Ldisjunction_γ_581_as: mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_802_0
                                                                              jmp   n00171_unmark_α
.Ldisjunction_α_802_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_802_1
                                                                              jmp   n00171_unmark_α
.Ldisjunction_α_802_1:                                                        jmp   n00171_unmark_α
n00142_disjunction_β:     mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 0;                              je    n00172_disjunction_β
                                                                              jmp   n00171_unmark_α
.Ldisjunction_γ_581_af:
.Ldisjunction_ω_581_af: add              dword ptr [rbp + 224], 1
                        mov              eax, dword ptr [rbp + 224]
                        cmp              eax, 1;                              je    n00173_line_mark_α
                                                                              jmp   n00171_unmark_α
                        .size            n00142_disjunction_bx, .-n00142_disjunction_bx
                        .type            n00173_line_mark_bx, @function
n00173_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_803_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_803_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00173_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 129;          jmp   n00174_lit_string_α
n00173_line_mark_β:                                                             jmp   n00174_lit_string_α
                        .size            n00173_line_mark_bx, .-n00173_line_mark_bx
                        .type            n00174_lit_string_bx, @function
n00174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00174_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_805_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00175_var_ref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_805_0: .quad .Llit_string_α_805_0_s; .popsection
.Llit_string_α_805_0_s: .string          "Unrecognized option: -"
                        .size            n00174_lit_string_bx, .-n00174_lit_string_bx
                        .type            n00175_var_ref_bx, @function
n00175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00175_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00176_deref_α
                        .size            n00175_var_ref_bx, .-n00175_var_ref_bx
                        .type            n00176_deref_bx, @function
n00176_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00176_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_27:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_808_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00171_unmark_α
.Lderef_α_808_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_26:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00177_line_mark_α
                        .size            n00176_deref_bx, .-n00176_deref_bx
                        .type            n00177_line_mark_bx, @function
n00177_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_809_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_809_stno
                        .long            0
                        .long            129
                        .quad            .Lstnof1
                        .popsection
n00177_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 129;          jmp   n00178_call_byname_α
                        .size            n00177_line_mark_bx, .-n00177_line_mark_bx
                        .type            n00178_call_byname_bx, @function
n00178_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00178_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd812: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd812]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_28:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_29:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_811_999
                        add              rsp, 48
                        add              rsp, 48;                             jmp   n00171_unmark_α
.Lcall_byname_α_811_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 216], rax
                        add              rsp, 96;                             jmp   .Ldisjunction_γ_581_as
n00178_call_byname_β:     add              rsp, 48
                        add              rsp, 48;                             jmp   n00171_unmark_α
                        .size            n00178_call_byname_bx, .-n00178_call_byname_bx
                        .type            n00170_var_bx, @function
n00170_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00170_var_α:                                                                   jmp   n00179_assign_α
n00170_var_β:                                                                   jmp   .Ldisjunction_ω_581_af
                        .size            n00170_var_bx, .-n00170_var_bx
                        .type            n00179_assign_bx, @function
n00179_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00179_assign_α:          mov              rax, qword ptr [rbp + 80]            # var
                        mov              rdx, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n00180_var_α
n00179_assign_β:                                                                jmp   n00170_var_β
                        .size            n00179_assign_bx, .-n00179_assign_bx
                        .type            n00180_var_bx, @function
n00180_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00180_var_α:                                                                   jmp   n00181_var_α
n00180_var_β:                                                                   jmp   n00179_assign_β
                        .size            n00180_var_bx, .-n00180_var_bx
                        .type            n00181_var_bx, @function
n00181_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00181_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00182_var_α
n00181_var_β:             add              rsp, 16;                             jmp   n00180_var_β
                        .size            n00181_var_bx, .-n00181_var_bx
                        .type            n00182_var_bx, @function
n00182_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00182_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00183_scan_enter_α
n00182_var_β:             add              rsp, 16;                             jmp   n00181_var_β
                        .size            n00182_var_bx, .-n00182_var_bx
                        .type            n00183_scan_enter_bx, @function
n00183_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00183_scan_enter_α:      sub              rsp, 32
                        mov              rcx, 2
                        mov              qword ptr [rsp + 0], rcx
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], r14
                        mov              qword ptr [rsp + 24], r15
                        mov              rax, qword ptr [rbp + 608]
                        cmp              al, 0;                               je    .Lscan_enter_α_821_50
                        mov              rax, qword ptr [rbp + 608]
                        cmp              eax, 2;                              jne   .Lscan_enter_α_821_1
                        shr              rax, 32
                        test             eax, eax;                            je    .Lscan_enter_α_821_1
                        cmp              eax, -1;                             je    .Lscan_enter_α_821_1
                        mov              r13, qword ptr [rbp + 616]
                        mov              r15d, eax;                           jmp   .Lscan_enter_α_821_2
.Lscan_enter_α_821_1:   mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              edx, 2
                        call             rt_icn_subject_coerce@PLT
.Lgcsite_options_35:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_34:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_821_999
                        add              rsp, 32;                             jmp   n00182_var_β
.Lscan_enter_α_821_999: mov              r13, rax
                        mov              r15, rdx
.Lscan_enter_α_821_2:   xor              r14d, r14d
.Lscan_enter_α_821_50:  mov              rcx, r15
                        add              rcx, 1
                        mov              rax, qword ptr [rsp + 48]
                        cmp              al, 0;                               jne   .Lscan_enter_α_821_30
                        mov              rax, 1
                        mov              rdx, qword ptr [rbp + 608]
                        cmp              dl, 0;                               jne   .Lscan_enter_α_821_38
                        mov              rax, qword ptr [rsp + 16]
                        add              rax, 1
.Lscan_enter_α_821_38:                                                        jmp   .Lscan_enter_α_821_32
.Lscan_enter_α_821_30:  cmp              al, 3;                               jne   .Lscan_enter_α_821_31
                        mov              rax, qword ptr [rsp + 56];           jmp   .Lscan_enter_α_821_33
.Lscan_enter_α_821_31:  mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        call             rt_icn_window_pos@PLT
.Lgcsite_options_33:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll x86_icn.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_32:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      test             rdx, rdx;                            je    .Lscan_enter_α_821_35
                        mov              rcx, r15
                        add              rcx, 1
.Lscan_enter_α_821_33:  test             rax, rax;                            jg    .Lscan_enter_α_821_34
                        add              rax, rcx
.Lscan_enter_α_821_34:  cmp              rax, 1;                              jl    .Lscan_enter_α_821_35
                        cmp              rax, rcx;                            jg    .Lscan_enter_α_821_35
.Lscan_enter_α_821_32:  mov              r14, rax
                        mov              rcx, r15
                        add              rcx, 1
                        mov              rax, qword ptr [rsp + 32]
                        cmp              al, 0;                               jne   .Lscan_enter_α_821_40
                        mov              rax, rcx;                            jmp   .Lscan_enter_α_821_42
.Lscan_enter_α_821_40:  cmp              al, 3;                               jne   .Lscan_enter_α_821_41
                        mov              rax, qword ptr [rsp + 40];           jmp   .Lscan_enter_α_821_43
.Lscan_enter_α_821_41:  mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             rt_icn_window_pos@PLT
.Lgcsite_options_31:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll x86_icn.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_30:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      test             rdx, rdx;                            je    .Lscan_enter_α_821_35
                        mov              rcx, r15
                        add              rcx, 1
.Lscan_enter_α_821_43:  test             rax, rax;                            jg    .Lscan_enter_α_821_44
                        add              rax, rcx
.Lscan_enter_α_821_44:  cmp              rax, 1;                              jl    .Lscan_enter_α_821_35
                        cmp              rax, rcx;                            jg    .Lscan_enter_α_821_35
.Lscan_enter_α_821_42:  mov              rdx, rax
                        mov              rax, r14
                        cmp              rax, rdx;                            jle   .Lscan_enter_α_821_36
                        mov              rcx, rax
                        mov              rax, rdx
                        mov              rdx, rcx
.Lscan_enter_α_821_36:  sub              rax, 1
                        mov              r14, rax
                        sub              rdx, 1
                        mov              r15, rdx;                            jmp   .Lscan_enter_α_821_37
.Lscan_enter_α_821_35:  mov              r13, qword ptr [rsp + 8]
                        mov              r14, qword ptr [rsp + 16]
                        mov              r15, qword ptr [rsp + 24]
                        add              rsp, 32;                             jmp   n00182_var_β
.Lscan_enter_α_821_37:                                                        jmp   n00184_var_ref_α
                        .size            n00183_scan_enter_bx, .-n00183_scan_enter_bx
                        .type            n00184_var_ref_bx, @function
n00184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00184_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 160]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00185_deref_α
                        .size            n00184_var_ref_bx, .-n00184_var_ref_bx
                        .type            n00185_deref_bx, @function
n00185_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00185_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_37:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_824_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00186_scan_α
.Lderef_α_824_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_36:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00187_line_mark_α
                        .size            n00185_deref_bx, .-n00185_deref_bx
                        .type            n00187_line_mark_bx, @function
n00187_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_825_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_825_stno
                        .long            0
                        .long            115
                        .quad            .Lstnof1
                        .popsection
n00187_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 115;          jmp   n00188_scan_find_α
                        .size            n00187_line_mark_bx, .-n00187_line_mark_bx
                        .type            n00188_scan_find_bx, @function
n00188_scan_find_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00188_scan_find_α:       sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        cmp              al, 2;                               je    .Lscan_find_α_828_2
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              edx, 103
                        sub              rsp, 8
                        call             core_icn_argtype_check@PLT
.Lgcsite_options_41:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        add              rsp, 8
                        test             eax, eax;                            je    .Lscan_find_α_828_998
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00186_scan_α
.Lscan_find_α_828_998:  push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_40:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:
.Lscan_find_α_828_2:    mov              qword ptr [rsp + 16], r14
.Lscan_find_α_828_7:    mov              rdx, qword ptr [rsp + 32]
                        cmp              dl, 2;                               jne   .Lscan_find_α_828_5
                        shr              rdx, 32
                        cmp              edx, -1;                             je    .Lscan_find_α_828_5
                        mov              rsi, qword ptr [rsp + 40];           jmp   .Lscan_find_α_828_0
.Lscan_find_α_828_5:    mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        sub              rsp, 8
                        call             rt_icn_needle_coerce@PLT
.Lgcsite_options_39:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        mov              dword ptr [rsp + 16], 2
                        mov              dword ptr [rsp + 20], edx
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_38:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              rax, qword ptr [rsp + 24]
                        mov              edx, dword ptr [rsp + 20]
                        add              rsp, 32
1:                      mov              rsi, rax
.Lscan_find_α_828_0:    mov              rax, qword ptr [rsp + 16]
                        mov              rcx, r15
                        sub              rcx, rdx
                        cmp              rax, rcx;                            jle   .Lscan_find_α_828_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00186_scan_α
.Lscan_find_α_828_999:  mov              rdi, r13
                        add              rdi, rax
                        xor              rcx, rcx
.Lscan_find_α_828_3:    cmp              rcx, rdx;                            jge   .Lscan_find_α_828_4
                        movzx            r10d, byte ptr [rsi + rcx]
                        movzx            r11d, byte ptr [rdi + rcx]
                        cmp              r10d, r11d;                          jne   .Lscan_find_α_828_1
                        inc              rcx;                                 jmp   .Lscan_find_α_828_3
.Lscan_find_α_828_4:    mov              qword ptr [rsp + 0], 3
                        add              rax, 1
                        mov              qword ptr [rsp + 8], rax;            jmp   n00189_scan_α
.Lscan_find_α_828_1:    inc              qword ptr [rsp + 16];                jmp   .Lscan_find_α_828_0
n00188_scan_find_β:       inc              qword ptr [rsp + 16];                jmp   .Lscan_find_α_828_7
                        .size            n00188_scan_find_bx, .-n00188_scan_find_bx
                        .type            n00189_scan_bx, @function
n00189_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00189_scan_α:            sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 120]
                        mov              r14, qword ptr [rsp + 128]
                        mov              r15, qword ptr [rsp + 136];          jmp   n00190_conjunction_α
n00189_scan_β:            mov              qword ptr [rsp + 120], r13
                        mov              qword ptr [rsp + 128], r14
                        mov              qword ptr [rsp + 136], r15
                        mov              r13, qword ptr [rsp + 24]
                        mov              r15d, dword ptr [rsp + 20]
                        mov              r14d, dword ptr [rsp + 32]
                        add              rsp, 48;                             jmp   n00188_scan_find_β
                        .size            n00189_scan_bx, .-n00189_scan_bx
                        .type            n00190_conjunction_bx, @function
n00190_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00190_conjunction_α:                                                           jmp   n00191_lit_integer_α
n00190_conjunction_β:                                                           jmp   .Ldisjunction_ω_581_af
                        .size            n00190_conjunction_bx, .-n00190_conjunction_bx
                        .type            n00191_lit_integer_bx, @function
n00191_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00191_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00192_coerce_numeric_α
.Llit_integer_α_832_0:  .quad            1
                        .size            n00191_lit_integer_bx, .-n00191_lit_integer_bx
                        .type            n00192_coerce_numeric_bx, @function
n00192_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00192_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # scan
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_834_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_834_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_834_0
.Lcoerce_numeric_α_834_1:
                        mov              rax, qword ptr [rsp + 32]            # scan
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # scan
                        mov              qword ptr [rsp + 8], rax;            jmp   n00193_binop_α
.Lcoerce_numeric_α_834_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_options_43:    push             rax                                  # gc_poll bb_coerce_numeric.cpp:48
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_42:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_834_999
                        add              rsp, 16
                        add              rsp, 192;                            jmp   .Ldisjunction_ω_581_af
.Lcoerce_numeric_α_834_999:
                                                                              jmp   n00193_binop_α
n00192_coerce_numeric_β:  add              rsp, 16
                        add              rsp, 192;                            jmp   .Ldisjunction_ω_581_af
                        .size            n00192_coerce_numeric_bx, .-n00192_coerce_numeric_bx
                        .type            n00193_binop_bx, @function
n00193_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00193_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 16]            # coerce_numeric
                        mov              rax, qword ptr [rsp + 24]
                        cmp              cl, 3;                               jne   .Lbinop_α_835_2
                        add              rax, 1;                              jo    .Lbinop_α_835_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_835_7
.Lbinop_α_835_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_835_0
                        mov              rsi, qword ptr [rsp + 24]            # coerce_numeric
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_835_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_835_4
.Lbinop_α_835_3:        movq             xmm0, rsi
.Lbinop_α_835_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_835_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_835_7:                                                              jmp   n00194_assign_α
.Lbinop_α_835_0:        mov              rdi, qword ptr [rsp + 16]            # coerce_numeric
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        call             rt_add_big@PLT
.Lgcsite_options_45:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lbinop_α_835_999
                        add              rsp, 16;                             jmp   n00192_coerce_numeric_β
.Lbinop_α_835_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:262
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_44:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00194_assign_α
n00193_binop_β:           add              rsp, 16;                             jmp   n00192_coerce_numeric_β
                        .size            n00193_binop_bx, .-n00193_binop_bx
                        .type            n00194_assign_bx, @function
n00194_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00194_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n00195_line_mark_α
                        .size            n00194_assign_bx, .-n00194_assign_bx
                        .type            n00195_line_mark_bx, @function
n00195_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_837_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_837_stno
                        .long            0
                        .long            116
                        .quad            .Lstnof1
                        .popsection
n00195_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 116;          jmp   n00196_var_ref_α
                        .size            n00195_line_mark_bx, .-n00195_line_mark_bx
                        .type            n00196_var_ref_bx, @function
n00196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00196_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 16]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00197_var_α
                        .size            n00196_var_ref_bx, .-n00196_var_ref_bx
                        .type            n00197_var_bx, @function
n00197_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00197_var_α:                                                                   jmp   n00198_subscript_α
                        .size            n00197_var_bx, .-n00197_var_bx
                        .type            n00198_subscript_bx, @function
n00198_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00198_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 80]            # var
                        mov              rcx, qword ptr [rbp + 88]
                        call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_options_47:    cmp              al, 104;                             jne   .Lsubscript_α_843_999
                        add              rsp, 16
                        add              rsp, 240;                            jmp   n00171_unmark_α
.Lsubscript_α_843_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:83
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_46:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00172_disjunction_α
                        .size            n00198_subscript_bx, .-n00198_subscript_bx
                        .type            n00172_disjunction_bx, @function
n00172_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00172_disjunction_α:     mov              qword ptr [rbp + 240], 0
                        mov              qword ptr [rbp + 248], 0
                        mov              dword ptr [rbp + 256], 0
                        mov              qword ptr [rbp + 264], rsp;          jmp   n00199_lit_charset_α
.Ldisjunction_γ_608_as: mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_845_0
                                                                              jmp   n00200_assign_var_α
.Ldisjunction_α_845_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_845_1
                                                                              jmp   n00200_assign_var_α
.Ldisjunction_α_845_1:                                                        jmp   n00200_assign_var_α
n00172_disjunction_β:     mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 0;                              je    n00201_disjunction_β
                        add              rsp, 272;                            jmp   n00171_unmark_α
.Ldisjunction_γ_608_af:
.Ldisjunction_ω_608_af: add              dword ptr [rbp + 256], 1
                        mov              eax, dword ptr [rbp + 256]
                        cmp              eax, 1;                              je    n00202_lit_integer_α
                        add              rsp, 256;                            jmp   n00171_unmark_α
                        .size            n00172_disjunction_bx, .-n00172_disjunction_bx
                        .type            n00200_assign_var_bx, @function
n00200_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00200_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 240]           # disjunction
                        mov              rcx, qword ptr [rbp + 248]
                        call             qword ptr [rip + rt_assign_var_strict@GOTPCREL]
.Lgcsite_options_49:    cmp              al, 104;                             jne   .Lassign_var_α_846_999
                        add              rsp, 16
                        add              rsp, 256;                            jmp   n00171_unmark_α
.Lassign_var_α_846_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:33
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_48:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 216], rax;          jmp   .Ldisjunction_γ_581_as
n00200_assign_var_β:      add              rsp, 16
                        add              rsp, 256;                            jmp   n00171_unmark_α
                        .size            n00200_assign_var_bx, .-n00200_assign_var_bx
                        .type            n00202_lit_integer_bx, @function
n00202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00202_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_847_0]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 248], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_608_as
n00202_lit_integer_β:     add              rsp, 16
                        add              rsp, 256;                            jmp   n00171_unmark_α
.Llit_integer_α_847_0:  .quad            1
                        .size            n00202_lit_integer_bx, .-n00202_lit_integer_bx
                        .type            n00199_lit_charset_bx, @function
n00199_lit_charset_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00199_lit_charset_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 4294967295
                        mov              rax, qword ptr [rip + .Llit_charset_α_848_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00203_assign_α
n00199_lit_charset_β:     add              rsp, 16;                             jmp   .Ldisjunction_ω_608_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_charset_α_848_0: .quad .Llit_charset_α_848_0_s; .popsection
                        .quad            14260561861161254915
                        .quad            288309540988911616
                        .quad            0
                        .quad            0
                        .quad            0
.Llit_charset_α_848_0_s:
                        .string          "+.:"
                        .size            n00199_lit_charset_bx, .-n00199_lit_charset_bx
                        .type            n00203_assign_bx, @function
n00203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00203_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_charset
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n00204_var_ref_α
n00203_assign_β:          add              rsp, 16;                             jmp   .Ldisjunction_ω_608_af
                        .size            n00203_assign_bx, .-n00203_assign_bx
                        .type            n00204_var_ref_bx, @function
n00204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00204_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 608]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00205_var_α
n00204_var_ref_β:         add              rsp, 16;                             jmp   n00203_assign_β
                        .size            n00204_var_ref_bx, .-n00204_var_ref_bx
                        .type            n00205_var_bx, @function
n00205_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00205_var_α:                                                                   jmp   n00206_subscript_α
n00205_var_β:                                                                   jmp   n00204_var_ref_β
                        .size            n00205_var_bx, .-n00205_var_bx
                        .type            n00206_subscript_bx, @function
n00206_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00206_subscript_α:       sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_854_1:    mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rbp + 144]           # var
                        mov              rcx, qword ptr [rbp + 152]
                        test             eax, eax;                            jne   .Lsubscript_α_854_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_options_53:    cmp              al, 255;                             jne   .Lsubscript_α_854_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_854_1
.Lsubscript_α_854_4:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_options_52:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_854_3
.Lsubscript_α_854_2:    call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_options_51:    push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_options_50:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_854_3:    cmp              al, 104;                             jne   .Lsubscript_α_854_999
                        add              rsp, 16;                             jmp   n00205_var_β
.Lsubscript_α_854_999:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00207_deref_α
                        .size            n00206_subscript_bx, .-n00206_subscript_bx
                        .type            n00207_deref_bx, @function
n00207_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00207_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_55:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_855_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_608_af
.Lderef_α_855_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_54:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00208_assign_α
n00207_deref_β:           add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_608_af
                        .size            n00207_deref_bx, .-n00207_deref_bx
                        .type            n00208_assign_bx, @function
n00208_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00208_assign_α:          mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n00209_var_α
n00208_assign_β:                                                                jmp   n00207_deref_β
                        .size            n00208_assign_bx, .-n00208_assign_bx
                        .type            n00209_var_bx, @function
n00209_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00209_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00210_var_α
n00209_var_β:             add              rsp, 16;                             jmp   n00208_assign_β
                        .size            n00209_var_bx, .-n00209_var_bx
                        .type            n00210_var_bx, @function
n00210_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00210_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00211_scan_enter_α
n00210_var_β:             add              rsp, 16;                             jmp   n00209_var_β
                        .size            n00210_var_bx, .-n00210_var_bx
                        .type            n00211_scan_enter_bx, @function
n00211_scan_enter_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00211_scan_enter_α:      sub              rsp, 32
                        mov              rcx, 2
                        mov              qword ptr [rsp + 0], rcx
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], r14
                        mov              qword ptr [rsp + 24], r15
                        mov              rax, qword ptr [rbp + 96]
                        cmp              al, 0;                               je    .Lscan_enter_α_860_50
                        mov              rax, qword ptr [rbp + 96]
                        cmp              eax, 2;                              jne   .Lscan_enter_α_860_1
                        shr              rax, 32
                        test             eax, eax;                            je    .Lscan_enter_α_860_1
                        cmp              eax, -1;                             je    .Lscan_enter_α_860_1
                        mov              r13, qword ptr [rbp + 104]
                        mov              r15d, eax;                           jmp   .Lscan_enter_α_860_2
.Lscan_enter_α_860_1:   mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              edx, 2
                        call             rt_icn_subject_coerce@PLT
.Lgcsite_options_61:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_60:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 8]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      test             rax, rax;                            jne   .Lscan_enter_α_860_999
                        add              rsp, 32;                             jmp   n00210_var_β
.Lscan_enter_α_860_999: mov              r13, rax
                        mov              r15, rdx
.Lscan_enter_α_860_2:   xor              r14d, r14d
.Lscan_enter_α_860_50:  mov              rcx, r15
                        add              rcx, 1
                        mov              rax, qword ptr [rsp + 48]
                        cmp              al, 0;                               jne   .Lscan_enter_α_860_30
                        mov              rax, 1
                        mov              rdx, qword ptr [rbp + 96]
                        cmp              dl, 0;                               jne   .Lscan_enter_α_860_38
                        mov              rax, qword ptr [rsp + 16]
                        add              rax, 1
.Lscan_enter_α_860_38:                                                        jmp   .Lscan_enter_α_860_32
.Lscan_enter_α_860_30:  cmp              al, 3;                               jne   .Lscan_enter_α_860_31
                        mov              rax, qword ptr [rsp + 56];           jmp   .Lscan_enter_α_860_33
.Lscan_enter_α_860_31:  mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        call             rt_icn_window_pos@PLT
.Lgcsite_options_59:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll x86_icn.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_58:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      test             rdx, rdx;                            je    .Lscan_enter_α_860_35
                        mov              rcx, r15
                        add              rcx, 1
.Lscan_enter_α_860_33:  test             rax, rax;                            jg    .Lscan_enter_α_860_34
                        add              rax, rcx
.Lscan_enter_α_860_34:  cmp              rax, 1;                              jl    .Lscan_enter_α_860_35
                        cmp              rax, rcx;                            jg    .Lscan_enter_α_860_35
.Lscan_enter_α_860_32:  mov              r14, rax
                        mov              rcx, r15
                        add              rcx, 1
                        mov              rax, qword ptr [rsp + 32]
                        cmp              al, 0;                               jne   .Lscan_enter_α_860_40
                        mov              rax, rcx;                            jmp   .Lscan_enter_α_860_42
.Lscan_enter_α_860_40:  cmp              al, 3;                               jne   .Lscan_enter_α_860_41
                        mov              rax, qword ptr [rsp + 40];           jmp   .Lscan_enter_α_860_43
.Lscan_enter_α_860_41:  mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             rt_icn_window_pos@PLT
.Lgcsite_options_57:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        push             rax                                  # gc_poll x86_icn.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_56:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      test             rdx, rdx;                            je    .Lscan_enter_α_860_35
                        mov              rcx, r15
                        add              rcx, 1
.Lscan_enter_α_860_43:  test             rax, rax;                            jg    .Lscan_enter_α_860_44
                        add              rax, rcx
.Lscan_enter_α_860_44:  cmp              rax, 1;                              jl    .Lscan_enter_α_860_35
                        cmp              rax, rcx;                            jg    .Lscan_enter_α_860_35
.Lscan_enter_α_860_42:  mov              rdx, rax
                        mov              rax, r14
                        cmp              rax, rdx;                            jle   .Lscan_enter_α_860_36
                        mov              rcx, rax
                        mov              rax, rdx
                        mov              rdx, rcx
.Lscan_enter_α_860_36:  sub              rax, 1
                        mov              r14, rax
                        sub              rdx, 1
                        mov              r15, rdx;                            jmp   .Lscan_enter_α_860_37
.Lscan_enter_α_860_35:  mov              r13, qword ptr [rsp + 8]
                        mov              r14, qword ptr [rsp + 16]
                        mov              r15, qword ptr [rsp + 24]
                        add              rsp, 32;                             jmp   n00210_var_β
.Lscan_enter_α_860_37:                                                        jmp   n00212_var_ref_α
                        .size            n00211_scan_enter_bx, .-n00211_scan_enter_bx
                        .type            n00212_var_ref_bx, @function
n00212_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00212_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 128]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00213_deref_α
                        .size            n00212_var_ref_bx, .-n00212_var_ref_bx
                        .type            n00213_deref_bx, @function
n00213_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00213_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_63:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_863_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00214_scan_α
.Lderef_α_863_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_62:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00215_line_mark_α
                        .size            n00213_deref_bx, .-n00213_deref_bx
                        .type            n00215_line_mark_bx, @function
n00215_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_864_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_864_stno
                        .long            0
                        .long            117
                        .quad            .Lstnof1
                        .popsection
n00215_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 117;          jmp   n00216_scan_any_α
                        .size            n00215_line_mark_bx, .-n00215_line_mark_bx
                        .type            n00216_scan_any_bx, @function
n00216_scan_any_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00216_scan_any_α:        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 16]
                        cmp              al, 2;                               je    .Lscan_any_α_867_2
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              edx, 104
                        sub              rsp, 8
                        call             core_icn_argtype_check@PLT
.Lgcsite_options_70:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        add              rsp, 8
                        test             eax, eax;                            je    .Lscan_any_α_867_995
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00214_scan_α
.Lscan_any_α_867_995:   push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_69:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:
.Lscan_any_α_867_2:     mov              eax, r14d
                        cmp              eax, r15d;                           jl    .Lscan_any_α_867_996
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00214_scan_α
.Lscan_any_α_867_996:   mov              rdx, qword ptr [rsp + 16]
                        cmp              dl, 2;                               jne   .Lscan_any_α_867_5
                        shr              rdx, 32
                        cmp              edx, -1;                             je    .Lscan_any_α_867_4
                        mov              rsi, qword ptr [rsp + 24]
                        movsxd           rcx, r14d
                        movzx            edi, byte ptr [r13+rcx]
                        call             rt_sg_member@PLT
.Lgcsite_options_68:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        test             eax, eax;                            jne   .Lscan_any_α_867_997
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00214_scan_α
.Lscan_any_α_867_997:                                                         jmp   .Lscan_any_α_867_6
.Lscan_any_α_867_4:     mov              rdi, qword ptr [rsp + 24]
                        sub              rdi, 32
                        movsxd           rcx, r14d
                        movzx            esi, byte ptr [r13+rcx]
                        bt               dword ptr [rdi], esi;                jb    .Lscan_any_α_867_998
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00214_scan_α
.Lscan_any_α_867_998:                                                         jmp   .Lscan_any_α_867_6
.Lscan_any_α_867_5:     mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        sub              rsp, 8
                        call             rt_icn_needle_coerce@PLT
.Lgcsite_options_67:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        mov              dword ptr [rsp + 16], 2
                        mov              dword ptr [rsp + 20], edx
                        mov              qword ptr [rsp + 24], rax
                        lea              rdi, [rsp + 0]
                        mov              esi, 2
                        mov              edx, 0
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_66:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              r15d, dword ptr [rsp + 4]
                        mov              rax, qword ptr [rsp + 24]
                        mov              edx, dword ptr [rsp + 20]
                        add              rsp, 32
1:                      mov              rsi, rax
                        movsxd           rcx, r14d
                        movzx            edi, byte ptr [r13+rcx]
                        call             rt_sg_member@PLT
.Lgcsite_options_65:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        test             eax, eax;                            jne   .Lscan_any_α_867_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00214_scan_α
.Lscan_any_α_867_999:
.Lscan_any_α_867_6:     mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax
                        push             rax                                  # gc_poll bb_scan_any.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_64:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00217_scan_α
                        .size            n00216_scan_any_bx, .-n00216_scan_any_bx
                        .type            n00217_scan_bx, @function
n00217_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00217_scan_α:            sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 104]
                        mov              r14, qword ptr [rsp + 112]
                        mov              r15, qword ptr [rsp + 120];          jmp   n00218_conjunction_α
n00217_scan_β:            add              rsp, 48
                        add              rsp, 176;                            jmp   .Ldisjunction_ω_608_af
                        .size            n00217_scan_bx, .-n00217_scan_bx
                        .type            n00218_conjunction_bx, @function
n00218_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00218_conjunction_α:                                                           jmp   n00219_line_mark_α
n00218_conjunction_β:                                                           jmp   .Ldisjunction_ω_608_af
                        .size            n00218_conjunction_bx, .-n00218_conjunction_bx
                        .type            n00219_line_mark_bx, @function
n00219_line_mark_bx:
#=======================================================================================================================
# nstmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 118 0
.Lline_mark_α_871_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_871_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00219_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 118;          jmp   n00220_disjunction_α
                        .size            n00219_line_mark_bx, .-n00219_line_mark_bx
                        .type            n00220_disjunction_bx, @function
n00220_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00220_disjunction_α:     mov              qword ptr [rbp + 304], 0
                        mov              qword ptr [rbp + 312], 0
                        mov              dword ptr [rbp + 320], 0;            jmp   n00221_lit_string_α
.Ldisjunction_γ_628_as: mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_874_0
                                                                              jmp   n00222_assign_α
.Ldisjunction_α_874_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_874_1
                                                                              jmp   n00222_assign_α
.Ldisjunction_α_874_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_874_2
                                                                              jmp   n00222_assign_α
.Ldisjunction_α_874_2:                                                        jmp   n00222_assign_α
n00220_disjunction_β:     mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 0;                              jne   .Ldisjunction_β_874_303
                        add              rsp, 16;                             jmp   n00223_scan_tab_β
.Ldisjunction_β_874_303:
                        cmp              eax, 1;                              jne   .Ldisjunction_β_874_304
                        add              rsp, 80;                             jmp   .Ldisjunction_ω_628_af
.Ldisjunction_β_874_304:
                        add              rsp, 80;                             jmp   .Ldisjunction_ω_628_af
.Ldisjunction_γ_628_af:
.Ldisjunction_ω_628_af: add              dword ptr [rbp + 320], 1
                        mov              eax, dword ptr [rbp + 320]
                        cmp              eax, 1;                              je    n00224_var_ref_α
                        cmp              eax, 2;                              je    n00225_lit_string_α
                                                                              jmp   n00226_line_mark_α
                        .size            n00220_disjunction_bx, .-n00220_disjunction_bx
                        .type            n00222_assign_bx, @function
n00222_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00222_assign_α:          mov              rax, qword ptr [rbp + 304]           # disjunction
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        add              rsp, 80;                             jmp   n00226_line_mark_α
                        .size            n00222_assign_bx, .-n00222_assign_bx
                        .type            n00226_line_mark_bx, @function
n00226_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 120 0
.Lline_mark_α_876_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_876_stno
                        .long            0
                        .long            120
                        .quad            .Lstnof1
                        .popsection
n00226_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 120;          jmp   n00227_var_α
                        .size            n00226_line_mark_bx, .-n00226_line_mark_bx
                        .type            n00227_var_bx, @function
n00227_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00227_var_α:                                                                   jmp   n00201_disjunction_α
                        .size            n00227_var_bx, .-n00227_var_bx
                        .type            n00201_disjunction_bx, @function
n00201_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00201_disjunction_α:     mov              qword ptr [rbp + 272], 0
                        mov              qword ptr [rbp + 280], 0
                        mov              dword ptr [rbp + 288], 0;            jmp   n00228_lit_string_α
.Ldisjunction_γ_632_as: mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_881_0
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00229_conjunction_α
.Ldisjunction_α_881_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_881_1
                                                                              jmp   n00229_conjunction_α
.Ldisjunction_α_881_1:  cmp              eax, 2;                              jne   .Ldisjunction_α_881_2
                                                                              jmp   n00229_conjunction_α
.Ldisjunction_α_881_2:                                                        jmp   n00229_conjunction_α
n00201_disjunction_β:     mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 0;                              je    n00171_unmark_α
                        cmp              eax, 1;                              je    n00230_disjunction_β
                                                                              jmp   n00231_disjunction_β
.Ldisjunction_γ_632_af:
.Ldisjunction_ω_632_af: add              dword ptr [rbp + 288], 1
                        mov              eax, dword ptr [rbp + 288]
                        cmp              eax, 1;                              je    n00232_lit_string_α
                        cmp              eax, 2;                              je    n00233_lit_string_α
                        add              rsp, 480;                            jmp   n00171_unmark_α
                        .size            n00201_disjunction_bx, .-n00201_disjunction_bx
                        .type            n00229_conjunction_bx, @function
n00229_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00229_conjunction_α:     mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        add              rsp, 288;                            jmp   .Ldisjunction_γ_608_as
n00229_conjunction_β:     mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        add              rsp, 288;                            jmp   n00171_unmark_α
                        .size            n00229_conjunction_bx, .-n00229_conjunction_bx
                        .type            n00233_lit_string_bx, @function
n00233_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00233_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_883_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00234_binop_test_α
n00233_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_632_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_883_0: .quad .Llit_string_α_883_0_s; .popsection
.Llit_string_α_883_0_s: .string          "."
                        .size            n00233_lit_string_bx, .-n00233_lit_string_bx
                        .type            n00234_binop_test_bx, @function
n00234_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00234_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_884_2:   mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_73:    push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_72:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_884_999
                        add              rsp, 16;                             jmp   n00233_lit_string_β
.Lbinop_test_α_884_999: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_71:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00235_line_mark_α
                        .size            n00234_binop_test_bx, .-n00234_binop_test_bx
                        .type            n00235_line_mark_bx, @function
n00235_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_885_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_885_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00235_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 124;          jmp   n00231_disjunction_α
                        .size            n00235_line_mark_bx, .-n00235_line_mark_bx
                        .type            n00231_disjunction_bx, @function
n00231_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00231_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00236_var_ref_α
.Ldisjunction_γ_637_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_888_0
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_632_as
.Ldisjunction_α_888_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_888_1
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_632_as
.Ldisjunction_α_888_1:  mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_632_as
n00231_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_637_af
                                                                              jmp   .Ldisjunction_ω_637_af
.Ldisjunction_γ_637_af:
.Ldisjunction_ω_637_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00237_lit_string_α
                        add              rsp, 32
                        add              rsp, 512;                            jmp   n00171_unmark_α
                        .size            n00231_disjunction_bx, .-n00231_disjunction_bx
                        .type            n00237_lit_string_bx, @function
n00237_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00237_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_889_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00238_var_ref_α
n00237_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_637_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_889_0: .quad .Llit_string_α_889_0_s; .popsection
.Llit_string_α_889_0_s: .string          "-"
                        .size            n00237_lit_string_bx, .-n00237_lit_string_bx
                        .type            n00238_var_ref_bx, @function
n00238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00238_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00239_lit_string_α
n00238_var_ref_β:         add              rsp, 16;                             jmp   n00237_lit_string_β
                        .size            n00238_var_ref_bx, .-n00238_var_ref_bx
                        .type            n00239_lit_string_bx, @function
n00239_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00239_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_892_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00240_deref_α
n00239_lit_string_β:      add              rsp, 16;                             jmp   n00238_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_892_0: .quad .Llit_string_α_892_0_s; .popsection
.Llit_string_α_892_0_s: .string          " needs numeric parameter"
                        .size            n00239_lit_string_bx, .-n00239_lit_string_bx
                        .type            n00240_deref_bx, @function
n00240_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00240_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_75:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_893_999
                        add              rsp, 16;                             jmp   n00239_lit_string_β
.Lderef_α_893_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_74:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00241_line_mark_α
n00240_deref_β:           add              rsp, 16;                             jmp   n00239_lit_string_β
                        .size            n00240_deref_bx, .-n00240_deref_bx
                        .type            n00241_line_mark_bx, @function
n00241_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_894_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_894_stno
                        .long            0
                        .long            125
                        .quad            .Lstnof1
                        .popsection
n00241_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 125;          jmp   n00242_call_byname_α
                        .size            n00241_line_mark_bx, .-n00241_line_mark_bx
                        .type            n00242_call_byname_bx, @function
n00242_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00242_call_byname_α:     sub              rsp, 64
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd897: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd897]
                        lea              rsi, [rsp + 16]
                        mov              edx, 3
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_76:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_77:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_896_999
                        add              rsp, 64;                             jmp   n00240_deref_β
.Lcall_byname_α_896_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 136], rax
                        add              rsp, 128;                            jmp   .Ldisjunction_γ_637_as
n00242_call_byname_β:     add              rsp, 64;                             jmp   n00240_deref_β
                        .size            n00242_call_byname_bx, .-n00242_call_byname_bx
                        .type            n00236_var_ref_bx, @function
n00236_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00236_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 112]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00243_deref_α
n00236_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_637_af
                        .size            n00236_var_ref_bx, .-n00236_var_ref_bx
                        .type            n00243_deref_bx, @function
n00243_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00243_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_79:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_900_999
                        add              rsp, 16;                             jmp   n00236_var_ref_β
.Lderef_α_900_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_78:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00244_line_mark_α
n00243_deref_β:           add              rsp, 16;                             jmp   n00236_var_ref_β
                        .size            n00243_deref_bx, .-n00243_deref_bx
                        .type            n00244_line_mark_bx, @function
n00244_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_901_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_901_stno
                        .long            0
                        .long            124
                        .quad            .Lstnof1
                        .popsection
n00244_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 124;          jmp   n00245_call_byname_α
                        .size            n00244_line_mark_bx, .-n00244_line_mark_bx
                        .type            n00245_call_byname_bx, @function
n00245_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00245_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd904: .string          "real"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd904]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 262297
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_80:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_81:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_903_999
                        add              rsp, 32;                             jmp   n00243_deref_β
.Lcall_byname_α_903_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 72], rax
                        add              rsp, 64;                             jmp   .Ldisjunction_γ_637_as
n00245_call_byname_β:     add              rsp, 32;                             jmp   n00243_deref_β
                        .size            n00245_call_byname_bx, .-n00245_call_byname_bx
                        .type            n00232_lit_string_bx, @function
n00232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00232_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_905_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00246_binop_test_α
n00232_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_632_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_905_0: .quad .Llit_string_α_905_0_s; .popsection
.Llit_string_α_905_0_s: .string          "+"
                        .size            n00232_lit_string_bx, .-n00232_lit_string_bx
                        .type            n00246_binop_test_bx, @function
n00246_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00246_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_906_2:   mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_84:    push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_83:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_906_999
                        add              rsp, 16;                             jmp   n00232_lit_string_β
.Lbinop_test_α_906_999: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_82:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00247_line_mark_α
                        .size            n00246_binop_test_bx, .-n00246_binop_test_bx
                        .type            n00247_line_mark_bx, @function
n00247_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_907_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_907_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00247_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 122;          jmp   n00230_disjunction_α
                        .size            n00247_line_mark_bx, .-n00247_line_mark_bx
                        .type            n00230_disjunction_bx, @function
n00230_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00230_disjunction_α:     sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00248_var_ref_α
.Ldisjunction_γ_651_as: mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_910_0
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_632_as
.Ldisjunction_α_910_0:  cmp              eax, 1;                              jne   .Ldisjunction_α_910_1
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_632_as
.Ldisjunction_α_910_1:  mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 280], rax;          jmp   .Ldisjunction_γ_632_as
n00230_disjunction_β:     mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_651_af
                                                                              jmp   .Ldisjunction_ω_651_af
.Ldisjunction_γ_651_af:
.Ldisjunction_ω_651_af: add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00249_lit_string_α
                        add              rsp, 32
                        add              rsp, 512;                            jmp   n00171_unmark_α
                        .size            n00230_disjunction_bx, .-n00230_disjunction_bx
                        .type            n00249_lit_string_bx, @function
n00249_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00249_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_911_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00250_var_ref_α
n00249_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_651_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_911_0: .quad .Llit_string_α_911_0_s; .popsection
.Llit_string_α_911_0_s: .string          "-"
                        .size            n00249_lit_string_bx, .-n00249_lit_string_bx
                        .type            n00250_var_ref_bx, @function
n00250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00250_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00251_lit_string_α
n00250_var_ref_β:         add              rsp, 16;                             jmp   n00249_lit_string_β
                        .size            n00250_var_ref_bx, .-n00250_var_ref_bx
                        .type            n00251_lit_string_bx, @function
n00251_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00251_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_914_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00252_deref_α
n00251_lit_string_β:      add              rsp, 16;                             jmp   n00250_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_914_0: .quad .Llit_string_α_914_0_s; .popsection
.Llit_string_α_914_0_s: .string          " needs numeric parameter"
                        .size            n00251_lit_string_bx, .-n00251_lit_string_bx
                        .type            n00252_deref_bx, @function
n00252_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00252_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_options_86:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_915_999
                        add              rsp, 16;                             jmp   n00251_lit_string_β
.Lderef_α_915_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_85:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00253_line_mark_α
n00252_deref_β:           add              rsp, 16;                             jmp   n00251_lit_string_β
                        .size            n00252_deref_bx, .-n00252_deref_bx
                        .type            n00253_line_mark_bx, @function
n00253_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_916_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_916_stno
                        .long            0
                        .long            123
                        .quad            .Lstnof1
                        .popsection
n00253_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 123;          jmp   n00254_call_byname_α
                        .size            n00253_line_mark_bx, .-n00253_line_mark_bx
                        .type            n00254_call_byname_bx, @function
n00254_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00254_call_byname_α:     sub              rsp, 64
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 48], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 56], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd919: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd919]
                        lea              rsi, [rsp + 16]
                        mov              edx, 3
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_87:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_88:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_918_999
                        add              rsp, 64;                             jmp   n00252_deref_β
.Lcall_byname_α_918_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 136], rax
                        add              rsp, 128;                            jmp   .Ldisjunction_γ_651_as
n00254_call_byname_β:     add              rsp, 64;                             jmp   n00252_deref_β
                        .size            n00254_call_byname_bx, .-n00254_call_byname_bx
                        .type            n00248_var_ref_bx, @function
n00248_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00248_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 112]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00255_deref_α
n00248_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_651_af
                        .size            n00248_var_ref_bx, .-n00248_var_ref_bx
                        .type            n00255_deref_bx, @function
n00255_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00255_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_90:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_922_999
                        add              rsp, 16;                             jmp   n00248_var_ref_β
.Lderef_α_922_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_89:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00256_line_mark_α
n00255_deref_β:           add              rsp, 16;                             jmp   n00248_var_ref_β
                        .size            n00255_deref_bx, .-n00255_deref_bx
                        .type            n00256_line_mark_bx, @function
n00256_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_923_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_923_stno
                        .long            0
                        .long            122
                        .quad            .Lstnof1
                        .popsection
n00256_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 122;          jmp   n00257_call_byname_α
                        .size            n00256_line_mark_bx, .-n00256_line_mark_bx
                        .type            n00257_call_byname_bx, @function
n00257_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00257_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd926: .string          "integer"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd926]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 458878
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_91:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_92:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_925_999
                        add              rsp, 32;                             jmp   n00255_deref_β
.Lcall_byname_α_925_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 64], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 72], rax
                        add              rsp, 64;                             jmp   .Ldisjunction_γ_651_as
n00257_call_byname_β:     add              rsp, 32;                             jmp   n00255_deref_β
                        .size            n00257_call_byname_bx, .-n00257_call_byname_bx
                        .type            n00228_lit_string_bx, @function
n00228_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00228_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_927_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00258_binop_test_α
n00228_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_632_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_927_0: .quad .Llit_string_α_927_0_s; .popsection
.Llit_string_α_927_0_s: .string          ":"
                        .size            n00228_lit_string_bx, .-n00228_lit_string_bx
                        .type            n00258_binop_test_bx, @function
n00258_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00258_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_928_2:   mov              rdi, qword ptr [rbp + 96]
                        mov              rsi, qword ptr [rbp + 104]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 22
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_95:    push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_94:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_928_999
                        add              rsp, 16;                             jmp   n00228_lit_string_β
.Lbinop_test_α_928_999: mov              rcx, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rcx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_93:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00259_var_α
                        .size            n00258_binop_test_bx, .-n00258_binop_test_bx
                        .type            n00259_var_bx, @function
n00259_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00259_var_α:             add              rsp, -32;                            jmp   .Ldisjunction_γ_632_as
n00259_var_β:             add              rsp, 512;                            jmp   n00171_unmark_α
                        .size            n00259_var_bx, .-n00259_var_bx
                        .type            n00225_lit_string_bx, @function
n00225_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00225_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 24
                        mov              rax, qword ptr [rip + .Llit_string_α_931_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00260_var_ref_α
n00225_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_628_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_931_0: .quad .Llit_string_α_931_0_s; .popsection
.Llit_string_α_931_0_s: .string          "No parameter following -"
                        .size            n00225_lit_string_bx, .-n00225_lit_string_bx
                        .type            n00260_var_ref_bx, @function
n00260_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00260_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 80]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00261_deref_α
n00260_var_ref_β:         add              rsp, 16;                             jmp   n00225_lit_string_β
                        .size            n00260_var_ref_bx, .-n00260_var_ref_bx
                        .type            n00261_deref_bx, @function
n00261_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00261_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_97:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_934_999
                        add              rsp, 16;                             jmp   n00260_var_ref_β
.Lderef_α_934_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_96:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00262_line_mark_α
n00261_deref_β:           add              rsp, 16;                             jmp   n00260_var_ref_β
                        .size            n00261_deref_bx, .-n00261_deref_bx
                        .type            n00262_line_mark_bx, @function
n00262_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_935_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_935_stno
                        .long            0
                        .long            119
                        .quad            .Lstnof1
                        .popsection
n00262_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 119;          jmp   n00263_call_byname_α
                        .size            n00262_line_mark_bx, .-n00262_line_mark_bx
                        .type            n00263_call_byname_bx, @function
n00263_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00263_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd938: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd938]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_98:    mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_99:    mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_937_999
                        add              rsp, 48;                             jmp   n00261_deref_β
.Lcall_byname_α_937_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 312], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_628_as
n00263_call_byname_β:     add              rsp, 48;                             jmp   n00261_deref_β
                        .size            n00263_call_byname_bx, .-n00263_call_byname_bx
                        .type            n00224_var_ref_bx, @function
n00224_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00224_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 592]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00264_deref_α
n00224_var_ref_β:         add              rsp, 16;                             jmp   .Ldisjunction_ω_628_af
                        .size            n00224_var_ref_bx, .-n00224_var_ref_bx
                        .type            n00264_deref_bx, @function
n00264_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00264_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_101:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_941_999
                        add              rsp, 16;                             jmp   n00224_var_ref_β
.Lderef_α_941_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_100:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00265_line_mark_α
n00264_deref_β:           add              rsp, 16;                             jmp   n00224_var_ref_β
                        .size            n00264_deref_bx, .-n00264_deref_bx
                        .type            n00265_line_mark_bx, @function
n00265_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_942_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_942_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00265_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 118;          jmp   n00266_call_byname_α
                        .size            n00265_line_mark_bx, .-n00265_line_mark_bx
                        .type            n00266_call_byname_bx, @function
n00266_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00266_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd945: .string          "get"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd945]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 196728
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_102:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_103:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_944_999
                        add              rsp, 32;                             jmp   n00264_deref_β
.Lcall_byname_α_944_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 312], rax
                        add              rsp, -16;                            jmp   .Ldisjunction_γ_628_as
n00266_call_byname_β:     add              rsp, 32;                             jmp   n00264_deref_β
                        .size            n00266_call_byname_bx, .-n00266_call_byname_bx
                        .type            n00221_lit_string_bx, @function
n00221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00221_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_946_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00267_lit_integer_α
n00221_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_628_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_946_0: .quad .Llit_string_α_946_0_s; .popsection
.Llit_string_α_946_0_s: .string          ""
                        .size            n00221_lit_string_bx, .-n00221_lit_string_bx
                        .type            n00267_lit_integer_bx, @function
n00267_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00267_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_947_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00268_line_mark_α
n00267_lit_integer_β:     add              rsp, 16;                             jmp   n00221_lit_string_β
.Llit_integer_α_947_0:  .quad            0
                        .size            n00267_lit_integer_bx, .-n00267_lit_integer_bx
                        .type            n00268_line_mark_bx, @function
n00268_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_948_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_948_stno
                        .long            0
                        .long            118
                        .quad            .Lstnof1
                        .popsection
n00268_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 118;          jmp   n00223_scan_tab_α
                        .size            n00268_line_mark_bx, .-n00268_line_mark_bx
                        .type            n00223_scan_tab_bx, @function
n00223_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00223_scan_tab_α:        sub              rsp, 32
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_tab_α_951_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_951_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_951_998
                        add              rsp, 32;                             jmp   n00267_lit_integer_β
.Lscan_tab_α_951_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_951_999
                        add              rsp, 32;                             jmp   n00267_lit_integer_β
.Lscan_tab_α_951_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_951_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_951_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_951_2
                        lea              rsi, [rip + .S1]
.Lscan_tab_α_951_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00269_binop_test_α
n00223_scan_tab_β:        mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00267_lit_integer_β
                        .size            n00223_scan_tab_bx, .-n00223_scan_tab_bx
                        .type            n00269_binop_test_bx, @function
n00269_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00269_binop_test_α:      sub              rsp, 16
.Lbinop_test_α_952_2:   mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              r8d, 17
                        call             qword ptr [rip + rt_jct_relop@GOTPCREL]
.Lgcsite_options_107:   push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_106:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_952_999
                        add              rsp, 16;                             jmp   n00223_scan_tab_β
.Lbinop_test_α_952_999: mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_str_coerce@GOTPCREL]
.Lgcsite_options_105:   mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_104:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 312], rax;          jmp   .Ldisjunction_γ_628_as
n00269_binop_test_β:      add              rsp, 16;                             jmp   n00223_scan_tab_β
                        .size            n00269_binop_test_bx, .-n00269_binop_test_bx
                        .type            n00214_scan_bx, @function
n00214_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00214_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 56]
                        mov              r14, qword ptr [rsp + 64]
                        mov              r15, qword ptr [rsp + 72]
                        add              rsp, 176;                            jmp   .Ldisjunction_γ_608_af
n00214_scan_β:            add              rsp, 48
                        add              rsp, 128;                            jmp   .Ldisjunction_ω_608_af
                        .size            n00214_scan_bx, .-n00214_scan_bx
                        .type            n00171_unmark_bx, @function
n00171_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00171_unmark_α:          add              rsp, 64;                             jmp   n00270_line_mark_α
                        .size            n00171_unmark_bx, .-n00171_unmark_bx
                        .type            n00270_line_mark_bx, @function
n00270_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_957_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_957_stno
                        .long            0
                        .long            114
                        .quad            .Lstnof1
                        .popsection
n00270_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 114
                        mov              rsp, qword ptr [rbp + 232]
                        add              rsp, 64;                             jmp   n00164_bound_α
                        .size            n00270_line_mark_bx, .-n00270_line_mark_bx
                        .type            n00186_scan_bx, @function
n00186_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00186_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 56]
                        mov              r14, qword ptr [rsp + 64]
                        mov              r15, qword ptr [rsp + 72]
                        add              rsp, 112;                            jmp   .Ldisjunction_γ_581_af
n00186_scan_β:            add              rsp, 48
                        add              rsp, 64;                             jmp   .Ldisjunction_ω_581_af
                        .size            n00186_scan_bx, .-n00186_scan_bx
                        .type            n00143_scan_bx, @function
n00143_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00143_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 56]
                        mov              r14, qword ptr [rsp + 64]
                        mov              r15, qword ptr [rsp + 72];           jmp   n00138_unmark_α
n00143_scan_β:            add              rsp, 48
                        add              rsp, -48;                            jmp   n00138_unmark_α
                        .size            n00143_scan_bx, .-n00143_scan_bx
                        .type            n00162_lit_string_bx, @function
n00162_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00162_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_963_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00271_scan_match_α
n00162_lit_string_β:      add              rsp, 16;                             jmp   .Ldisjunction_ω_573_af
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_963_0: .quad .Llit_string_α_963_0_s; .popsection
.Llit_string_α_963_0_s: .string          "-"
                        .size            n00162_lit_string_bx, .-n00162_lit_string_bx
                        .type            n00271_scan_match_bx, @function
n00271_scan_match_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00271_scan_match_α:      sub              rsp, 32
                        mov              rax, r15
                        sub              rax, r14
                        cmp              rax, 1;                              jge   .Lscan_match_α_965_998
                        add              rsp, 32;                             jmp   n00162_lit_string_β
.Lscan_match_α_965_998: mov              rsi, qword ptr [rip + .Lscan_match_α_965_0]
                        mov              rdi, r13
                        add              rdi, r14
                        xor              rcx, rcx
.Lscan_match_α_965_3:   cmp              rcx, 1;                              jge   .Lscan_match_α_965_4
                        movzx            r10d, byte ptr [rsi + rcx]
                        movzx            r11d, byte ptr [rdi + rcx]
                        cmp              r10d, r11d;                          je    .Lscan_match_α_965_999
                        add              rsp, 32;                             jmp   n00162_lit_string_β
.Lscan_match_α_965_999: inc              rcx;                                 jmp   .Lscan_match_α_965_3
.Lscan_match_α_965_4:   mov              qword ptr [rsp + 0], 3
                        mov              rax, r14
                        add              rax, 2
                        mov              qword ptr [rsp + 8], rax;            jmp   n00272_scan_tab_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lscan_match_α_965_0: .quad .Lscan_match_α_965_0_s; .popsection
.Lscan_match_α_965_0_s: .string          "-"
                        .size            n00271_scan_match_bx, .-n00271_scan_match_bx
                        .type            n00272_scan_tab_bx, @function
n00272_scan_tab_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00272_scan_tab_α:        sub              rsp, 32
                        mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        call             qword ptr [rip + core_icn_int_operand_ok@GOTPCREL]
.Lgcsite_options_111:   test             eax, eax;                            jne   .Lscan_tab_α_967_997
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_573_af
.Lscan_tab_α_967_997:   push             rax
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_110:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        add              rsp, 32
1:                      mov              rdi, qword ptr [rsp + 32]            # lo
                        mov              rsi, qword ptr [rsp + 40]            # hi
                        call             core_icn_to_int_check@PLT
.Lgcsite_options_109:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_108:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      cmp              rax, 1;                              jge   .Lscan_tab_α_967_0
                        add              rax, r15
                        add              rax, 1
.Lscan_tab_α_967_0:     cmp              rax, 1;                              jge   .Lscan_tab_α_967_998
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_573_af
.Lscan_tab_α_967_998:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_tab_α_967_999
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_573_af
.Lscan_tab_α_967_999:   mov              qword ptr [rsp + 16], r14
                        mov              rcx, rax
                        sub              rcx, 1
                        mov              rdx, r14
                        mov              r14, rcx
                        sub              rdx, rcx;                            jge   .Lscan_tab_α_967_1
                        add              rcx, rdx
                        neg              rdx
.Lscan_tab_α_967_1:     lea              rsi, [r13 + rcx]
                        test             rdx, rdx;                            jnz   .Lscan_tab_α_967_2
                        lea              rsi, [rip + .S1]
.Lscan_tab_α_967_2:     shl              rdx, 32
                        or               rdx, 2
                        mov              qword ptr [rsp + 0], rdx
                        mov              qword ptr [rsp + 8], rsi;            jmp   n00273_lit_integer_α
n00272_scan_tab_β:        mov              r14, qword ptr [rsp + 16]
                        add              rsp, 32
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_573_af
                        .size            n00272_scan_tab_bx, .-n00272_scan_tab_bx
                        .type            n00273_lit_integer_bx, @function
n00273_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00273_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_968_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00274_line_mark_α
n00273_lit_integer_β:     add              rsp, 16;                             jmp   n00272_scan_tab_β
.Llit_integer_α_968_0:  .quad            0
                        .size            n00273_lit_integer_bx, .-n00273_lit_integer_bx
                        .type            n00274_line_mark_bx, @function
n00274_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_969_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_969_stno
                        .long            0
                        .long            113
                        .quad            .Lstnof1
                        .popsection
n00274_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 113;          jmp   n00275_scan_pos_α
                        .size            n00274_line_mark_bx, .-n00274_line_mark_bx
                        .type            n00275_scan_pos_bx, @function
n00275_scan_pos_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00275_scan_pos_α:        sub              rsp, 16
                        mov              rax, 0
                        cmp              rax, 1;                              jge   .Lscan_pos_α_972_0
                        add              rax, r15
                        add              rax, 1
.Lscan_pos_α_972_0:     cmp              rax, 1;                              jge   .Lscan_pos_α_972_997
                        add              rsp, 16;                             jmp   n00273_lit_integer_β
.Lscan_pos_α_972_997:   mov              rcx, r15
                        add              rcx, 1
                        cmp              rax, rcx;                            jle   .Lscan_pos_α_972_998
                        add              rsp, 16;                             jmp   n00273_lit_integer_β
.Lscan_pos_α_972_998:   mov              rcx, r14
                        add              rcx, 1
                        cmp              rax, rcx;                            je    .Lscan_pos_α_972_999
                        add              rsp, 16;                             jmp   n00273_lit_integer_β
.Lscan_pos_α_972_999:   mov              qword ptr [rsp + 0], 3
                        mov              qword ptr [rsp + 8], rax;            jmp   n00276_conjunction_α
                        .size            n00275_scan_pos_bx, .-n00275_scan_pos_bx
                        .type            n00276_conjunction_bx, @function
n00276_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00276_conjunction_α:                                                           jmp   n00277_scan_α
n00276_conjunction_β:                                                           jmp   .Ldisjunction_ω_573_af
                        .size            n00276_conjunction_bx, .-n00276_conjunction_bx
                        .type            n00277_scan_bx, @function
n00277_scan_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00277_scan_α:            sub              rsp, 48
                        mov              dword ptr [rsp + 32], r14d
                        mov              dword ptr [rsp + 20], r15d
                        mov              qword ptr [rsp + 24], r13
                        mov              dword ptr [rsp + 16], 2
                        mov              r13, qword ptr [rsp + 296]
                        mov              r14, qword ptr [rsp + 304]
                        mov              r15, qword ptr [rsp + 312];          jmp   n00278_var_α
n00277_scan_β:            add              rsp, 48
                        add              rsp, -48;                            jmp   n00278_var_α
                        .size            n00277_scan_bx, .-n00277_scan_bx
                        .type            n00278_var_bx, @function
n00278_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00278_var_α:             sub              rsp, 16
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0;              jmp   n00279_assign_α
                        .size            n00278_var_bx, .-n00278_var_bx
                        .type            n00279_assign_bx, @function
n00279_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00279_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00280_var_α
                        .size            n00279_assign_bx, .-n00279_assign_bx
                        .type            n00280_var_bx, @function
n00280_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00280_var_α:             add              rsp, 416;                            jmp   n00131_line_mark_α
                        .size            n00280_var_bx, .-n00280_var_bx
                        .type            n00138_unmark_bx, @function
n00138_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00138_unmark_α:          add              rsp, 160;                            jmp   n00281_line_mark_α
                        .size            n00138_unmark_bx, .-n00138_unmark_bx
                        .type            n00281_line_mark_bx, @function
n00281_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_982_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_982_stno
                        .long            0
                        .long            110
                        .quad            .Lstnof1
                        .popsection
n00281_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 110;          jmp   n00128_bound_α
                        .size            n00281_line_mark_bx, .-n00281_line_mark_bx
                        .type            n00131_line_mark_bx, @function
n00131_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 133 0
.Lline_mark_α_984_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_984_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00131_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 133;          jmp   n00282_bound_α
                        .size            n00131_line_mark_bx, .-n00131_line_mark_bx
                        .type            n00282_bound_bx, @function
n00282_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00282_bound_α:           sub              rsp, 16
                        mov              qword ptr [rsp + 0], rsp;            jmp   n00283_var_ref_α
n00282_bound_β:           add              rsp, 16
                        add              rsp, -16;                            jmp   n00283_var_ref_α
                        .size            n00282_bound_bx, .-n00282_bound_bx
                        .type            n00283_var_ref_bx, @function
n00283_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00283_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 592]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00284_var_ref_α
                        .size            n00283_var_ref_bx, .-n00283_var_ref_bx
                        .type            n00284_var_ref_bx, @function
n00284_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00284_var_ref_α:         sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rbp + 32]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00285_deref_α
                        .size            n00284_var_ref_bx, .-n00284_var_ref_bx
                        .type            n00285_deref_bx, @function
n00285_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00285_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_options_113:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_992_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00286_line_mark_α
.Lderef_α_992_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_112:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00287_line_mark_α
                        .size            n00285_deref_bx, .-n00285_deref_bx
                        .type            n00287_line_mark_bx, @function
n00287_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_993_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_993_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00287_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 133;          jmp   n00288_call_byname_α
                        .size            n00287_line_mark_bx, .-n00287_line_mark_bx
                        .type            n00288_call_byname_bx, @function
n00288_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00288_call_byname_α:     sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd996: .string          "pull"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd996]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 262292
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_114:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_115:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_995_999
                        add              rsp, 32
                        add              rsp, 64;                             jmp   n00286_line_mark_α
.Lcall_byname_α_995_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00289_deref_α
                        .size            n00288_call_byname_bx, .-n00288_call_byname_bx
                        .type            n00289_deref_bx, @function
n00289_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00289_deref_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 80]            # var_ref
                        mov              rsi, qword ptr [rsp + 88]            # d
                        call             rt_deref@PLT
.Lgcsite_options_117:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_997_999
                        add              rsp, 16
                        add              rsp, 96;                             jmp   n00286_line_mark_α
.Lderef_α_997_999:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_116:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00290_line_mark_α
                        .size            n00289_deref_bx, .-n00289_deref_bx
                        .type            n00290_line_mark_bx, @function
n00290_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_998_stno: .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_998_stno
                        .long            0
                        .long            133
                        .quad            .Lstnof1
                        .popsection
n00290_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 133;          jmp   n00291_call_byname_α
                        .size            n00290_line_mark_bx, .-n00290_line_mark_bx
                        .type            n00291_call_byname_bx, @function
n00291_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00291_call_byname_α:     sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1001: .string          "push"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1001]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 262293
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_options_118:   mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_options_119:   mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1000_999
                        add              rsp, 48
                        add              rsp, 112;                            jmp   n00286_line_mark_α
.Lcall_byname_α_1000_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00292_unmark_α
                        .size            n00291_call_byname_bx, .-n00291_call_byname_bx
                        .type            n00292_unmark_bx, @function
n00292_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00292_unmark_α:          add              rsp, 160;                            jmp   n00282_bound_α
                        .size            n00292_unmark_bx, .-n00292_unmark_bx
                        .type            n00286_line_mark_bx, @function
n00286_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 134 0
.Lline_mark_α_1004_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1004_stno
                        .long            0
                        .long            134
                        .quad            .Lstnof1
                        .popsection
n00286_line_mark_α:       mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 134;          jmp   n00293_var_α
                        .size            n00286_line_mark_bx, .-n00286_line_mark_bx
                        .type            n00293_var_bx, @function
n00293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00293_var_α:                                                                   jmp   n00294_return_α
                        .size            n00293_var_bx, .-n00293_var_bx
                        .type            n00294_return_bx, @function
n00294_return_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00294_return_α:          mov              rax, qword ptr [rbp + 16]            # var
                        mov              rdx, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx;            jmp   options_γ
                        .size            n00294_return_bx, .-n00294_return_bx
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 624]
                        mov              rbp, qword ptr [rbp + 584];          jmp   qword ptr [rsp]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 624]
                        mov              rbp, qword ptr [rbp + 584];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_options:
                        .quad            2543967096154
                        .quad            515396075760
                        .quad            .Lgcmap_options_s
                        .quad            336
                        .quad            10
                        .quad            211106232532992
                        .quad            17596481011904
                        .quad            17592186044624
                        .quad            17596481011936
                        .quad            17592186044656
                        .quad            17596481011968
                        .quad            17592186044688
                        .quad            17596481012000
                        .quad            17592186044720
                        .quad            17596481012032
.Lgcmap_options_s:      .string          "options"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_options_2:    .quad            120
                        .quad            .Lgcmap_options
                        .quad            9223389618303402608
                        .quad            .Lgccode_options_2
                        .quad            .Lgcsite_options_1-.Lgccode_options_2
                        .quad            65537
                        .quad            8589938464
                        .quad            4
                        .quad            .Lgcsite_options_0-.Lgccode_options_2
                        .quad            65537
                        .quad            8589938464
                        .quad            12
                        .quad            .Lgcsite_options_2-.Lgccode_options_2
                        .quad            65537
                        .quad            25769807648
                        .quad            10
                        .quad            .Lgcsite_options_3-.Lgccode_options_2
                        .quad            65537
                        .quad            25769807648
                        .quad            14
                        .quad            .Lgcsite_options_5-.Lgccode_options_2
                        .quad            65537
                        .quad            42949676832
                        .quad            12
                        .quad            .Lgcsite_options_4-.Lgccode_options_2
                        .quad            65537
                        .quad            42949676832
                        .quad            20
                        .quad            .Lgcsite_options_6-.Lgccode_options_2
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_options_7-.Lgccode_options_2
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_options_9-.Lgccode_options_2
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_options_8-.Lgccode_options_2
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_options_11-.Lgccode_options_2
                        .quad            65537
                        .quad            17179873064
                        .quad            6
                        .quad            .Lgcsite_options_10-.Lgccode_options_2
                        .quad            65537
                        .quad            17179873064
                        .quad            14
                        .quad            .Lgcsite_options_12-.Lgccode_options_2
                        .quad            65537
                        .quad            25769807656
                        .quad            10
                        .quad            .Lgcsite_options_13-.Lgccode_options_2
                        .quad            65537
                        .quad            25769807656
                        .quad            14
                        .quad            .Lgcsite_options_15-.Lgccode_options_2
                        .quad            65537
                        .quad            42949676840
                        .quad            14
                        .quad            .Lgcsite_options_14-.Lgccode_options_2
                        .quad            65537
                        .quad            42949676840
                        .quad            18
                        .quad            .Lgcsite_options_17-.Lgccode_options_2
                        .quad            65537
                        .quad            77309415216
                        .quad            20
                        .quad            .Lgcsite_options_16-.Lgccode_options_2
                        .quad            65537
                        .quad            77309415216
                        .quad            28
                        .quad            .Lgcsite_options_19-.Lgccode_options_2
                        .quad            65537
                        .quad            85899349808
                        .quad            22
                        .quad            .Lgcsite_options_18-.Lgccode_options_2
                        .quad            65537
                        .quad            85899349808
                        .quad            30
                        .quad            .Lgcsite_options_20-.Lgccode_options_2
                        .quad            65537
                        .quad            94489284400
                        .quad            28
                        .quad            .Lgcsite_options_21-.Lgccode_options_2
                        .quad            65537
                        .quad            94489284400
                        .quad            32
                        .quad            .Lgcsite_options_25-.Lgccode_options_2
                        .quad            65537
                        .quad            85899349816
                        .quad            24
                        .quad            .Lgcsite_options_24-.Lgccode_options_2
                        .quad            65537
                        .quad            85899349816
                        .quad            28
                        .quad            .Lgcsite_options_23-.Lgccode_options_2
                        .quad            65537
                        .quad            85899349816
                        .quad            24
                        .quad            .Lgcsite_options_22-.Lgccode_options_2
                        .quad            65537
                        .quad            85899349816
                        .quad            28
                        .quad            .Lgcsite_options_27-.Lgccode_options_2
                        .quad            65537
                        .quad            163208761152
                        .quad            40
                        .quad            .Lgcsite_options_26-.Lgccode_options_2
                        .quad            65537
                        .quad            163208761152
                        .quad            48
                        .quad            .Lgcsite_options_28-.Lgccode_options_2
                        .quad            65537
                        .quad            171798695744
                        .quad            46
                        .quad            .Lgcsite_options_29-.Lgccode_options_2
                        .quad            65537
                        .quad            171798695744
                        .quad            50
                        .quad            .Lgcsite_options_35-.Lgccode_options_2
                        .quad            65537
                        .quad            163208761160
                        .quad            42
                        .quad            .Lgcsite_options_34-.Lgccode_options_2
                        .quad            65537
                        .quad            163208761160
                        .quad            46
                        .quad            .Lgcsite_options_33-.Lgccode_options_2
                        .quad            65537
                        .quad            163208761160
                        .quad            42
                        .quad            .Lgcsite_options_32-.Lgccode_options_2
                        .quad            65537
                        .quad            163208761160
                        .quad            50
                        .quad            .Lgcsite_options_31-.Lgccode_options_2
                        .quad            65537
                        .quad            163208761160
                        .quad            42
                        .quad            .Lgcsite_options_30-.Lgccode_options_2
                        .quad            65537
                        .quad            163208761160
                        .quad            50
                        .quad            .Lgcsite_options_37-.Lgccode_options_2
                        .quad            65537
                        .quad            188978564936
                        .quad            46
                        .quad            .Lgcsite_options_36-.Lgccode_options_2
                        .quad            65537
                        .quad            188978564936
                        .quad            54
                        .quad            .Lgcsite_options_41-.Lgccode_options_2
                        .quad            65537
                        .quad            197568499528
                        .quad            51
                        .quad            .Lgcsite_options_40-.Lgccode_options_2
                        .quad            65537
                        .quad            197568499528
                        .quad            54
                        .quad            .Lgcsite_options_39-.Lgccode_options_2
                        .quad            65537
                        .quad            197568499528
                        .quad            51
                        .quad            .Lgcsite_options_38-.Lgccode_options_2
                        .quad            65537
                        .quad            197568499528
                        .quad            54
                        .quad            .Lgcsite_options_43-.Lgccode_options_2
                        .quad            65537
                        .quad            249108107080
                        .quad            60
                        .quad            .Lgcsite_options_42-.Lgccode_options_2
                        .quad            65537
                        .quad            249108107080
                        .quad            68
                        .quad            .Lgcsite_options_45-.Lgccode_options_2
                        .quad            65537
                        .quad            257698041672
                        .quad            62
                        .quad            .Lgcsite_options_44-.Lgccode_options_2
                        .quad            65537
                        .quad            257698041672
                        .quad            70
                        .quad            .Lgcsite_options_47-.Lgccode_options_2
                        .quad            65537
                        .quad            274877910856
                        .quad            66
                        .quad            .Lgcsite_options_46-.Lgccode_options_2
                        .quad            65537
                        .quad            274877910856
                        .quad            74
                        .quad            .Lgcsite_options_49-.Lgccode_options_2
                        .quad            65537
                        .quad            283467845448
                        .quad            68
                        .quad            .Lgcsite_options_48-.Lgccode_options_2
                        .quad            65537
                        .quad            283467845448
                        .quad            76
                        .quad            .Lgcsite_options_53-.Lgccode_options_2
                        .quad            65537
                        .quad            300647714648
                        .quad            72
                        .quad            .Lgcsite_options_52-.Lgccode_options_2
                        .quad            65537
                        .quad            300647714648
                        .quad            76
                        .quad            .Lgcsite_options_51-.Lgccode_options_2
                        .quad            65537
                        .quad            300647714648
                        .quad            72
                        .quad            .Lgcsite_options_50-.Lgccode_options_2
                        .quad            65537
                        .quad            300647714648
                        .quad            76
                        .quad            .Lgcsite_options_55-.Lgccode_options_2
                        .quad            65537
                        .quad            309237649240
                        .quad            74
                        .quad            .Lgcsite_options_54-.Lgccode_options_2
                        .quad            65537
                        .quad            309237649240
                        .quad            82
                        .quad            .Lgcsite_options_61-.Lgccode_options_2
                        .quad            65537
                        .quad            335007453016
                        .quad            82
                        .quad            .Lgcsite_options_60-.Lgccode_options_2
                        .quad            65537
                        .quad            335007453016
                        .quad            86
                        .quad            .Lgcsite_options_59-.Lgccode_options_2
                        .quad            65537
                        .quad            335007453016
                        .quad            82
                        .quad            .Lgcsite_options_58-.Lgccode_options_2
                        .quad            65537
                        .quad            335007453016
                        .quad            90
                        .quad            .Lgcsite_options_57-.Lgccode_options_2
                        .quad            65537
                        .quad            335007453016
                        .quad            82
                        .quad            .Lgcsite_options_56-.Lgccode_options_2
                        .quad            65537
                        .quad            335007453016
                        .quad            90
                        .quad            .Lgcsite_options_63-.Lgccode_options_2
                        .quad            65537
                        .quad            360777256792
                        .quad            86
                        .quad            .Lgcsite_options_62-.Lgccode_options_2
                        .quad            65537
                        .quad            360777256792
                        .quad            94
                        .quad            .Lgcsite_options_70-.Lgccode_options_2
                        .quad            65537
                        .quad            369367191384
                        .quad            89
                        .quad            .Lgcsite_options_69-.Lgccode_options_2
                        .quad            65537
                        .quad            369367191384
                        .quad            92
                        .quad            .Lgcsite_options_68-.Lgccode_options_2
                        .quad            65537
                        .quad            369367191384
                        .quad            88
                        .quad            .Lgcsite_options_67-.Lgccode_options_2
                        .quad            65537
                        .quad            369367191384
                        .quad            89
                        .quad            .Lgcsite_options_66-.Lgccode_options_2
                        .quad            65537
                        .quad            369367191384
                        .quad            92
                        .quad            .Lgcsite_options_65-.Lgccode_options_2
                        .quad            65537
                        .quad            369367191384
                        .quad            88
                        .quad            .Lgcsite_options_64-.Lgccode_options_2
                        .quad            65537
                        .quad            369367191384
                        .quad            96
                        .quad            .Lgcsite_options_73-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864344
                        .quad            98
                        .quad            .Lgcsite_options_72-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864344
                        .quad            102
                        .quad            .Lgcsite_options_71-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864344
                        .quad            106
                        .quad            .Lgcsite_options_75-.Lgccode_options_2
                        .quad            65537
                        .quad            463856471896
                        .quad            110
                        .quad            .Lgcsite_options_74-.Lgccode_options_2
                        .quad            65537
                        .quad            463856471896
                        .quad            118
                        .quad            .Lgcsite_options_76-.Lgccode_options_2
                        .quad            65537
                        .quad            472446406488
                        .quad            118
                        .quad            .Lgcsite_options_77-.Lgccode_options_2
                        .quad            65537
                        .quad            472446406488
                        .quad            122
                        .quad            .Lgcsite_options_79-.Lgccode_options_2
                        .quad            65537
                        .quad            446676602728
                        .quad            106
                        .quad            .Lgcsite_options_78-.Lgccode_options_2
                        .quad            65537
                        .quad            446676602728
                        .quad            114
                        .quad            .Lgcsite_options_80-.Lgccode_options_2
                        .quad            65537
                        .quad            455266537320
                        .quad            110
                        .quad            .Lgcsite_options_81-.Lgccode_options_2
                        .quad            65537
                        .quad            455266537320
                        .quad            114
                        .quad            .Lgcsite_options_84-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864376
                        .quad            98
                        .quad            .Lgcsite_options_83-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864376
                        .quad            102
                        .quad            .Lgcsite_options_82-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864376
                        .quad            106
                        .quad            .Lgcsite_options_86-.Lgccode_options_2
                        .quad            65537
                        .quad            463856471928
                        .quad            110
                        .quad            .Lgcsite_options_85-.Lgccode_options_2
                        .quad            65537
                        .quad            463856471928
                        .quad            118
                        .quad            .Lgcsite_options_87-.Lgccode_options_2
                        .quad            65537
                        .quad            472446406520
                        .quad            118
                        .quad            .Lgcsite_options_88-.Lgccode_options_2
                        .quad            65537
                        .quad            472446406520
                        .quad            122
                        .quad            .Lgcsite_options_90-.Lgccode_options_2
                        .quad            65537
                        .quad            446676602760
                        .quad            106
                        .quad            .Lgcsite_options_89-.Lgccode_options_2
                        .quad            65537
                        .quad            446676602760
                        .quad            114
                        .quad            .Lgcsite_options_91-.Lgccode_options_2
                        .quad            65537
                        .quad            455266537352
                        .quad            110
                        .quad            .Lgcsite_options_92-.Lgccode_options_2
                        .quad            65537
                        .quad            455266537352
                        .quad            114
                        .quad            .Lgcsite_options_95-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864408
                        .quad            98
                        .quad            .Lgcsite_options_94-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864408
                        .quad            102
                        .quad            .Lgcsite_options_93-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864408
                        .quad            106
                        .quad            .Lgcsite_options_97-.Lgccode_options_2
                        .quad            65537
                        .quad            420906799016
                        .quad            100
                        .quad            .Lgcsite_options_96-.Lgccode_options_2
                        .quad            65537
                        .quad            420906799016
                        .quad            108
                        .quad            .Lgcsite_options_98-.Lgccode_options_2
                        .quad            65537
                        .quad            429496733608
                        .quad            106
                        .quad            .Lgcsite_options_99-.Lgccode_options_2
                        .quad            65537
                        .quad            429496733608
                        .quad            110
                        .quad            .Lgcsite_options_101-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864440
                        .quad            98
                        .quad            .Lgcsite_options_100-.Lgccode_options_2
                        .quad            65537
                        .quad            412316864440
                        .quad            106
                        .quad            .Lgcsite_options_102-.Lgccode_options_2
                        .quad            65537
                        .quad            420906799032
                        .quad            102
                        .quad            .Lgcsite_options_103-.Lgccode_options_2
                        .quad            65537
                        .quad            420906799032
                        .quad            106
                        .quad            .Lgcsite_options_107-.Lgccode_options_2
                        .quad            65537
                        .quad            438086668232
                        .quad            104
                        .quad            .Lgcsite_options_106-.Lgccode_options_2
                        .quad            65537
                        .quad            438086668232
                        .quad            108
                        .quad            .Lgcsite_options_105-.Lgccode_options_2
                        .quad            65537
                        .quad            438086668232
                        .quad            104
                        .quad            .Lgcsite_options_104-.Lgccode_options_2
                        .quad            65537
                        .quad            438086668232
                        .quad            112
                        .quad            .Lgcsite_options_111-.Lgccode_options_2
                        .quad            65537
                        .quad            154618826712
                        .quad            40
                        .quad            .Lgcsite_options_110-.Lgccode_options_2
                        .quad            65537
                        .quad            154618826712
                        .quad            44
                        .quad            .Lgcsite_options_109-.Lgccode_options_2
                        .quad            65537
                        .quad            154618826712
                        .quad            40
                        .quad            .Lgcsite_options_108-.Lgccode_options_2
                        .quad            65537
                        .quad            154618826712
                        .quad            44
                        .quad            .Lgcsite_options_113-.Lgccode_options_2
                        .quad            65537
                        .quad            25769807840
                        .quad            8
                        .quad            .Lgcsite_options_112-.Lgccode_options_2
                        .quad            65537
                        .quad            25769807840
                        .quad            16
                        .quad            .Lgcsite_options_114-.Lgccode_options_2
                        .quad            65537
                        .quad            34359742432
                        .quad            12
                        .quad            .Lgcsite_options_115-.Lgccode_options_2
                        .quad            65537
                        .quad            34359742432
                        .quad            16
                        .quad            .Lgcsite_options_117-.Lgccode_options_2
                        .quad            65537
                        .quad            51539611616
                        .quad            14
                        .quad            .Lgcsite_options_116-.Lgccode_options_2
                        .quad            65537
                        .quad            51539611616
                        .quad            22
                        .quad            .Lgcsite_options_118-.Lgccode_options_2
                        .quad            65537
                        .quad            60129546208
                        .quad            20
                        .quad            .Lgcsite_options_119-.Lgccode_options_2
                        .quad            65537
                        .quad            60129546208
                        .quad            24
                        .quad            682
                        .quad            680
                        .quad            2794152
                        .quad            565928
                        .quad            730723820200
                        .quad            12295436293131248296
                        .quad            2
                        .quad            12295436293131248296
                        .quad            46878102792874
                        .quad            12295436293131248296
                        .quad            2897637681834
                        .quad            12295436293131248296
                        .quad            46878102792874
                        .quad            12295436293131248296
                        .quad            2897637681834
                        .quad            12295436293131248296
                        .quad            2829724330
                        .quad            12295436293131248296
                        .quad            45779397290
                        .quad            12295436293131248296
                        .quad            11419658922
                        .quad            12295436293131248296
                        .quad            148858612394
                        .quad            37086601896
                        .quad            10920
                        .popsection
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
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              edi, 751
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 751
                        mov              ecx, 741
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        lea              rdi, [rsp - 16]
                        call             rt_program_top_adopt@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        .pushsection     .rodata
.Lscan_nil:             .byte            0
                        .popsection
                        lea              r13, [rip + .Lscan_nil]
                        xor              r15d, r15d
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
.Lgvan741:              .string          "n"
.Lgvan742:              .string          "solution"
.Lgvan743:              .string          "q__STATIC__up"
.Lgvan744:              .string          "q__STATIC__down"
.Lgvan745:              .string          "q__STATIC__rows"
.Lgvan746:              .string          "q__INITFLAG__0"
.Lgvan747:              .string          "show__STATIC__count"
.Lgvan748:              .string          "show__STATIC__line"
.Lgvan749:              .string          "show__STATIC__border"
.Lgvan750:              .string          "show__INITFLAG__0"
                        .section         .data.rel.ro,"aw",@progbits
                        .align           8
__gva_names:
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            0
                        .quad            .Lgvan741
                        .quad            .Lgvan742
                        .quad            .Lgvan743
                        .quad            .Lgvan744
                        .quad            .Lgvan745
                        .quad            .Lgvan746
                        .quad            .Lgvan747
                        .quad            .Lgvan748
                        .quad            .Lgvan749
                        .quad            .Lgvan750
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
.Lgccode_main_3:
main_α:
                        sub              rsp, 144
                        mov              rdi, rsp
                        xorps            xmm0, xmm0
                        xor              eax, eax
                        movups           xmmword ptr [rdi + 0], xmm0
                        movups           xmmword ptr [rdi + 16], xmm0
                        movups           xmmword ptr [rdi + 32], xmm0
                        movups           xmmword ptr [rdi + 48], xmm0
                        movups           xmmword ptr [rdi + 64], xmm0
                        movups           xmmword ptr [rdi + 80], xmm0
                        movups           xmmword ptr [rdi + 96], xmm0
                        movups           xmmword ptr [rdi + 112], xmm0
                        mov              qword ptr [rdi + 128], rax
                        mov              eax, 0                               # GCANCHOR .Lgcmap_main qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rip + g_call_args@GOTPCREL]
                        mov              ecx, dword ptr [rax + 12]
                        mov              rax, qword ptr [rax + 0]
                        cmp              ecx, 0;                              jbe   .Lmain_α_1008_220
                        mov              rdx, qword ptr [rax + 0]
                        mov              qword ptr [rsp + 16], rdx
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rsp + 24], rdx
.Lmain_α_1008_220:
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
main_α_body:
                        .type            n00295_call_direct_bx, @function
n00295_call_direct_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00295_call_direct_α:    sub              rsp, 16
                        lea              rdi, [rsp + 16]
                        mov              esi, 0
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_1:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_direct_α_1053_999
                        add              rsp, 16;                             jmp   n00296_line_mark_α
.Lcall_direct_α_1053_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n00296_line_mark_α
n00295_call_direct_β:    add              rsp, 16;                             jmp   n00296_line_mark_α
                        .size            n00295_call_direct_bx, .-n00295_call_direct_bx
                        .type            n00296_line_mark_bx, @function
n00296_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 53 0
.Lline_mark_α_1054_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1054_stno
                        .long            0
                        .long            53
                        .quad            .Lstnof1
                        .popsection
n00296_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 53
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_1055_0]
                        mov              qword ptr [rax + 608], rcx;          jmp   n00297_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lline_mark_α_1055_0: .quad .Lline_mark_α_1055_0_s; .popsection
.Lline_mark_α_1055_0_s: .string          "queens.icn"
                        .size            n00296_line_mark_bx, .-n00296_line_mark_bx
                        .type            n00297_line_mark_bx, @function
n00297_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
.Lline_mark_α_1056_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1056_stno
                        .long            0
                        .long            56
                        .quad            .Lstnof1
                        .popsection
n00297_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 56;           jmp   n00298_var_ref_α
                        .size            n00297_line_mark_bx, .-n00297_line_mark_bx
                        .type            n00298_var_ref_bx, @function
n00298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00298_var_ref_α:        sub              rsp, 32
                        mov              qword ptr [rsp + 16], 0
                        mov              qword ptr [rsp + 24], 0
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 48]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00299_lit_string_α
                        .size            n00298_var_ref_bx, .-n00298_var_ref_bx
                        .type            n00299_lit_string_bx, @function
n00299_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00299_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1060_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00300_deref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1060_0: .quad .Llit_string_α_1060_0_s; .popsection
.Llit_string_α_1060_0_s:
                        .string          "n+"
                        .size            n00299_lit_string_bx, .-n00299_lit_string_bx
                        .type            n00300_deref_bx, @function
n00300_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00300_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_3:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1061_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00301_line_mark_α
.Lderef_α_1061_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_2:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00302_line_mark_α
                        .size            n00300_deref_bx, .-n00300_deref_bx
                        .type            n00302_line_mark_bx, @function
n00302_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1062_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1062_stno
                        .long            0
                        .long            56
                        .quad            .Lstnof1
                        .popsection
n00302_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 56;           jmp   n00303_call_proc_staged_α
                        .size            n00302_line_mark_bx, .-n00302_line_mark_bx
                        .type            n00303_call_proc_staged_bx, @function
n00303_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00303_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1065_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1065_3]
                        push             rcx
                        sub              rsp, 32
                        mov              rcx, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rcx, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rcx
                        mov              rcx, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rcx
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 17600]
                        mov              rax, qword ptr [rax + 264];          jmp   rax
.Lcall_proc_staged_α_1065_3:
.Lgcsite_main_5:        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 56
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1065_2
.Lcall_proc_staged_α_1065_4:
.Lgcsite_main_4:        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 56
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1065_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1065_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00301_line_mark_α
.Lcall_proc_staged_α_1065_999:
                                                                              jmp   n00304_deref_α
n00303_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 56
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        add              rsp, 48;                             jmp   n00301_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1065_0: .quad .Lcall_proc_staged_β_1065_0_s; .popsection
.Lcall_proc_staged_β_1065_0_s:
                        .string          "options"
                        .size            n00303_call_proc_staged_bx, .-n00303_call_proc_staged_bx
                        .type            n00304_deref_bx, @function
n00304_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00304_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_7:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1066_999
                        add              rsp, 16
                        add              rsp, 64;                             jmp   n00301_line_mark_α
.Lderef_α_1066_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_6:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00305_assign_α
                        .size            n00304_deref_bx, .-n00304_deref_bx
                        .type            n00305_assign_bx, @function
n00305_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00305_assign_α:         mov              rax, qword ptr [rsp + 0]             # deref
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        add              rsp, 80;                             jmp   n00301_line_mark_α
                        .size            n00305_assign_bx, .-n00305_assign_bx
                        .type            n00301_line_mark_bx, @function
n00301_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
.Lline_mark_α_1068_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1068_stno
                        .long            0
                        .long            57
                        .quad            .Lstnof1
                        .popsection
n00301_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 57;           jmp   n00306_disjunction_α
                        .size            n00301_line_mark_bx, .-n00301_line_mark_bx
                        .type            n00306_disjunction_bx, @function
n00306_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00306_disjunction_α:    sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00307_var_ref_α
.Ldisjunction_γ_1020_as:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1071_0
                                                                              jmp   n00308_assign_α
.Ldisjunction_α_1071_0: cmp              eax, 1;                              jne   .Ldisjunction_α_1071_1
                                                                              jmp   n00308_assign_α
.Ldisjunction_α_1071_1:                                                       jmp   n00308_assign_α
n00306_disjunction_β:    mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              je    .Ldisjunction_ω_1020_af
                                                                              jmp   .Ldisjunction_ω_1020_af
.Ldisjunction_γ_1020_af:
.Ldisjunction_ω_1020_af:
                        add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 1;                              je    n00309_lit_integer_α
                        add              rsp, 32;                             jmp   n00310_line_mark_α
                        .size            n00306_disjunction_bx, .-n00306_disjunction_bx
                        .type            n00308_assign_bx, @function
n00308_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00308_assign_α:         mov              rax, qword ptr [rsp + 0]             # disjunction
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11856], rax          # n
                        mov              qword ptr [r9 + 11864], rdx
                        add              rsp, 32;                             jmp   n00310_line_mark_α
                        .size            n00308_assign_bx, .-n00308_assign_bx
                        .type            n00310_line_mark_bx, @function
n00310_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
.Lline_mark_α_1073_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1073_stno
                        .long            0
                        .long            58
                        .quad            .Lstnof1
                        .popsection
n00310_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 58;           jmp   n00311_disjunction_α
                        .size            n00310_line_mark_bx, .-n00310_line_mark_bx
                        .type            n00311_disjunction_bx, @function
n00311_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00311_disjunction_α:    sub              rsp, 32
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rsp + 8], 0
                        mov              dword ptr [rsp + 16], 0;             jmp   n00312_lit_integer_α
.Ldisjunction_γ_1023_as:
                        mov              eax, dword ptr [rsp + 16]
                        cmp              eax, 0;                              jne   .Ldisjunction_α_1076_0
                        add              rsp, 32;                             jmp   n00313_line_mark_α
.Ldisjunction_α_1076_0: add              rsp, 32;                             jmp   n00313_line_mark_α
n00311_disjunction_β:    mov              eax, dword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00313_line_mark_α
.Ldisjunction_γ_1023_af:
.Ldisjunction_ω_1023_af:
                        add              dword ptr [rsp + 16], 1
                        mov              eax, dword ptr [rsp + 16]
                        add              rsp, 32;                             jmp   n00313_line_mark_α
                        .size            n00311_disjunction_bx, .-n00311_disjunction_bx
                        .type            n00312_lit_integer_bx, @function
n00312_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00312_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1077_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00314_var_α
n00312_lit_integer_β:    add              rsp, 16;                             jmp   .Ldisjunction_ω_1023_af
.Llit_integer_α_1077_0: .quad            0
                        .size            n00312_lit_integer_bx, .-n00312_lit_integer_bx
                        .type            n00314_var_bx, @function
n00314_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00314_var_α:            sub              rsp, 16
                        mov              rax, qword ptr [r9 + 11856]          # n
                        mov              rdx, qword ptr [r9 + 11864]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00315_binop_test_α
n00314_var_β:            add              rsp, 16;                             jmp   n00312_lit_integer_β
                        .size            n00314_var_bx, .-n00314_var_bx
                        .type            n00315_binop_test_bx, @function
n00315_binop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00315_binop_test_α:     sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1079_2
                        mov              eax, dword ptr [rsp + 32]
                        cmp              al, 3;                               jne   .Lbinop_test_α_1079_2
.Lbinop_test_α_1079_1:  mov              rax, qword ptr [rsp + 24]
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              rax, rcx;                            jle   .Lbinop_test_α_1079_998
                        add              rsp, 16;                             jmp   n00314_var_β
.Lbinop_test_α_1079_998:
                        mov              rcx, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rcx;            jmp   n00316_lit_string_α
.Lbinop_test_α_1079_2:  mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_10:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        add              rsp, 32
1:                      test             eax, eax;                            jne   .Lbinop_test_α_1079_999
                        add              rsp, 16;                             jmp   n00314_var_β
.Lbinop_test_α_1079_999:
                        mov              rdi, qword ptr [rsp + 16]
                        mov              rsi, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rcx, qword ptr [rsp + 40]
                        lea              r8, [rsp + 0]
                        call             qword ptr [rip + rt_relop_val_coerce@GOTPCREL]
.Lgcsite_main_9:        push             rax                                  # gc_poll bb_binop_relop_val.cpp:70
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_8:        mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00316_lit_string_α
                        .size            n00315_binop_test_bx, .-n00315_binop_test_bx
                        .type            n00316_lit_string_bx, @function
n00316_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00316_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 37
                        mov              rax, qword ptr [rip + .Llit_string_α_1080_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00317_line_mark_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1080_0: .quad .Llit_string_α_1080_0_s; .popsection
.Llit_string_α_1080_0_s:
                        .string          "-n needs a positive numeric parameter"
                        .size            n00316_lit_string_bx, .-n00316_lit_string_bx
                        .type            n00317_line_mark_bx, @function
n00317_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1081_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1081_stno
                        .long            0
                        .long            58
                        .quad            .Lstnof1
                        .popsection
n00317_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 58;           jmp   n00318_call_byname_α
                        .size            n00317_line_mark_bx, .-n00317_line_mark_bx
                        .type            n00318_call_byname_bx, @function
n00318_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00318_call_byname_α:    sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1084: .string          "stop"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1084]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 262308
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_12:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_13:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1083_999
                        add              rsp, 32
                        add              rsp, 96;                             jmp   n00313_line_mark_α
.Lcall_byname_α_1083_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 104], rax
                        add              rsp, 96;                             jmp   .Ldisjunction_γ_1023_as
n00318_call_byname_β:    add              rsp, 32
                        add              rsp, 96;                             jmp   n00313_line_mark_α
                        .size            n00318_call_byname_bx, .-n00318_call_byname_bx
                        .type            n00313_line_mark_bx, @function
n00313_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 60 0
.Lline_mark_α_1085_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1085_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n00313_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 60;           jmp   n00319_var_ref_α
                        .size            n00313_line_mark_bx, .-n00313_line_mark_bx
                        .type            n00319_var_ref_bx, @function
n00319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00319_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # n
                        mov              qword ptr [rsp + 8], rax;            jmp   n00320_deref_α
                        .size            n00319_var_ref_bx, .-n00319_var_ref_bx
                        .type            n00320_deref_bx, @function
n00320_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00320_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # var_ref
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_15:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1089_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n00321_line_mark_α
.Lderef_α_1089_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_14:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00322_line_mark_α
                        .size            n00320_deref_bx, .-n00320_deref_bx
                        .type            n00322_line_mark_bx, @function
n00322_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1090_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1090_stno
                        .long            0
                        .long            60
                        .quad            .Lstnof1
                        .popsection
n00322_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 60;           jmp   n00323_call_byname_α
                        .size            n00322_line_mark_bx, .-n00322_line_mark_bx
                        .type            n00323_call_byname_bx, @function
n00323_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00323_call_byname_α:    sub              rsp, 32
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 24], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1093: .string          "list"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1093]
                        lea              rsi, [rsp + 16]
                        mov              edx, 1
                        mov              ecx, 262276
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_16:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_17:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1092_999
                        add              rsp, 32
                        add              rsp, 32;                             jmp   n00321_line_mark_α
.Lcall_byname_α_1092_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00324_assign_α
                        .size            n00323_call_byname_bx, .-n00323_call_byname_bx
                        .type            n00324_assign_bx, @function
n00324_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00324_assign_α:         mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 11872], rax          # solution
                        mov              qword ptr [r9 + 11880], rdx
                        add              rsp, 64;                             jmp   n00321_line_mark_α
                        .size            n00324_assign_bx, .-n00324_assign_bx
                        .type            n00321_line_mark_bx, @function
n00321_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 61 0
.Lline_mark_α_1095_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1095_stno
                        .long            0
                        .long            61
                        .quad            .Lstnof1
                        .popsection
n00321_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 61;           jmp   n00325_var_ref_α
                        .size            n00321_line_mark_bx, .-n00321_line_mark_bx
                        .type            n00325_var_ref_bx, @function
n00325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00325_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, 1879064144                      # n
                        mov              qword ptr [rsp + 8], rax;            jmp   n00326_lit_string_α
                        .size            n00325_var_ref_bx, .-n00325_var_ref_bx
                        .type            n00326_lit_string_bx, @function
n00326_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00326_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_1099_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00327_deref_α
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1099_0: .quad .Llit_string_α_1099_0_s; .popsection
.Llit_string_α_1099_0_s:
                        .string          "-Queens:"
                        .size            n00326_lit_string_bx, .-n00326_lit_string_bx
                        .type            n00327_deref_bx, @function
n00327_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00327_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]            # d
                        call             rt_deref@PLT
.Lgcsite_main_19:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1100_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   n00328_line_mark_α
.Lderef_α_1100_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_18:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00329_line_mark_α
                        .size            n00327_deref_bx, .-n00327_deref_bx
                        .type            n00329_line_mark_bx, @function
n00329_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1101_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1101_stno
                        .long            0
                        .long            61
                        .quad            .Lstnof1
                        .popsection
n00329_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 61;           jmp   n00330_call_byname_α
                        .size            n00329_line_mark_bx, .-n00329_line_mark_bx
                        .type            n00330_call_byname_bx, @function
n00330_call_byname_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00330_call_byname_α:    sub              rsp, 48
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_byname_α_rkfnzd1104: .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_byname_α_rkfnzd1104]
                        lea              rsi, [rsp + 16]
                        mov              edx, 2
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_20:       mov              r9,  qword ptr [rip + g_rtccb+48]
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
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_21:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_byname_α_1103_999
                        add              rsp, 48
                        add              rsp, 48;                             jmp   n00328_line_mark_α
.Lcall_byname_α_1103_999:
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 96;                             jmp   n00328_line_mark_α
                        .size            n00330_call_byname_bx, .-n00330_call_byname_bx
                        .type            n00328_line_mark_bx, @function
n00328_line_mark_bx:
#=======================================================================================================================
# stmt
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 62 0
.Lline_mark_α_1105_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1105_stno
                        .long            0
                        .long            62
                        .quad            .Lstnof1
                        .popsection
n00328_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 62;           jmp   n00331_lit_integer_α
                        .size            n00328_line_mark_bx, .-n00328_line_mark_bx
                        .type            n00331_lit_integer_bx, @function
n00331_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00331_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1107_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00332_line_mark_α
.Llit_integer_α_1107_0: .quad            1
                        .size            n00331_lit_integer_bx, .-n00331_lit_integer_bx
                        .type            n00332_line_mark_bx, @function
n00332_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_1108_stno:
                        .pushsection     scrip_stno_map,"aw",@progbits; .p2align 3
                        .quad            .Lline_mark_α_1108_stno
                        .long            0
                        .long            62
                        .quad            .Lstnof1
                        .popsection
n00332_line_mark_α:      mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 592], 62;           jmp   n00333_call_proc_staged_α
                        .size            n00332_line_mark_bx, .-n00332_line_mark_bx
                        .type            n00333_call_proc_staged_bx, @function
n00333_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00333_call_proc_staged_α:
                        sub              rsp, 16
                        lea              rcx, [rip + .Lcall_proc_staged_α_1111_4] # the block protocol (ARCH-PROLOG-C-OUT-OF-THE-BOX 1.2, Icon): the wires and entry words first, then the argument block at the callee's entry rsp, then a jump through the registry -- no staged medium, no C open, no C epilogue, no NRETURN consult
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1111_3]
                        push             rcx
                        sub              rsp, 16
                        mov              rcx, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rcx
                        mov              rcx, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rcx
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL] # the registry jump: the record's fn word (PROC_FN at +8, the 128-byte stride both asserted in rt.c), so a fn re-sealed at run time -- a dynamic predicate's enumerator, a redefinition -- is followed in both media
                        mov              rax, qword ptr [rax + 17600]
                        mov              rax, qword ptr [rax + 8];            jmp   rax
.Lcall_proc_staged_α_1111_3:
.Lgcsite_main_23:       mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 62
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              rax, rdi
                        mov              rdx, rsi;                            jmp   .Lcall_proc_staged_α_1111_2
.Lcall_proc_staged_α_1111_4:
.Lgcsite_main_22:       mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 62
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        mov              eax, 104
                        xor              edx, edx
.Lcall_proc_staged_α_1111_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              al, 104;                             jne   .Lcall_proc_staged_α_1111_999
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
.Lcall_proc_staged_α_1111_999:
                                                                              jmp   n00334_deref_α
n00333_call_proc_staged_β:
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 592], 62
                        lea              r11, [rip + .S0]
                        mov              rcx, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rcx + 608], r11
                        add              rsp, 16
                        add              rsp, 16;                             jmp   main_ω
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Lcall_proc_staged_β_1111_0: .quad .Lcall_proc_staged_β_1111_0_s; .popsection
.Lcall_proc_staged_β_1111_0_s:
                        .string          "q"
                        .size            n00333_call_proc_staged_bx, .-n00333_call_proc_staged_bx
                        .type            n00334_deref_bx, @function
n00334_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00334_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # call
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_25:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1112_999
                        add              rsp, 16
                        add              rsp, 32;                             jmp   main_ω
.Lderef_α_1112_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_24:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                      add              rsp, 48;                             jmp   main_ω
                        .size            n00334_deref_bx, .-n00334_deref_bx
                        .type            n00309_lit_integer_bx, @function
n00309_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00309_lit_integer_α:    sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_1113_0]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 24], rax
                        add              rsp, 16;                             jmp   .Ldisjunction_γ_1020_as
n00309_lit_integer_β:    add              rsp, 16;                             jmp   .Ldisjunction_ω_1020_af
.Llit_integer_α_1113_0: .quad            6
                        .size            n00309_lit_integer_bx, .-n00309_lit_integer_bx
                        .type            n00307_var_ref_bx, @function
n00307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00307_var_ref_α:        sub              rsp, 16
                        mov              rax, 4294967336
                        mov              qword ptr [rsp + 0], rax             # result
                        lea              rax, [rsp + 48]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00335_lit_string_α
n00307_var_ref_β:        add              rsp, 16;                             jmp   .Ldisjunction_ω_1020_af
                        .size            n00307_var_ref_bx, .-n00307_var_ref_bx
                        .type            n00335_lit_string_bx, @function
n00335_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00335_lit_string_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1116_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n00336_subscript_α
n00335_lit_string_β:     add              rsp, 16;                             jmp   n00307_var_ref_β
                        .pushsection     .data.rel.ro,"aw",@progbits; .p2align 3; .Llit_string_α_1116_0: .quad .Llit_string_α_1116_0_s; .popsection
.Llit_string_α_1116_0_s:
                        .string          "n"
                        .size            n00335_lit_string_bx, .-n00335_lit_string_bx
                        .type            n00336_subscript_bx, @function
n00336_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00336_subscript_α:      sub              rsp, 16
                        xor              eax, eax
.Lsubscript_α_1117_1:   mov              rdi, qword ptr [rsp + 32]            # var_ref
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        test             eax, eax;                            jne   .Lsubscript_α_1117_2
                        call             qword ptr [rip + rt_subscript_val_strict@GOTPCREL]
.Lgcsite_main_29:       cmp              al, 255;                             jne   .Lsubscript_α_1117_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_1117_1
.Lsubscript_α_1117_4:   push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_28:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_1117_3
.Lsubscript_α_1117_2:   call             qword ptr [rip + rt_subscript_var_strict@GOTPCREL]
.Lgcsite_main_27:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_26:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_1117_3:   cmp              al, 104;                             jne   .Lsubscript_α_1117_999
                        add              rsp, 16;                             jmp   n00335_lit_string_β
.Lsubscript_α_1117_999: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n00337_deref_α
                        .size            n00336_subscript_bx, .-n00336_subscript_bx
                        .type            n00337_deref_bx, @function
n00337_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00337_deref_α:          sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 16]            # subscript
                        mov              rsi, qword ptr [rsp + 24]            # d
                        call             rt_deref@PLT
.Lgcsite_main_31:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        cmp              al, 104;                             jne   .Lderef_α_1118_999
                        add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_1020_af
.Lderef_α_1118_999:     mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:28
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 64
                        mov              dword ptr [rsp + 0], 2
                        mov              dword ptr [rsp + 4], r15d
                        mov              qword ptr [rsp + 8], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rcx
                        mov              qword ptr [rsp + 32], rdx
                        mov              qword ptr [rsp + 40], rsi
                        mov              qword ptr [rsp + 48], rdi
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 64]
                        call             rt_gc_point_arr_c@PLT
.Lgcsite_main_30:       mov              r9,  qword ptr [rip + g_rtccb+48]
                        mov              r13, qword ptr [rsp + 8]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              rdx, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdi, qword ptr [rsp + 48]
                        add              rsp, 64
1:                                                                            jmp   n00338_unop_test_α
n00337_deref_β:          add              rsp, 16
                        add              rsp, 48;                             jmp   .Ldisjunction_ω_1020_af
                        .size            n00337_deref_bx, .-n00337_deref_bx
                        .type            n00338_unop_test_bx, @function
n00338_unop_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00338_unop_test_α:      sub              rsp, 16
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 104;                             jne   .Lunop_test_α_1119_998
                        add              rsp, 16;                             jmp   n00337_deref_β
.Lunop_test_α_1119_998: cmp              eax, 0;                              jne   .Lunop_test_α_1119_999
                        add              rsp, 16;                             jmp   n00337_deref_β
.Lunop_test_α_1119_999: mov              rax, qword ptr [rsp + 16]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 24]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 0]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 8]
                        mov              qword ptr [rsp + 88], rax
                        add              rsp, 80;                             jmp   .Ldisjunction_γ_1020_as
n00338_unop_test_β:      add              rsp, 16;                             jmp   n00337_deref_β
                        .size            n00338_unop_test_bx, .-n00338_unop_test_bx
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   qword ptr [rsp]
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
                        mov              rax, qword ptr [rip + g_runtime@GOTPCREL]
                        mov              qword ptr [rax + 632], rcx
                        pop              rax
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcmap_main:
                        .quad            619821747546
                        .quad            382252089440
                        .quad            .Lgcmap_main_s
                        .quad            32
                        .quad            1
                        .quad            35184372088832
.Lgcmap_main_s:         .string          "main"
                        .popsection
                        .pushsection     .data.rel.ro,"aw",@progbits
                        .p2align         3
.Lgcsites_main_3:       .quad            32
                        .quad            .Lgcmap_main
                        .quad            9223389626893336720
                        .quad            .Lgccode_main_3
                        .quad            .Lgcsite_main_0-.Lgccode_main_3
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_1-.Lgccode_main_3
                        .quad            65537
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_3-.Lgccode_main_3
                        .quad            65537
                        .quad            25769804832
                        .quad            8
                        .quad            .Lgcsite_main_2-.Lgccode_main_3
                        .quad            65537
                        .quad            25769804832
                        .quad            16
                        .quad            .Lgcsite_main_5-.Lgccode_main_3
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_4-.Lgccode_main_3
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_7-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674016
                        .quad            12
                        .quad            .Lgcsite_main_6-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674016
                        .quad            20
                        .quad            .Lgcsite_main_11-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674024
                        .quad            12
                        .quad            .Lgcsite_main_10-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674024
                        .quad            16
                        .quad            .Lgcsite_main_9-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674024
                        .quad            12
                        .quad            .Lgcsite_main_8-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674024
                        .quad            20
                        .quad            .Lgcsite_main_12-.Lgccode_main_3
                        .quad            65537
                        .quad            60129543208
                        .quad            18
                        .quad            .Lgcsite_main_13-.Lgccode_main_3
                        .quad            65537
                        .quad            60129543208
                        .quad            22
                        .quad            .Lgcsite_main_15-.Lgccode_main_3
                        .quad            65537
                        .quad            17179870256
                        .quad            6
                        .quad            .Lgcsite_main_14-.Lgccode_main_3
                        .quad            65537
                        .quad            17179870256
                        .quad            14
                        .quad            .Lgcsite_main_16-.Lgccode_main_3
                        .quad            65537
                        .quad            25769804848
                        .quad            10
                        .quad            .Lgcsite_main_17-.Lgccode_main_3
                        .quad            65537
                        .quad            25769804848
                        .quad            14
                        .quad            .Lgcsite_main_19-.Lgccode_main_3
                        .quad            65537
                        .quad            25769804856
                        .quad            8
                        .quad            .Lgcsite_main_18-.Lgccode_main_3
                        .quad            65537
                        .quad            25769804856
                        .quad            16
                        .quad            .Lgcsite_main_20-.Lgccode_main_3
                        .quad            65537
                        .quad            34359739448
                        .quad            14
                        .quad            .Lgcsite_main_21-.Lgccode_main_3
                        .quad            65537
                        .quad            34359739448
                        .quad            18
                        .quad            .Lgcsite_main_23-.Lgccode_main_3
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_22-.Lgccode_main_3
                        .quad            65538
                        .quad            0
                        .quad            0
                        .quad            .Lgcsite_main_25-.Lgccode_main_3
                        .quad            65537
                        .quad            25769804864
                        .quad            8
                        .quad            .Lgcsite_main_24-.Lgccode_main_3
                        .quad            65537
                        .quad            25769804864
                        .quad            16
                        .quad            .Lgcsite_main_29-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674056
                        .quad            12
                        .quad            .Lgcsite_main_28-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674056
                        .quad            16
                        .quad            .Lgcsite_main_27-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674056
                        .quad            12
                        .quad            .Lgcsite_main_26-.Lgccode_main_3
                        .quad            65537
                        .quad            42949674056
                        .quad            16
                        .quad            .Lgcsite_main_31-.Lgccode_main_3
                        .quad            65537
                        .quad            51539608648
                        .quad            14
                        .quad            .Lgcsite_main_30-.Lgccode_main_3
                        .quad            65537
                        .quad            51539608648
                        .quad            22
                        .quad            682
                        .quad            10914
                        .quad            42
                        .quad            170
                        .quad            42
                        .quad            2722
                        .popsection
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
.Lstartup_ign13:        .string          "put"
.Lstartup_ign14:        .string          "table"
.Lstartup_ign15:        .string          "string"
.Lstartup_ign16:        .string          "n"
.Lstartup_ign17:        .string          "solution"
.Lstartup_ign18:        .string          "q__STATIC__up"
.Lstartup_ign19:        .string          "q__STATIC__down"
.Lstartup_ign20:        .string          "q__STATIC__rows"
.Lstartup_ign21:        .string          "q__INITFLAG__0"
.Lstartup_ign22:        .string          "show__STATIC__count"
.Lstartup_ign23:        .string          "show__STATIC__line"
.Lstartup_ign24:        .string          "show__STATIC__border"
.Lstartup_ign25:        .string          "show__INITFLAG__0"
                        .section         .data.rel.ro,"aw",@progbits
                        .balign          8
                        .quad            4851575594099624754
                        .quad            240
                        .quad            0
                        .quad            0
.Lstartup_gnames:
                        .quad            .Lstartup_ign0
                        .quad            .Lstartup_ign1
                        .quad            .Lstartup_ign2
                        .quad            .Lstartup_ign3
                        .quad            .Lstartup_ign4
                        .quad            .Lstartup_ign5
                        .quad            .Lstartup_ign6
                        .quad            .Lstartup_ign7
                        .quad            .Lstartup_ign8
                        .quad            .Lstartup_ign9
                        .quad            .Lstartup_ign10
                        .quad            .Lstartup_ign11
                        .quad            .Lstartup_ign12
                        .quad            .Lstartup_ign13
                        .quad            .Lstartup_ign14
                        .quad            .Lstartup_ign15
                        .quad            .Lstartup_ign16
                        .quad            .Lstartup_ign17
                        .quad            .Lstartup_ign18
                        .quad            .Lstartup_ign19
                        .quad            .Lstartup_ign20
                        .quad            .Lstartup_ign21
                        .quad            .Lstartup_ign22
                        .quad            .Lstartup_ign23
                        .quad            .Lstartup_ign24
                        .quad            .Lstartup_ign25
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_rootnm:       .string          "main"
.Lstartup_ipp00339_0:    .string          "args"
                        .align           8
.Lstartup_ipnames9000:
                        .quad            .Lstartup_ipp00339_0
                        .quad            0
.Lstartup_iln00339_0:    .string          "i"
.Lstartup_iln00339_1:    .string          "opts"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00339_0
                        .quad            .Lstartup_iln00339_1
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            -1
                        .long            96
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .data.rel.ro,"aw",@progbits
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
                        .long            160
                        .section         .data.rel.ro,"aw",@progbits
.Lstartup_pname1:       .string          "show"
                        .section         .data.rel.ro,"aw",@progbits
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
.Lstartup_iln2_8:       .string          "$rep1"
.Lstartup_iln2_9:       .string          "$rep2"
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
                        .quad            .Lstartup_iln2_8
                        .quad            .Lstartup_iln2_9
                        .quad            0
                        .align           4
.Lstartup_iloffs2:
                        .long            64
                        .long            144
                        .long            80
                        .long            16
                        .long            32
                        .long            96
                        .long            112
                        .long            -1
                        .long            128
                        .long            160
                        .section         .rodata
.Lstartup_rootcall:     .string          "main"
                        .section         .data
                        .balign          16
                        .quad            0
                        .long            33
                        .short           232
                        .short           0
.Lstartup_procs:
                        .quad            .Lstartup_pname0
                        .quad            FN__q
                        .quad            .Lstartup_ipnames0
                        .long            1
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            48
                        .long            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            65536
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lstartup_pname1
                        .quad            FN__show
                        .quad            0
                        .long            0
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            32
                        .long            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            65536
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lstartup_pname2
                        .quad            FN__options
                        .quad            .Lstartup_ipnames2
                        .long            2
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            336
                        .long            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            65536
                        .long            0
                        .long            0
                        .long            0
                        .quad            .Lstartup_rootcall
                        .quad            main_α
                        .quad            0
                        .long            1
                        .long            -1
                        .long            0
                        .long            -1
                        .quad            0
                        .long            0
                        .long            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .balign          16
                        .quad            0
                        .long            17
                        .short           215
                        .short           0
.Lstartup_phash:
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            4
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            1
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            3
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            0
                        .long            2
                        .long            0
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_procs]
                        mov              esi, 4
                        lea              rdx, [rip + .Lstartup_phash]
                        mov              ecx, 64
                        call             rt_procs_install@PLT
                        lea              rdi, [rip + .Lstartup_gnames]
                        mov              esi, 26
                        lea              rdx, [rip + .Lstartup_icn_loc]
                        mov              ecx, 3
                        call             rt_icn_tabs_install@PLT
                        add              rsp, 8
                        ret
                        .section         .data.rel.ro,"aw",@progbits
                        .balign          8
                        .quad            4851575594099624754
                        .quad            176
                        .quad            0
                        .quad            0
.Lstartup_icn_loc:
                        .quad            .Lstartup_rootnm
                        .quad            .Lstartup_ilnames9000
                        .long            2
                        .long            0
                        .quad            .Lstartup_iloffs9000
                        .quad            .Lstartup_ipnames9000
                        .long            1
                        .long            0
                        .quad            .Lstartup_pname0
                        .quad            .Lstartup_ilnames0
                        .long            1
                        .long            0
                        .quad            .Lstartup_iloffs0
                        .quad            .Lstartup_ipnames0
                        .long            1
                        .long            0
                        .quad            .Lstartup_pname2
                        .quad            .Lstartup_ilnames2
                        .long            10
                        .long            0
                        .quad            .Lstartup_iloffs2
                        .quad            .Lstartup_ipnames2
                        .long            2
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .data.rel.ro,"aw",@progbits
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
.S1:                    .string          ""
                        .text
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
