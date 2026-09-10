                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_coo/corpus/benchmarks/icon/bench_icnstr_concat_table.icn"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 896
                        mov              qword ptr [rsp + 888], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 752
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rbp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_38_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n1_lit_string_α
.Llit_integer_α_38_0:   .quad            2
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 720], 2             # result
                        mov              dword ptr [rbp + 724], 69
                        mov              rax, qword ptr [rip + .Llit_string_α_39_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n2_call_α
.Llit_string_α_39_0:    .quad            .Llit_string_α_39_0_s
.Llit_string_α_39_0_s:  .string          "/home/claude_coo/corpus/benchmarks/icon/bench_icnstr_concat_table.icn"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lcall_α_bynamefn3:     .string          "ICN$LINE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefn3]
                        lea              rsi, [rbp + 672]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524476
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n3_line_mark_α
                                                                              jmp   n3_line_mark_α
n2_call_β:              mov              r11, 3;                              jmp   n3_line_mark_α
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              r11, 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n4_lit_string_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_43_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n5_assign_α
.Llit_string_α_43_0:    .quad            .Llit_string_α_43_0_s
.Llit_string_α_43_0_s:  .string          ""
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_assign_bx, @function
n5_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n6_line_mark_α
                        .size            n5_assign_bx, .-n5_assign_bx
                        .type            n6_line_mark_bx, @function
n6_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_line_mark_α:         mov              r11, 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n7_lit_integer_α
                        .size            n6_line_mark_bx, .-n6_line_mark_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_47_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n8_call_icon_α
.Llit_integer_α_47_0:   .quad            0
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_call_icon_bx, @function
n8_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_icon_α:         mov              r11, 9
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lcall_icon_α_rkfn49:   .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn49]
                        lea              rsi, [rbp + 544]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    n10_line_mark_α
                                                                              jmp   n9_assign_α
n8_call_icon_β:         mov              r11, 9;                              jmp   n10_line_mark_α
                        .size            n8_call_icon_bx, .-n8_call_icon_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 10
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n10_line_mark_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_line_mark_bx, @function
n10_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_line_mark_α:        mov              r11, 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n11_lit_integer_α
                        .size            n10_line_mark_bx, .-n10_line_mark_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_53_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n12_lit_integer_α
.Llit_integer_α_53_0:   .quad            1
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_54_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n13_to_α
.Llit_integer_α_54_0:   .quad            40000
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_to_bx, @function
n13_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_to_α:               mov              r11, 14
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n34_line_mark_α
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n34_line_mark_α
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lto_α_56_0:            mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n34_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n14_assign_α
n13_to_β:               mov              r11, 14
                        inc              qword ptr [rbp + 128];               jo    n34_line_mark_α
                                                                              jmp   .Lto_α_56_0
                        .size            n13_to_bx, .-n13_to_bx
                        .type            n14_assign_bx, @function
n14_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n15_bound_α
                        .size            n14_assign_bx, .-n14_assign_bx
                        .type            n15_bound_bx, @function
n15_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_bound_α:            mov              r11, 16
                        mov              qword ptr [rbp + 176], rsp;          jmp   n16_line_mark_α
                        .size            n15_bound_bx, .-n15_bound_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_line_mark_α:        mov              r11, 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n17_var_α
                        .size            n16_line_mark_bx, .-n16_line_mark_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 456], rax;          jmp   n18_lit_string_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_lit_string_bx, @function
n18_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_64_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n19_binop_α
.Llit_string_α_64_0:    .quad            .Llit_string_α_64_0_s
.Llit_string_α_64_0_s:  .string          "x"
                        .size            n18_lit_string_bx, .-n18_lit_string_bx
                        .type            n19_binop_bx, @function
n19_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_binop_α:            mov              r11, 20
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              rdx, qword ptr [rbp + 464]
                        mov              rcx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n20_assign_α
                        .size            n19_binop_bx, .-n19_binop_bx
                        .type            n20_assign_bx, @function
n20_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n21_line_mark_α
                        .size            n20_assign_bx, .-n20_assign_bx
                        .type            n21_line_mark_bx, @function
n21_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_line_mark_α:        mov              r11, 22
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n22_var_ref_α
                        .size            n21_line_mark_bx, .-n21_line_mark_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n23_lit_string_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_lit_string_bx, @function
n23_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:       mov              r11, 24
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_71_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n24_var_α
.Llit_string_α_71_0:    .quad            .Llit_string_α_71_0_s
.Llit_string_α_71_0_s:  .string          "k"
                        .size            n23_lit_string_bx, .-n23_lit_string_bx
                        .type            n24_var_bx, @function
n24_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 344], rax;          jmp   n25_lit_integer_α
                        .size            n24_var_bx, .-n24_var_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rbp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_74_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n26_coerce_numeric_α
.Llit_integer_α_74_0:   .quad            97
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_coerce_numeric_bx, @function
n26_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:   mov              r11, 27
                        mov              eax, dword ptr [rbp + 768]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_76_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_76_0
                        mov              eax, dword ptr [rbp + 352]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_76_0
.Lcoerce_numeric_α_76_1:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 328], rax;          jmp   n27_binop_α
.Lcoerce_numeric_α_76_0:
                        lea              rdi, [rbp + 768]
                        lea              rsi, [rbp + 352]
                        lea              rdx, [rbp + 320]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 320]
                        cmp              al, 104;                             je    n33_unmark_α
                                                                              jmp   n27_binop_α
                        .size            n26_coerce_numeric_bx, .-n26_coerce_numeric_bx
                        .type            n27_binop_bx, @function
n27_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:            mov              r11, 28
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 352]
                        mov              rcx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_unmark_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n28_binop_α
                        .size            n27_binop_bx, .-n27_binop_bx
                        .type            n28_binop_bx, @function
n28_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              r11, 29
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n29_subscript_α
                        .size            n28_binop_bx, .-n28_binop_bx
                        .type            n29_subscript_bx, @function
n29_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_subscript_α:        mov              r11, 30
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 256]
                        mov              rcx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n30_var_α
                        .size            n29_subscript_bx, .-n29_subscript_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 408], rax;          jmp   n31_assign_var_α
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_assign_var_bx, @function
n31_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_var_α:       mov              r11, 32
                        mov              rdi, qword ptr [rbp + 368]
                        mov              rsi, qword ptr [rbp + 376]
                        mov              rdx, qword ptr [rbp + 400]
                        mov              rcx, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n33_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n32_conjunction_α
                        .size            n31_assign_var_bx, .-n31_assign_var_bx
                        .type            n32_conjunction_bx, @function
n32_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_conjunction_α:      mov              r11, 33
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 232], rax;          jmp   n33_unmark_α
n32_conjunction_β:      mov              r11, 33;                             jmp   n33_unmark_α
                        .size            n32_conjunction_bx, .-n32_conjunction_bx
                        .type            n33_unmark_bx, @function
n33_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_unmark_α:           mov              r11, 34
                        mov              rsp, qword ptr [rbp + 176];          jmp   n13_to_β
                        .size            n33_unmark_bx, .-n33_unmark_bx
                        .type            n34_line_mark_bx, @function
n34_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_line_mark_α:        mov              r11, 35
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n35_var_α
                        .size            n34_line_mark_bx, .-n34_line_mark_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 72], rax;           jmp   n36_unop_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_unop_bx, @function
n36_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_unop_α:             mov              r11, 37
                        mov              rdi, qword ptr [rbp + 752]
                        mov              rsi, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n37_call_icon_α
                        .size            n36_unop_bx, .-n36_unop_bx
                        .type            n37_call_icon_bx, @function
n37_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_icon_α:        mov              r11, 38
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn92:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn92]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n37_call_icon_β:        mov              r11, 38;                             jmp   main_ω
                        .size            n37_call_icon_bx, .-n37_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_91_248
                        .section         .rodata
.Licn_trace_nm93:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm93]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_91_248:        mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_91_249
                        .section         .rodata
.Licn_trace_nm94:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm94]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_91_249:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
