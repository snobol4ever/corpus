                        .intel_syntax    noprefix
                        .text
                        .file            1 "bench_icnsub_table_miss_dispatch.icn"
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
.Lgccode_main_0:
main_α:
                        sub              rsp, 688
                        mov              rdi, rsp
                        add              rdi, 0
                        xor              eax, eax
                        mov              ecx, 680
                        rep              stosb
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 584], rax
                        mov              dword ptr [rsp + 576], 160
                        mov              dword ptr [rsp + 580], 688
                        mov              eax, 0
                        mov              qword ptr [rsp + 680], rbp
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
n0_call_α:              lea              rdi, [rbp + 528]
                        mov              esi, 0
                        call             rt_quit_trap_300@PLT
.Lgcsite_main_0:        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:281
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_1:
1:                      cmp              al, 104;                             je    n1_line_mark_α
                                                                              jmp   n1_line_mark_α
n0_call_β:                                                                    jmp   n1_line_mark_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_line_mark_bx, @function
n1_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
                        .pushsection     .rodata
.Lstnof1:               .string          "bench_icnsub_table_miss_dispatch.icn"
                        .popsection
.Lline_mark_α_30_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_30_stno
                        .long            0
                        .long            14
                        .quad            .Lstnof1
                        .popsection
n1_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_31_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n2_line_mark_α
.Lline_mark_α_31_0:     .quad            .Lline_mark_α_31_0_s
.Lline_mark_α_31_0_s:   .string          "bench_icnsub_table_miss_dispatch.icn"
                        .size            n1_line_mark_bx, .-n1_line_mark_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_32_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_32_stno
                        .long            0
                        .long            15
                        .quad            .Lstnof1
                        .popsection
n2_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n3_lit_integer_α
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_34_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n4_line_mark_α
.Llit_integer_α_34_0:   .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_line_mark_bx, @function
n4_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_35_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_35_stno
                        .long            0
                        .long            15
                        .quad            .Lstnof1
                        .popsection
n4_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n5_call_icon_α
                        .size            n4_line_mark_bx, .-n4_line_mark_bx
                        .type            n5_call_icon_bx, @function
n5_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_icon_α:         mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        .section         .rodata
.Lcall_icon_α_rkfn38:   .string          "table"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn38]
                        lea              rsi, [rbp + 432]
                        mov              edx, 1
                        mov              ecx, 327847
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_2:        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_3:
1:                      cmp              al, 104;                             je    n7_line_mark_α
                                                                              jmp   n6_assign_α
n5_call_icon_β:                                                               jmp   n7_line_mark_α
                        .size            n5_call_icon_bx, .-n5_call_icon_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n7_line_mark_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_line_mark_bx, @function
n7_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_40_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_40_stno
                        .long            0
                        .long            16
                        .quad            .Lstnof1
                        .popsection
n7_line_mark_α:         mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n8_var_ref_α
                        .size            n7_line_mark_bx, .-n7_line_mark_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n9_lit_string_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_string_bx, @function
n9_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_string_α:        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 4
                        mov              rax, qword ptr [rip + .Llit_string_α_44_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n10_lit_integer_α
.Llit_string_α_44_0:    .quad            .Llit_string_α_44_0_s
.Llit_string_α_44_0_s:  .string          "seed"
                        .size            n9_lit_string_bx, .-n9_lit_string_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      mov              qword ptr [rbp + 384], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_45_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n11_assign_var_α
.Llit_integer_α_45_0:   .quad            1
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_assign_var_bx, @function
n11_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_var_α:       mov              rdi, qword ptr [rbp + 320]
                        mov              rsi, qword ptr [rbp + 328]
                        mov              rdx, qword ptr [rbp + 336]
                        mov              rcx, qword ptr [rbp + 344]
                        cmp              dil, 40;                             jne   .Lassign_var_α_47_5
                        mov              rax, rdi
                        shr              rax, 32
                        cmp              eax, 1;                              jne   .Lassign_var_α_47_0
                        test             rsi, rsi;                            je    .Lassign_var_α_47_0
                        mov              rax, qword ptr [rsi + 0]
                        mov              r10, qword ptr [rsi + 8]
                        cmp              al, 24;                              jne   .Lassign_var_α_47_0
                        mov              rdi, rax
                        mov              rsi, r10;                            jmp   .Lassign_var_α_47_1
.Lassign_var_α_47_5:    cmp              dil, 24;                             je    .Lassign_var_α_47_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_47_0
.Lassign_var_α_47_1:    test             rsi, rsi;                            je    .Lassign_var_α_47_0
                        mov              r8, qword ptr [rbp + 384]
                        mov              r9, qword ptr [rbp + 392]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
.Lgcsite_main_10:       cmp              al, 255;                             jne   .Lvd0
                        call             c_rt_table_assign_fast@PLT
.Lgcsite_main_9:
.Lvd0:                  cmp              al, 104;                             je    n12_line_mark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:116
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_8:
1:                                                                            jmp   n12_line_mark_α
.Lassign_var_α_47_0:    call             rt_subscript_var_strict@PLT
.Lgcsite_main_7:        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], r13
                        mov              qword ptr [rsp + 16], rax
                        mov              qword ptr [rsp + 24], rdx
                        xor              edi, edi
                        xor              esi, esi
                        mov              rdx, rsp
                        lea              rcx, [rsp + 16]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_6:        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             je    n12_line_mark_α
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rbp + 384]
                        mov              rcx, qword ptr [rbp + 392]
                        call             rt_assign_var_strict@PLT
.Lgcsite_main_5:        cmp              al, 104;                             je    n12_line_mark_α
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:132
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_4:
1:                                                                            jmp   n12_line_mark_α
                        .size            n11_assign_var_bx, .-n11_assign_var_bx
                        .type            n12_line_mark_bx, @function
n12_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_48_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_48_stno
                        .long            0
                        .long            17
                        .quad            .Lstnof1
                        .popsection
n12_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n13_lit_integer_α
                        .size            n12_line_mark_bx, .-n12_line_mark_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      mov              qword ptr [rbp + 144], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_50_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n14_lit_integer_α
.Llit_integer_α_50_0:   .quad            1
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      mov              qword ptr [rbp + 160], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_51_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n15_to_α
.Llit_integer_α_51_0:   .quad            2000000
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_to_bx, @function
n15_to_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_to_α:               mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_18:       test             eax, eax;                            jz    n24_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_17:
1:                      mov              rdi, qword ptr [rbp + 144]
                        mov              rsi, qword ptr [rbp + 152]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_16:       mov              qword ptr [rbp + 144], 3
                        mov              qword ptr [rbp + 152], rax
                        push             rax                                  # gc_poll bb_to.cpp:160
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_15:
1:                      mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        call             core_icn_int_operand_ok@PLT
.Lgcsite_main_14:       test             eax, eax;                            jz    n24_line_mark_α
                        push             rax                                  # gc_poll xa_to_helpers.cpp:39
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_13:
1:                      mov              rdi, qword ptr [rbp + 160]
                        mov              rsi, qword ptr [rbp + 168]
                        call             core_icn_to_int_check@PLT
.Lgcsite_main_12:       mov              qword ptr [rbp + 160], 3
                        mov              qword ptr [rbp + 168], rax
                        push             rax                                  # gc_poll bb_to.cpp:168
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_11:
1:                      mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 128], rax
.Lto_α_53_0:            mov              rax, qword ptr [rbp + 128]
                        mov              rcx, qword ptr [rbp + 168]
                        cmp              rax, rcx;                            jg    n24_line_mark_α
                        mov              qword ptr [rbp + 112], 3
                        mov              qword ptr [rbp + 120], rax;          jmp   n16_assign_α
n15_to_β:               inc              qword ptr [rbp + 128];               jo    n24_line_mark_α
                                                                              jmp   .Lto_α_53_0
                        .size            n15_to_bx, .-n15_to_bx
                        .type            n16_assign_bx, @function
n16_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_assign_α:           mov              rax, qword ptr [rbp + 112]
                        mov              rdx, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n17_bound_α
                        .size            n16_assign_bx, .-n16_assign_bx
                        .type            n17_bound_bx, @function
n17_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_bound_α:            mov              qword ptr [rbp + 192], rsp;          jmp   n18_var_ref_α
                        .size            n17_bound_bx, .-n17_bound_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n19_lit_string_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_string_bx, @function
n19_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_string_α:       mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_59_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n20_subscript_α
.Llit_string_α_59_0:    .quad            .Llit_string_α_59_0_s
.Llit_string_α_59_0_s:  .string          "absent"
                        .size            n19_lit_string_bx, .-n19_lit_string_bx
                        .type            n20_subscript_bx, @function
n20_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_subscript_α:        xor              eax, eax
.Lsubscript_α_60_1:     mov              rdi, qword ptr [rbp + 224]
                        mov              rsi, qword ptr [rbp + 232]
                        mov              rdx, qword ptr [rbp + 240]
                        mov              rcx, qword ptr [rbp + 248]
                        test             eax, eax;                            jne   .Lsubscript_α_60_2
                        call             rt_subscript_val_strict@PLT
.Lgcsite_main_22:       cmp              al, 255;                             jne   .Lsubscript_α_60_4
                        mov              eax, 1;                              jmp   .Lsubscript_α_60_1
.Lsubscript_α_60_4:     push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_21:       mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:                                                                            jmp   .Lsubscript_α_60_3
.Lsubscript_α_60_2:     call             rt_subscript_var_strict@PLT
.Lgcsite_main_20:       push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 32
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rsp + 16], r13
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        lea              rdx, [rsp + 16]
                        lea              rcx, [rsp + 32]
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_19:       mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        mov              r13, qword ptr [rsp + 16]
                        add              rsp, 32
1:
.Lsubscript_α_60_3:     cmp              al, 104;                             je    n23_unmark_α
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n21_deref_α
                        .size            n20_subscript_bx, .-n20_subscript_bx
                        .type            n21_deref_bx, @function
n21_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_deref_α:            mov              rdi, qword ptr [rbp + 272]           # d
                        mov              rsi, qword ptr [rbp + 280]           # d
                        call             rt_deref@PLT
.Lgcsite_main_24:       cmp              al, 104;                             je    n23_unmark_α
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_23:
1:                                                                            jmp   n22_assign_α
                        .size            n21_deref_bx, .-n21_deref_bx
                        .type            n22_assign_bx, @function
n22_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_assign_α:           mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n23_unmark_α
                        .size            n22_assign_bx, .-n22_assign_bx
                        .type            n23_unmark_bx, @function
n23_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_unmark_α:           mov              rsp, qword ptr [rbp + 192];          jmp   n15_to_β
                        .size            n23_unmark_bx, .-n23_unmark_bx
                        .type            n24_line_mark_bx, @function
n24_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_65_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_65_stno
                        .long            0
                        .long            18
                        .quad            .Lstnof1
                        .popsection
n24_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n25_var_ref_α
                        .size            n24_line_mark_bx, .-n24_line_mark_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              rax, 4294967336
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx;           jmp   n26_deref_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_deref_bx, @function
n26_deref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_deref_α:            mov              rdi, qword ptr [rbp + 48]            # d
                        mov              rsi, qword ptr [rbp + 56]            # d
                        call             rt_deref@PLT
.Lgcsite_main_26:       cmp              al, 104;                             je    main_ω
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        push             rax                                  # gc_poll bb_deref.cpp:41
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_25:
1:                                                                            jmp   n27_line_mark_α
                        .size            n26_deref_bx, .-n26_deref_bx
                        .type            n27_line_mark_bx, @function
n27_line_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
.Lline_mark_α_70_stno:  .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lline_mark_α_70_stno
                        .long            0
                        .long            18
                        .quad            .Lstnof1
                        .popsection
n27_line_mark_α:        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n28_call_icon_α
                        .size            n27_line_mark_bx, .-n27_line_mark_bx
                        .type            n28_call_icon_bx, @function
n28_call_icon_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_icon_α:        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_icon_α_rkfn73:   .string          "write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_icon_α_rkfn73]
                        lea              rsi, [rbp + 16]
                        mov              edx, 1
                        mov              ecx, 327852
                        call             rt_call_arr_bl_strict@PLT
.Lgcsite_main_27:       mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:350
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_28:
1:                      cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n28_call_icon_β:                                                              jmp   main_ω
                        .size            n28_call_icon_bx, .-n28_call_icon_bx
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
                        lea              rsp, [rbp + 688]
                        mov              rbp, qword ptr [rbp + 680];          jmp   qword ptr [rsp]
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
                        lea              rsp, [rbp + 688]
                        mov              rbp, qword ptr [rbp + 680];          jmp   qword ptr [rsp + 8]
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            2956283956570
                        .quad            382252089440
                        .quad            .Lgcmap_main_s
                        .quad            576
                        .quad            5
                        .quad            140737488355328
                        .quad            17596481011840
                        .quad            52776558133392
                        .quad            17596481011904
                        .quad            404620279021776
.Lgcmap_main_s:         .string          "main"
.Lgcsites_main_0:       .quad            29
                        .quad            .Lgcmap_main
                        .quad            9223653477471748784
                        .quad            .Lgccode_main_0
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
.Lstartup_iln00001_1:    .string          "t"
.Lstartup_iln00001_2:    .string          "x"
                        .align           8
.Lstartup_ilnames9000:
                        .quad            .Lstartup_iln00001_0
                        .quad            .Lstartup_iln00001_1
                        .quad            .Lstartup_iln00001_2
                        .quad            0
                        .align           4
.Lstartup_iloffs9000:
                        .long            544
                        .long            560
                        .long            528
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
                        .quad            0
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
