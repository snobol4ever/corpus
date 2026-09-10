                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_coo/corpus/benchmarks/icon/bench_icnint_loop.icn"
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
                        sub              rsp, 560
                        mov              qword ptr [rsp + 552], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 448
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_lit_integer_α:       mov              r11, 1
                        mov              qword ptr [rbp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_23_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n1_lit_string_α
.Llit_integer_α_23_0:   .quad            2
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 61
                        mov              rax, qword ptr [rip + .Llit_string_α_24_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n2_call_α
.Llit_string_α_24_0:    .quad            .Llit_string_α_24_0_s
.Llit_string_α_24_0_s:  .string          "/home/claude_coo/corpus/benchmarks/icon/bench_icnint_loop.icn"
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lcall_α_bynamefn3:     .string          "ICN$LINE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_bynamefn3]
                        lea              rsi, [rbp + 368]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524476
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
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
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_28_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n5_assign_α
.Llit_integer_α_28_0:   .quad            0
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_assign_bx, @function
n5_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n6_line_mark_α
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
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_32_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n8_lit_integer_α
.Llit_integer_α_32_0:   .quad            1
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_33_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n9_to_α
.Llit_integer_α_33_0:   .quad            2000000
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_to_bx, @function
n9_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_to_α:                mov              r11, 10
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n19_line_mark_α
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
                        test             eax, eax;                            jz    n19_line_mark_α
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
.Lto_α_35_0:            mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n19_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n10_assign_α
n9_to_β:                mov              r11, 10
                        inc              qword ptr [rbp + 128];               jo    n19_line_mark_α
                                                                              jmp   .Lto_α_35_0
                        .size            n9_to_bx, .-n9_to_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n11_bound_α
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_bound_bx, @function
n11_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_bound_α:            mov              r11, 12
                        mov              qword ptr [rbp + 176], rsp;          jmp   n12_var_α
                        .size            n11_bound_bx, .-n11_bound_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 280], rax;          jmp   n13_var_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 296], rax;          jmp   n14_coerce_numeric_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_coerce_numeric_bx, @function
n14_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_coerce_numeric_α:   mov              r11, 15
                        mov              eax, dword ptr [rbp + 448]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_44_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_44_0
                        mov              eax, dword ptr [rbp + 464]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_44_0
.Lcoerce_numeric_α_44_1:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 264], rax;          jmp   n15_coerce_numeric_α
.Lcoerce_numeric_α_44_0:
                        lea              rdi, [rbp + 448]
                        lea              rsi, [rbp + 464]
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
                        cmp              al, 104;                             je    n18_unmark_α
                                                                              jmp   n15_coerce_numeric_α
                        .size            n14_coerce_numeric_bx, .-n14_coerce_numeric_bx
                        .type            n15_coerce_numeric_bx, @function
n15_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_coerce_numeric_α:   mov              r11, 16
                        mov              eax, dword ptr [rbp + 464]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_46_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_46_0
                        mov              eax, dword ptr [rbp + 448]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_46_0
.Lcoerce_numeric_α_46_1:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 248], rax;          jmp   n16_binop_α
.Lcoerce_numeric_α_46_0:
                        lea              rdi, [rbp + 464]
                        lea              rsi, [rbp + 448]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 16777318
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n18_unmark_α
                                                                              jmp   n16_binop_α
                        .size            n15_coerce_numeric_bx, .-n15_coerce_numeric_bx
                        .type            n16_binop_bx, @function
n16_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_binop_α:            mov              r11, 17
                        mov              eax, dword ptr [rbp + 256]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_47_2
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        add              rax, rdx;                            jo    .Lbinop_α_47_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_47_7
.Lbinop_α_47_2:         and              edx, 1;                              jz    .Lbinop_α_47_0
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdi, qword ptr [rbp + 248]
                        cmp              al, 5;                               je    .Lbinop_α_47_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_47_4
.Lbinop_α_47_3:         movq             xmm0, rsi
.Lbinop_α_47_4:         cmp              cl, 5;                               je    .Lbinop_α_47_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_47_6
.Lbinop_α_47_5:         movq             xmm1, rdi
.Lbinop_α_47_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_47_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_47_7:                                                               jmp   n17_assign_α
.Lbinop_α_47_0:         mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n18_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n17_assign_α
                        .size            n16_binop_bx, .-n16_binop_bx
                        .type            n17_assign_bx, @function
n17_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n18_unmark_α
                        .size            n17_assign_bx, .-n17_assign_bx
                        .type            n18_unmark_bx, @function
n18_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_unmark_α:           mov              r11, 19
                        mov              rsp, qword ptr [rbp + 176];          jmp   n9_to_β
                        .size            n18_unmark_bx, .-n18_unmark_bx
                        .type            n19_line_mark_bx, @function
n19_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_line_mark_α:        mov              r11, 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n20_var_ref_α
                        .size            n19_line_mark_bx, .-n19_line_mark_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n21_deref_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_deref_bx, @function
n21_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_deref_α:            mov              r11, 22
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
                        mov              qword ptr [rbp + 72], rdx;           jmp   n22_call_icon_α
                        .size            n21_deref_bx, .-n21_deref_bx
                        .type            n22_call_icon_bx, @function
n22_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_icon_α:        mov              r11, 23
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn57:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn57]
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
n22_call_icon_β:        mov              r11, 23;                             jmp   main_ω
                        .size            n22_call_icon_bx, .-n22_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_56_248
                        .section         .rodata
.Licn_trace_nm58:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm58]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_56_248:        mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_56_249
                        .section         .rodata
.Licn_trace_nm59:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm59]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_56_249:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
