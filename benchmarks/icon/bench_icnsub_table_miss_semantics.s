                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnsub_table_miss_semantics.icn"
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
                        sub              rsp, 2928
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 2824], rax
                        mov              dword ptr [rsp + 2816], 160
                        mov              dword ptr [rsp + 2820], 2928
                        mov              eax, 0
                        mov              qword ptr [rsp + 2920], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2816
                        rep              stosb
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
n1_call_α:              lea              rdi, [rbp + 2768]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:264
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
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_146_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n3_line_mark_α
.Lline_mark_α_146_0:    .quad            .Lline_mark_α_146_0_s
.Lline_mark_α_146_0_s:  .string          "bench_icnsub_table_miss_semantics.icn"
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_line_mark_bx, @function
n3_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n4_lit_integer_α
                        .size            n3_line_mark_bx, .-n3_line_mark_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              qword ptr [rbp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_149_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n5_line_mark_α
.Llit_integer_α_149_0:  .quad            0
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_line_mark_bx, @function
n5_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n6_call_icon_α
                        .size            n5_line_mark_bx, .-n5_line_mark_bx
                        .type            n6_call_icon_bx, @function
n6_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_call_icon_α:         mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lcall_icon_α_rkfn153:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn153]
                        lea              rsi, [rbp + 2672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              al, 104;                             je    n8_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:301
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
1:                                                                            jmp   n7_assign_α
n6_call_icon_β:                                                               jmp   n8_line_mark_α
                        .size            n6_call_icon_bx, .-n6_call_icon_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n8_line_mark_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_line_mark_bx, @function
n8_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n9_var_ref_α
                        .size            n8_line_mark_bx, .-n8_line_mark_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n10_lit_string_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              qword ptr [rbp + 2560], 2            # result
                        mov              dword ptr [rbp + 2564], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_159_0]
                        mov              qword ptr [rbp + 2568], rax;         jmp   n11_subscript_α
.Llit_string_α_159_0:   .quad            .Llit_string_α_159_0_s
.Llit_string_α_159_0_s: .string          "alpha"
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_subscript_bx, @function
n11_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_subscript_α:        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        mov              rdx, qword ptr [rbp + 2560]
                        mov              rcx, qword ptr [rbp + 2568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n14_line_mark_α
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n12_lit_integer_α
                        .size            n11_subscript_bx, .-n11_subscript_bx
                        .type            n12_lit_integer_bx, @function
n12_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_lit_integer_α:      mov              qword ptr [rbp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_161_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n13_assign_var_α
.Llit_integer_α_161_0:  .quad            11
                        .size            n12_lit_integer_bx, .-n12_lit_integer_bx
                        .type            n13_assign_var_bx, @function
n13_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_assign_var_α:       mov              rdi, qword ptr [rbp + 2592]
                        mov              rsi, qword ptr [rbp + 2600]
                        mov              rdx, qword ptr [rbp + 2624]
                        mov              rcx, qword ptr [rbp + 2632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n14_line_mark_α
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
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
1:                                                                            jmp   n14_line_mark_α
                        .size            n13_assign_var_bx, .-n13_assign_var_bx
                        .type            n14_line_mark_bx, @function
n14_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n15_var_ref_α
                        .size            n14_line_mark_bx, .-n14_line_mark_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n16_lit_string_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_lit_string_bx, @function
n16_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              qword ptr [rbp + 2448], 2            # result
                        mov              dword ptr [rbp + 2452], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_167_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n17_subscript_α
.Llit_string_α_167_0:   .quad            .Llit_string_α_167_0_s
.Llit_string_α_167_0_s: .string          "beta"
                        .size            n16_lit_string_bx, .-n16_lit_string_bx
                        .type            n17_subscript_bx, @function
n17_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_subscript_α:        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2448]
                        mov              rcx, qword ptr [rbp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n20_line_mark_α
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n18_lit_integer_α
                        .size            n17_subscript_bx, .-n17_subscript_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              qword ptr [rbp + 2512], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rbp + 2520], rax;         jmp   n19_assign_var_α
.Llit_integer_α_169_0:  .quad            22
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_assign_var_bx, @function
n19_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_var_α:       mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdx, qword ptr [rbp + 2512]
                        mov              rcx, qword ptr [rbp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n20_line_mark_α
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
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
                        .size            n19_assign_var_bx, .-n19_assign_var_bx
                        .type            n20_line_mark_bx, @function
n20_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n21_var_ref_α
                        .size            n20_line_mark_bx, .-n20_line_mark_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n22_lit_integer_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              qword ptr [rbp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_175_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n23_subscript_α
.Llit_integer_α_175_0:  .quad            7
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_subscript_bx, @function
n23_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_subscript_α:        mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              rdx, qword ptr [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_line_mark_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n24_lit_integer_α
                        .size            n23_subscript_bx, .-n23_subscript_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              qword ptr [rbp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_177_0]
                        mov              qword ptr [rbp + 2408], rax;         jmp   n25_assign_var_α
.Llit_integer_α_177_0:  .quad            77
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_assign_var_bx, @function
n25_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_var_α:       mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2400]
                        mov              rcx, qword ptr [rbp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n26_line_mark_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
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
1:                                                                            jmp   n26_line_mark_α
                        .size            n25_assign_var_bx, .-n25_assign_var_bx
                        .type            n26_line_mark_bx, @function
n26_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n27_var_ref_α
                        .size            n26_line_mark_bx, .-n26_line_mark_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n28_lit_integer_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_lit_integer_bx, @function
n28_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_lit_integer_α:      mov              qword ptr [rbp + 2256], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_183_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n29_subscript_α
.Llit_integer_α_183_0:  .quad            18446744073709551613
                        .size            n28_lit_integer_bx, .-n28_lit_integer_bx
                        .type            n29_subscript_bx, @function
n29_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_subscript_α:        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n32_line_mark_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n30_lit_integer_α
                        .size            n29_subscript_bx, .-n29_subscript_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              qword ptr [rbp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n31_assign_var_α
.Llit_integer_α_185_0:  .quad            33
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_assign_var_bx, @function
n31_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_var_α:       mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2304]
                        mov              rcx, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n32_line_mark_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
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
1:                                                                            jmp   n32_line_mark_α
                        .size            n31_assign_var_bx, .-n31_assign_var_bx
                        .type            n32_line_mark_bx, @function
n32_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n33_var_ref_α
                        .size            n32_line_mark_bx, .-n32_line_mark_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n34_lit_integer_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              qword ptr [rbp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_191_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n35_subscript_α
.Llit_integer_α_191_0:  .quad            0
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_subscript_bx, @function
n35_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_subscript_α:        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n38_line_mark_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n36_lit_integer_α
                        .size            n35_subscript_bx, .-n35_subscript_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              qword ptr [rbp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n37_assign_var_α
.Llit_integer_α_193_0:  .quad            99
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_assign_var_bx, @function
n37_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_var_α:       mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n38_line_mark_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
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
                        .size            n37_assign_var_bx, .-n37_assign_var_bx
                        .type            n38_line_mark_bx, @function
n38_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n39_var_ref_α
                        .size            n38_line_mark_bx, .-n38_line_mark_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n40_lit_string_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_lit_string_bx, @function
n40_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_string_α:       mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_199_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n41_subscript_α
.Llit_string_α_199_0:   .quad            .Llit_string_α_199_0_s
.Llit_string_α_199_0_s: .string          "alpha"
                        .size            n40_lit_string_bx, .-n40_lit_string_bx
                        .type            n41_subscript_bx, @function
n41_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_subscript_α:        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n44_line_mark_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n42_lit_integer_α
                        .size            n41_subscript_bx, .-n41_subscript_bx
                        .type            n42_lit_integer_bx, @function
n42_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:      mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_201_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n43_assign_var_α
.Llit_integer_α_201_0:  .quad            111
                        .size            n42_lit_integer_bx, .-n42_lit_integer_bx
                        .type            n43_assign_var_bx, @function
n43_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_var_α:       mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n44_line_mark_α
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
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
1:                                                                            jmp   n44_line_mark_α
                        .size            n43_assign_var_bx, .-n43_assign_var_bx
                        .type            n44_line_mark_bx, @function
n44_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n45_var_ref_α
                        .size            n44_line_mark_bx, .-n44_line_mark_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n46_lit_string_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_lit_string_bx, @function
n46_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_lit_string_α:       mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_207_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n47_subscript_α
.Llit_string_α_207_0:   .quad            .Llit_string_α_207_0_s
.Llit_string_α_207_0_s: .string          "alpha"
                        .size            n46_lit_string_bx, .-n46_lit_string_bx
                        .type            n47_subscript_bx, @function
n47_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_subscript_α:        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1344]
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n48_lit_string_α
                        .size            n47_subscript_bx, .-n47_subscript_bx
                        .type            n48_lit_string_bx, @function
n48_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:       mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_209_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n49_var_ref_α
.Llit_string_α_209_0:   .quad            .Llit_string_α_209_0_s
.Llit_string_α_209_0_s: .string          " "
                        .size            n48_lit_string_bx, .-n48_lit_string_bx
                        .type            n49_var_ref_bx, @function
n49_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n50_lit_string_α
                        .size            n49_var_ref_bx, .-n49_var_ref_bx
                        .type            n50_lit_string_bx, @function
n50_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_string_α:       mov              qword ptr [rbp + 1440], 2            # result
                        mov              dword ptr [rbp + 1444], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_212_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n51_subscript_α
.Llit_string_α_212_0:   .quad            .Llit_string_α_212_0_s
.Llit_string_α_212_0_s: .string          "beta"
                        .size            n50_lit_string_bx, .-n50_lit_string_bx
                        .type            n51_subscript_bx, @function
n51_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_subscript_α:        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n52_lit_string_α
                        .size            n51_subscript_bx, .-n51_subscript_bx
                        .type            n52_lit_string_bx, @function
n52_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:       mov              qword ptr [rbp + 1488], 2            # result
                        mov              dword ptr [rbp + 1492], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_214_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n53_var_ref_α
.Llit_string_α_214_0:   .quad            .Llit_string_α_214_0_s
.Llit_string_α_214_0_s: .string          " "
                        .size            n52_lit_string_bx, .-n52_lit_string_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n54_lit_integer_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_lit_integer_bx, @function
n54_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_lit_integer_α:      mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_217_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n55_subscript_α
.Llit_integer_α_217_0:  .quad            7
                        .size            n54_lit_integer_bx, .-n54_lit_integer_bx
                        .type            n55_subscript_bx, @function
n55_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_subscript_α:        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n56_lit_string_α
                        .size            n55_subscript_bx, .-n55_subscript_bx
                        .type            n56_lit_string_bx, @function
n56_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_string_α:       mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_219_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n57_var_ref_α
.Llit_string_α_219_0:   .quad            .Llit_string_α_219_0_s
.Llit_string_α_219_0_s: .string          " "
                        .size            n56_lit_string_bx, .-n56_lit_string_bx
                        .type            n57_var_ref_bx, @function
n57_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n58_lit_integer_α
                        .size            n57_var_ref_bx, .-n57_var_ref_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_222_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n59_subscript_α
.Llit_integer_α_222_0:  .quad            18446744073709551613
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_subscript_bx, @function
n59_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_subscript_α:        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1616]
                        mov              rcx, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n60_lit_string_α
                        .size            n59_subscript_bx, .-n59_subscript_bx
                        .type            n60_lit_string_bx, @function
n60_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_224_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n61_var_ref_α
.Llit_string_α_224_0:   .quad            .Llit_string_α_224_0_s
.Llit_string_α_224_0_s: .string          " "
                        .size            n60_lit_string_bx, .-n60_lit_string_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n62_lit_integer_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_lit_integer_bx, @function
n62_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_integer_α:      mov              qword ptr [rbp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_227_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n63_subscript_α
.Llit_integer_α_227_0:  .quad            0
                        .size            n62_lit_integer_bx, .-n62_lit_integer_bx
                        .type            n63_subscript_bx, @function
n63_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_subscript_α:        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n64_lit_string_α
                        .size            n63_subscript_bx, .-n63_subscript_bx
                        .type            n64_lit_string_bx, @function
n64_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_lit_string_α:       mov              qword ptr [rbp + 1728], 2            # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_229_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n65_var_ref_α
.Llit_string_α_229_0:   .quad            .Llit_string_α_229_0_s
.Llit_string_α_229_0_s: .string          " "
                        .size            n64_lit_string_bx, .-n64_lit_string_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n66_lit_string_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              qword ptr [rbp + 1776], 2            # result
                        mov              dword ptr [rbp + 1780], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_232_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n67_subscript_α
.Llit_string_α_232_0:   .quad            .Llit_string_α_232_0_s
.Llit_string_α_232_0_s: .string          "missing"
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_subscript_bx, @function
n67_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_subscript_α:        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n68_lit_string_α
                        .size            n67_subscript_bx, .-n67_subscript_bx
                        .type            n68_lit_string_bx, @function
n68_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       mov              qword ptr [rbp + 1824], 2            # result
                        mov              dword ptr [rbp + 1828], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_234_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n69_var_ref_α
.Llit_string_α_234_0:   .quad            .Llit_string_α_234_0_s
.Llit_string_α_234_0_s: .string          " "
                        .size            n68_lit_string_bx, .-n68_lit_string_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n70_lit_integer_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      mov              qword ptr [rbp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_237_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n71_subscript_α
.Llit_integer_α_237_0:  .quad            12345
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_subscript_bx, @function
n71_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_subscript_α:        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n72_deref_α
                        .size            n71_subscript_bx, .-n71_subscript_bx
                        .type            n72_deref_bx, @function
n72_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_deref_α:            mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n73_deref_α
                        .size            n72_deref_bx, .-n72_deref_bx
                        .type            n73_deref_bx, @function
n73_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_deref_α:            mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n74_deref_α
                        .size            n73_deref_bx, .-n73_deref_bx
                        .type            n74_deref_bx, @function
n74_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:            mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n75_deref_α
                        .size            n74_deref_bx, .-n74_deref_bx
                        .type            n75_deref_bx, @function
n75_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n76_deref_α
                        .size            n75_deref_bx, .-n75_deref_bx
                        .type            n76_deref_bx, @function
n76_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_deref_α:            mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n77_deref_α
                        .size            n76_deref_bx, .-n76_deref_bx
                        .type            n77_deref_bx, @function
n77_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_deref_α:            mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n78_deref_α
                        .size            n77_deref_bx, .-n77_deref_bx
                        .type            n78_deref_bx, @function
n78_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_deref_α:            mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n81_line_mark_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n79_line_mark_α
                        .size            n78_deref_bx, .-n78_deref_bx
                        .type            n79_line_mark_bx, @function
n79_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n80_call_icon_α
                        .size            n79_line_mark_bx, .-n79_line_mark_bx
                        .type            n80_call_icon_bx, @function
n80_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_call_icon_α:        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1112], rax
                        .section         .rodata
.Lcall_icon_α_rkfn249:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn249]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n81_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:301
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
1:                                                                            jmp   n81_line_mark_α
n80_call_icon_β:                                                              jmp   n81_line_mark_α
                        .size            n80_call_icon_bx, .-n80_call_icon_bx
                        .type            n81_line_mark_bx, @function
n81_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n82_lit_integer_α
                        .size            n81_line_mark_bx, .-n81_line_mark_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_252_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n83_assign_α
.Llit_integer_α_252_0:  .quad            0
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_assign_bx, @function
n83_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_assign_α:           mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n84_line_mark_α
                        .size            n83_assign_bx, .-n83_assign_bx
                        .type            n84_line_mark_bx, @function
n84_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n85_lit_integer_α
                        .size            n84_line_mark_bx, .-n84_line_mark_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_256_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n86_lit_integer_α
.Llit_integer_α_256_0:  .quad            1
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_lit_integer_bx, @function
n86_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:      mov              qword ptr [rbp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_257_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n87_to_α
.Llit_integer_α_257_0:  .quad            5000
                        .size            n86_lit_integer_bx, .-n86_lit_integer_bx
                        .type            n87_to_bx, @function
n87_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_to_α:               mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n99_line_mark_α
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
1:                      mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], 3
                        mov              qword ptr [rbp + 824], rax
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
1:                      mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n99_line_mark_α
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
1:                      mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax
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
1:                      mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 800], rax
.Lto_α_259_0:           mov              rax, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 840]
                        cmp              rax, rcx;                            jg    n99_line_mark_α
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax;          jmp   n88_assign_α
n87_to_β:               inc              qword ptr [rbp + 800];               jo    n99_line_mark_α
                                                                              jmp   .Lto_α_259_0
                        .size            n87_to_bx, .-n87_to_bx
                        .type            n88_assign_bx, @function
n88_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_assign_α:           mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n89_bound_α
                        .size            n88_assign_bx, .-n88_assign_bx
                        .type            n89_bound_bx, @function
n89_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_bound_α:            mov              qword ptr [rbp + 864], rsp;          jmp   n90_var_ref_α
                        .size            n89_bound_bx, .-n89_bound_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n91_var_ref_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n92_deref_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_deref_bx, @function
n92_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_deref_α:            mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n98_unmark_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n93_line_mark_α
                        .size            n92_deref_bx, .-n92_deref_bx
                        .type            n93_line_mark_bx, @function
n93_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n94_call_icon_α
                        .size            n93_line_mark_bx, .-n93_line_mark_bx
                        .type            n94_call_icon_bx, @function
n94_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_call_icon_α:        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lcall_icon_α_rkfn271:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn271]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    n98_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:301
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
1:                                                                            jmp   n95_subscript_α
n94_call_icon_β:                                                              jmp   n98_unmark_α
                        .size            n94_call_icon_bx, .-n94_call_icon_bx
                        .type            n95_subscript_bx, @function
n95_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_subscript_α:        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n98_unmark_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n96_var_α
                        .size            n95_subscript_bx, .-n95_subscript_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n97_assign_var_α
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_assign_var_bx, @function
n97_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_var_α:       mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n98_unmark_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        push             rax                                  # gc_poll bb_assign_var.cpp:47
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
1:                                                                            jmp   n98_unmark_α
                        .size            n97_assign_var_bx, .-n97_assign_var_bx
                        .type            n98_unmark_bx, @function
n98_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_unmark_α:           mov              rsp, qword ptr [rbp + 864];          jmp   n87_to_β
                        .size            n98_unmark_bx, .-n98_unmark_bx
                        .type            n99_line_mark_bx, @function
n99_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n00001_lit_integer_α
                        .size            n99_line_mark_bx, .-n99_line_mark_bx
                        .type            n00001_lit_integer_bx, @function
n00001_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_lit_integer_α:     mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_280_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00002_lit_integer_α
.Llit_integer_α_280_0:  .quad            1
                        .size            n00001_lit_integer_bx, .-n00001_lit_integer_bx
                        .type            n00002_lit_integer_bx, @function
n00002_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_lit_integer_α:     mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_281_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00003_to_α
.Llit_integer_α_281_0:  .quad            5000
                        .size            n00002_lit_integer_bx, .-n00002_lit_integer_bx
                        .type            n00003_to_bx, @function
n00003_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00003_to_α:              mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00004_line_mark_α
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
1:                      mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], 3
                        mov              qword ptr [rbp + 504], rax
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
1:                      mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00004_line_mark_α
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
1:                      mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], 3
                        mov              qword ptr [rbp + 520], rax
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
1:                      mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 480], rax
.Lto_α_283_0:           mov              rax, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 520]
                        cmp              rax, rcx;                            jg    n00004_line_mark_α
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax;          jmp   n00005_assign_α
n00003_to_β:              inc              qword ptr [rbp + 480];               jo    n00004_line_mark_α
                                                                              jmp   .Lto_α_283_0
                        .size            n00003_to_bx, .-n00003_to_bx
                        .type            n00005_assign_bx, @function
n00005_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_assign_α:          mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n00006_bound_α
                        .size            n00005_assign_bx, .-n00005_assign_bx
                        .type            n00006_bound_bx, @function
n00006_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_bound_α:           mov              qword ptr [rbp + 544], rsp;          jmp   n00007_var_α
                        .size            n00006_bound_bx, .-n00006_bound_bx
                        .type            n00007_var_bx, @function
n00007_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_α:             mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 632], rax;          jmp   n00008_var_ref_α
                        .size            n00007_var_bx, .-n00007_var_bx
                        .type            n00008_var_ref_bx, @function
n00008_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00009_var_ref_α
                        .size            n00008_var_ref_bx, .-n00008_var_ref_bx
                        .type            n00009_var_ref_bx, @function
n00009_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00010_deref_α
                        .size            n00009_var_ref_bx, .-n00009_var_ref_bx
                        .type            n00010_deref_bx, @function
n00010_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_deref_α:           mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_unmark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n00012_line_mark_α
                        .size            n00010_deref_bx, .-n00010_deref_bx
                        .type            n00012_line_mark_bx, @function
n00012_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n00013_call_icon_α
                        .size            n00012_line_mark_bx, .-n00012_line_mark_bx
                        .type            n00013_call_icon_bx, @function
n00013_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_call_icon_α:       mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lcall_icon_α_rkfn297:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn297]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n00011_unmark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:301
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
1:                                                                            jmp   n00014_subscript_α
n00013_call_icon_β:                                                             jmp   n00011_unmark_α
                        .size            n00013_call_icon_bx, .-n00013_call_icon_bx
                        .type            n00014_subscript_bx, @function
n00014_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_subscript_α:       mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_unmark_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n00015_deref_α
                        .size            n00014_subscript_bx, .-n00014_subscript_bx
                        .type            n00015_deref_bx, @function
n00015_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_deref_α:           mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_unmark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n00016_coerce_numeric_α
                        .size            n00015_deref_bx, .-n00015_deref_bx
                        .type            n00016_coerce_numeric_bx, @function
n00016_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_301_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_301_0
.Lcoerce_numeric_α_301_1:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00017_coerce_numeric_α
.Lcoerce_numeric_α_301_0:
                        lea              rdi, [rbp + 2768]
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 608]
                        mov              rcx, 4311744614
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
1:                      mov              eax, dword ptr [rbp + 608]
                        cmp              al, 104;                             je    n00011_unmark_α
                                                                              jmp   n00017_coerce_numeric_α
                        .size            n00016_coerce_numeric_bx, .-n00016_coerce_numeric_bx
                        .type            n00017_coerce_numeric_bx, @function
n00017_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_coerce_numeric_α:  mov              eax, dword ptr [rbp + 752]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_303_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_303_0
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_303_0
.Lcoerce_numeric_α_303_1:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00018_binop_α
.Lcoerce_numeric_α_303_0:
                        lea              rdi, [rbp + 752]
                        lea              rsi, [rbp + 2768]
                        lea              rdx, [rbp + 592]
                        mov              rcx, 281479288455270
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
1:                      mov              eax, dword ptr [rbp + 592]
                        cmp              al, 104;                             je    n00011_unmark_α
                                                                              jmp   n00018_binop_α
                        .size            n00017_coerce_numeric_bx, .-n00017_coerce_numeric_bx
                        .type            n00018_binop_bx, @function
n00018_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_binop_α:           mov              eax, dword ptr [rbp + 608]
                        mov              ecx, dword ptr [rbp + 592]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_304_2
                        mov              rax, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 600]
                        add              rax, rdx;                            jo    .Lbinop_α_304_0
                        mov              qword ptr [rbp + 576], 3
                        mov              qword ptr [rbp + 584], rax;          jmp   .Lbinop_α_304_7
.Lbinop_α_304_2:        and              edx, 1;                              jz    .Lbinop_α_304_0
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdi, qword ptr [rbp + 600]
                        cmp              al, 5;                               je    .Lbinop_α_304_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_304_4
.Lbinop_α_304_3:        movq             xmm0, rsi
.Lbinop_α_304_4:        cmp              cl, 5;                               je    .Lbinop_α_304_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_304_6
.Lbinop_α_304_5:        movq             xmm1, rdi
.Lbinop_α_304_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_304_0
                        mov              qword ptr [rbp + 576], 5
                        mov              qword ptr [rbp + 584], rax
.Lbinop_α_304_7:                                                              jmp   n00019_assign_α
.Lbinop_α_304_0:        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00011_unmark_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:293
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
1:                                                                            jmp   n00019_assign_α
                        .size            n00018_binop_bx, .-n00018_binop_bx
                        .type            n00019_assign_bx, @function
n00019_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_assign_α:          mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n00011_unmark_α
                        .size            n00019_assign_bx, .-n00019_assign_bx
                        .type            n00011_unmark_bx, @function
n00011_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00011_unmark_α:          mov              rsp, qword ptr [rbp + 544];          jmp   n00003_to_β
                        .size            n00011_unmark_bx, .-n00011_unmark_bx
                        .type            n00004_line_mark_bx, @function
n00004_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00020_var_ref_α
                        .size            n00004_line_mark_bx, .-n00004_line_mark_bx
                        .type            n00020_var_ref_bx, @function
n00020_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00021_deref_α
                        .size            n00020_var_ref_bx, .-n00020_var_ref_bx
                        .type            n00021_deref_bx, @function
n00021_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00021_deref_α:           mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00022_line_mark_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n00023_line_mark_α
                        .size            n00021_deref_bx, .-n00021_deref_bx
                        .type            n00023_line_mark_bx, @function
n00023_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00024_call_icon_α
                        .size            n00023_line_mark_bx, .-n00023_line_mark_bx
                        .type            n00024_call_icon_bx, @function
n00024_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_call_icon_α:       mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lcall_icon_α_rkfn316:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn316]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    n00022_line_mark_α
                        push             rax                                  # gc_poll bb_call_fn.cpp:301
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
1:                                                                            jmp   n00022_line_mark_α
n00024_call_icon_β:                                                             jmp   n00022_line_mark_α
                        .size            n00024_call_icon_bx, .-n00024_call_icon_bx
                        .type            n00022_line_mark_bx, @function
n00022_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00022_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n00025_lit_integer_α
                        .size            n00022_line_mark_bx, .-n00022_line_mark_bx
                        .type            n00025_lit_integer_bx, @function
n00025_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_lit_integer_α:     mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_319_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n00026_lit_integer_α
.Llit_integer_α_319_0:  .quad            1
                        .size            n00025_lit_integer_bx, .-n00025_lit_integer_bx
                        .type            n00026_lit_integer_bx, @function
n00026_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_lit_integer_α:     mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_320_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00027_to_α
.Llit_integer_α_320_0:  .quad            5000
                        .size            n00026_lit_integer_bx, .-n00026_lit_integer_bx
                        .type            n00027_to_bx, @function
n00027_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00027_to_α:              mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00028_line_mark_α
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
1:                      mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00028_line_mark_α
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
1:                      mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lto_α_322_0:           mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n00028_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n00029_assign_α
n00027_to_β:              inc              qword ptr [rbp + 128];               jo    n00028_line_mark_α
                                                                              jmp   .Lto_α_322_0
                        .size            n00027_to_bx, .-n00027_to_bx
                        .type            n00029_assign_bx, @function
n00029_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_assign_α:          mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n00030_bound_α
                        .size            n00029_assign_bx, .-n00029_assign_bx
                        .type            n00030_bound_bx, @function
n00030_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_bound_α:           mov              qword ptr [rbp + 192], rsp;          jmp   n00031_var_α
                        .size            n00030_bound_bx, .-n00030_bound_bx
                        .type            n00031_var_bx, @function
n00031_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_var_α:             mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00032_var_ref_α
                        .size            n00031_var_bx, .-n00031_var_bx
                        .type            n00032_var_ref_bx, @function
n00032_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00033_var_α
                        .size            n00032_var_ref_bx, .-n00032_var_ref_bx
                        .type            n00033_var_bx, @function
n00033_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_var_α:             mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00034_subscript_α
                        .size            n00033_var_bx, .-n00033_var_bx
                        .type            n00034_subscript_bx, @function
n00034_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_subscript_α:       mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00035_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:59
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
1:                                                                            jmp   n00036_deref_α
                        .size            n00034_subscript_bx, .-n00034_subscript_bx
                        .type            n00036_deref_bx, @function
n00036_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_deref_α:           mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00035_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n00037_coerce_numeric_α
                        .size            n00036_deref_bx, .-n00036_deref_bx
                        .type            n00037_coerce_numeric_bx, @function
n00037_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_335_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_335_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_335_0
.Lcoerce_numeric_α_335_1:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00038_coerce_numeric_α
.Lcoerce_numeric_α_335_0:
                        lea              rdi, [rbp + 2768]
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 4311744614
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
1:                      mov              eax, dword ptr [rbp + 256]
                        cmp              al, 104;                             je    n00035_unmark_α
                                                                              jmp   n00038_coerce_numeric_α
                        .size            n00037_coerce_numeric_bx, .-n00037_coerce_numeric_bx
                        .type            n00038_coerce_numeric_bx, @function
n00038_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_coerce_numeric_α:  mov              eax, dword ptr [rbp + 336]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_337_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_337_0
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_337_0
.Lcoerce_numeric_α_337_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00039_binop_α
.Lcoerce_numeric_α_337_0:
                        lea              rdi, [rbp + 336]
                        lea              rsi, [rbp + 2768]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 281479288455270
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
1:                      mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n00035_unmark_α
                                                                              jmp   n00039_binop_α
                        .size            n00038_coerce_numeric_bx, .-n00038_coerce_numeric_bx
                        .type            n00039_binop_bx, @function
n00039_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_binop_α:           mov              eax, dword ptr [rbp + 256]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_338_2
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        add              rax, rdx;                            jo    .Lbinop_α_338_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_338_7
.Lbinop_α_338_2:        and              edx, 1;                              jz    .Lbinop_α_338_0
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdi, qword ptr [rbp + 248]
                        cmp              al, 5;                               je    .Lbinop_α_338_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_338_4
.Lbinop_α_338_3:        movq             xmm0, rsi
.Lbinop_α_338_4:        cmp              cl, 5;                               je    .Lbinop_α_338_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_338_6
.Lbinop_α_338_5:        movq             xmm1, rdi
.Lbinop_α_338_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_338_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_338_7:                                                              jmp   n00040_assign_α
.Lbinop_α_338_0:        mov              rdi, qword ptr [rbp + 256]
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
                        cmp              al, 104;                             je    n00035_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:293
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
1:                                                                            jmp   n00040_assign_α
                        .size            n00039_binop_bx, .-n00039_binop_bx
                        .type            n00040_assign_bx, @function
n00040_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_assign_α:          mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n00035_unmark_α
                        .size            n00040_assign_bx, .-n00040_assign_bx
                        .type            n00035_unmark_bx, @function
n00035_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_unmark_α:          mov              rsp, qword ptr [rbp + 192];          jmp   n00027_to_β
                        .size            n00035_unmark_bx, .-n00035_unmark_bx
                        .type            n00028_line_mark_bx, @function
n00028_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00041_var_ref_α
                        .size            n00028_line_mark_bx, .-n00028_line_mark_bx
                        .type            n00041_var_ref_bx, @function
n00041_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00042_deref_α
                        .size            n00041_var_ref_bx, .-n00041_var_ref_bx
                        .type            n00042_deref_bx, @function
n00042_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00042_deref_α:           mov              rdi, qword ptr [rbp + 48]
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
                        push             rax                                  # gc_poll bb_deref.cpp:40
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
1:                                                                            jmp   n00043_line_mark_α
                        .size            n00042_deref_bx, .-n00042_deref_bx
                        .type            n00043_line_mark_bx, @function
n00043_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00044_call_icon_α
                        .size            n00043_line_mark_bx, .-n00043_line_mark_bx
                        .type            n00044_call_icon_bx, @function
n00044_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00044_call_icon_α:       mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn350:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn350]
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
                        push             rax                                  # gc_poll bb_call_fn.cpp:301
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
n00044_call_icon_β:                                                             jmp   main_ω
                        .size            n00044_call_icon_bx, .-n00044_call_icon_bx
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
                        .quad            12577010699610
                        .quad            38654705760
                        .quad            .Lgcmap_main_s
                        .quad            2816
                        .quad            13
                        .quad            140737488355328
                        .quad            17596481011840
                        .quad            52776558133392
                        .quad            17596481011904
                        .quad            299067162755280
                        .quad            17596481012192
                        .quad            52776558133744
                        .quad            17596481012256
                        .quad            263882790666800
                        .quad            17596481012512
                        .quad            52776558134064
                        .quad            17596481012576
                        .quad            2128654511375216
.Lgcmap_main_s:         .string          "main"
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_ign0:         .string          "main"
.Lstartup_ign1:         .string          "write"
.Lstartup_ign2:         .string          "string"
.Lstartup_ign3:         .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_ign0]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign1]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign2]
                        call             rt_icn_global_note@PLT
                        lea              rdi, [rip + .Lstartup_ign3]
                        call             rt_icn_global_note@PLT
                        .section         .rodata
.Lstartup_rootnm:       .string          "main"
.Lstartup_iln00045_0:    .string          "t"
.Lstartup_iln00045_1:    .string          "i"
.Lstartup_iln00045_2:    .string          "s"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00045_0
                        .quad            .Lstartup_iln00045_1
                        .quad            .Lstartup_iln00045_2
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            2800
                        .long            2784
                        .long            2768
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
