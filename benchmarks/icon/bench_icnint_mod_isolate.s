                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnint_mod_isolate.icn"
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
                        sub              rsp, 432
                        mov              qword ptr [rsp + 424], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 320
                        xor              eax, eax
                        mov              ecx, 32
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
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
                        mov              rcx, qword ptr [rip + .Lline_mark_α_19_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_19_0:     .quad            .Lline_mark_α_19_0_s
.Lline_mark_α_19_0_s:   .string          "bench_icnint_mod_isolate.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n3_lit_integer_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_22_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n4_lit_integer_α
.Llit_integer_α_22_0:   .quad            1
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_23_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n5_to_α
.Llit_integer_α_23_0:   .quad            2000000
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_to_bx, @function
n5_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_to_α:                mov              r11, 5
                        mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n14_line_mark_α
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
                        test             eax, eax;                            jz    n14_line_mark_α
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
.Lto_α_25_0:            mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n14_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n6_assign_α
n5_to_β:                mov              r11, 5
                        inc              qword ptr [rbp + 128];               jo    n14_line_mark_α
                                                                              jmp   .Lto_α_25_0
                        .size            n5_to_bx, .-n5_to_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              r11, 6
                        mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n7_bound_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_bound_bx, @function
n7_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_bound_α:             mov              r11, 7
                        mov              qword ptr [rbp + 176], rsp;          jmp   n8_var_α
                        .size            n7_bound_bx, .-n7_bound_bx
                        .type            n8_var_bx, @function
n8_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_α:               mov              r11, 8
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 264], rax;          jmp   n9_lit_integer_α
                        .size            n8_var_bx, .-n8_var_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_31_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n10_coerce_numeric_α
.Llit_integer_α_31_0:   .quad            97
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_coerce_numeric_bx, @function
n10_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_coerce_numeric_α:   mov              r11, 10
                        mov              eax, dword ptr [rbp + 336]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_33_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_33_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_33_0
.Lcoerce_numeric_α_33_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax;          jmp   n11_binop_α
.Lcoerce_numeric_α_33_0:
                        lea              rdi, [rbp + 336]
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 21491613798
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n13_unmark_α
                                                                              jmp   n11_binop_α
                        .size            n10_coerce_numeric_bx, .-n10_coerce_numeric_bx
                        .type            n11_binop_bx, @function
n11_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_binop_α:            mov              r11, 11
                        mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n12_assign_α
                        .size            n11_binop_bx, .-n11_binop_bx
                        .type            n12_assign_bx, @function
n12_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n13_unmark_α
                        .size            n12_assign_bx, .-n12_assign_bx
                        .type            n13_unmark_bx, @function
n13_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_unmark_α:           mov              r11, 13
                        mov              rsp, qword ptr [rbp + 176];          jmp   n5_to_β
                        .size            n13_unmark_bx, .-n13_unmark_bx
                        .type            n14_line_mark_bx, @function
n14_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_line_mark_α:        mov              r11, 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n15_var_ref_α
                        .size            n14_line_mark_bx, .-n14_line_mark_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 320]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n16_deref_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_deref_bx, @function
n16_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_deref_α:            mov              r11, 16
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
                        mov              qword ptr [rbp + 72], rdx;           jmp   n17_call_icon_α
                        .size            n16_deref_bx, .-n16_deref_bx
                        .type            n17_call_icon_bx, @function
n17_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_icon_α:        mov              r11, 17
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn44:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn44]
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
n17_call_icon_β:        mov              r11, 17;                             jmp   main_ω
                        .size            n17_call_icon_bx, .-n17_call_icon_bx
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
                        cmp              rax, 0;                              je    .Lmain_α_43_248
                        .section         .rodata
.Licn_trace_nm45:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm45]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_43_248:        mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_43_249
                        .section         .rodata
.Licn_trace_nm46:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm46]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_43_249:        mov              rsp, rbx
                        pop              rbx
                        pop              rdx
                        pop              rax
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
