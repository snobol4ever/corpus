                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnstr_concat_table.icn"
                        .file            2 "<included>"
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
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage_argv@PLT
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
                        sub              rsp, 832
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 824
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 728], rax
                        mov              dword ptr [rsp + 720], 160
                        mov              dword ptr [rsp + 724], 832
                        mov              eax, 0
                        mov              qword ptr [rsp + 824], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 3
                        call             rt_icn_zframe_args_install@PLT
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lmain_α_0_245
                        mov              rsi, 40
                        imul             rcx, rsi
                        mov              rdi, qword ptr [rip + g_icn_act@GOTPCREL]
                        add              rdi, rcx
                        .section         .rodata
.Licn_act_nm0:          .string          "main"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rsi, [rip + .Licn_act_nm0]
                        mov              qword ptr [rdi + 0], rsi
                        mov              qword ptr [rdi + 8], rsp
                        mov              dword ptr [rdi + 16], 0
                        mov              rsi, qword ptr [rip + g_line@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 24], rsi
                        mov              rsi, qword ptr [rip + g_file@GOTPCREL]
                        mov              rsi, qword ptr [rsi + 0]
                        mov              qword ptr [rdi + 32], rsi
.Lmain_α_0_245:
main_α_body:
                        .type            n1_call_bx, @function
n1_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              lea              rdi, [rbp + 672]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:206
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n2_line_mark_α
                                                                              jmp   n2_line_mark_α
n1_call_β:                                                                    jmp   n2_line_mark_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_42_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n3_line_mark_α
.Lline_mark_α_42_0:     .quad            .Lline_mark_α_42_0_s
.Lline_mark_α_42_0_s:   .string          "bench_icnstr_concat_table.icn"
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n4_lit_string_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              qword ptr [rbp + 592], 2             # result
                        mov              dword ptr [rbp + 596], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_45_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n5_assign_α
.Llit_string_α_45_0:    .quad            .Llit_string_α_45_0_s
.Llit_string_α_45_0_s:  .string          ""
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_assign_bx, @function
n5_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_assign_α:            mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n6_line_mark_α
                        .size            n5_assign_bx, .-n5_assign_bx
                        .type            n6_line_mark_bx, @function
n6_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n7_lit_integer_α
                        .size            n6_line_mark_bx, .-n6_line_mark_bx
                        .type            n7_lit_integer_bx, @function
n7_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:       mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_49_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n8_line_mark_α
.Llit_integer_α_49_0:   .quad            0
                        .size            n7_lit_integer_bx, .-n7_lit_integer_bx
                        .type            n8_line_mark_bx, @function
n8_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n9_call_icon_α
                        .size            n8_line_mark_bx, .-n8_line_mark_bx
                        .type            n9_call_icon_bx, @function
n9_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_icon_α:         mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        .section         .rodata
.Lcall_icon_α_rkfn53:   .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn53]
                        lea              rsi, [rbp + 528]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    n11_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:247
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n10_assign_α
n9_call_icon_β:                                                               jmp   n11_line_mark_α
                        .size            n9_call_icon_bx, .-n9_call_icon_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              rax, qword ptr [rbp + 512]
                        mov              rdx, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n11_line_mark_α
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_line_mark_bx, @function
n11_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5;              jmp   n12_lit_integer_α
                        .size            n11_line_mark_bx, .-n11_line_mark_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rbp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_57_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n13_lit_integer_α
.Llit_integer_α_57_0:   .quad            1
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rbp + 192], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_58_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n14_to_α
.Llit_integer_α_58_0:   .quad            40000
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_to_bx, @function
n14_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_to_α:               mov              rdi, qword ptr [rbp + 176]
                        mov              rsi, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n35_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:37
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 176]
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
                        push             rax                                  # gc_poll bb_to.cpp:128
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n35_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:37
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 192]
                        mov              rsi, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], 3
                        mov              qword ptr [rbp + 200], rax
                        push             rax                                  # gc_poll bb_to.cpp:136
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 160], rax
.Lto_α_60_0:            mov              rax, qword ptr [rbp + 160]
                        mov              rcx, qword ptr [rbp + 200]
                        cmp              rax, rcx;                            jg    n35_line_mark_α
                        mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax;          jmp   n15_assign_α
n14_to_β:               inc              qword ptr [rbp + 160];               jo    n35_line_mark_α
                                                                              jmp   .Lto_α_60_0
                        .size            n14_to_bx, .-n14_to_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n16_bound_α
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_bound_bx, @function
n16_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_bound_α:            mov              qword ptr [rbp + 224], rsp;          jmp   n17_line_mark_α
                        .size            n16_bound_bx, .-n16_bound_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n18_var_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 8], rax;            jmp   n19_lit_string_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rbp + 16], 2              # result
                        mov              dword ptr [rbp + 20], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_68_0]
                        mov              qword ptr [rbp + 24], rax;           jmp   n20_binop_α
.Llit_string_α_68_0:    .quad            .Llit_string_α_68_0_s
.Llit_string_α_68_0_s:  .string          "x"
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_binop_bx, @function
n20_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_binop_α:            mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        mov              rdx, qword ptr [rbp + 16]
                        mov              rcx, qword ptr [rbp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n21_assign_α
                        .size            n20_binop_bx, .-n20_binop_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n22_line_mark_α
                        .size            n21_assign_bx, .-n21_assign_bx
                        .type            n22_line_mark_bx, @function
n22_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n23_var_ref_α
                        .size            n22_line_mark_bx, .-n22_line_mark_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n24_lit_string_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_lit_string_bx, @function
n24_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_string_α:       mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_75_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n25_var_α
.Llit_string_α_75_0:    .quad            .Llit_string_α_75_0_s
.Llit_string_α_75_0_s:  .string          "k"
                        .size            n24_lit_string_bx, .-n24_lit_string_bx
                        .type            n25_var_bx, @function
n25_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 360], rax;          jmp   n26_lit_integer_α
                        .size            n25_var_bx, .-n25_var_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              qword ptr [rbp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_78_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n27_coerce_numeric_α
.Llit_integer_α_78_0:   .quad            97
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_coerce_numeric_bx, @function
n27_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_coerce_numeric_α:   mov              eax, dword ptr [rbp + 688]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_80_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_80_0
                        mov              eax, dword ptr [rbp + 368]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_80_0
.Lcoerce_numeric_α_80_1:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 344], rax;          jmp   n28_binop_α
.Lcoerce_numeric_α_80_0:
                        lea              rdi, [rbp + 688]
                        lea              rsi, [rbp + 368]
                        lea              rdx, [rbp + 336]
                        mov              rcx, 21491613798
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 336]
                        cmp              al, 104;                             je    n34_unmark_α
                                                                              jmp   n28_binop_α
                        .size            n27_coerce_numeric_bx, .-n27_coerce_numeric_bx
                        .type            n28_binop_bx, @function
n28_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_binop_α:            mov              rdi, qword ptr [rbp + 336]
                        mov              rsi, qword ptr [rbp + 344]
                        mov              rdx, qword ptr [rbp + 368]
                        mov              rcx, qword ptr [rbp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_unmark_α
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:347
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n29_binop_α
                        .size            n28_binop_bx, .-n28_binop_bx
                        .type            n29_binop_bx, @function
n29_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_binop_α:            mov              rdi, qword ptr [rbp + 304]
                        mov              rsi, qword ptr [rbp + 312]
                        mov              rdx, qword ptr [rbp + 0]
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:82
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n30_subscript_α
                        .size            n29_binop_bx, .-n29_binop_bx
                        .type            n30_subscript_bx, @function
n30_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_subscript_α:        mov              rdi, qword ptr [rbp + 272]
                        mov              rsi, qword ptr [rbp + 280]
                        mov              rdx, qword ptr [rbp + 288]
                        mov              rcx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_unmark_α
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n31_var_α
                        .size            n30_subscript_bx, .-n30_subscript_bx
                        .type            n31_var_bx, @function
n31_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 424], rax;          jmp   n32_assign_var_α
                        .size            n31_var_bx, .-n31_var_bx
                        .type            n32_assign_var_bx, @function
n32_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_assign_var_α:       mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        mov              rdx, qword ptr [rbp + 416]
                        mov              rcx, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n34_unmark_α
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n33_conjunction_α
                        .size            n32_assign_var_bx, .-n32_assign_var_bx
                        .type            n33_conjunction_bx, @function
n33_conjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_conjunction_α:      mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 264], rax;          jmp   n34_unmark_α
n33_conjunction_β:                                                            jmp   n34_unmark_α
                        .size            n33_conjunction_bx, .-n33_conjunction_bx
                        .type            n34_unmark_bx, @function
n34_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_unmark_α:           mov              rsp, qword ptr [rbp + 224];          jmp   n14_to_β
                        .size            n34_unmark_bx, .-n34_unmark_bx
                        .type            n35_line_mark_bx, @function
n35_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n36_var_α
                        .size            n35_line_mark_bx, .-n35_line_mark_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 104], rax;          jmp   n37_unop_α
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_unop_bx, @function
n37_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_unop_α:             mov              rdi, qword ptr [rbp + 672]
                        mov              rsi, qword ptr [rbp + 680]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n38_line_mark_α
                        .size            n37_unop_bx, .-n37_unop_bx
                        .type            n38_line_mark_bx, @function
n38_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n39_call_icon_α
                        .size            n38_line_mark_bx, .-n38_line_mark_bx
                        .type            n39_call_icon_bx, @function
n39_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_icon_α:        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        .section         .rodata
.Lcall_icon_α_rkfn98:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn98]
                        lea              rsi, [rbp + 48]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:247
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   main_ω
n39_call_icon_β:                                                              jmp   main_ω
                        .size            n39_call_icon_bx, .-n39_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            3574759247194
                        .quad            38654705760
                        .quad            .Lgcmap_main_s
                        .quad            720
                        .quad            5
                        .quad            175921860444160
                        .quad            17596481011872
                        .quad            52776558133424
                        .quad            17596481011936
                        .quad            527765581332720
.Lgcmap_main_s:         .string          "main"
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
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
