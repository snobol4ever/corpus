                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_coo/corpus/benchmarks/icon/bench_icnsub_list_dispatch.icn"
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
                        sub              rsp, 928
                        mov              qword ptr [rsp + 920], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 784
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
                        mov              qword ptr [rbp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_36_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n1_lit_string_α
.Llit_integer_α_36_0:   .quad            2
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 70
                        mov              rax, qword ptr [rip + .Llit_string_α_37_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n2_call_α
.Llit_string_α_37_0:    .quad            .Llit_string_α_37_0_s
.Llit_string_α_37_0_s:  .string          "/home/claude_coo/corpus/benchmarks/icon/bench_icnsub_list_dispatch.icn"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        .section         .rodata
.Lcall_α_bynamefn3:     .string          "ICN$LINE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefn3]
                        lea              rsi, [rbp + 704]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524476
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    n3_line_mark_α
                                                                              jmp   n3_line_mark_α
n2_call_β:              mov              r11, 3;                              jmp   n3_line_mark_α
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              r11, 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n4_lit_integer_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_41_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n5_lit_integer_α
.Llit_integer_α_41_0:   .quad            11
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_42_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n6_lit_integer_α
.Llit_integer_α_42_0:   .quad            22
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_43_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n7_lit_integer_α
.Llit_integer_α_43_0:   .quad            33
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 8
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_44_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n8_lit_integer_α
.Llit_integer_α_44_0:   .quad            44
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rbp + 608], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_45_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n9_lit_integer_α
.Llit_integer_α_45_0:   .quad            55
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rbp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_46_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n10_lit_integer_α
.Llit_integer_α_46_0:   .quad            66
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rbp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_47_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n11_lit_integer_α
.Llit_integer_α_47_0:   .quad            77
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_48_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n12_make_list_α
.Llit_integer_α_48_0:   .quad            88
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_make_list_bx, @function
n12_make_list_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_make_list_α:        mov              r11, 13
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_make_list@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n13_assign_α
                        .size            n12_make_list_bx, .-n12_make_list_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n14_line_mark_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_line_mark_bx, @function
n14_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_line_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n15_lit_integer_α
                        .size            n14_line_mark_bx, .-n14_line_mark_bx
                        .type            n15_lit_integer_bx, @function
n15_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_54_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n16_lit_integer_α
.Llit_integer_α_54_0:   .quad            1
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_55_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n17_to_α
.Llit_integer_α_55_0:   .quad            2000000
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_to_bx, @function
n17_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_to_α:               mov              r11, 18
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n32_line_mark_α
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
                        test             eax, eax;                            jz    n32_line_mark_α
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
.Lto_α_57_0:            mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n32_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n18_assign_α
n17_to_β:               mov              r11, 18
                        inc              qword ptr [rbp + 128];               jo    n32_line_mark_α
                                                                              jmp   .Lto_α_57_0
                        .size            n17_to_bx, .-n17_to_bx
                        .type            n18_assign_bx, @function
n18_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n19_bound_α
                        .size            n18_assign_bx, .-n18_assign_bx
                        .type            n19_bound_bx, @function
n19_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_bound_α:            mov              r11, 20
                        mov              qword ptr [rbp + 176], rsp;          jmp   n20_var_ref_α
                        .size            n19_bound_bx, .-n19_bound_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n21_var_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_var_bx, @function
n21_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_α:              mov              r11, 22
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 312], rax;          jmp   n22_lit_integer_α
                        .size            n21_var_bx, .-n21_var_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_65_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n23_coerce_numeric_α
.Llit_integer_α_65_0:   .quad            8
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_coerce_numeric_bx, @function
n23_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_coerce_numeric_α:   mov              r11, 24
                        mov              eax, dword ptr [rbp + 800]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_67_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_67_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_67_0
.Lcoerce_numeric_α_67_1:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 296], rax;          jmp   n24_binop_α
.Lcoerce_numeric_α_67_0:
                        lea              rdi, [rbp + 800]
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 288]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 288]
                        cmp              al, 104;                             je    n31_unmark_α
                                                                              jmp   n24_binop_α
                        .size            n23_coerce_numeric_bx, .-n23_coerce_numeric_bx
                        .type            n24_binop_bx, @function
n24_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_binop_α:            mov              r11, 25
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n25_lit_integer_α
                        .size            n24_binop_bx, .-n24_binop_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rbp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_69_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n26_coerce_numeric_α
.Llit_integer_α_69_0:   .quad            1
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_coerce_numeric_bx, @function
n26_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_coerce_numeric_α:   mov              r11, 27
                        mov              eax, dword ptr [rbp + 272]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_71_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_71_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_71_0
.Lcoerce_numeric_α_71_1:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 264], rax;          jmp   n27_binop_α
.Lcoerce_numeric_α_71_0:
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 256]
                        cmp              al, 104;                             je    n31_unmark_α
                                                                              jmp   n27_binop_α
                        .size            n26_coerce_numeric_bx, .-n26_coerce_numeric_bx
                        .type            n27_binop_bx, @function
n27_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_binop_α:            mov              r11, 28
                        mov              eax, dword ptr [rbp + 256]
                        mov              ecx, 3
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_72_2
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, 1
                        add              rax, rdx;                            jo    .Lbinop_α_72_0
                        mov              qword ptr [rbp + 240], 3
                        mov              qword ptr [rbp + 248], rax;          jmp   .Lbinop_α_72_7
.Lbinop_α_72_2:         and              edx, 1;                              jz    .Lbinop_α_72_0
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_72_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_72_4
.Lbinop_α_72_3:         movq             xmm0, rsi
.Lbinop_α_72_4:         cmp              cl, 5;                               je    .Lbinop_α_72_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_72_6
.Lbinop_α_72_5:         movq             xmm1, rdi
.Lbinop_α_72_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_72_0
                        mov              qword ptr [rbp + 240], 5
                        mov              qword ptr [rbp + 248], rax
.Lbinop_α_72_7:                                                               jmp   n28_subscript_α
.Lbinop_α_72_0:         mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_unmark_α
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n28_subscript_α
                        .size            n27_binop_bx, .-n27_binop_bx
                        .type            n28_subscript_bx, @function
n28_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_subscript_α:        mov              r11, 29
                        mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_unmark_α
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n29_deref_α
                        .size            n28_subscript_bx, .-n28_subscript_bx
                        .type            n29_deref_bx, @function
n29_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_deref_α:            mov              r11, 30
                        mov              rdi, qword ptr [rbp + 352]
                        mov              rsi, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_unmark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n30_assign_α
                        .size            n29_deref_bx, .-n29_deref_bx
                        .type            n30_assign_bx, @function
n30_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_α:           mov              r11, 31
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n31_unmark_α
                        .size            n30_assign_bx, .-n30_assign_bx
                        .type            n31_unmark_bx, @function
n31_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_unmark_α:           mov              r11, 32
                        mov              rsp, qword ptr [rbp + 176];          jmp   n17_to_β
                        .size            n31_unmark_bx, .-n31_unmark_bx
                        .type            n32_line_mark_bx, @function
n32_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_line_mark_α:        mov              r11, 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n33_var_ref_α
                        .size            n32_line_mark_bx, .-n32_line_mark_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n34_deref_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_deref_bx, @function
n34_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_deref_α:            mov              r11, 35
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n35_call_icon_α
                        .size            n34_deref_bx, .-n34_deref_bx
                        .type            n35_call_icon_bx, @function
n35_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_icon_α:        mov              r11, 36
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn84:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn84]
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
n35_call_icon_β:        mov              r11, 36;                             jmp   main_ω
                        .size            n35_call_icon_bx, .-n35_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_83_248
                        .section         .rodata
.Licn_trace_nm85:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm85]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_83_248:        mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_83_249
                        .section         .rodata
.Licn_trace_nm86:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm86]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_83_249:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
