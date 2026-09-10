                        .intel_syntax    noprefix
                        .text
                        .file            1 "/home/claude_U/corpus/benchmarks/icon/bench_icnint_loop.icn"
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
                        sub              rsp, 480
                        mov              qword ptr [rsp + 472], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 368
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
                        .type            n0_line_mark_bx, @function
n0_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_line_mark_α:         mov              r11, 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_22_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n1_line_mark_α
.Lline_mark_α_22_0:     .quad            .Lline_mark_α_22_0_s
.Lline_mark_α_22_0_s:   .string          "/home/claude_U/corpus/benchmarks/icon/bench_icnint_loop.icn"
                        .size            n0_line_mark_bx, .-n0_line_mark_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n2_lit_integer_α
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_25_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n3_assign_α
.Llit_integer_α_25_0:   .quad            0
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_assign_bx, @function
n3_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n4_line_mark_α
                        .size            n3_assign_bx, .-n3_assign_bx
                        .type            n4_line_mark_bx, @function
n4_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_line_mark_α:         mov              r11, 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n5_lit_integer_α
                        .size            n4_line_mark_bx, .-n4_line_mark_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 6
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_29_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n6_lit_integer_α
.Llit_integer_α_29_0:   .quad            1
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_30_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n7_to_α
.Llit_integer_α_30_0:   .quad            2000000
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_to_bx, @function
n7_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_to_α:                mov              r11, 8
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n17_line_mark_α
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
                        test             eax, eax;                            jz    n17_line_mark_α
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
.Lto_α_32_0:            mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n17_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n8_assign_α
n7_to_β:                mov              r11, 8
                        inc              qword ptr [rbp + 128];               jo    n17_line_mark_α
                                                                              jmp   .Lto_α_32_0
                        .size            n7_to_bx, .-n7_to_bx
                        .type            n8_assign_bx, @function
n8_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n9_bound_α
                        .size            n8_assign_bx, .-n8_assign_bx
                        .type            n9_bound_bx, @function
n9_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_bound_α:             mov              r11, 10
                        mov              qword ptr [rbp + 176], rsp;          jmp   n10_var_α
                        .size            n9_bound_bx, .-n9_bound_bx
                        .type            n10_var_bx, @function
n10_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 11
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 280], rax;          jmp   n11_var_α
                        .size            n10_var_bx, .-n10_var_bx
                        .type            n11_var_bx, @function
n11_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 296], rax;          jmp   n12_coerce_numeric_α
                        .size            n11_var_bx, .-n11_var_bx
                        .type            n12_coerce_numeric_bx, @function
n12_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   mov              r11, 13
                        mov              eax, dword ptr [rbp + 368]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_41_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_41_0
                        mov              eax, dword ptr [rbp + 384]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_41_0
.Lcoerce_numeric_α_41_1:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 264], rax;          jmp   n13_coerce_numeric_α
.Lcoerce_numeric_α_41_0:
                        lea              rdi, [rbp + 368]
                        lea              rsi, [rbp + 384]
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
                        cmp              al, 104;                             je    n16_unmark_α
                                                                              jmp   n13_coerce_numeric_α
                        .size            n12_coerce_numeric_bx, .-n12_coerce_numeric_bx
                        .type            n13_coerce_numeric_bx, @function
n13_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_coerce_numeric_α:   mov              r11, 14
                        mov              eax, dword ptr [rbp + 384]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_43_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_43_0
                        mov              eax, dword ptr [rbp + 368]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_43_0
.Lcoerce_numeric_α_43_1:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 248], rax;          jmp   n14_binop_α
.Lcoerce_numeric_α_43_0:
                        lea              rdi, [rbp + 384]
                        lea              rsi, [rbp + 368]
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
                        cmp              al, 104;                             je    n16_unmark_α
                                                                              jmp   n14_binop_α
                        .size            n13_coerce_numeric_bx, .-n13_coerce_numeric_bx
                        .type            n14_binop_bx, @function
n14_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            mov              r11, 15
                        mov              eax, dword ptr [rbp + 256]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_44_2
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        add              rax, rdx;                            jo    .Lbinop_α_44_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_44_7
.Lbinop_α_44_2:         and              edx, 1;                              jz    .Lbinop_α_44_0
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdi, qword ptr [rbp + 248]
                        cmp              al, 5;                               je    .Lbinop_α_44_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_44_4
.Lbinop_α_44_3:         movq             xmm0, rsi
.Lbinop_α_44_4:         cmp              cl, 5;                               je    .Lbinop_α_44_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_44_6
.Lbinop_α_44_5:         movq             xmm1, rdi
.Lbinop_α_44_6:         addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_44_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_44_7:                                                               jmp   n15_assign_α
.Lbinop_α_44_0:         mov              rdi, qword ptr [rbp + 256]
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
                        cmp              al, 104;                             je    n16_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n15_assign_α
                        .size            n14_binop_bx, .-n14_binop_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n16_unmark_α
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_unmark_bx, @function
n16_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_unmark_α:           mov              r11, 17
                        mov              rsp, qword ptr [rbp + 176];          jmp   n7_to_β
                        .size            n16_unmark_bx, .-n16_unmark_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_line_mark_α:        mov              r11, 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n18_var_ref_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 368]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n19_deref_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_deref_bx, @function
n19_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_deref_α:            mov              r11, 20
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
                        mov              qword ptr [rbp + 72], rdx;           jmp   n20_call_icon_α
                        .size            n19_deref_bx, .-n19_deref_bx
                        .type            n20_call_icon_bx, @function
n20_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_icon_α:        mov              r11, 21
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn54:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn54]
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
n20_call_icon_β:        mov              r11, 21;                             jmp   main_ω
                        .size            n20_call_icon_bx, .-n20_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_53_248
                        .section         .rodata
.Licn_trace_nm55:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm55]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_53_248:        mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_53_249
                        .section         .rodata
.Licn_trace_nm56:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_53_249:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
