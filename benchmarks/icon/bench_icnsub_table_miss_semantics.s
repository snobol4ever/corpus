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
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
                        lea              rdi, [rip + __gc_frame_maps]
                        call             rt_gc_frame_maps_install_counted@PLT
                        lea              rdi, [rip + __gc_frame_sites]
                        call             rt_gc_frame_sites_install_counted@PLT
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
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax]
                        mov              dword ptr [rax], 0
                        lea              rax, [rip + .Lmain_icn_end]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Lmain_icn_end:         and              rsp, -16
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 2928
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 2920
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 2824], rax
                        mov              dword ptr [rsp + 2816], 160
                        mov              dword ptr [rsp + 2820], 2928
                        mov              eax, 0
                        mov              qword ptr [rsp + 2920], rbp
                        mov              rbp, rsp
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        add              dword ptr [rax + 0], 1
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
main_α_body:
                        .type            n0_call_bx, @function
n0_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_α:              lea              rdi, [rbp + 2768]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:256
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n1_line_mark_α
                                                                              jmp   n1_line_mark_α
n0_call_β:                                                                    jmp   n1_line_mark_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .rodata
.Lstnof1:               .string          "bench_icnsub_table_miss_semantics.icn"
                        .popsection
.Lline_mark_α_144_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_144_stno
                        .long            0
                        .long            7
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_145_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_145_0:    .quad            .Lline_mark_α_145_0_s
.Lline_mark_α_145_0_s:  .string          "bench_icnsub_table_miss_semantics.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_146_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_146_stno
                        .long            0
                        .long            8
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n3_lit_integer_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rbp + 2704], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_148_0]
                        mov              qword ptr [rbp + 2712], rax;         jmp   n4_line_mark_α
.Llit_integer_α_148_0:  .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_line_mark_bx, @function
n4_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_149_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_149_stno
                        .long            0
                        .long            8
                        .quad            .Lstnof1
                        .popsection
n4_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n5_call_icon_α
                        .size            n4_line_mark_bx, .-n4_line_mark_bx
                        .type            n5_call_icon_bx, @function
n5_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_icon_α:         mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2680], rax
                        .section         .rodata
.Lcall_icon_α_rkfn152:  .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn152]
                        lea              rsi, [rbp + 2672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:319
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_3:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n7_line_mark_α
                                                                              jmp   n6_assign_α
n5_call_icon_β:                                                               jmp   n7_line_mark_α
                        .size            n5_call_icon_bx, .-n5_call_icon_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx;         jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_154_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_154_stno
                        .long            0
                        .long            9
                        .quad            .Lstnof1
                        .popsection
n7_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n8_var_ref_α
                        .size            n7_line_mark_bx, .-n7_line_mark_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n9_lit_string_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rbp + 2560], 2            # result
                        mov              dword ptr [rbp + 2564], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_158_0]
                        mov              qword ptr [rbp + 2568], rax;         jmp   n10_subscript_α
.Llit_string_α_158_0:   .quad            .Llit_string_α_158_0_s
.Llit_string_α_158_0_s: .string          "alpha"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_subscript_bx, @function
n10_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_subscript_α:        mov              rdi, qword ptr [rbp + 2544]
                        mov              rsi, qword ptr [rbp + 2552]
                        mov              rdx, qword ptr [rbp + 2560]
                        mov              rcx, qword ptr [rbp + 2568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_5:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_line_mark_α
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n11_lit_integer_α
                        .size            n10_subscript_bx, .-n10_subscript_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              qword ptr [rbp + 2624], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_160_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n12_assign_var_α
.Llit_integer_α_160_0:  .quad            11
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_assign_var_bx, @function
n12_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_var_α:       mov              rdi, qword ptr [rbp + 2592]
                        mov              rsi, qword ptr [rbp + 2600]
                        mov              rdx, qword ptr [rbp + 2624]
                        mov              rcx, qword ptr [rbp + 2632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_7:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n13_line_mark_α
                        mov              qword ptr [rbp + 2608], rax
                        mov              qword ptr [rbp + 2616], rdx
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
.Lgcsite_main_6:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n13_line_mark_α
                        .size            n12_assign_var_bx, .-n12_assign_var_bx
                        .type            n13_line_mark_bx, @function
n13_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_162_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_162_stno
                        .long            0
                        .long            10
                        .quad            .Lstnof1
                        .popsection
n13_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n14_var_ref_α
                        .size            n13_line_mark_bx, .-n13_line_mark_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n15_lit_string_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_lit_string_bx, @function
n15_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_string_α:       mov              qword ptr [rbp + 2448], 2            # result
                        mov              dword ptr [rbp + 2452], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_166_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n16_subscript_α
.Llit_string_α_166_0:   .quad            .Llit_string_α_166_0_s
.Llit_string_α_166_0_s: .string          "beta"
                        .size            n15_lit_string_bx, .-n15_lit_string_bx
                        .type            n16_subscript_bx, @function
n16_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_subscript_α:        mov              rdi, qword ptr [rbp + 2432]
                        mov              rsi, qword ptr [rbp + 2440]
                        mov              rdx, qword ptr [rbp + 2448]
                        mov              rcx, qword ptr [rbp + 2456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_9:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n19_line_mark_α
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_8:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n17_lit_integer_α
                        .size            n16_subscript_bx, .-n16_subscript_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      mov              qword ptr [rbp + 2512], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_168_0]
                        mov              qword ptr [rbp + 2520], rax;         jmp   n18_assign_var_α
.Llit_integer_α_168_0:  .quad            22
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_assign_var_bx, @function
n18_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_var_α:       mov              rdi, qword ptr [rbp + 2480]
                        mov              rsi, qword ptr [rbp + 2488]
                        mov              rdx, qword ptr [rbp + 2512]
                        mov              rcx, qword ptr [rbp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_11:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n19_line_mark_α
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
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
.Lgcsite_main_10:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n19_line_mark_α
                        .size            n18_assign_var_bx, .-n18_assign_var_bx
                        .type            n19_line_mark_bx, @function
n19_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_170_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_170_stno
                        .long            0
                        .long            11
                        .quad            .Lstnof1
                        .popsection
n19_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n20_var_ref_α
                        .size            n19_line_mark_bx, .-n19_line_mark_bx
                        .type            n20_var_ref_bx, @function
n20_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n21_lit_integer_α
                        .size            n20_var_ref_bx, .-n20_var_ref_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              qword ptr [rbp + 2352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_174_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n22_subscript_α
.Llit_integer_α_174_0:  .quad            7
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_subscript_bx, @function
n22_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_subscript_α:        mov              rdi, qword ptr [rbp + 2336]
                        mov              rsi, qword ptr [rbp + 2344]
                        mov              rdx, qword ptr [rbp + 2352]
                        mov              rcx, qword ptr [rbp + 2360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_13:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_line_mark_α
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_12:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n23_lit_integer_α
                        .size            n22_subscript_bx, .-n22_subscript_bx
                        .type            n23_lit_integer_bx, @function
n23_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_integer_α:      mov              qword ptr [rbp + 2400], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_176_0]
                        mov              qword ptr [rbp + 2408], rax;         jmp   n24_assign_var_α
.Llit_integer_α_176_0:  .quad            77
                        .size            n23_lit_integer_bx, .-n23_lit_integer_bx
                        .type            n24_assign_var_bx, @function
n24_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_var_α:       mov              rdi, qword ptr [rbp + 2368]
                        mov              rsi, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2400]
                        mov              rcx, qword ptr [rbp + 2408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_15:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n25_line_mark_α
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
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
.Lgcsite_main_14:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n25_line_mark_α
                        .size            n24_assign_var_bx, .-n24_assign_var_bx
                        .type            n25_line_mark_bx, @function
n25_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_178_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_178_stno
                        .long            0
                        .long            12
                        .quad            .Lstnof1
                        .popsection
n25_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n26_var_ref_α
                        .size            n25_line_mark_bx, .-n25_line_mark_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx;         jmp   n27_lit_integer_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      mov              qword ptr [rbp + 2256], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_182_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n28_subscript_α
.Llit_integer_α_182_0:  .quad            18446744073709551613
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_subscript_bx, @function
n28_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_subscript_α:        mov              rdi, qword ptr [rbp + 2240]
                        mov              rsi, qword ptr [rbp + 2248]
                        mov              rdx, qword ptr [rbp + 2256]
                        mov              rcx, qword ptr [rbp + 2264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_line_mark_α
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_16:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n29_lit_integer_α
                        .size            n28_subscript_bx, .-n28_subscript_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      mov              qword ptr [rbp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_184_0]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n30_assign_var_α
.Llit_integer_α_184_0:  .quad            33
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_assign_var_bx, @function
n30_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_assign_var_α:       mov              rdi, qword ptr [rbp + 2272]
                        mov              rsi, qword ptr [rbp + 2280]
                        mov              rdx, qword ptr [rbp + 2304]
                        mov              rcx, qword ptr [rbp + 2312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_19:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n31_line_mark_α
                        mov              qword ptr [rbp + 2288], rax
                        mov              qword ptr [rbp + 2296], rdx
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
.Lgcsite_main_18:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n31_line_mark_α
                        .size            n30_assign_var_bx, .-n30_assign_var_bx
                        .type            n31_line_mark_bx, @function
n31_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_186_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_186_stno
                        .long            0
                        .long            13
                        .quad            .Lstnof1
                        .popsection
n31_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n32_var_ref_α
                        .size            n31_line_mark_bx, .-n31_line_mark_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx;         jmp   n33_lit_integer_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              qword ptr [rbp + 2160], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_190_0]
                        mov              qword ptr [rbp + 2168], rax;         jmp   n34_subscript_α
.Llit_integer_α_190_0:  .quad            0
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_subscript_bx, @function
n34_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_subscript_α:        mov              rdi, qword ptr [rbp + 2144]
                        mov              rsi, qword ptr [rbp + 2152]
                        mov              rdx, qword ptr [rbp + 2160]
                        mov              rcx, qword ptr [rbp + 2168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_21:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n37_line_mark_α
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_20:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n35_lit_integer_α
                        .size            n34_subscript_bx, .-n34_subscript_bx
                        .type            n35_lit_integer_bx, @function
n35_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_integer_α:      mov              qword ptr [rbp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_192_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n36_assign_var_α
.Llit_integer_α_192_0:  .quad            99
                        .size            n35_lit_integer_bx, .-n35_lit_integer_bx
                        .type            n36_assign_var_bx, @function
n36_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_assign_var_α:       mov              rdi, qword ptr [rbp + 2176]
                        mov              rsi, qword ptr [rbp + 2184]
                        mov              rdx, qword ptr [rbp + 2208]
                        mov              rcx, qword ptr [rbp + 2216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_23:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n37_line_mark_α
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx
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
.Lgcsite_main_22:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n37_line_mark_α
                        .size            n36_assign_var_bx, .-n36_assign_var_bx
                        .type            n37_line_mark_bx, @function
n37_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_194_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_194_stno
                        .long            0
                        .long            14
                        .quad            .Lstnof1
                        .popsection
n37_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n38_var_ref_α
                        .size            n37_line_mark_bx, .-n37_line_mark_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n39_lit_string_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_lit_string_bx, @function
n39_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_string_α:       mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_198_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n40_subscript_α
.Llit_string_α_198_0:   .quad            .Llit_string_α_198_0_s
.Llit_string_α_198_0_s: .string          "alpha"
                        .size            n39_lit_string_bx, .-n39_lit_string_bx
                        .type            n40_subscript_bx, @function
n40_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_subscript_α:        mov              rdi, qword ptr [rbp + 2032]
                        mov              rsi, qword ptr [rbp + 2040]
                        mov              rdx, qword ptr [rbp + 2048]
                        mov              rcx, qword ptr [rbp + 2056]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_25:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n43_line_mark_α
                        mov              qword ptr [rbp + 2080], rax
                        mov              qword ptr [rbp + 2088], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_24:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n41_lit_integer_α
                        .size            n40_subscript_bx, .-n40_subscript_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_200_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n42_assign_var_α
.Llit_integer_α_200_0:  .quad            111
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_assign_var_bx, @function
n42_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_assign_var_α:       mov              rdi, qword ptr [rbp + 2080]
                        mov              rsi, qword ptr [rbp + 2088]
                        mov              rdx, qword ptr [rbp + 2112]
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_27:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n43_line_mark_α
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
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
.Lgcsite_main_26:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n43_line_mark_α
                        .size            n42_assign_var_bx, .-n42_assign_var_bx
                        .type            n43_line_mark_bx, @function
n43_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_202_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_202_stno
                        .long            0
                        .long            15
                        .quad            .Lstnof1
                        .popsection
n43_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n44_var_ref_α
                        .size            n43_line_mark_bx, .-n43_line_mark_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n45_lit_string_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_lit_string_bx, @function
n45_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_string_α:       mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 5
                        mov              rax, qword ptr [rip + .Llit_string_α_206_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n46_subscript_α
.Llit_string_α_206_0:   .quad            .Llit_string_α_206_0_s
.Llit_string_α_206_0_s: .string          "alpha"
                        .size            n45_lit_string_bx, .-n45_lit_string_bx
                        .type            n46_subscript_bx, @function
n46_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_subscript_α:        mov              rdi, qword ptr [rbp + 1328]
                        mov              rsi, qword ptr [rbp + 1336]
                        mov              rdx, qword ptr [rbp + 1344]
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_29:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_28:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n47_lit_string_α
                        .size            n46_subscript_bx, .-n46_subscript_bx
                        .type            n47_lit_string_bx, @function
n47_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_string_α:       mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_208_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n48_var_ref_α
.Llit_string_α_208_0:   .quad            .Llit_string_α_208_0_s
.Llit_string_α_208_0_s: .string          " "
                        .size            n47_lit_string_bx, .-n47_lit_string_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n49_lit_string_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_lit_string_bx, @function
n49_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_string_α:       mov              qword ptr [rbp + 1440], 2            # result
                        mov              dword ptr [rbp + 1444], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_211_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n50_subscript_α
.Llit_string_α_211_0:   .quad            .Llit_string_α_211_0_s
.Llit_string_α_211_0_s: .string          "beta"
                        .size            n49_lit_string_bx, .-n49_lit_string_bx
                        .type            n50_subscript_bx, @function
n50_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_subscript_α:        mov              rdi, qword ptr [rbp + 1424]
                        mov              rsi, qword ptr [rbp + 1432]
                        mov              rdx, qword ptr [rbp + 1440]
                        mov              rcx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_31:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_30:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n51_lit_string_α
                        .size            n50_subscript_bx, .-n50_subscript_bx
                        .type            n51_lit_string_bx, @function
n51_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_string_α:       mov              qword ptr [rbp + 1488], 2            # result
                        mov              dword ptr [rbp + 1492], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_213_0]
                        mov              qword ptr [rbp + 1496], rax;         jmp   n52_var_ref_α
.Llit_string_α_213_0:   .quad            .Llit_string_α_213_0_s
.Llit_string_α_213_0_s: .string          " "
                        .size            n51_lit_string_bx, .-n51_lit_string_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n53_lit_integer_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_216_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n54_subscript_α
.Llit_integer_α_216_0:  .quad            7
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_subscript_bx, @function
n54_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_subscript_α:        mov              rdi, qword ptr [rbp + 1520]
                        mov              rsi, qword ptr [rbp + 1528]
                        mov              rdx, qword ptr [rbp + 1536]
                        mov              rcx, qword ptr [rbp + 1544]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_33:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_32:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n55_lit_string_α
                        .size            n54_subscript_bx, .-n54_subscript_bx
                        .type            n55_lit_string_bx, @function
n55_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_218_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n56_var_ref_α
.Llit_string_α_218_0:   .quad            .Llit_string_α_218_0_s
.Llit_string_α_218_0_s: .string          " "
                        .size            n55_lit_string_bx, .-n55_lit_string_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n57_lit_integer_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      mov              qword ptr [rbp + 1616], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_221_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n58_subscript_α
.Llit_integer_α_221_0:  .quad            18446744073709551613
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_subscript_bx, @function
n58_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_subscript_α:        mov              rdi, qword ptr [rbp + 1600]
                        mov              rsi, qword ptr [rbp + 1608]
                        mov              rdx, qword ptr [rbp + 1616]
                        mov              rcx, qword ptr [rbp + 1624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_35:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_34:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n59_lit_string_α
                        .size            n58_subscript_bx, .-n58_subscript_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_223_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n60_var_ref_α
.Llit_string_α_223_0:   .quad            .Llit_string_α_223_0_s
.Llit_string_α_223_0_s: .string          " "
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_var_ref_bx, @function
n60_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx;         jmp   n61_lit_integer_α
                        .size            n60_var_ref_bx, .-n60_var_ref_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      mov              qword ptr [rbp + 1696], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_226_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n62_subscript_α
.Llit_integer_α_226_0:  .quad            0
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_subscript_bx, @function
n62_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_subscript_α:        mov              rdi, qword ptr [rbp + 1680]
                        mov              rsi, qword ptr [rbp + 1688]
                        mov              rdx, qword ptr [rbp + 1696]
                        mov              rcx, qword ptr [rbp + 1704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_37:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_36:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n63_lit_string_α
                        .size            n62_subscript_bx, .-n62_subscript_bx
                        .type            n63_lit_string_bx, @function
n63_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:       mov              qword ptr [rbp + 1728], 2            # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_228_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n64_var_ref_α
.Llit_string_α_228_0:   .quad            .Llit_string_α_228_0_s
.Llit_string_α_228_0_s: .string          " "
                        .size            n63_lit_string_bx, .-n63_lit_string_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n65_lit_string_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       mov              qword ptr [rbp + 1776], 2            # result
                        mov              dword ptr [rbp + 1780], 7
                        mov              rax, qword ptr [rip + .Llit_string_α_231_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n66_subscript_α
.Llit_string_α_231_0:   .quad            .Llit_string_α_231_0_s
.Llit_string_α_231_0_s: .string          "missing"
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_subscript_bx, @function
n66_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_subscript_α:        mov              rdi, qword ptr [rbp + 1760]
                        mov              rsi, qword ptr [rbp + 1768]
                        mov              rdx, qword ptr [rbp + 1776]
                        mov              rcx, qword ptr [rbp + 1784]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_39:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_38:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n67_lit_string_α
                        .size            n66_subscript_bx, .-n66_subscript_bx
                        .type            n67_lit_string_bx, @function
n67_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_string_α:       mov              qword ptr [rbp + 1824], 2            # result
                        mov              dword ptr [rbp + 1828], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_233_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n68_var_ref_α
.Llit_string_α_233_0:   .quad            .Llit_string_α_233_0_s
.Llit_string_α_233_0_s: .string          " "
                        .size            n67_lit_string_bx, .-n67_lit_string_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n69_lit_integer_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      mov              qword ptr [rbp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_236_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n70_subscript_α
.Llit_integer_α_236_0:  .quad            12345
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_subscript_bx, @function
n70_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_subscript_α:        mov              rdi, qword ptr [rbp + 1856]
                        mov              rsi, qword ptr [rbp + 1864]
                        mov              rdx, qword ptr [rbp + 1872]
                        mov              rcx, qword ptr [rbp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_41:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_40:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n71_deref_α
                        .size            n70_subscript_bx, .-n70_subscript_bx
                        .type            n71_deref_bx, @function
n71_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_deref_α:            mov              rdi, qword ptr [rbp + 1376]
                        mov              rsi, qword ptr [rbp + 1384]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_43:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
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
.Lgcsite_main_42:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n72_deref_α
                        .size            n71_deref_bx, .-n71_deref_bx
                        .type            n72_deref_bx, @function
n72_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_deref_α:            mov              rdi, qword ptr [rbp + 1472]
                        mov              rsi, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_45:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
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
.Lgcsite_main_44:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n73_deref_α
                        .size            n72_deref_bx, .-n72_deref_bx
                        .type            n73_deref_bx, @function
n73_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_deref_α:            mov              rdi, qword ptr [rbp + 1552]
                        mov              rsi, qword ptr [rbp + 1560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_47:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
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
.Lgcsite_main_46:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n74_deref_α
                        .size            n73_deref_bx, .-n73_deref_bx
                        .type            n74_deref_bx, @function
n74_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_deref_α:            mov              rdi, qword ptr [rbp + 1632]
                        mov              rsi, qword ptr [rbp + 1640]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_49:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
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
.Lgcsite_main_48:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n75_deref_α
                        .size            n74_deref_bx, .-n74_deref_bx
                        .type            n75_deref_bx, @function
n75_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_deref_α:            mov              rdi, qword ptr [rbp + 1712]
                        mov              rsi, qword ptr [rbp + 1720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_51:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
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
.Lgcsite_main_50:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n76_deref_α
                        .size            n75_deref_bx, .-n75_deref_bx
                        .type            n76_deref_bx, @function
n76_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_deref_α:            mov              rdi, qword ptr [rbp + 1808]
                        mov              rsi, qword ptr [rbp + 1816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_53:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
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
.Lgcsite_main_52:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n77_deref_α
                        .size            n76_deref_bx, .-n76_deref_bx
                        .type            n77_deref_bx, @function
n77_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_deref_α:            mov              rdi, qword ptr [rbp + 1888]
                        mov              rsi, qword ptr [rbp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_55:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n80_line_mark_α
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
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
.Lgcsite_main_54:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n78_line_mark_α
                        .size            n77_deref_bx, .-n77_deref_bx
                        .type            n78_line_mark_bx, @function
n78_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_245_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_245_stno
                        .long            0
                        .long            15
                        .quad            .Lstnof1
                        .popsection
n78_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n79_call_icon_α
                        .size            n78_line_mark_bx, .-n78_line_mark_bx
                        .type            n79_call_icon_bx, @function
n79_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_call_icon_α:        mov              rax, qword ptr [rbp + 2000]
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
.Lcall_icon_α_rkfn248:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn248]
                        lea              rsi, [rbp + 1104]
                        mov              edx, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_56:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:319
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_57:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n80_line_mark_α
                                                                              jmp   n80_line_mark_α
n79_call_icon_β:                                                              jmp   n80_line_mark_α
                        .size            n79_call_icon_bx, .-n79_call_icon_bx
                        .type            n80_line_mark_bx, @function
n80_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_249_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_249_stno
                        .long            0
                        .long            16
                        .quad            .Lstnof1
                        .popsection
n80_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n81_lit_integer_α
                        .size            n80_line_mark_bx, .-n80_line_mark_bx
                        .type            n81_lit_integer_bx, @function
n81_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_lit_integer_α:      mov              qword ptr [rbp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_251_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n82_assign_α
.Llit_integer_α_251_0:  .quad            0
                        .size            n81_lit_integer_bx, .-n81_lit_integer_bx
                        .type            n82_assign_bx, @function
n82_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_assign_α:           mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n83_line_mark_α
                        .size            n82_assign_bx, .-n82_assign_bx
                        .type            n83_line_mark_bx, @function
n83_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_253_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_253_stno
                        .long            0
                        .long            17
                        .quad            .Lstnof1
                        .popsection
n83_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n84_lit_integer_α
                        .size            n83_line_mark_bx, .-n83_line_mark_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      mov              qword ptr [rbp + 816], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_255_0]
                        mov              qword ptr [rbp + 824], rax;          jmp   n85_lit_integer_α
.Llit_integer_α_255_0:  .quad            1
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              qword ptr [rbp + 832], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_256_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n86_to_α
.Llit_integer_α_256_0:  .quad            5000
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_to_bx, @function
n86_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_to_α:               mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_65:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n98_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_64:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 816]
                        mov              rsi, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_63:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], 3
                        mov              qword ptr [rbp + 824], rax
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
.Lgcsite_main_62:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_61:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n98_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_60:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 832]
                        mov              rsi, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_59:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], 3
                        mov              qword ptr [rbp + 840], rax
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
.Lgcsite_main_58:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 800], rax
.Lto_α_258_0:           mov              rax, qword ptr [rbp + 800]
                        mov              rcx, qword ptr [rbp + 840]
                        cmp              rax, rcx;                            jg    n98_line_mark_α
                        mov              qword ptr [rbp + 784], 3
                        mov              qword ptr [rbp + 792], rax;          jmp   n87_assign_α
n86_to_β:               inc              qword ptr [rbp + 800];               jo    n98_line_mark_α
                                                                              jmp   .Lto_α_258_0
                        .size            n86_to_bx, .-n86_to_bx
                        .type            n87_assign_bx, @function
n87_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_assign_α:           mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n88_bound_α
                        .size            n87_assign_bx, .-n87_assign_bx
                        .type            n88_bound_bx, @function
n88_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_bound_α:            mov              qword ptr [rbp + 864], rsp;          jmp   n89_var_ref_α
                        .size            n88_bound_bx, .-n88_bound_bx
                        .type            n89_var_ref_bx, @function
n89_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n90_var_ref_α
                        .size            n89_var_ref_bx, .-n89_var_ref_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n91_deref_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_deref_bx, @function
n91_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_deref_α:            mov              rdi, qword ptr [rbp + 960]
                        mov              rsi, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_67:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
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
.Lgcsite_main_66:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n92_line_mark_α
                        .size            n91_deref_bx, .-n91_deref_bx
                        .type            n92_line_mark_bx, @function
n92_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_267_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_267_stno
                        .long            0
                        .long            17
                        .quad            .Lstnof1
                        .popsection
n92_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n93_call_icon_α
                        .size            n92_line_mark_bx, .-n92_line_mark_bx
                        .type            n93_call_icon_bx, @function
n93_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_call_icon_α:        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        .section         .rodata
.Lcall_icon_α_rkfn270:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn270]
                        lea              rsi, [rbp + 928]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_68:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:319
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_69:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n97_unmark_α
                                                                              jmp   n94_subscript_α
n93_call_icon_β:                                                              jmp   n97_unmark_α
                        .size            n93_call_icon_bx, .-n93_call_icon_bx
                        .type            n94_subscript_bx, @function
n94_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_subscript_α:        mov              rdi, qword ptr [rbp + 896]
                        mov              rsi, qword ptr [rbp + 904]
                        mov              rdx, qword ptr [rbp + 912]
                        mov              rcx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_71:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_70:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n95_var_α
                        .size            n94_subscript_bx, .-n94_subscript_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n96_assign_var_α
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_assign_var_bx, @function
n96_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_var_α:       mov              rdi, qword ptr [rbp + 992]
                        mov              rsi, qword ptr [rbp + 1000]
                        mov              rdx, qword ptr [rbp + 1024]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_73:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n97_unmark_α
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
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
.Lgcsite_main_72:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n97_unmark_α
                        .size            n96_assign_var_bx, .-n96_assign_var_bx
                        .type            n97_unmark_bx, @function
n97_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_unmark_α:           mov              rsp, qword ptr [rbp + 864];          jmp   n86_to_β
                        .size            n97_unmark_bx, .-n97_unmark_bx
                        .type            n98_line_mark_bx, @function
n98_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_277_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_277_stno
                        .long            0
                        .long            18
                        .quad            .Lstnof1
                        .popsection
n98_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n99_lit_integer_α
                        .size            n98_line_mark_bx, .-n98_line_mark_bx
                        .type            n99_lit_integer_bx, @function
n99_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_279_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n00001_lit_integer_α
.Llit_integer_α_279_0:  .quad            1
                        .size            n99_lit_integer_bx, .-n99_lit_integer_bx
                        .type            n00001_lit_integer_bx, @function
n00001_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00001_lit_integer_α:     mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_280_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n00002_to_α
.Llit_integer_α_280_0:  .quad            5000
                        .size            n00001_lit_integer_bx, .-n00001_lit_integer_bx
                        .type            n00002_to_bx, @function
n00002_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00002_to_α:              mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_81:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00003_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_80:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 496]
                        mov              rsi, qword ptr [rbp + 504]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_79:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], 3
                        mov              qword ptr [rbp + 504], rax
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
.Lgcsite_main_78:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_77:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00003_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_76:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 512]
                        mov              rsi, qword ptr [rbp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_75:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], 3
                        mov              qword ptr [rbp + 520], rax
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
.Lgcsite_main_74:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 480], rax
.Lto_α_282_0:           mov              rax, qword ptr [rbp + 480]
                        mov              rcx, qword ptr [rbp + 520]
                        cmp              rax, rcx;                            jg    n00003_line_mark_α
                        mov              qword ptr [rbp + 464], 3
                        mov              qword ptr [rbp + 472], rax;          jmp   n00004_assign_α
n00002_to_β:              inc              qword ptr [rbp + 480];               jo    n00003_line_mark_α
                                                                              jmp   .Lto_α_282_0
                        .size            n00002_to_bx, .-n00002_to_bx
                        .type            n00004_assign_bx, @function
n00004_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00004_assign_α:          mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n00005_bound_α
                        .size            n00004_assign_bx, .-n00004_assign_bx
                        .type            n00005_bound_bx, @function
n00005_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00005_bound_α:           mov              qword ptr [rbp + 544], rsp;          jmp   n00006_var_α
                        .size            n00005_bound_bx, .-n00005_bound_bx
                        .type            n00006_var_bx, @function
n00006_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00006_var_α:             mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 632], rax;          jmp   n00007_var_ref_α
                        .size            n00006_var_bx, .-n00006_var_bx
                        .type            n00007_var_ref_bx, @function
n00007_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00007_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n00008_var_ref_α
                        .size            n00007_var_ref_bx, .-n00007_var_ref_bx
                        .type            n00008_var_ref_bx, @function
n00008_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00008_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n00009_deref_α
                        .size            n00008_var_ref_bx, .-n00008_var_ref_bx
                        .type            n00009_deref_bx, @function
n00009_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00009_deref_α:           mov              rdi, qword ptr [rbp + 704]
                        mov              rsi, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_83:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_unmark_α
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
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
.Lgcsite_main_82:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00011_line_mark_α
                        .size            n00009_deref_bx, .-n00009_deref_bx
                        .type            n00011_line_mark_bx, @function
n00011_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_293_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_293_stno
                        .long            0
                        .long            18
                        .quad            .Lstnof1
                        .popsection
n00011_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n00012_call_icon_α
                        .size            n00011_line_mark_bx, .-n00011_line_mark_bx
                        .type            n00012_call_icon_bx, @function
n00012_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00012_call_icon_α:       mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        .section         .rodata
.Lcall_icon_α_rkfn296:  .string          "string"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn296]
                        lea              rsi, [rbp + 672]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393381
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_84:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:319
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_85:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00010_unmark_α
                                                                              jmp   n00013_subscript_α
n00012_call_icon_β:                                                             jmp   n00010_unmark_α
                        .size            n00012_call_icon_bx, .-n00012_call_icon_bx
                        .type            n00013_subscript_bx, @function
n00013_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00013_subscript_α:       mov              rdi, qword ptr [rbp + 640]
                        mov              rsi, qword ptr [rbp + 648]
                        mov              rdx, qword ptr [rbp + 656]
                        mov              rcx, qword ptr [rbp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_87:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_unmark_α
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_86:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00014_deref_α
                        .size            n00013_subscript_bx, .-n00013_subscript_bx
                        .type            n00014_deref_bx, @function
n00014_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00014_deref_α:           mov              rdi, qword ptr [rbp + 736]
                        mov              rsi, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_89:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_unmark_α
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
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
.Lgcsite_main_88:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00015_coerce_numeric_α
                        .size            n00014_deref_bx, .-n00014_deref_bx
                        .type            n00015_coerce_numeric_bx, @function
n00015_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00015_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_300_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_300_0
                        mov              eax, dword ptr [rbp + 752]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_300_0
.Lcoerce_numeric_α_300_1:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 616], rax;          jmp   n00016_coerce_numeric_α
.Lcoerce_numeric_α_300_0:
                        lea              rdi, [rbp + 2768]
                        lea              rsi, [rbp + 752]
                        lea              rdx, [rbp + 608]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_91:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_90:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 608]
                        cmp              al, 104;                             je    n00010_unmark_α
                                                                              jmp   n00016_coerce_numeric_α
                        .size            n00015_coerce_numeric_bx, .-n00015_coerce_numeric_bx
                        .type            n00016_coerce_numeric_bx, @function
n00016_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00016_coerce_numeric_α:  mov              eax, dword ptr [rbp + 752]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_302_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_302_0
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_302_0
.Lcoerce_numeric_α_302_1:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 600], rax;          jmp   n00017_binop_α
.Lcoerce_numeric_α_302_0:
                        lea              rdi, [rbp + 752]
                        lea              rsi, [rbp + 2768]
                        lea              rdx, [rbp + 592]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_93:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_92:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 592]
                        cmp              al, 104;                             je    n00010_unmark_α
                                                                              jmp   n00017_binop_α
                        .size            n00016_coerce_numeric_bx, .-n00016_coerce_numeric_bx
                        .type            n00017_binop_bx, @function
n00017_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00017_binop_α:           mov              eax, dword ptr [rbp + 608]
                        mov              ecx, dword ptr [rbp + 592]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_303_2
                        mov              rax, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 600]
                        add              rax, rdx;                            jo    .Lbinop_α_303_0
                        mov              qword ptr [rbp + 576], 3
                        mov              qword ptr [rbp + 584], rax;          jmp   .Lbinop_α_303_7
.Lbinop_α_303_2:        and              edx, 1;                              jz    .Lbinop_α_303_0
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdi, qword ptr [rbp + 600]
                        cmp              al, 5;                               je    .Lbinop_α_303_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_303_4
.Lbinop_α_303_3:        movq             xmm0, rsi
.Lbinop_α_303_4:        cmp              cl, 5;                               je    .Lbinop_α_303_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_303_6
.Lbinop_α_303_5:        movq             xmm1, rdi
.Lbinop_α_303_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_303_0
                        mov              qword ptr [rbp + 576], 5
                        mov              qword ptr [rbp + 584], rax
.Lbinop_α_303_7:                                                              jmp   n00018_assign_α
.Lbinop_α_303_0:        mov              rdi, qword ptr [rbp + 608]
                        mov              rsi, qword ptr [rbp + 616]
                        mov              rdx, qword ptr [rbp + 592]
                        mov              rcx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_main_95:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00010_unmark_α
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:310
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_94:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00018_assign_α
                        .size            n00017_binop_bx, .-n00017_binop_bx
                        .type            n00018_assign_bx, @function
n00018_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00018_assign_α:          mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n00010_unmark_α
                        .size            n00018_assign_bx, .-n00018_assign_bx
                        .type            n00010_unmark_bx, @function
n00010_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00010_unmark_α:          mov              rsp, qword ptr [rbp + 544];          jmp   n00002_to_β
                        .size            n00010_unmark_bx, .-n00010_unmark_bx
                        .type            n00003_line_mark_bx, @function
n00003_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_307_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_307_stno
                        .long            0
                        .long            19
                        .quad            .Lstnof1
                        .popsection
n00003_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00019_var_ref_α
                        .size            n00003_line_mark_bx, .-n00003_line_mark_bx
                        .type            n00019_var_ref_bx, @function
n00019_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00019_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n00020_deref_α
                        .size            n00019_var_ref_bx, .-n00019_var_ref_bx
                        .type            n00020_deref_bx, @function
n00020_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00020_deref_α:           mov              rdi, qword ptr [rbp + 416]
                        mov              rsi, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_97:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00021_line_mark_α
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
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
.Lgcsite_main_96:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00022_line_mark_α
                        .size            n00020_deref_bx, .-n00020_deref_bx
                        .type            n00022_line_mark_bx, @function
n00022_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_312_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_312_stno
                        .long            0
                        .long            19
                        .quad            .Lstnof1
                        .popsection
n00022_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n00023_call_icon_α
                        .size            n00022_line_mark_bx, .-n00022_line_mark_bx
                        .type            n00023_call_icon_bx, @function
n00023_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00023_call_icon_α:       mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        .section         .rodata
.Lcall_icon_α_rkfn315:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn315]
                        lea              rsi, [rbp + 384]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_98:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:319
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_99:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    n00021_line_mark_α
                                                                              jmp   n00021_line_mark_α
n00023_call_icon_β:                                                             jmp   n00021_line_mark_α
                        .size            n00023_call_icon_bx, .-n00023_call_icon_bx
                        .type            n00021_line_mark_bx, @function
n00021_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_316_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_316_stno
                        .long            0
                        .long            20
                        .quad            .Lstnof1
                        .popsection
n00021_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n00024_lit_integer_α
                        .size            n00021_line_mark_bx, .-n00021_line_mark_bx
                        .type            n00024_lit_integer_bx, @function
n00024_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00024_lit_integer_α:     mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_318_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n00025_lit_integer_α
.Llit_integer_α_318_0:  .quad            1
                        .size            n00024_lit_integer_bx, .-n00024_lit_integer_bx
                        .type            n00025_lit_integer_bx, @function
n00025_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00025_lit_integer_α:     mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_319_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n00026_to_α
.Llit_integer_α_319_0:  .quad            5000
                        .size            n00025_lit_integer_bx, .-n00025_lit_integer_bx
                        .type            n00026_to_bx, @function
n00026_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00026_to_α:              mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_107:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00027_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_106:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_105:      mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_104:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_103:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jz    n00027_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_102:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_101:      mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_100:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lto_α_321_0:           mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n00027_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n00028_assign_α
n00026_to_β:              inc              qword ptr [rbp + 128];               jo    n00027_line_mark_α
                                                                              jmp   .Lto_α_321_0
                        .size            n00026_to_bx, .-n00026_to_bx
                        .type            n00028_assign_bx, @function
n00028_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00028_assign_α:          mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx;         jmp   n00029_bound_α
                        .size            n00028_assign_bx, .-n00028_assign_bx
                        .type            n00029_bound_bx, @function
n00029_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00029_bound_α:           mov              qword ptr [rbp + 192], rsp;          jmp   n00030_var_α
                        .size            n00029_bound_bx, .-n00029_bound_bx
                        .type            n00030_var_bx, @function
n00030_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00030_var_α:             mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 280], rax;          jmp   n00031_var_ref_α
                        .size            n00030_var_bx, .-n00030_var_bx
                        .type            n00031_var_ref_bx, @function
n00031_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00031_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n00032_var_α
                        .size            n00031_var_ref_bx, .-n00031_var_ref_bx
                        .type            n00032_var_bx, @function
n00032_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00032_var_α:             mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 312], rax;          jmp   n00033_subscript_α
                        .size            n00032_var_bx, .-n00032_var_bx
                        .type            n00033_subscript_bx, @function
n00033_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00033_subscript_α:       mov              rdi, qword ptr [rbp + 288]
                        mov              rsi, qword ptr [rbp + 296]
                        mov              rdx, qword ptr [rbp + 304]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_var_strict@PLT
.Lgcsite_main_109:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00034_unmark_α
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:61
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_108:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00035_deref_α
                        .size            n00033_subscript_bx, .-n00033_subscript_bx
                        .type            n00035_deref_bx, @function
n00035_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00035_deref_α:           mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_111:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00034_unmark_α
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
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
.Lgcsite_main_110:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00036_coerce_numeric_α
                        .size            n00035_deref_bx, .-n00035_deref_bx
                        .type            n00036_coerce_numeric_bx, @function
n00036_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00036_coerce_numeric_α:  mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_334_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_334_0
                        mov              eax, dword ptr [rbp + 336]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_334_0
.Lcoerce_numeric_α_334_1:
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 264], rax;          jmp   n00037_coerce_numeric_α
.Lcoerce_numeric_α_334_0:
                        lea              rdi, [rbp + 2768]
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 256]
                        mov              rcx, 4311744614
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_113:      push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_112:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 256]
                        cmp              al, 104;                             je    n00034_unmark_α
                                                                              jmp   n00037_coerce_numeric_α
                        .size            n00036_coerce_numeric_bx, .-n00036_coerce_numeric_bx
                        .type            n00037_coerce_numeric_bx, @function
n00037_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00037_coerce_numeric_α:  mov              eax, dword ptr [rbp + 336]
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_336_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_336_0
                        mov              eax, dword ptr [rbp + 2768]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_336_0
.Lcoerce_numeric_α_336_1:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 248], rax;          jmp   n00038_binop_α
.Lcoerce_numeric_α_336_0:
                        lea              rdi, [rbp + 336]
                        lea              rsi, [rbp + 2768]
                        lea              rdx, [rbp + 240]
                        mov              rcx, 281479288455270
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_115:      push             rax                                  # gc_poll bb_coerce_numeric.cpp:77
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_114:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rbp + 240]
                        cmp              al, 104;                             je    n00034_unmark_α
                                                                              jmp   n00038_binop_α
                        .size            n00037_coerce_numeric_bx, .-n00037_coerce_numeric_bx
                        .type            n00038_binop_bx, @function
n00038_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00038_binop_α:           mov              eax, dword ptr [rbp + 256]
                        mov              ecx, dword ptr [rbp + 240]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_337_2
                        mov              rax, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 248]
                        add              rax, rdx;                            jo    .Lbinop_α_337_0
                        mov              qword ptr [rbp + 224], 3
                        mov              qword ptr [rbp + 232], rax;          jmp   .Lbinop_α_337_7
.Lbinop_α_337_2:        and              edx, 1;                              jz    .Lbinop_α_337_0
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdi, qword ptr [rbp + 248]
                        cmp              al, 5;                               je    .Lbinop_α_337_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_337_4
.Lbinop_α_337_3:        movq             xmm0, rsi
.Lbinop_α_337_4:        cmp              cl, 5;                               je    .Lbinop_α_337_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_337_6
.Lbinop_α_337_5:        movq             xmm1, rdi
.Lbinop_α_337_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_337_0
                        mov              qword ptr [rbp + 224], 5
                        mov              qword ptr [rbp + 232], rax
.Lbinop_α_337_7:                                                              jmp   n00039_assign_α
.Lbinop_α_337_0:        mov              rdi, qword ptr [rbp + 256]
                        mov              rsi, qword ptr [rbp + 264]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add_big@PLT
.Lgcsite_main_117:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             je    n00034_unmark_α
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:310
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_116:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00039_assign_α
                        .size            n00038_binop_bx, .-n00038_binop_bx
                        .type            n00039_assign_bx, @function
n00039_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00039_assign_α:          mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx;         jmp   n00034_unmark_α
                        .size            n00039_assign_bx, .-n00039_assign_bx
                        .type            n00034_unmark_bx, @function
n00034_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00034_unmark_α:          mov              rsp, qword ptr [rbp + 192];          jmp   n00026_to_β
                        .size            n00034_unmark_bx, .-n00034_unmark_bx
                        .type            n00027_line_mark_bx, @function
n00027_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_341_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_341_stno
                        .long            0
                        .long            21
                        .quad            .Lstnof1
                        .popsection
n00027_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00040_var_ref_α
                        .size            n00027_line_mark_bx, .-n00027_line_mark_bx
                        .type            n00040_var_ref_bx, @function
n00040_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00040_var_ref_α:         mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n00041_deref_α
                        .size            n00040_var_ref_bx, .-n00040_var_ref_bx
                        .type            n00041_deref_bx, @function
n00041_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00041_deref_α:           mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_deref@PLT
.Lgcsite_main_119:      mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_118:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n00042_line_mark_α
                        .size            n00041_deref_bx, .-n00041_deref_bx
                        .type            n00042_line_mark_bx, @function
n00042_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_346_stno: .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_346_stno
                        .long            0
                        .long            21
                        .quad            .Lstnof1
                        .popsection
n00042_line_mark_α:       mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n00043_call_icon_α
                        .size            n00042_line_mark_bx, .-n00042_line_mark_bx
                        .type            n00043_call_icon_bx, @function
n00043_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n00043_call_icon_α:       mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn349:  .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn349]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_120:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:319
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_121:      mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n00043_call_icon_β:                                                             jmp   main_ω
                        .size            n00043_call_icon_bx, .-n00043_call_icon_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 2928]
                        mov              rbp, qword ptr [rbp + 2920];         jmp   qword ptr [rsp]
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        push             rax
                        mov              rax, qword ptr [rip + rt_k_level_p@GOTPCREL]
                        mov              rax, qword ptr [rax + 0]
                        mov              ecx, dword ptr [rax + 0]
                        movsxd           rcx, ecx
                        sub              rcx, 1
                        mov              dword ptr [rax + 0], ecx
                        sub              rcx, 1
                        mov              rax, qword ptr [rip + kw_fnclevel@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        pop              rax
                        lea              rsp, [rbp + 2928]
                        mov              rbp, qword ptr [rbp + 2920];         jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            12577010699610
                        .quad            382252089440
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
.Lgcsites_main_0:       .quad            122
                        .quad            .Lgcmap_main
                        .quad            9223653477471751024
                        .quad            .Lgcsite_main_0
                        .quad            65537
                        .quad            .Lgcsite_main_1
                        .quad            65537
                        .quad            .Lgcsite_main_2
                        .quad            65537
                        .quad            .Lgcsite_main_3
                        .quad            65537
                        .quad            .Lgcsite_main_4
                        .quad            65537
                        .quad            .Lgcsite_main_5
                        .quad            65537
                        .quad            .Lgcsite_main_6
                        .quad            65537
                        .quad            .Lgcsite_main_7
                        .quad            65537
                        .quad            .Lgcsite_main_8
                        .quad            65537
                        .quad            .Lgcsite_main_9
                        .quad            65537
                        .quad            .Lgcsite_main_10
                        .quad            65537
                        .quad            .Lgcsite_main_11
                        .quad            65537
                        .quad            .Lgcsite_main_12
                        .quad            65537
                        .quad            .Lgcsite_main_13
                        .quad            65537
                        .quad            .Lgcsite_main_14
                        .quad            65537
                        .quad            .Lgcsite_main_15
                        .quad            65537
                        .quad            .Lgcsite_main_16
                        .quad            65537
                        .quad            .Lgcsite_main_17
                        .quad            65537
                        .quad            .Lgcsite_main_18
                        .quad            65537
                        .quad            .Lgcsite_main_19
                        .quad            65537
                        .quad            .Lgcsite_main_20
                        .quad            65537
                        .quad            .Lgcsite_main_21
                        .quad            65537
                        .quad            .Lgcsite_main_22
                        .quad            65537
                        .quad            .Lgcsite_main_23
                        .quad            65537
                        .quad            .Lgcsite_main_24
                        .quad            65537
                        .quad            .Lgcsite_main_25
                        .quad            65537
                        .quad            .Lgcsite_main_26
                        .quad            65537
                        .quad            .Lgcsite_main_27
                        .quad            65537
                        .quad            .Lgcsite_main_28
                        .quad            65537
                        .quad            .Lgcsite_main_29
                        .quad            65537
                        .quad            .Lgcsite_main_30
                        .quad            65537
                        .quad            .Lgcsite_main_31
                        .quad            65537
                        .quad            .Lgcsite_main_32
                        .quad            65537
                        .quad            .Lgcsite_main_33
                        .quad            65537
                        .quad            .Lgcsite_main_34
                        .quad            65537
                        .quad            .Lgcsite_main_35
                        .quad            65537
                        .quad            .Lgcsite_main_36
                        .quad            65537
                        .quad            .Lgcsite_main_37
                        .quad            65537
                        .quad            .Lgcsite_main_38
                        .quad            65537
                        .quad            .Lgcsite_main_39
                        .quad            65537
                        .quad            .Lgcsite_main_40
                        .quad            65537
                        .quad            .Lgcsite_main_41
                        .quad            65537
                        .quad            .Lgcsite_main_42
                        .quad            65537
                        .quad            .Lgcsite_main_43
                        .quad            65537
                        .quad            .Lgcsite_main_44
                        .quad            65537
                        .quad            .Lgcsite_main_45
                        .quad            65537
                        .quad            .Lgcsite_main_46
                        .quad            65537
                        .quad            .Lgcsite_main_47
                        .quad            65537
                        .quad            .Lgcsite_main_48
                        .quad            65537
                        .quad            .Lgcsite_main_49
                        .quad            65537
                        .quad            .Lgcsite_main_50
                        .quad            65537
                        .quad            .Lgcsite_main_51
                        .quad            65537
                        .quad            .Lgcsite_main_52
                        .quad            65537
                        .quad            .Lgcsite_main_53
                        .quad            65537
                        .quad            .Lgcsite_main_54
                        .quad            65537
                        .quad            .Lgcsite_main_55
                        .quad            65537
                        .quad            .Lgcsite_main_56
                        .quad            65537
                        .quad            .Lgcsite_main_57
                        .quad            65537
                        .quad            .Lgcsite_main_58
                        .quad            65537
                        .quad            .Lgcsite_main_59
                        .quad            65537
                        .quad            .Lgcsite_main_60
                        .quad            65537
                        .quad            .Lgcsite_main_61
                        .quad            65537
                        .quad            .Lgcsite_main_62
                        .quad            65537
                        .quad            .Lgcsite_main_63
                        .quad            65537
                        .quad            .Lgcsite_main_64
                        .quad            65537
                        .quad            .Lgcsite_main_65
                        .quad            65537
                        .quad            .Lgcsite_main_66
                        .quad            65537
                        .quad            .Lgcsite_main_67
                        .quad            65537
                        .quad            .Lgcsite_main_68
                        .quad            65537
                        .quad            .Lgcsite_main_69
                        .quad            65537
                        .quad            .Lgcsite_main_70
                        .quad            65537
                        .quad            .Lgcsite_main_71
                        .quad            65537
                        .quad            .Lgcsite_main_72
                        .quad            65537
                        .quad            .Lgcsite_main_73
                        .quad            65537
                        .quad            .Lgcsite_main_74
                        .quad            65537
                        .quad            .Lgcsite_main_75
                        .quad            65537
                        .quad            .Lgcsite_main_76
                        .quad            65537
                        .quad            .Lgcsite_main_77
                        .quad            65537
                        .quad            .Lgcsite_main_78
                        .quad            65537
                        .quad            .Lgcsite_main_79
                        .quad            65537
                        .quad            .Lgcsite_main_80
                        .quad            65537
                        .quad            .Lgcsite_main_81
                        .quad            65537
                        .quad            .Lgcsite_main_82
                        .quad            65537
                        .quad            .Lgcsite_main_83
                        .quad            65537
                        .quad            .Lgcsite_main_84
                        .quad            65537
                        .quad            .Lgcsite_main_85
                        .quad            65537
                        .quad            .Lgcsite_main_86
                        .quad            65537
                        .quad            .Lgcsite_main_87
                        .quad            65537
                        .quad            .Lgcsite_main_88
                        .quad            65537
                        .quad            .Lgcsite_main_89
                        .quad            65537
                        .quad            .Lgcsite_main_90
                        .quad            65537
                        .quad            .Lgcsite_main_91
                        .quad            65537
                        .quad            .Lgcsite_main_92
                        .quad            65537
                        .quad            .Lgcsite_main_93
                        .quad            65537
                        .quad            .Lgcsite_main_94
                        .quad            65537
                        .quad            .Lgcsite_main_95
                        .quad            65537
                        .quad            .Lgcsite_main_96
                        .quad            65537
                        .quad            .Lgcsite_main_97
                        .quad            65537
                        .quad            .Lgcsite_main_98
                        .quad            65537
                        .quad            .Lgcsite_main_99
                        .quad            65537
                        .quad            .Lgcsite_main_100
                        .quad            65537
                        .quad            .Lgcsite_main_101
                        .quad            65537
                        .quad            .Lgcsite_main_102
                        .quad            65537
                        .quad            .Lgcsite_main_103
                        .quad            65537
                        .quad            .Lgcsite_main_104
                        .quad            65537
                        .quad            .Lgcsite_main_105
                        .quad            65537
                        .quad            .Lgcsite_main_106
                        .quad            65537
                        .quad            .Lgcsite_main_107
                        .quad            65537
                        .quad            .Lgcsite_main_108
                        .quad            65537
                        .quad            .Lgcsite_main_109
                        .quad            65537
                        .quad            .Lgcsite_main_110
                        .quad            65537
                        .quad            .Lgcsite_main_111
                        .quad            65537
                        .quad            .Lgcsite_main_112
                        .quad            65537
                        .quad            .Lgcsite_main_113
                        .quad            65537
                        .quad            .Lgcsite_main_114
                        .quad            65537
                        .quad            .Lgcsite_main_115
                        .quad            65537
                        .quad            .Lgcsite_main_116
                        .quad            65537
                        .quad            .Lgcsite_main_117
                        .quad            65537
                        .quad            .Lgcsite_main_118
                        .quad            65537
                        .quad            .Lgcsite_main_119
                        .quad            65537
                        .quad            .Lgcsite_main_120
                        .quad            65537
                        .quad            .Lgcsite_main_121
                        .quad            65537
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
.Lstartup_iln00044_0:    .string          "t"
.Lstartup_iln00044_1:    .string          "i"
.Lstartup_iln00044_2:    .string          "s"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00044_0
                        .quad            .Lstartup_iln00044_1
                        .quad            .Lstartup_iln00044_2
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
                        .section         .rodata
.Lstartup_rootcall:     .string          "main"
                        .align           8
.Lstartup_prec_root:    .quad            .Lstartup_rootcall
                        .quad            main_α
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            0
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec_root]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .align           8
__gc_frame_sites:       .quad            1
                        .quad            .Lgcsites_main_0
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .data
                        .align           8
__alpha_cellp_tab:      .quad            0
                        .section         .rodata
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
