                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnstr_concat_strvar.icn"
                        .file            2 "<included>"
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
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
                        sub              rsp, 528
                        mov              qword ptr [rsp + 520], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 384
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
                        mov              rcx, qword ptr [rip + .Lline_mark_α_22_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_22_0:     .quad            .Lline_mark_α_22_0_s
.Lline_mark_α_22_0_s:   .string          "bench_icnstr_concat_strvar.icn"
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
                        mov              qword ptr [rbp + 320], 2             # result
                        mov              dword ptr [rbp + 324], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_25_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n4_assign_α
.Llit_string_α_25_0:    .quad            .Llit_string_α_25_0_s
.Llit_string_α_25_0_s:  .string          "ijklmnop"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              r11, 4
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n5_line_mark_α
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
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_29_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n7_lit_integer_α
.Llit_integer_α_29_0:   .quad            1
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rbp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_30_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n8_to_α
.Llit_integer_α_30_0:   .quad            2000000
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_to_bx, @function
n8_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_to_α:                mov              r11, 8
                        mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n16_line_mark_α
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
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n16_line_mark_α
                        mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], 3
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 144], rax
.Lto_α_32_0:            mov              rax, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 184]
                        cmp              rax, rcx;                            jg    n16_line_mark_α
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax;          jmp   n9_assign_α
n8_to_β:                mov              r11, 8
                        inc              qword ptr [rbp + 144];               jo    n16_line_mark_α
                                                                              jmp   .Lto_α_32_0
                        .size            n8_to_bx, .-n8_to_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 9
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n10_bound_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_bound_bx, @function
n10_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_bound_α:            mov              r11, 10
                        mov              qword ptr [rbp + 192], rsp;          jmp   n11_lit_string_α
                        .size            n10_bound_bx, .-n10_bound_bx
                        .type            n11_lit_string_bx, @function
n11_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_36_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n12_var_α
.Llit_string_α_36_0:    .quad            .Llit_string_α_36_0_s
.Llit_string_α_36_0_s:  .string          "abcdefgh"
                        .size            n11_lit_string_bx, .-n11_lit_string_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 12
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 296], rax;          jmp   n13_binop_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_binop_bx, @function
n13_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:            mov              r11, 13
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n14_assign_α
                        .size            n13_binop_bx, .-n13_binop_bx
                        .type            n14_assign_bx, @function
n14_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 14
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n15_unmark_α
                        .size            n14_assign_bx, .-n14_assign_bx
                        .type            n15_unmark_bx, @function
n15_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_unmark_α:           mov              r11, 15
                        mov              rsp, qword ptr [rbp + 192];          jmp   n8_to_β
                        .size            n15_unmark_bx, .-n15_unmark_bx
                        .type            n16_line_mark_bx, @function
n16_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_line_mark_α:        mov              r11, 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n17_var_α
                        .size            n16_line_mark_bx, .-n16_line_mark_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 88], rax;           jmp   n18_unop_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_unop_bx, @function
n18_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_unop_α:             mov              r11, 18
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_size_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx;           jmp   n19_line_mark_α
                        .size            n18_unop_bx, .-n18_unop_bx
                        .type            n19_line_mark_bx, @function
n19_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_line_mark_α:        mov              r11, 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n20_call_icon_α
                        .size            n19_line_mark_bx, .-n19_line_mark_bx
                        .type            n20_call_icon_bx, @function
n20_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_icon_α:        mov              r11, 20
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn51:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn51]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n20_call_icon_β:        mov              r11, 20;                             jmp   main_ω
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
                        cmp              rax, 0;                              je    .Lmain_α_50_248
                        .section         .rodata
.Licn_trace_nm52:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm52]
                        mov              rsi, qword ptr [rbx + 16]
                        mov              rdx, qword ptr [rbx + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_return_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_50_248:        mov              rsp, rbx
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
                        cmp              rax, 0;                              je    .Lmain_α_50_249
                        .section         .rodata
.Licn_trace_nm53:       .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Licn_trace_nm53]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_trace_fail_hook@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_50_249:        mov              rsp, rbx
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
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_iln00001_0:    .string          "i"
.Lstartup_iln00001_1:    .string          "t"
.Lstartup_iln00001_2:    .string          "s"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00001_0
                        .quad            .Lstartup_iln00001_1
                        .quad            .Lstartup_iln00001_2
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            400
                        .long            384
                        .long            416
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
