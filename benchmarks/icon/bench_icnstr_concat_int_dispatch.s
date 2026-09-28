                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnstr_concat_int_dispatch.icn"
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
                        sub              rsp, 512
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 424], rax
                        mov              dword ptr [rsp + 416], 160
                        mov              dword ptr [rsp + 420], 512
                        mov              eax, 0
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 416
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 2
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
n1_call_α:              mov              r11, 1
                        lea              rdi, [rbp + 384]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:242
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
n1_call_β:              mov              r11, 1;                              jmp   n2_line_mark_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_line_mark_α:         mov              r11, 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_24_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n3_line_mark_α
.Lline_mark_α_24_0:     .quad            .Lline_mark_α_24_0_s
.Lline_mark_α_24_0_s:   .string          "bench_icnstr_concat_int_dispatch.icn"
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              r11, 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n4_lit_integer_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_27_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n5_lit_integer_α
.Llit_integer_α_27_0:   .quad            1
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rbp + 176], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_28_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n6_to_α
.Llit_integer_α_28_0:   .quad            2000000
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_to_bx, @function
n6_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_to_α:                mov              r11, 6
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
                        push             rax                                  # gc_poll bb_to.cpp:41
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
1:                      mov              rdi, qword ptr [rbp + 160]
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
                        push             rax                                  # gc_poll bb_to.cpp:125
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
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n17_line_mark_α
                        push             rax                                  # gc_poll bb_to.cpp:41
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
                        push             rax                                  # gc_poll bb_to.cpp:132
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
1:                      mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 144], rax
.Lto_α_30_0:            mov              rax, qword ptr [rbp + 144]
                        mov              rcx, qword ptr [rbp + 184]
                        cmp              rax, rcx;                            jg    n17_line_mark_α
                        mov              qword ptr [rbp + 128], 3
                        mov              qword ptr [rbp + 136], rax;          jmp   n7_assign_α
n6_to_β:                mov              r11, 6
                        inc              qword ptr [rbp + 144];               jo    n17_line_mark_α
                                                                              jmp   .Lto_α_30_0
                        .size            n6_to_bx, .-n6_to_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 7
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n8_bound_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_bound_bx, @function
n8_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_bound_α:             mov              r11, 8
                        mov              qword ptr [rbp + 208], rsp;          jmp   n9_lit_string_α
                        .size            n8_bound_bx, .-n8_bound_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              r11, 9
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_34_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n10_var_α
.Llit_string_α_34_0:    .quad            .Llit_string_α_34_0_s
.Llit_string_α_34_0_s:  .string          "abcdefgh"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_var_bx, @function
n10_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_α:              mov              r11, 10
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 312], rax;          jmp   n11_lit_integer_α
                        .size            n10_var_bx, .-n10_var_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 11
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_37_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n12_coerce_numeric_α
.Llit_integer_α_37_0:   .quad            97
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_coerce_numeric_bx, @function
n12_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_coerce_numeric_α:   mov              r11, 12
                        mov              eax, dword ptr [rbp + 400]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_39_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_39_0
                        mov              eax, dword ptr [rbp + 320]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_39_0
.Lcoerce_numeric_α_39_1:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 296], rax;          jmp   n13_binop_α
.Lcoerce_numeric_α_39_0:
                        lea              rdi, [rbp + 400]
                        lea              rsi, [rbp + 320]
                        lea              rdx, [rbp + 288]
                        mov              rcx, 21491613798
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:76
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
1:                      mov              eax, dword ptr [rbp + 288]
                        cmp              al, 104;                             je    n16_unmark_α
                                                                              jmp   n13_binop_α
                        .size            n12_coerce_numeric_bx, .-n12_coerce_numeric_bx
                        .type            n13_binop_bx, @function
n13_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_binop_α:            mov              r11, 13
                        mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 320]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n16_unmark_α
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:346
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
1:                                                                            jmp   n14_binop_α
                        .size            n13_binop_bx, .-n13_binop_bx
                        .type            n14_binop_bx, @function
n14_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_binop_α:            mov              r11, 14
                        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 0]
                        mov              rcx, qword ptr [rbp + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             str_concat_fracdigit_d@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:81
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
1:                                                                            jmp   n15_assign_α
                        .size            n14_binop_bx, .-n14_binop_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n16_unmark_α
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_unmark_bx, @function
n16_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_unmark_α:           mov              r11, 16
                        mov              rsp, qword ptr [rbp + 208];          jmp   n6_to_β
                        .size            n16_unmark_bx, .-n16_unmark_bx
                        .type            n17_line_mark_bx, @function
n17_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_line_mark_α:        mov              r11, 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n18_var_α
                        .size            n17_line_mark_bx, .-n17_line_mark_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 88], rax;           jmp   n19_unop_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_unop_bx, @function
n19_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_unop_α:             mov              r11, 19
                        mov              rdi, qword ptr [rbp + 384]
                        mov              rsi, qword ptr [rbp + 392]
                        call             qword ptr [rip + rt_size_d@GOTPCREL]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:110
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
1:                                                                            jmp   n20_line_mark_α
                        .size            n19_unop_bx, .-n19_unop_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_line_mark_α:        mov              r11, 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n21_call_icon_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_call_icon_bx, @function
n21_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_icon_α:        mov              r11, 21
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        .section         .rodata
.Lcall_icon_α_rkfn53:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn53]
                        lea              rsi, [rbp + 32]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              al, 104;                             je    main_ω
                        push             rax                                  # gc_poll bb_call_fn.cpp:268
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
n21_call_icon_β:        mov              r11, 21;                             jmp   main_ω
                        .size            n21_call_icon_bx, .-n21_call_icon_bx
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
                        .quad            2200369712474
                        .quad            38654705744
                        .quad            .Lgcmap_main_s
                        .quad            416
                        .quad            5
                        .quad            158329674399744
                        .quad            17596481011856
                        .quad            52776558133408
                        .quad            17596481011920
                        .quad            211106232533216
.Lgcmap_main_s:         .string          "main"
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
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00001_0
                        .quad            .Lstartup_iln00001_1
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            400
                        .long            384
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_ilnames9000]
                        mov              edx, 2
                        call             rt_proc_set_locals@PLT
                        lea              rdi, [rip + .Lstartup_rootnm]
                        lea              rsi, [rip + .Lstartup_iloffs9000]
                        mov              edx, 2
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
