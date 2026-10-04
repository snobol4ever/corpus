                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnint_mod_isolate.icn"
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
                        sub              rsp, 464
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 456
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 376], rax
                        mov              dword ptr [rsp + 368], 160
                        mov              dword ptr [rsp + 372], 464
                        mov              eax, 0
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rax, qword ptr [rip + rt_sxt_fr_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              dword ptr [rax + 20], 1
                        mov              qword ptr [rax + 0], 0
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rdi, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rdi, qword ptr [rdi + 0]
                        mov              ecx, dword ptr [rdi + 0]
                        cmp              ecx, 65536;                          jae   .Lmain_α_0_245
                        mov              rsi, 48
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
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rdi + 40], rsi
.Lmain_α_0_245:
main_α_body:
                        .type            n1_call_bx, @function
n1_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              lea              rdi, [rbp + 336]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:207
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
                        mov              rcx, qword ptr [rip + .Lline_mark_α_22_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n3_line_mark_α
.Lline_mark_α_22_0:     .quad            .Lline_mark_α_22_0_s
.Lline_mark_α_22_0_s:   .string          "bench_icnint_mod_isolate.icn"
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 3;              jmp   n4_lit_integer_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_25_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n5_lit_integer_α
.Llit_integer_α_25_0:   .quad            1
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_26_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n6_to_α
.Llit_integer_α_26_0:   .quad            2000000
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_to_bx, @function
n6_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_to_α:                mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n15_line_mark_α
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
1:                      mov              rdi, qword ptr [rbp + 144]
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
                        push             rax                                  # gc_poll bb_to.cpp:160
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
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n15_line_mark_α
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
                        push             rax                                  # gc_poll bb_to.cpp:168
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
1:                      mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lto_α_28_0:            mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n15_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n7_assign_α
n6_to_β:                inc              qword ptr [rbp + 128];               jo    n15_line_mark_α
                                                                              jmp   .Lto_α_28_0
                        .size            n6_to_bx, .-n6_to_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n8_bound_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_bound_bx, @function
n8_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_bound_α:             mov              qword ptr [rbp + 192], rsp;          jmp   n9_var_α
                        .size            n8_bound_bx, .-n8_bound_bx
                        .type            n9_var_bx, @function
n9_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_α:               mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 264], rax;          jmp   n10_lit_integer_α
                        .size            n9_var_bx, .-n9_var_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_34_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n11_coerce_numeric_α
.Llit_integer_α_34_0:   .quad            97
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_coerce_numeric_bx, @function
n11_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_coerce_numeric_α:   mov              eax, dword ptr [rbp + 352]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_36_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_36_0
                        mov              eax, dword ptr [rbp + 272]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_36_0
.Lcoerce_numeric_α_36_1:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 248], rax;          jmp   n12_binop_α
.Lcoerce_numeric_α_36_0:
                        lea              rdi, [rbp + 352]
                        lea              rsi, [rbp + 272]
                        lea              rdx, [rbp + 240]
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
1:                      mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n14_unmark_α
                                                                              jmp   n12_binop_α
                        .size            n11_coerce_numeric_bx, .-n11_coerce_numeric_bx
                        .type            n12_binop_bx, @function
n12_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_binop_α:            mov              rdi, qword ptr [rbp + 240]
                        mov              rsi, qword ptr [rbp + 248]
                        mov              rdx, qword ptr [rbp + 272]
                        mov              rcx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mod_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n14_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
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
1:                                                                            jmp   n13_assign_α
                        .size            n12_binop_bx, .-n12_binop_bx
                        .type            n13_assign_bx, @function
n13_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_α:           mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n14_unmark_α
                        .size            n13_assign_bx, .-n13_assign_bx
                        .type            n14_unmark_bx, @function
n14_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_unmark_α:           mov              rsp, qword ptr [rbp + 192];          jmp   n6_to_β
                        .size            n14_unmark_bx, .-n14_unmark_bx
                        .type            n15_line_mark_bx, @function
n15_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n16_var_ref_α
                        .size            n15_line_mark_bx, .-n15_line_mark_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 336]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n17_deref_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_deref_bx, @function
n17_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_deref_α:            mov              rdi, qword ptr [rbp + 48]
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
                        mov              qword ptr [rbp + 72], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
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
1:                                                                            jmp   n18_line_mark_α
                        .size            n17_deref_bx, .-n17_deref_bx
                        .type            n18_line_mark_bx, @function
n18_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 4;              jmp   n19_call_icon_α
                        .size            n18_line_mark_bx, .-n18_line_mark_bx
                        .type            n19_call_icon_bx, @function
n19_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_icon_α:        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn49:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn49]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:248
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
1:                      cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n19_call_icon_β:                                                              jmp   main_ω
                        .size            n19_call_icon_bx, .-n19_call_icon_bx
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
                        .quad            1994211282266
                        .quad            38654705744
                        .quad            .Lgcmap_main_s
                        .quad            368
                        .quad            5
                        .quad            140737488355328
                        .quad            17596481011840
                        .quad            52776558133392
                        .quad            17596481011904
                        .quad            175921860444368
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
                        .long            352
                        .long            336
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
