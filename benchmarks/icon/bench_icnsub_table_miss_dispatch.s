                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnsub_table_miss_dispatch.icn"
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
                        sub              rsp, 672
                        mov              qword ptr [rsp + 664], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 528
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
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_29_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_29_0:     .quad            .Lline_mark_α_29_0_s
.Lline_mark_α_29_0_s:   .string          "bench_icnsub_table_miss_dispatch.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n3_lit_integer_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rbp + 480], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_32_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n4_call_icon_α
.Llit_integer_α_32_0:   .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_call_icon_bx, @function
n4_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_icon_α:         mov              r11, 4
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        .section         .rodata
.Lcall_icon_α_rkfn34:   .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn34]
                        lea              rsi, [rbp + 448]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n6_line_mark_α
                                                                              jmp   n5_assign_α
n4_call_icon_β:         mov              r11, 4;                              jmp   n6_line_mark_α
                        .size            n4_call_icon_bx, .-n4_call_icon_bx
                        .type            n5_assign_bx, @function
n5_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              r11, 5
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n6_line_mark_α
                        .size            n5_assign_bx, .-n5_assign_bx
                        .type            n6_line_mark_bx, @function
n6_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_line_mark_α:         mov              r11, 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n7_var_ref_α
                        .size            n6_line_mark_bx, .-n6_line_mark_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n8_lit_string_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_lit_string_bx, @function
n8_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_string_α:        mov              r11, 8
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_40_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n9_subscript_α
.Llit_string_α_40_0:    .quad            .Llit_string_α_40_0_s
.Llit_string_α_40_0_s:  .string          "seed"
                        .size            n8_lit_string_bx, .-n8_lit_string_bx
                        .type            n9_subscript_bx, @function
n9_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_subscript_α:         mov              r11, 9
                        mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n12_line_mark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n10_lit_integer_α
                        .size            n9_subscript_bx, .-n9_subscript_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              r11, 10
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_42_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n11_assign_var_α
.Llit_integer_α_42_0:   .quad            1
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_assign_var_bx, @function
n11_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_var_α:       mov              r11, 11
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
                        cmp              al, 104;                             je    n12_line_mark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n12_line_mark_α
                        .size            n11_assign_var_bx, .-n11_assign_var_bx
                        .type            n12_line_mark_bx, @function
n12_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_line_mark_α:        mov              r11, 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n13_lit_integer_α
                        .size            n12_line_mark_bx, .-n12_line_mark_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              r11, 13
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_46_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n14_lit_integer_α
.Llit_integer_α_46_0:   .quad            1
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              r11, 14
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_47_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n15_to_α
.Llit_integer_α_47_0:   .quad            2000000
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_to_bx, @function
n15_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_to_α:               mov              r11, 15
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n24_line_mark_α
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
                        test             eax, eax;                            jz    n24_line_mark_α
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
.Lto_α_49_0:            mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n24_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n16_assign_α
n15_to_β:               mov              r11, 15
                        inc              qword ptr [rbp + 128];               jo    n24_line_mark_α
                                                                              jmp   .Lto_α_49_0
                        .size            n15_to_bx, .-n15_to_bx
                        .type            n16_assign_bx, @function
n16_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              r11, 16
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n17_bound_α
                        .size            n16_assign_bx, .-n16_assign_bx
                        .type            n17_bound_bx, @function
n17_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_bound_α:            mov              r11, 17
                        mov              qword ptr [rbp + 176], rsp;          jmp   n18_var_ref_α
                        .size            n17_bound_bx, .-n17_bound_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n19_lit_string_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_55_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n20_subscript_α
.Llit_string_α_55_0:    .quad            .Llit_string_α_55_0_s
.Llit_string_α_55_0_s:  .string          "absent"
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_subscript_bx, @function
n20_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_subscript_α:        mov              r11, 20
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
                        cmp              al, 104;                             je    n23_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n21_deref_α
                        .size            n20_subscript_bx, .-n20_subscript_bx
                        .type            n21_deref_bx, @function
n21_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_deref_α:            mov              r11, 21
                        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n23_unmark_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n22_assign_α
                        .size            n21_deref_bx, .-n21_deref_bx
                        .type            n22_assign_bx, @function
n22_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              r11, 22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n23_unmark_α
                        .size            n22_assign_bx, .-n22_assign_bx
                        .type            n23_unmark_bx, @function
n23_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_unmark_α:           mov              r11, 23
                        mov              rsp, qword ptr [rbp + 176];          jmp   n15_to_β
                        .size            n23_unmark_bx, .-n23_unmark_bx
                        .type            n24_line_mark_bx, @function
n24_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_line_mark_α:        mov              r11, 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n25_var_ref_α
                        .size            n24_line_mark_bx, .-n24_line_mark_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n26_deref_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_deref_bx, @function
n26_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_deref_α:            mov              r11, 26
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
                        mov              qword ptr [rbp + 72], rdx;           jmp   n27_call_icon_α
                        .size            n26_deref_bx, .-n26_deref_bx
                        .type            n27_call_icon_bx, @function
n27_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_icon_α:        mov              r11, 27
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn67:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn67]
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
n27_call_icon_β:        mov              r11, 27;                             jmp   main_ω
                        .size            n27_call_icon_bx, .-n27_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_66_248
                        .section         .rodata
.Licn_trace_nm68:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm68]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_66_248:        mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_66_249
                        .section         .rodata
.Licn_trace_nm69:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm69]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_66_249:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
