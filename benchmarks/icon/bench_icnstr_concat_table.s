                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnstr_concat_table.icn"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
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
                        sub              rsp, 816
                        mov              qword ptr [rsp + 808], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 672
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
                        push             rax
                        push             rdx
                        push             rbx
                        mov              rbx, rsp
                        and              rsp, -16
                        .section         .rodata
.Licn_trace_nm0:        .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm0]
                        mov              esi, 0
                        lea              rdx, [rbx + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_call_hook_f@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_0_247:         mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
main_α_body:
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              r11, 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_38_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_38_0:     .quad            .Lline_mark_α_38_0_s
.Lline_mark_α_38_0_s:   .string          "bench_icnstr_concat_table.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n3_lit_string_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        mov              r11, 3
                        mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_41_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n4_assign_α
.Llit_string_α_41_0:    .quad            .Llit_string_α_41_0_s
.Llit_string_α_41_0_s:  .string          ""
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n5_line_mark_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_line_mark_bx, @function
n5_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_line_mark_α:         mov              r11, 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n6_lit_integer_α
                        .size            n5_line_mark_bx, .-n5_line_mark_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_45_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n7_call_icon_α
.Llit_integer_α_45_0:   .quad            0
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_call_icon_bx, @function
n7_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_call_icon_α:         mov              r11, 7
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        .section         .rodata
.Lcall_icon_α_rkfn47:   .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn47]
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
                        cmp              al, 104;                             je    n9_line_mark_α
                                                                              jmp   n8_assign_α
n7_call_icon_β:         mov              r11, 7;                              jmp   n9_line_mark_α
                        .size            n7_call_icon_bx, .-n7_call_icon_bx
                        .type            n8_assign_bx, @function
n8_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 8
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n9_line_mark_α
                        .size            n8_assign_bx, .-n8_assign_bx
                        .type            n9_line_mark_bx, @function
n9_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_line_mark_α:         mov              r11, 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n10_lit_integer_α
                        .size            n9_line_mark_bx, .-n9_line_mark_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 10
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_51_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n11_lit_integer_α
.Llit_integer_α_51_0:   .quad            1
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_52_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n12_to_α
.Llit_integer_α_52_0:   .quad            40000
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_to_bx, @function
n12_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_to_α:               mov              r11, 12
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n33_line_mark_α
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
                        test             eax, eax;                            jz    n33_line_mark_α
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
.Lto_α_54_0:            mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n33_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n13_assign_α
n12_to_β:               mov              r11, 12
                        inc              qword ptr [rbp + 128];               jo    n33_line_mark_α
                                                                              jmp   .Lto_α_54_0
                        .size            n12_to_bx, .-n12_to_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n14_bound_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_bound_bx, @function
n14_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_bound_α:            mov              r11, 14
                        mov              qword ptr [rbp + 176], rsp;          jmp   n15_line_mark_α
                        .size            n14_bound_bx, .-n14_bound_bx
                        .type            n15_line_mark_bx, @function
n15_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_line_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n16_var_α
                        .size            n15_line_mark_bx, .-n15_line_mark_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 16
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 456], rax;          jmp   n17_lit_string_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_lit_string_bx, @function
n17_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_62_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n18_binop_α
.Llit_string_α_62_0:    .quad            .Llit_string_α_62_0_s
.Llit_string_α_62_0_s:  .string          "x"
                        .size            n17_lit_string_bx, .-n17_lit_string_bx
                        .type            n18_binop_bx, @function
n18_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_binop_α:            mov              r11, 18
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n19_assign_α
                        .size            n18_binop_bx, .-n18_binop_bx
                        .type            n19_assign_bx, @function
n19_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n20_line_mark_α
                        .size            n19_assign_bx, .-n19_assign_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_line_mark_α:        mov              r11, 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n21_var_ref_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n22_lit_string_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_lit_string_bx, @function
n22_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 22
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_69_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n23_var_α
.Llit_string_α_69_0:    .quad            .Llit_string_α_69_0_s
.Llit_string_α_69_0_s:  .string          "k"
                        .size            n22_lit_string_bx, .-n22_lit_string_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 23
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 344], rax;          jmp   n24_lit_integer_α
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 24
                        mov              qword ptr [rbp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_72_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n25_coerce_numeric_α
.Llit_integer_α_72_0:   .quad            97
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_coerce_numeric_bx, @function
n25_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_coerce_numeric_α:   mov              r11, 25
                        mov              eax, dword ptr [rbp + 688]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_74_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_74_0
                        mov              eax, dword ptr [rbp + 352]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_74_0
.Lcoerce_numeric_α_74_1:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 328], rax;          jmp   n26_binop_α
.Lcoerce_numeric_α_74_0:
                        lea              rdi, [rbp + 688]
                        lea              rsi, [rbp + 352]
                        lea              rdx, [rbp + 320]
                        mov              rcx, 21491613798
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 320]
                        cmp              al, 104;                             je    n32_unmark_α
                                                                              jmp   n26_binop_α
                        .size            n25_coerce_numeric_bx, .-n25_coerce_numeric_bx
                        .type            n26_binop_bx, @function
n26_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_binop_α:            mov              r11, 26
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
                        cmp              al, 104;                             je    n32_unmark_α
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n27_binop_α
                        .size            n26_binop_bx, .-n26_binop_bx
                        .type            n27_binop_bx, @function
n27_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:            mov              r11, 27
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n28_subscript_α
                        .size            n27_binop_bx, .-n27_binop_bx
                        .type            n28_subscript_bx, @function
n28_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_subscript_α:        mov              r11, 28
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
                        cmp              al, 104;                             je    n32_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n29_var_α
                        .size            n28_subscript_bx, .-n28_subscript_bx
                        .type            n29_var_bx, @function
n29_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 408], rax;          jmp   n30_assign_var_α
                        .size            n29_var_bx, .-n29_var_bx
                        .type            n30_assign_var_bx, @function
n30_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_var_α:       mov              r11, 30
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
                        cmp              al, 104;                             je    n32_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n31_conjunction_α
                        .size            n30_assign_var_bx, .-n30_assign_var_bx
                        .type            n31_conjunction_bx, @function
n31_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_conjunction_α:      mov              r11, 31
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 232], rax;          jmp   n32_unmark_α
n31_conjunction_β:      mov              r11, 31;                             jmp   n32_unmark_α
                        .size            n31_conjunction_bx, .-n31_conjunction_bx
                        .type            n32_unmark_bx, @function
n32_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_unmark_α:           mov              r11, 32
                        mov              rsp, qword ptr [rbp + 176];          jmp   n12_to_β
                        .size            n32_unmark_bx, .-n32_unmark_bx
                        .type            n33_line_mark_bx, @function
n33_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_line_mark_α:        mov              r11, 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n34_var_α
                        .size            n33_line_mark_bx, .-n33_line_mark_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 72], rax;           jmp   n35_unop_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_unop_bx, @function
n35_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_unop_α:             mov              r11, 35
                        mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n36_call_icon_α
                        .size            n35_unop_bx, .-n35_unop_bx
                        .type            n36_call_icon_bx, @function
n36_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_icon_α:        mov              r11, 36
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn90:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn90]
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
n36_call_icon_β:        mov              r11, 36;                             jmp   main_ω
                        .size            n36_call_icon_bx, .-n36_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_89_248
                        .section         .rodata
.Licn_trace_nm91:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm91]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_89_248:        mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_89_249
                        .section         .rodata
.Licn_trace_nm92:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm92]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_89_249:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "write"
.Lstartup_ign2:         .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign2]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_iln00001_0:    .string          "i"
.Lstartup_iln00001_1:    .string          "s"
.Lstartup_iln00001_2:    .string          "t"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00001_0
                        .quad            .Lstartup_iln00001_1
                        .quad            .Lstartup_iln00001_2
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            688
                        .long            672
                        .long            704
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ilnames9000]
                        mov              edx, 3
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_iloffs9000]
                        mov              edx, 3
                        call             rt_proc_set_local_offs@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
