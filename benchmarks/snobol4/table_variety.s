                        .intel_syntax    noprefix
                        .text
                        .file            1 "table_variety.sno"
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
                        mov              edi, 6
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 6
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 8
                        call             rt_label_table_install@PLT
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
                        mov              r12, qword ptr [0x70000000]
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rax, [rip + .Llevel_zero_return]
                        push             rax
                        push             rax
                                                                              jmp   main_α
.Llevel_zero_return:    call             rt_kw_return_level_zero@PLT
                        ud2
                        .section         .rodata
.Lgvan0:                .string          "census"
.Lgvan1:                .string          "pass"
.Lgvan2:                .string          "tab"
.Lgvan3:                .string          "ix"
.Lgvan4:                .string          "sx"
.Lgvan5:                .string          "rx"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "round"
.Llbln1:                .string          "intfill"
.Llbln2:                .string          "strfill"
.Llbln3:                .string          "realfil"
.Llbln4:                .string          "intread"
.Llbln5:                .string          "strread"
.Llbln6:                .string          "realrd"
.Llbln7:                .string          "END"
                        .align           8
__label_names:
                        .quad            .Llbln0
                        .quad            .Llbln1
                        .quad            .Llbln2
                        .quad            .Llbln3
                        .quad            .Llbln4
                        .quad            .Llbln5
                        .quad            .Llbln6
                        .quad            .Llbln7
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 3304], rax
                        mov              dword ptr [rsp + 3296], 160
                        mov              dword ptr [rsp + 3300], 3312
                        mov              eax, 0
main_α_body:
                        .type            n0_call_bx, @function
n0_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_α:              sub              rsp, 16
                        mov              r11, 1
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_fp_model_spitbol@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_339_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_339_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_call_α
n0_call_β:              mov              r11, 1
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_call_bx, @function
n1_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              sub              rsp, 16
                        mov              r11, 2
                        lea              rdi, [rsp + 0]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_quit_trap_320@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lcall_α_340_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_lit_integer_α
.Lcall_α_340_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_lit_integer_α
n1_call_β:              mov              r11, 2
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_lit_integer_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#=======================================================================================================================
#         census = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n2_lit_integer_α:       sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_341_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_lit_integer_α
.Llit_integer_α_341_0:  .quad            18446744073709551615
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_342_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_lit_string_α
.Llit_integer_α_342_0:  .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        sub              rsp, 16
                        mov              r11, 5
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Llit_string_α_343_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_call_α
.Llit_string_α_343_0:   .quad            .Llit_string_α_343_0_s
.Llit_string_α_343_0_s: .string          "table_variety.sno"
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              sub              rsp, 16
                        mov              r11, 6
                        sub              rsp, 48
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], rax
                        .section         .rodata
.Lcall_α_rkfnzd345:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd345]
                        lea              rsi, [rsp + 0]
                        mov              edx, 3
                        mov              ecx, 524352
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 48
                        cmp              al, 104;                             jne   .Lcall_α_344_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n6_stmt_mark_α
.Lcall_α_344_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n6_stmt_mark_α
n5_call_β:              mov              r11, 6
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n6_stmt_mark_α
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_stmt_mark_bx, @function
n6_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_stmt_mark_α:         mov              r11, 7
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        add              rsp, 64;                             jmp   n7_statement_begin_α
                        .size            n6_stmt_mark_bx, .-n6_stmt_mark_bx
                        .type            n7_statement_begin_bx, @function
n7_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:   mov              r11, 8;                              jmp   n8_lit_integer_α
n7_statement_begin_β:   mov              r11, 8;                              jmp   n11_stmt_mark_α
                        .size            n7_statement_begin_bx, .-n7_statement_begin_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       sub              rsp, 16
                        mov              r11, 9
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_350_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_assign_α
.Llit_integer_α_350_0:  .quad            0
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 10
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n10_statement_end_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_statement_end_bx, @function
n10_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    mov              r11, 11
                        add              rsp, 16;                             jmp   n11_stmt_mark_α
                        .size            n10_statement_end_bx, .-n10_statement_end_bx
                        .type            n11_stmt_mark_bx, @function
n11_stmt_mark_bx:
#=======================================================================================================================
#         pass = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n11_stmt_mark_α:        mov              r11, 12
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n12_statement_begin_α
                        .size            n11_stmt_mark_bx, .-n11_stmt_mark_bx
                        .type            n12_statement_begin_bx, @function
n12_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:  mov              r11, 13;                             jmp   n13_lit_integer_α
n12_statement_begin_β:  mov              r11, 13;                             jmp   n16_stmt_mark_α
                        .size            n12_statement_begin_bx, .-n12_statement_begin_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              r11, 14
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_assign_α
.Llit_integer_α_358_0:  .quad            1
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_assign_bx, @function
n14_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_assign_α:           mov              r11, 15
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pass
                        mov              qword ptr [r9 + 24], rdx;            jmp   n15_statement_end_α
                        .size            n14_assign_bx, .-n14_assign_bx
                        .type            n15_statement_end_bx, @function
n15_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    mov              r11, 16
                        add              rsp, 16;                             jmp   n16_stmt_mark_α
                        .size            n15_statement_end_bx, .-n15_statement_end_bx
                        .type            n16_stmt_mark_bx, @function
n16_stmt_mark_bx:
#=======================================================================================================================
# round   tab = TABLE(64)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n16_stmt_mark_α:        mov              r11, 17
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n17_statement_begin_α
                        .size            n16_stmt_mark_bx, .-n16_stmt_mark_bx
                        .type            n17_statement_begin_bx, @function
n17_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18;                             jmp   n18_lit_integer_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   n22_stmt_mark_α
                        .size            n17_statement_begin_bx, .-n17_statement_begin_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_366_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_call_α
.Llit_integer_α_366_0:  .quad            64
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_call_bx, @function
n19_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             sub              rsp, 16
                        mov              r11, 20
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd368:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd368]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_367_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_statement_begin_β
.Lcall_α_367_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n20_assign_α
n19_call_β:             mov              r11, 20
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n17_statement_begin_β
                        .size            n19_call_bx, .-n19_call_bx
                        .type            n20_assign_bx, @function
n20_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # tab
                        mov              qword ptr [r9 + 40], rdx;            jmp   n21_statement_end_α
                        .size            n20_assign_bx, .-n20_assign_bx
                        .type            n21_statement_end_bx, @function
n21_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    mov              r11, 22
                        add              rsp, 32;                             jmp   n22_stmt_mark_α
                        .size            n21_statement_end_bx, .-n21_statement_end_bx
                        .type            n22_stmt_mark_bx, @function
n22_stmt_mark_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n22_stmt_mark_α:        mov              r11, 23
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n23_statement_begin_α
                        .size            n22_stmt_mark_bx, .-n22_stmt_mark_bx
                        .type            n23_statement_begin_bx, @function
n23_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 24;                             jmp   n24_lit_integer_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n28_stmt_mark_α
                        .size            n23_statement_begin_bx, .-n23_statement_begin_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_376_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_unop_α
.Llit_integer_α_376_0:  .quad            30
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_unop_bx, @function
n25_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_unop_α:             sub              rsp, 16
                        mov              r11, 26
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg_sno@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:36
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n26_assign_α
n25_unop_β:             mov              r11, 26
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n23_statement_begin_β
                        .size            n25_unop_bx, .-n25_unop_bx
                        .type            n26_assign_bx, @function
n26_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n27_statement_end_α
                        .size            n26_assign_bx, .-n26_assign_bx
                        .type            n27_statement_end_bx, @function
n27_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        add              rsp, 32;                             jmp   n28_stmt_mark_α
                        .size            n27_statement_end_bx, .-n27_statement_end_bx
                        .type            n28_stmt_mark_bx, @function
n28_stmt_mark_bx:
#=======================================================================================================================
# intfill tab[ix] = ix * 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n28_stmt_mark_α:        mov              r11, 29
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n29_statement_begin_α
                        .size            n28_stmt_mark_bx, .-n28_stmt_mark_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 30;                             jmp   n30_var_α
n29_statement_begin_β:  mov              r11, 30;                             jmp   n37_stmt_mark_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_var_α
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_var_bx, @function
n31_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              sub              rsp, 16
                        mov              r11, 32
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n32_var_α
n31_var_β:              mov              r11, 32
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n29_statement_begin_β
                        .size            n31_var_bx, .-n31_var_bx
                        .type            n32_var_bx, @function
n32_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:              sub              rsp, 16
                        mov              r11, 33
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n33_lit_integer_α
n32_var_β:              mov              r11, 33
                        add              rsp, 16;                             jmp   n31_var_β
                        .size            n32_var_bx, .-n32_var_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      sub              rsp, 16
                        mov              r11, 34
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_388_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n34_binop_α
n33_lit_integer_β:      mov              r11, 34
                        add              rsp, 16;                             jmp   n32_var_β
.Llit_integer_α_388_0:  .quad            3
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_binop_bx, @function
n34_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_binop_α:            sub              rsp, 16
                        mov              r11, 35
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_389_2
                        mov              rdx, 3
                        imul             rax, rdx;                            jo    .Lbinop_α_389_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_389_7
.Lbinop_α_389_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_389_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_389_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_389_4
.Lbinop_α_389_3:        movq             xmm0, rsi
.Lbinop_α_389_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_389_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_389_7:                                                              jmp   n35_assign_var_α
.Lbinop_α_389_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_389_240
                        add              rsp, 16;                             jmp   n33_lit_integer_β
.Lbinop_α_389_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n35_assign_var_α
n34_binop_β:            mov              r11, 35
                        add              rsp, 16;                             jmp   n33_lit_integer_β
                        .size            n34_binop_bx, .-n34_binop_bx
                        .type            n35_assign_var_bx, @function
n35_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_assign_var_α:       sub              rsp, 16
                        mov              r11, 36
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_391_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_391_0
.Lassign_var_α_391_1:   test             rsi, rsi;                            je    .Lassign_var_α_391_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_391_238
                        add              rsp, 16;                             jmp   n34_binop_β
.Lassign_var_α_391_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n36_statement_end_α
.Lassign_var_α_391_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_391_239
                        add              rsp, 16;                             jmp   n34_binop_β
.Lassign_var_α_391_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_391_240
                        add              rsp, 16;                             jmp   n34_binop_β
.Lassign_var_α_391_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n36_statement_end_α
                        .size            n35_assign_var_bx, .-n35_assign_var_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 37
                        add              rsp, 96;                             jmp   n37_stmt_mark_α
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_stmt_mark_bx, @function
n37_stmt_mark_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(intfill)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n37_stmt_mark_α:        mov              r11, 38
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n38_statement_begin_α
                        .size            n37_stmt_mark_bx, .-n37_stmt_mark_bx
                        .type            n38_statement_begin_bx, @function
n38_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39;                             jmp   n39_var_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   n49_stmt_mark_α
                        .size            n38_statement_begin_bx, .-n38_statement_begin_bx
                        .type            n39_var_bx, @function
n39_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              r11, 40
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_lit_integer_α
                        .size            n39_var_bx, .-n39_var_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      sub              rsp, 16
                        mov              r11, 41
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_399_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_coerce_numeric_α
n40_lit_integer_β:      mov              r11, 41
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_β
.Llit_integer_α_399_0:  .quad            30
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_coerce_numeric_bx, @function
n41_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 42
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_401_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_401_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_401_0
.Lcoerce_numeric_α_401_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_coerce_numeric_α
.Lcoerce_numeric_α_401_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n42_coerce_numeric_α
n41_coerce_numeric_β:   mov              r11, 42
                        add              rsp, 16;                             jmp   n40_lit_integer_β
                        .size            n41_coerce_numeric_bx, .-n41_coerce_numeric_bx
                        .type            n42_coerce_numeric_bx, @function
n42_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 43
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_403_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_403_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_403_0
.Lcoerce_numeric_α_403_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_cmp_test_α
.Lcoerce_numeric_α_403_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n43_cmp_test_α
n42_coerce_numeric_β:   mov              r11, 43
                        add              rsp, 16;                             jmp   n41_coerce_numeric_β
                        .size            n42_coerce_numeric_bx, .-n42_coerce_numeric_bx
                        .type            n43_cmp_test_bx, @function
n43_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_cmp_test_α:         sub              rsp, 16
                        mov              r11, 44
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_405_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_405_239
                        add              rsp, 16;                             jmp   n42_coerce_numeric_β
.Lcmp_test_α_405_239:                                                         jmp   n44_var_α
.Lcmp_test_α_405_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_405_240
                        add              rsp, 16;                             jmp   n42_coerce_numeric_β
.Lcmp_test_α_405_240:                                                         jmp   n44_var_α
n43_cmp_test_β:         mov              r11, 44
                        add              rsp, 16;                             jmp   n42_coerce_numeric_β
                        .size            n43_cmp_test_bx, .-n43_cmp_test_bx
                        .type            n44_var_bx, @function
n44_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_lit_integer_α
n44_var_β:              mov              r11, 45
                        add              rsp, 16;                             jmp   n43_cmp_test_β
                        .size            n44_var_bx, .-n44_var_bx
                        .type            n45_lit_integer_bx, @function
n45_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:      sub              rsp, 16
                        mov              r11, 46
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_407_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_binop_α
n45_lit_integer_β:      mov              r11, 46
                        add              rsp, 16;                             jmp   n44_var_β
.Llit_integer_α_407_0:  .quad            1
                        .size            n45_lit_integer_bx, .-n45_lit_integer_bx
                        .type            n46_binop_bx, @function
n46_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_binop_α:            sub              rsp, 16
                        mov              r11, 47
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_408_2
                        add              rax, 1;                              jo    .Lbinop_α_408_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_408_7
.Lbinop_α_408_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_408_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_408_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_408_4
.Lbinop_α_408_3:        movq             xmm0, rsi
.Lbinop_α_408_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_408_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_408_7:                                                              jmp   n47_assign_α
.Lbinop_α_408_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_408_240
                        add              rsp, 16;                             jmp   n45_lit_integer_β
.Lbinop_α_408_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n47_assign_α
n46_binop_β:            mov              r11, 47
                        add              rsp, 16;                             jmp   n45_lit_integer_β
                        .size            n46_binop_bx, .-n46_binop_bx
                        .type            n47_assign_bx, @function
n47_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_assign_α:           mov              r11, 48
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n48_statement_end_α
                        .size            n47_assign_bx, .-n47_assign_bx
                        .type            n48_statement_end_bx, @function
n48_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 49
                        add              rsp, 128;                            jmp   n28_stmt_mark_α
                        .size            n48_statement_end_bx, .-n48_statement_end_bx
                        .type            n49_stmt_mark_bx, @function
n49_stmt_mark_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n49_stmt_mark_α:        mov              r11, 50
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n50_statement_begin_α
                        .size            n49_stmt_mark_bx, .-n49_stmt_mark_bx
                        .type            n50_statement_begin_bx, @function
n50_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 51;                             jmp   n51_lit_integer_α
n50_statement_begin_β:  mov              r11, 51;                             jmp   n54_stmt_mark_α
                        .size            n50_statement_begin_bx, .-n50_statement_begin_bx
                        .type            n51_lit_integer_bx, @function
n51_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_lit_integer_α:      sub              rsp, 16
                        mov              r11, 52
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_416_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n52_assign_α
.Llit_integer_α_416_0:  .quad            1
                        .size            n51_lit_integer_bx, .-n51_lit_integer_bx
                        .type            n52_assign_bx, @function
n52_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n53_statement_end_α
                        .size            n52_assign_bx, .-n52_assign_bx
                        .type            n53_statement_end_bx, @function
n53_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 54
                        add              rsp, 16;                             jmp   n54_stmt_mark_α
                        .size            n53_statement_end_bx, .-n53_statement_end_bx
                        .type            n54_stmt_mark_bx, @function
n54_stmt_mark_bx:
#=======================================================================================================================
# strfill tab['k' sx] = sx * 5
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n54_stmt_mark_α:        mov              r11, 55
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n55_statement_begin_α
                        .size            n54_stmt_mark_bx, .-n54_stmt_mark_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 56;                             jmp   n56_var_α
n55_statement_begin_β:  mov              r11, 56;                             jmp   n65_stmt_mark_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_lit_string_α
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_lit_string_bx, @function
n57_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_425_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_var_α
n57_lit_string_β:       mov              r11, 58
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n55_statement_begin_β
.Llit_string_α_425_0:   .quad            .Llit_string_α_425_0_s
.Llit_string_α_425_0_s: .string          "k"
                        .size            n57_lit_string_bx, .-n57_lit_string_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_binop_α
n58_var_β:              mov              r11, 59
                        add              rsp, 16;                             jmp   n57_lit_string_β
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            sub              rsp, 16
                        mov              r11, 60
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n60_var_α
n59_binop_β:            mov              r11, 60
                        add              rsp, 16;                             jmp   n58_var_β
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_var_bx, @function
n60_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_var_α:              sub              rsp, 16
                        mov              r11, 61
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n61_lit_integer_α
n60_var_β:              mov              r11, 61
                        add              rsp, 16;                             jmp   n59_binop_β
                        .size            n60_var_bx, .-n60_var_bx
                        .type            n61_lit_integer_bx, @function
n61_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_lit_integer_α:      sub              rsp, 16
                        mov              r11, 62
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_429_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n62_binop_α
n61_lit_integer_β:      mov              r11, 62
                        add              rsp, 16;                             jmp   n60_var_β
.Llit_integer_α_429_0:  .quad            5
                        .size            n61_lit_integer_bx, .-n61_lit_integer_bx
                        .type            n62_binop_bx, @function
n62_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_binop_α:            sub              rsp, 16
                        mov              r11, 63
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_430_2
                        mov              rdx, 5
                        imul             rax, rdx;                            jo    .Lbinop_α_430_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_430_7
.Lbinop_α_430_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_430_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 5
                        cmp              al, 5;                               je    .Lbinop_α_430_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_430_4
.Lbinop_α_430_3:        movq             xmm0, rsi
.Lbinop_α_430_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_430_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_430_7:                                                              jmp   n63_assign_var_α
.Lbinop_α_430_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_430_240
                        add              rsp, 16;                             jmp   n61_lit_integer_β
.Lbinop_α_430_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n63_assign_var_α
n62_binop_β:            mov              r11, 63
                        add              rsp, 16;                             jmp   n61_lit_integer_β
                        .size            n62_binop_bx, .-n62_binop_bx
                        .type            n63_assign_var_bx, @function
n63_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_var_α:       sub              rsp, 16
                        mov              r11, 64
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_432_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_432_0
.Lassign_var_α_432_1:   test             rsi, rsi;                            je    .Lassign_var_α_432_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_432_238
                        add              rsp, 16;                             jmp   n62_binop_β
.Lassign_var_α_432_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n64_statement_end_α
.Lassign_var_α_432_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_432_239
                        add              rsp, 16;                             jmp   n62_binop_β
.Lassign_var_α_432_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_432_240
                        add              rsp, 16;                             jmp   n62_binop_β
.Lassign_var_α_432_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n64_statement_end_α
                        .size            n63_assign_var_bx, .-n63_assign_var_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65
                        add              rsp, 128;                            jmp   n65_stmt_mark_α
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_stmt_mark_bx, @function
n65_stmt_mark_bx:
#=======================================================================================================================
#         tab['a_much_longer_key_' sx] = sx * 7
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n65_stmt_mark_α:        mov              r11, 66
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n66_statement_begin_α
                        .size            n65_stmt_mark_bx, .-n65_stmt_mark_bx
                        .type            n66_statement_begin_bx, @function
n66_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:  mov              r11, 67;                             jmp   n67_var_α
n66_statement_begin_β:  mov              r11, 67;                             jmp   n76_stmt_mark_α
                        .size            n66_statement_begin_bx, .-n66_statement_begin_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_lit_string_α
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_lit_string_bx, @function
n68_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_lit_string_α:       sub              rsp, 16
                        mov              r11, 69
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_440_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_var_α
n68_lit_string_β:       mov              r11, 69
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n66_statement_begin_β
.Llit_string_α_440_0:   .quad            .Llit_string_α_440_0_s
.Llit_string_α_440_0_s: .string          "a_much_longer_key_"
                        .size            n68_lit_string_bx, .-n68_lit_string_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_binop_α
n69_var_β:              mov              r11, 70
                        add              rsp, 16;                             jmp   n68_lit_string_β
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_binop_bx, @function
n70_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_binop_α:            sub              rsp, 16
                        mov              r11, 71
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n71_var_α
n70_binop_β:            mov              r11, 71
                        add              rsp, 16;                             jmp   n69_var_β
                        .size            n70_binop_bx, .-n70_binop_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              r11, 72
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_lit_integer_α
n71_var_β:              mov              r11, 72
                        add              rsp, 16;                             jmp   n70_binop_β
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_444_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_binop_α
n72_lit_integer_β:      mov              r11, 73
                        add              rsp, 16;                             jmp   n71_var_β
.Llit_integer_α_444_0:  .quad            7
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_binop_bx, @function
n73_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_binop_α:            sub              rsp, 16
                        mov              r11, 74
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_445_2
                        mov              rdx, 7
                        imul             rax, rdx;                            jo    .Lbinop_α_445_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_445_7
.Lbinop_α_445_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_445_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 7
                        cmp              al, 5;                               je    .Lbinop_α_445_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_445_4
.Lbinop_α_445_3:        movq             xmm0, rsi
.Lbinop_α_445_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_445_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_445_7:                                                              jmp   n74_assign_var_α
.Lbinop_α_445_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_445_240
                        add              rsp, 16;                             jmp   n72_lit_integer_β
.Lbinop_α_445_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n74_assign_var_α
n73_binop_β:            mov              r11, 74
                        add              rsp, 16;                             jmp   n72_lit_integer_β
                        .size            n73_binop_bx, .-n73_binop_bx
                        .type            n74_assign_var_bx, @function
n74_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_assign_var_α:       sub              rsp, 16
                        mov              r11, 75
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_447_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_447_0
.Lassign_var_α_447_1:   test             rsi, rsi;                            je    .Lassign_var_α_447_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_447_238
                        add              rsp, 16;                             jmp   n73_binop_β
.Lassign_var_α_447_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n75_statement_end_α
.Lassign_var_α_447_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_447_239
                        add              rsp, 16;                             jmp   n73_binop_β
.Lassign_var_α_447_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_447_240
                        add              rsp, 16;                             jmp   n73_binop_β
.Lassign_var_α_447_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n75_statement_end_α
                        .size            n74_assign_var_bx, .-n74_assign_var_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        add              rsp, 128;                            jmp   n76_stmt_mark_α
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_stmt_mark_bx, @function
n76_stmt_mark_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(strfill)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n76_stmt_mark_α:        mov              r11, 77
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n77_statement_begin_α
                        .size            n76_stmt_mark_bx, .-n76_stmt_mark_bx
                        .type            n77_statement_begin_bx, @function
n77_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 78;                             jmp   n78_var_α
n77_statement_begin_β:  mov              r11, 78;                             jmp   n88_stmt_mark_α
                        .size            n77_statement_begin_bx, .-n77_statement_begin_bx
                        .type            n78_var_bx, @function
n78_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_var_α:              sub              rsp, 16
                        mov              r11, 79
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n79_lit_integer_α
                        .size            n78_var_bx, .-n78_var_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      sub              rsp, 16
                        mov              r11, 80
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_455_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_coerce_numeric_α
n79_lit_integer_β:      mov              r11, 80
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n77_statement_begin_β
.Llit_integer_α_455_0:  .quad            20
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_coerce_numeric_bx, @function
n80_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 81
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_457_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_457_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_457_0
.Lcoerce_numeric_α_457_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_coerce_numeric_α
.Lcoerce_numeric_α_457_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n81_coerce_numeric_α
n80_coerce_numeric_β:   mov              r11, 81
                        add              rsp, 16;                             jmp   n79_lit_integer_β
                        .size            n80_coerce_numeric_bx, .-n80_coerce_numeric_bx
                        .type            n81_coerce_numeric_bx, @function
n81_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 82
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_459_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_459_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_459_0
.Lcoerce_numeric_α_459_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n82_cmp_test_α
.Lcoerce_numeric_α_459_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n82_cmp_test_α
n81_coerce_numeric_β:   mov              r11, 82
                        add              rsp, 16;                             jmp   n80_coerce_numeric_β
                        .size            n81_coerce_numeric_bx, .-n81_coerce_numeric_bx
                        .type            n82_cmp_test_bx, @function
n82_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_cmp_test_α:         sub              rsp, 16
                        mov              r11, 83
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_461_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_461_239
                        add              rsp, 16;                             jmp   n81_coerce_numeric_β
.Lcmp_test_α_461_239:                                                         jmp   n83_var_α
.Lcmp_test_α_461_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_461_240
                        add              rsp, 16;                             jmp   n81_coerce_numeric_β
.Lcmp_test_α_461_240:                                                         jmp   n83_var_α
n82_cmp_test_β:         mov              r11, 83
                        add              rsp, 16;                             jmp   n81_coerce_numeric_β
                        .size            n82_cmp_test_bx, .-n82_cmp_test_bx
                        .type            n83_var_bx, @function
n83_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_var_α:              sub              rsp, 16
                        mov              r11, 84
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n84_lit_integer_α
n83_var_β:              mov              r11, 84
                        add              rsp, 16;                             jmp   n82_cmp_test_β
                        .size            n83_var_bx, .-n83_var_bx
                        .type            n84_lit_integer_bx, @function
n84_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_integer_α:      sub              rsp, 16
                        mov              r11, 85
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_463_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n85_binop_α
n84_lit_integer_β:      mov              r11, 85
                        add              rsp, 16;                             jmp   n83_var_β
.Llit_integer_α_463_0:  .quad            1
                        .size            n84_lit_integer_bx, .-n84_lit_integer_bx
                        .type            n85_binop_bx, @function
n85_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_binop_α:            sub              rsp, 16
                        mov              r11, 86
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_464_2
                        add              rax, 1;                              jo    .Lbinop_α_464_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_464_7
.Lbinop_α_464_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_464_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_464_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_464_4
.Lbinop_α_464_3:        movq             xmm0, rsi
.Lbinop_α_464_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_464_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_464_7:                                                              jmp   n86_assign_α
.Lbinop_α_464_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_464_240
                        add              rsp, 16;                             jmp   n84_lit_integer_β
.Lbinop_α_464_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n86_assign_α
n85_binop_β:            mov              r11, 86
                        add              rsp, 16;                             jmp   n84_lit_integer_β
                        .size            n85_binop_bx, .-n85_binop_bx
                        .type            n86_assign_bx, @function
n86_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_assign_α:           mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n87_statement_end_α
                        .size            n86_assign_bx, .-n86_assign_bx
                        .type            n87_statement_end_bx, @function
n87_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    mov              r11, 88
                        add              rsp, 128;                            jmp   n54_stmt_mark_α
                        .size            n87_statement_end_bx, .-n87_statement_end_bx
                        .type            n88_stmt_mark_bx, @function
n88_stmt_mark_bx:
#=======================================================================================================================
#         tab['17'] = 1700
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n88_stmt_mark_α:        mov              r11, 89
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n89_statement_begin_α
                        .size            n88_stmt_mark_bx, .-n88_stmt_mark_bx
                        .type            n89_statement_begin_bx, @function
n89_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 90;                             jmp   n90_var_α
n89_statement_begin_β:  mov              r11, 90;                             jmp   n95_stmt_mark_α
                        .size            n89_statement_begin_bx, .-n89_statement_begin_bx
                        .type            n90_var_bx, @function
n90_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_α:              sub              rsp, 16
                        mov              r11, 91
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n91_lit_string_α
                        .size            n90_var_bx, .-n90_var_bx
                        .type            n91_lit_string_bx, @function
n91_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:       sub              rsp, 16
                        mov              r11, 92
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_lit_integer_α
n91_lit_string_β:       mov              r11, 92
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n89_statement_begin_β
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          "17"
                        .size            n91_lit_string_bx, .-n91_lit_string_bx
                        .type            n92_lit_integer_bx, @function
n92_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:      sub              rsp, 16
                        mov              r11, 93
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n93_assign_var_α
n92_lit_integer_β:      mov              r11, 93
                        add              rsp, 16;                             jmp   n91_lit_string_β
.Llit_integer_α_474_0:  .quad            1700
                        .size            n92_lit_integer_bx, .-n92_lit_integer_bx
                        .type            n93_assign_var_bx, @function
n93_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_assign_var_α:       sub              rsp, 16
                        mov              r11, 94
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_476_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_476_0
.Lassign_var_α_476_1:   test             rsi, rsi;                            je    .Lassign_var_α_476_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_476_238
                        add              rsp, 16;                             jmp   n92_lit_integer_β
.Lassign_var_α_476_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n94_statement_end_α
.Lassign_var_α_476_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_476_239
                        add              rsp, 16;                             jmp   n92_lit_integer_β
.Lassign_var_α_476_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_476_240
                        add              rsp, 16;                             jmp   n92_lit_integer_β
.Lassign_var_α_476_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n94_statement_end_α
                        .size            n93_assign_var_bx, .-n93_assign_var_bx
                        .type            n94_statement_end_bx, @function
n94_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    mov              r11, 95
                        add              rsp, 64;                             jmp   n95_stmt_mark_α
                        .size            n94_statement_end_bx, .-n94_statement_end_bx
                        .type            n95_stmt_mark_bx, @function
n95_stmt_mark_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n95_stmt_mark_α:        mov              r11, 96
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n96_statement_begin_α
                        .size            n95_stmt_mark_bx, .-n95_stmt_mark_bx
                        .type            n96_statement_begin_bx, @function
n96_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:  mov              r11, 97;                             jmp   n97_lit_integer_α
n96_statement_begin_β:  mov              r11, 97;                             jmp   n100_stmt_mark_α
                        .size            n96_statement_begin_bx, .-n96_statement_begin_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      sub              rsp, 16
                        mov              r11, 98
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_483_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_assign_α
.Llit_integer_α_483_0:  .quad            1
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_assign_bx, @function
n98_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_assign_α:           mov              r11, 99
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n99_statement_end_α
                        .size            n98_assign_bx, .-n98_assign_bx
                        .type            n99_statement_end_bx, @function
n99_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 100
                        add              rsp, 16;                             jmp   n100_stmt_mark_α
                        .size            n99_statement_end_bx, .-n99_statement_end_bx
                        .type            n100_stmt_mark_bx, @function
n100_stmt_mark_bx:
#=======================================================================================================================
# realfil tab[rx / 2.0] = rx * 11
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n100_stmt_mark_α:       mov              r11, 101
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n101_statement_begin_α
                        .size            n100_stmt_mark_bx, .-n100_stmt_mark_bx
                        .type            n101_statement_begin_bx, @function
n101_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_begin_α: mov              r11, 102;                            jmp   n102_var_α
n101_statement_begin_β: mov              r11, 102;                            jmp   n111_stmt_mark_α
                        .size            n101_statement_begin_bx, .-n101_statement_begin_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              r11, 103
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_var_α
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_var_bx, @function
n103_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_lit_real_α
n103_var_β:             mov              r11, 104
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n101_statement_begin_β
                        .size            n103_var_bx, .-n103_var_bx
                        .type            n104_lit_real_bx, @function
n104_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_real_α:        sub              rsp, 16
                        mov              r11, 105
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_493_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n105_binop_α
.Llit_real_α_493_0:     .quad            4611686018427387904
                        .size            n104_lit_real_bx, .-n104_lit_real_bx
                        .type            n105_binop_bx, @function
n105_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_binop_α:           sub              rsp, 16
                        mov              r11, 106
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_real
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div_sno@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_494_240
                        add              rsp, 32;                             jmp   n103_var_β
.Lbinop_α_494_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:316
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n106_var_α
n105_binop_β:           mov              r11, 106
                        add              rsp, 32;                             jmp   n103_var_β
                        .size            n105_binop_bx, .-n105_binop_bx
                        .type            n106_var_bx, @function
n106_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_lit_integer_α
n106_var_β:             mov              r11, 107
                        add              rsp, 16;                             jmp   n105_binop_β
                        .size            n106_var_bx, .-n106_var_bx
                        .type            n107_lit_integer_bx, @function
n107_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              r11, 108
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_496_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_binop_α
n107_lit_integer_β:     mov              r11, 108
                        add              rsp, 16;                             jmp   n106_var_β
.Llit_integer_α_496_0:  .quad            11
                        .size            n107_lit_integer_bx, .-n107_lit_integer_bx
                        .type            n108_binop_bx, @function
n108_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:           sub              rsp, 16
                        mov              r11, 109
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_497_2
                        mov              rdx, 11
                        imul             rax, rdx;                            jo    .Lbinop_α_497_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_497_7
.Lbinop_α_497_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_497_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 11
                        cmp              al, 5;                               je    .Lbinop_α_497_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_497_4
.Lbinop_α_497_3:        movq             xmm0, rsi
.Lbinop_α_497_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_497_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_497_7:                                                              jmp   n109_assign_var_α
.Lbinop_α_497_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_497_240
                        add              rsp, 16;                             jmp   n107_lit_integer_β
.Lbinop_α_497_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n109_assign_var_α
n108_binop_β:           mov              r11, 109
                        add              rsp, 16;                             jmp   n107_lit_integer_β
                        .size            n108_binop_bx, .-n108_binop_bx
                        .type            n109_assign_var_bx, @function
n109_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_var_α:      sub              rsp, 16
                        mov              r11, 110
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_499_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_499_0
.Lassign_var_α_499_1:   test             rsi, rsi;                            je    .Lassign_var_α_499_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_499_238
                        add              rsp, 16;                             jmp   n108_binop_β
.Lassign_var_α_499_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n110_statement_end_α
.Lassign_var_α_499_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_499_239
                        add              rsp, 16;                             jmp   n108_binop_β
.Lassign_var_α_499_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_499_240
                        add              rsp, 16;                             jmp   n108_binop_β
.Lassign_var_α_499_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n110_statement_end_α
                        .size            n109_assign_var_bx, .-n109_assign_var_bx
                        .type            n110_statement_end_bx, @function
n110_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_end_α:   mov              r11, 111
                        add              rsp, 128;                            jmp   n111_stmt_mark_α
                        .size            n110_statement_end_bx, .-n110_statement_end_bx
                        .type            n111_stmt_mark_bx, @function
n111_stmt_mark_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(realfil)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n111_stmt_mark_α:       mov              r11, 112
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n112_statement_begin_α
                        .size            n111_stmt_mark_bx, .-n111_stmt_mark_bx
                        .type            n112_statement_begin_bx, @function
n112_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_begin_α: mov              r11, 113;                            jmp   n113_var_α
n112_statement_begin_β: mov              r11, 113;                            jmp   n123_stmt_mark_α
                        .size            n112_statement_begin_bx, .-n112_statement_begin_bx
                        .type            n113_var_bx, @function
n113_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             sub              rsp, 16
                        mov              r11, 114
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_lit_integer_α
                        .size            n113_var_bx, .-n113_var_bx
                        .type            n114_lit_integer_bx, @function
n114_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:     sub              rsp, 16
                        mov              r11, 115
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_507_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_coerce_numeric_α
n114_lit_integer_β:     mov              r11, 115
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n112_statement_begin_β
.Llit_integer_α_507_0:  .quad            12
                        .size            n114_lit_integer_bx, .-n114_lit_integer_bx
                        .type            n115_coerce_numeric_bx, @function
n115_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 116
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_509_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_509_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_509_0
.Lcoerce_numeric_α_509_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_coerce_numeric_α
.Lcoerce_numeric_α_509_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n116_coerce_numeric_α
n115_coerce_numeric_β:  mov              r11, 116
                        add              rsp, 16;                             jmp   n114_lit_integer_β
                        .size            n115_coerce_numeric_bx, .-n115_coerce_numeric_bx
                        .type            n116_coerce_numeric_bx, @function
n116_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 117
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_511_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_511_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_511_0
.Lcoerce_numeric_α_511_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_cmp_test_α
.Lcoerce_numeric_α_511_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n117_cmp_test_α
n116_coerce_numeric_β:  mov              r11, 117
                        add              rsp, 16;                             jmp   n115_coerce_numeric_β
                        .size            n116_coerce_numeric_bx, .-n116_coerce_numeric_bx
                        .type            n117_cmp_test_bx, @function
n117_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_cmp_test_α:        sub              rsp, 16
                        mov              r11, 118
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_513_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_513_239
                        add              rsp, 16;                             jmp   n116_coerce_numeric_β
.Lcmp_test_α_513_239:                                                         jmp   n118_var_α
.Lcmp_test_α_513_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_513_240
                        add              rsp, 16;                             jmp   n116_coerce_numeric_β
.Lcmp_test_α_513_240:                                                         jmp   n118_var_α
n117_cmp_test_β:        mov              r11, 118
                        add              rsp, 16;                             jmp   n116_coerce_numeric_β
                        .size            n117_cmp_test_bx, .-n117_cmp_test_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
n118_var_β:             mov              r11, 119
                        add              rsp, 16;                             jmp   n117_cmp_test_β
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_lit_integer_bx, @function
n119_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              r11, 120
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_515_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_binop_α
n119_lit_integer_β:     mov              r11, 120
                        add              rsp, 16;                             jmp   n118_var_β
.Llit_integer_α_515_0:  .quad            1
                        .size            n119_lit_integer_bx, .-n119_lit_integer_bx
                        .type            n120_binop_bx, @function
n120_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:           sub              rsp, 16
                        mov              r11, 121
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_516_2
                        add              rax, 1;                              jo    .Lbinop_α_516_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_516_7
.Lbinop_α_516_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_516_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_516_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_516_4
.Lbinop_α_516_3:        movq             xmm0, rsi
.Lbinop_α_516_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_516_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_516_7:                                                              jmp   n121_assign_α
.Lbinop_α_516_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_516_240
                        add              rsp, 16;                             jmp   n119_lit_integer_β
.Lbinop_α_516_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n121_assign_α
n120_binop_β:           mov              r11, 121
                        add              rsp, 16;                             jmp   n119_lit_integer_β
                        .size            n120_binop_bx, .-n120_binop_bx
                        .type            n121_assign_bx, @function
n121_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              r11, 122
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n122_statement_end_α
                        .size            n121_assign_bx, .-n121_assign_bx
                        .type            n122_statement_end_bx, @function
n122_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   mov              r11, 123
                        add              rsp, 128;                            jmp   n100_stmt_mark_α
                        .size            n122_statement_end_bx, .-n122_statement_end_bx
                        .type            n123_stmt_mark_bx, @function
n123_stmt_mark_bx:
#=======================================================================================================================
#         tab[''] = 99
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n123_stmt_mark_α:       mov              r11, 124
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n124_statement_begin_α
                        .size            n123_stmt_mark_bx, .-n123_stmt_mark_bx
                        .type            n124_statement_begin_bx, @function
n124_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_begin_α: mov              r11, 125;                            jmp   n125_var_α
n124_statement_begin_β: mov              r11, 125;                            jmp   n130_stmt_mark_α
                        .size            n124_statement_begin_bx, .-n124_statement_begin_bx
                        .type            n125_var_bx, @function
n125_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              r11, 126
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_lit_string_α
                        .size            n125_var_bx, .-n125_var_bx
                        .type            n126_lit_string_bx, @function
n126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      sub              rsp, 16
                        mov              r11, 127
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_525_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_lit_integer_α
n126_lit_string_β:      mov              r11, 127
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n124_statement_begin_β
.Llit_string_α_525_0:   .quad            .Llit_string_α_525_0_s
.Llit_string_α_525_0_s: .string          ""
                        .size            n126_lit_string_bx, .-n126_lit_string_bx
                        .type            n127_lit_integer_bx, @function
n127_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     sub              rsp, 16
                        mov              r11, 128
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_526_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_assign_var_α
n127_lit_integer_β:     mov              r11, 128
                        add              rsp, 16;                             jmp   n126_lit_string_β
.Llit_integer_α_526_0:  .quad            99
                        .size            n127_lit_integer_bx, .-n127_lit_integer_bx
                        .type            n128_assign_var_bx, @function
n128_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_assign_var_α:      sub              rsp, 16
                        mov              r11, 129
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_528_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_528_0
.Lassign_var_α_528_1:   test             rsi, rsi;                            je    .Lassign_var_α_528_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_528_238
                        add              rsp, 16;                             jmp   n127_lit_integer_β
.Lassign_var_α_528_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n129_statement_end_α
.Lassign_var_α_528_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_528_239
                        add              rsp, 16;                             jmp   n127_lit_integer_β
.Lassign_var_α_528_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_528_240
                        add              rsp, 16;                             jmp   n127_lit_integer_β
.Lassign_var_α_528_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n129_statement_end_α
                        .size            n128_assign_var_bx, .-n128_assign_var_bx
                        .type            n129_statement_end_bx, @function
n129_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   mov              r11, 130
                        add              rsp, 64;                             jmp   n130_stmt_mark_α
                        .size            n129_statement_end_bx, .-n129_statement_end_bx
                        .type            n130_stmt_mark_bx, @function
n130_stmt_mark_bx:
#=======================================================================================================================
#         tab[17] = 1717
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n130_stmt_mark_α:       mov              r11, 131
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n131_statement_begin_α
                        .size            n130_stmt_mark_bx, .-n130_stmt_mark_bx
                        .type            n131_statement_begin_bx, @function
n131_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α: mov              r11, 132;                            jmp   n132_var_α
n131_statement_begin_β: mov              r11, 132;                            jmp   n137_stmt_mark_α
                        .size            n131_statement_begin_bx, .-n131_statement_begin_bx
                        .type            n132_var_bx, @function
n132_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_α:             sub              rsp, 16
                        mov              r11, 133
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n133_lit_integer_α
                        .size            n132_var_bx, .-n132_var_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     sub              rsp, 16
                        mov              r11, 134
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_536_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n134_lit_integer_α
n133_lit_integer_β:     mov              r11, 134
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n131_statement_begin_β
.Llit_integer_α_536_0:  .quad            17
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_lit_integer_bx, @function
n134_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     sub              rsp, 16
                        mov              r11, 135
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_assign_var_α
n134_lit_integer_β:     mov              r11, 135
                        add              rsp, 16;                             jmp   n133_lit_integer_β
.Llit_integer_α_537_0:  .quad            1717
                        .size            n134_lit_integer_bx, .-n134_lit_integer_bx
                        .type            n135_assign_var_bx, @function
n135_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_assign_var_α:      sub              rsp, 16
                        mov              r11, 136
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_539_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_539_0
.Lassign_var_α_539_1:   test             rsi, rsi;                            je    .Lassign_var_α_539_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_539_238
                        add              rsp, 16;                             jmp   n134_lit_integer_β
.Lassign_var_α_539_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n136_statement_end_α
.Lassign_var_α_539_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_539_239
                        add              rsp, 16;                             jmp   n134_lit_integer_β
.Lassign_var_α_539_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_539_240
                        add              rsp, 16;                             jmp   n134_lit_integer_β
.Lassign_var_α_539_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n136_statement_end_α
                        .size            n135_assign_var_bx, .-n135_assign_var_bx
                        .type            n136_statement_end_bx, @function
n136_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   mov              r11, 137
                        add              rsp, 64;                             jmp   n137_stmt_mark_α
                        .size            n136_statement_end_bx, .-n136_statement_end_bx
                        .type            n137_stmt_mark_bx, @function
n137_stmt_mark_bx:
#=======================================================================================================================
#         census = census + tab[17] + tab['17']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n137_stmt_mark_α:       mov              r11, 138
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n138_statement_begin_α
                        .size            n137_stmt_mark_bx, .-n137_stmt_mark_bx
                        .type            n138_statement_begin_bx, @function
n138_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α: mov              r11, 139;                            jmp   n139_var_α
n138_statement_begin_β: mov              r11, 139;                            jmp   n150_stmt_mark_α
                        .size            n138_statement_begin_bx, .-n138_statement_begin_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_var_α
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_var_bx, @function
n140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              r11, 141
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_lit_integer_α
n140_var_β:             mov              r11, 141
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n138_statement_begin_β
                        .size            n140_var_bx, .-n140_var_bx
                        .type            n141_lit_integer_bx, @function
n141_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     sub              rsp, 16
                        mov              r11, 142
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_548_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n142_subscript_α
n141_lit_integer_β:     mov              r11, 142
                        add              rsp, 16;                             jmp   n140_var_β
.Llit_integer_α_548_0:  .quad            17
                        .size            n141_lit_integer_bx, .-n141_lit_integer_bx
                        .type            n142_subscript_bx, @function
n142_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_subscript_α:       sub              rsp, 16
                        mov              r11, 143
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_549_240
                        add              rsp, 16;                             jmp   n141_lit_integer_β
.Lsubscript_α_549_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n143_binop_α
n142_subscript_β:       mov              r11, 143
                        add              rsp, 16;                             jmp   n141_lit_integer_β
                        .size            n142_subscript_bx, .-n142_subscript_bx
                        .type            n143_binop_bx, @function
n143_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_binop_α:           sub              rsp, 16
                        mov              r11, 144
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_550_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_550_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_550_7
.Lbinop_α_550_2:        and              edx, 1;                              jz    .Lbinop_α_550_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_550_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_550_4
.Lbinop_α_550_3:        movq             xmm0, rsi
.Lbinop_α_550_4:        cmp              cl, 5;                               je    .Lbinop_α_550_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_550_6
.Lbinop_α_550_5:        movq             xmm1, rdi
.Lbinop_α_550_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_550_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_550_7:                                                              jmp   n144_var_α
.Lbinop_α_550_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_550_240
                        add              rsp, 16;                             jmp   n142_subscript_β
.Lbinop_α_550_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n144_var_α
n143_binop_β:           mov              r11, 144
                        add              rsp, 16;                             jmp   n142_subscript_β
                        .size            n143_binop_bx, .-n143_binop_bx
                        .type            n144_var_bx, @function
n144_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_α:             sub              rsp, 16
                        mov              r11, 145
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n145_lit_string_α
n144_var_β:             mov              r11, 145
                        add              rsp, 16;                             jmp   n143_binop_β
                        .size            n144_var_bx, .-n144_var_bx
                        .type            n145_lit_string_bx, @function
n145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      sub              rsp, 16
                        mov              r11, 146
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_552_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n146_subscript_α
n145_lit_string_β:      mov              r11, 146
                        add              rsp, 16;                             jmp   n144_var_β
.Llit_string_α_552_0:   .quad            .Llit_string_α_552_0_s
.Llit_string_α_552_0_s: .string          "17"
                        .size            n145_lit_string_bx, .-n145_lit_string_bx
                        .type            n146_subscript_bx, @function
n146_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_subscript_α:       sub              rsp, 16
                        mov              r11, 147
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_553_240
                        add              rsp, 16;                             jmp   n145_lit_string_β
.Lsubscript_α_553_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n147_binop_α
n146_subscript_β:       mov              r11, 147
                        add              rsp, 16;                             jmp   n145_lit_string_β
                        .size            n146_subscript_bx, .-n146_subscript_bx
                        .type            n147_binop_bx, @function
n147_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_binop_α:           sub              rsp, 16
                        mov              r11, 148
                        mov              eax, dword ptr [rsp + 64]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_554_2
                        mov              rax, qword ptr [rsp + 72]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_554_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_554_7
.Lbinop_α_554_2:        and              edx, 1;                              jz    .Lbinop_α_554_0
                        mov              rsi, qword ptr [rsp + 72]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_554_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_554_4
.Lbinop_α_554_3:        movq             xmm0, rsi
.Lbinop_α_554_4:        cmp              cl, 5;                               je    .Lbinop_α_554_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_554_6
.Lbinop_α_554_5:        movq             xmm1, rdi
.Lbinop_α_554_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_554_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_554_7:                                                              jmp   n148_assign_α
.Lbinop_α_554_0:        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_554_240
                        add              rsp, 16;                             jmp   n146_subscript_β
.Lbinop_α_554_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n148_assign_α
n147_binop_β:           mov              r11, 148
                        add              rsp, 16;                             jmp   n146_subscript_β
                        .size            n147_binop_bx, .-n147_binop_bx
                        .type            n148_assign_bx, @function
n148_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_assign_α:          mov              r11, 149
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n149_statement_end_α
                        .size            n148_assign_bx, .-n148_assign_bx
                        .type            n149_statement_end_bx, @function
n149_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   mov              r11, 150
                        add              rsp, 144;                            jmp   n150_stmt_mark_α
                        .size            n149_statement_end_bx, .-n149_statement_end_bx
                        .type            n150_stmt_mark_bx, @function
n150_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 500
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n150_stmt_mark_α:       mov              r11, 151
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n151_statement_begin_α
                        .size            n150_stmt_mark_bx, .-n150_stmt_mark_bx
                        .type            n151_statement_begin_bx, @function
n151_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α: mov              r11, 152;                            jmp   n152_var_α
n151_statement_begin_β: mov              r11, 152;                            jmp   n157_stmt_mark_α
                        .size            n151_statement_begin_bx, .-n151_statement_begin_bx
                        .type            n152_var_bx, @function
n152_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_α:             sub              rsp, 16
                        mov              r11, 153
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n153_lit_integer_α
                        .size            n152_var_bx, .-n152_var_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     sub              rsp, 16
                        mov              r11, 154
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_563_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n154_lit_integer_α
n153_lit_integer_β:     mov              r11, 154
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n151_statement_begin_β
.Llit_integer_α_563_0:  .quad            5
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_lit_integer_bx, @function
n154_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_lit_integer_α:     sub              rsp, 16
                        mov              r11, 155
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_564_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n155_assign_var_α
n154_lit_integer_β:     mov              r11, 155
                        add              rsp, 16;                             jmp   n153_lit_integer_β
.Llit_integer_α_564_0:  .quad            500
                        .size            n154_lit_integer_bx, .-n154_lit_integer_bx
                        .type            n155_assign_var_bx, @function
n155_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_assign_var_α:      sub              rsp, 16
                        mov              r11, 156
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_566_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_566_0
.Lassign_var_α_566_1:   test             rsi, rsi;                            je    .Lassign_var_α_566_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_566_238
                        add              rsp, 16;                             jmp   n154_lit_integer_β
.Lassign_var_α_566_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n156_statement_end_α
.Lassign_var_α_566_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_566_239
                        add              rsp, 16;                             jmp   n154_lit_integer_β
.Lassign_var_α_566_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_566_240
                        add              rsp, 16;                             jmp   n154_lit_integer_β
.Lassign_var_α_566_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n156_statement_end_α
                        .size            n155_assign_var_bx, .-n155_assign_var_bx
                        .type            n156_statement_end_bx, @function
n156_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 157
                        add              rsp, 64;                             jmp   n157_stmt_mark_α
                        .size            n156_statement_end_bx, .-n156_statement_end_bx
                        .type            n157_stmt_mark_bx, @function
n157_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 501
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n157_stmt_mark_α:       mov              r11, 158
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n158_statement_begin_α
                        .size            n157_stmt_mark_bx, .-n157_stmt_mark_bx
                        .type            n158_statement_begin_bx, @function
n158_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α: mov              r11, 159;                            jmp   n159_var_α
n158_statement_begin_β: mov              r11, 159;                            jmp   n164_stmt_mark_α
                        .size            n158_statement_begin_bx, .-n158_statement_begin_bx
                        .type            n159_var_bx, @function
n159_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_var_α:             sub              rsp, 16
                        mov              r11, 160
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n160_lit_integer_α
                        .size            n159_var_bx, .-n159_var_bx
                        .type            n160_lit_integer_bx, @function
n160_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_integer_α:     sub              rsp, 16
                        mov              r11, 161
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_574_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_lit_integer_α
n160_lit_integer_β:     mov              r11, 161
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n158_statement_begin_β
.Llit_integer_α_574_0:  .quad            5
                        .size            n160_lit_integer_bx, .-n160_lit_integer_bx
                        .type            n161_lit_integer_bx, @function
n161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     sub              rsp, 16
                        mov              r11, 162
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_575_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_assign_var_α
n161_lit_integer_β:     mov              r11, 162
                        add              rsp, 16;                             jmp   n160_lit_integer_β
.Llit_integer_α_575_0:  .quad            501
                        .size            n161_lit_integer_bx, .-n161_lit_integer_bx
                        .type            n162_assign_var_bx, @function
n162_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_var_α:      sub              rsp, 16
                        mov              r11, 163
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_577_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_577_0
.Lassign_var_α_577_1:   test             rsi, rsi;                            je    .Lassign_var_α_577_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_577_238
                        add              rsp, 16;                             jmp   n161_lit_integer_β
.Lassign_var_α_577_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:55
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n163_statement_end_α
.Lassign_var_α_577_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                      cmp              al, 104;                             jne   .Lassign_var_α_577_239
                        add              rsp, 16;                             jmp   n161_lit_integer_β
.Lassign_var_α_577_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_577_240
                        add              rsp, 16;                             jmp   n161_lit_integer_β
.Lassign_var_α_577_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:75
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n163_statement_end_α
                        .size            n162_assign_var_bx, .-n162_assign_var_bx
                        .type            n163_statement_end_bx, @function
n163_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   mov              r11, 164
                        add              rsp, 64;                             jmp   n164_stmt_mark_α
                        .size            n163_statement_end_bx, .-n163_statement_end_bx
                        .type            n164_stmt_mark_bx, @function
n164_stmt_mark_bx:
#=======================================================================================================================
#         census = census + tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n164_stmt_mark_α:       mov              r11, 165
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n165_statement_begin_α
                        .size            n164_stmt_mark_bx, .-n164_stmt_mark_bx
                        .type            n165_statement_begin_bx, @function
n165_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_begin_α: mov              r11, 166;                            jmp   n166_var_α
n165_statement_begin_β: mov              r11, 166;                            jmp   n173_stmt_mark_α
                        .size            n165_statement_begin_bx, .-n165_statement_begin_bx
                        .type            n166_var_bx, @function
n166_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             sub              rsp, 16
                        mov              r11, 167
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n167_var_α
                        .size            n166_var_bx, .-n166_var_bx
                        .type            n167_var_bx, @function
n167_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_var_α:             sub              rsp, 16
                        mov              r11, 168
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n168_lit_integer_α
n167_var_β:             mov              r11, 168
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n165_statement_begin_β
                        .size            n167_var_bx, .-n167_var_bx
                        .type            n168_lit_integer_bx, @function
n168_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_lit_integer_α:     sub              rsp, 16
                        mov              r11, 169
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_586_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n169_subscript_α
n168_lit_integer_β:     mov              r11, 169
                        add              rsp, 16;                             jmp   n167_var_β
.Llit_integer_α_586_0:  .quad            5
                        .size            n168_lit_integer_bx, .-n168_lit_integer_bx
                        .type            n169_subscript_bx, @function
n169_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_subscript_α:       sub              rsp, 16
                        mov              r11, 170
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_587_240
                        add              rsp, 16;                             jmp   n168_lit_integer_β
.Lsubscript_α_587_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n170_binop_α
n169_subscript_β:       mov              r11, 170
                        add              rsp, 16;                             jmp   n168_lit_integer_β
                        .size            n169_subscript_bx, .-n169_subscript_bx
                        .type            n170_binop_bx, @function
n170_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_binop_α:           sub              rsp, 16
                        mov              r11, 171
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_588_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_588_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_588_7
.Lbinop_α_588_2:        and              edx, 1;                              jz    .Lbinop_α_588_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_588_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_588_4
.Lbinop_α_588_3:        movq             xmm0, rsi
.Lbinop_α_588_4:        cmp              cl, 5;                               je    .Lbinop_α_588_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_588_6
.Lbinop_α_588_5:        movq             xmm1, rdi
.Lbinop_α_588_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_588_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_588_7:                                                              jmp   n171_assign_α
.Lbinop_α_588_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_588_240
                        add              rsp, 16;                             jmp   n169_subscript_β
.Lbinop_α_588_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n171_assign_α
n170_binop_β:           mov              r11, 171
                        add              rsp, 16;                             jmp   n169_subscript_β
                        .size            n170_binop_bx, .-n170_binop_bx
                        .type            n171_assign_bx, @function
n171_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:          mov              r11, 172
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n172_statement_end_α
                        .size            n171_assign_bx, .-n171_assign_bx
                        .type            n172_statement_end_bx, @function
n172_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   mov              r11, 173
                        add              rsp, 80;                             jmp   n173_stmt_mark_α
                        .size            n172_statement_end_bx, .-n172_statement_end_bx
                        .type            n173_stmt_mark_bx, @function
n173_stmt_mark_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n173_stmt_mark_α:       mov              r11, 174
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n174_statement_begin_α
                        .size            n173_stmt_mark_bx, .-n173_stmt_mark_bx
                        .type            n174_statement_begin_bx, @function
n174_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_begin_α: mov              r11, 175;                            jmp   n175_lit_integer_α
n174_statement_begin_β: mov              r11, 175;                            jmp   n179_stmt_mark_α
                        .size            n174_statement_begin_bx, .-n174_statement_begin_bx
                        .type            n175_lit_integer_bx, @function
n175_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_integer_α:     sub              rsp, 16
                        mov              r11, 176
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_596_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n176_unop_α
.Llit_integer_α_596_0:  .quad            30
                        .size            n175_lit_integer_bx, .-n175_lit_integer_bx
                        .type            n176_unop_bx, @function
n176_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_unop_α:            sub              rsp, 16
                        mov              r11, 177
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg_sno@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:36
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n177_assign_α
n176_unop_β:            mov              r11, 177
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n174_statement_begin_β
                        .size            n176_unop_bx, .-n176_unop_bx
                        .type            n177_assign_bx, @function
n177_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_assign_α:          mov              r11, 178
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n178_statement_end_α
                        .size            n177_assign_bx, .-n177_assign_bx
                        .type            n178_statement_end_bx, @function
n178_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   mov              r11, 179
                        add              rsp, 32;                             jmp   n179_stmt_mark_α
                        .size            n178_statement_end_bx, .-n178_statement_end_bx
                        .type            n179_stmt_mark_bx, @function
n179_stmt_mark_bx:
#=======================================================================================================================
# intread census = census + tab[ix]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n179_stmt_mark_α:       mov              r11, 180
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n180_statement_begin_α
                        .size            n179_stmt_mark_bx, .-n179_stmt_mark_bx
                        .type            n180_statement_begin_bx, @function
n180_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α: mov              r11, 181;                            jmp   n181_var_α
n180_statement_begin_β: mov              r11, 181;                            jmp   n188_stmt_mark_α
                        .size            n180_statement_begin_bx, .-n180_statement_begin_bx
                        .type            n181_var_bx, @function
n181_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_var_α
                        .size            n181_var_bx, .-n181_var_bx
                        .type            n182_var_bx, @function
n182_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_var_α
n182_var_β:             mov              r11, 183
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n180_statement_begin_β
                        .size            n182_var_bx, .-n182_var_bx
                        .type            n183_var_bx, @function
n183_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              r11, 184
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_subscript_α
n183_var_β:             mov              r11, 184
                        add              rsp, 16;                             jmp   n182_var_β
                        .size            n183_var_bx, .-n183_var_bx
                        .type            n184_subscript_bx, @function
n184_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_subscript_α:       sub              rsp, 16
                        mov              r11, 185
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_608_240
                        add              rsp, 16;                             jmp   n183_var_β
.Lsubscript_α_608_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n185_binop_α
n184_subscript_β:       mov              r11, 185
                        add              rsp, 16;                             jmp   n183_var_β
                        .size            n184_subscript_bx, .-n184_subscript_bx
                        .type            n185_binop_bx, @function
n185_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_binop_α:           sub              rsp, 16
                        mov              r11, 186
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_609_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_609_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_609_7
.Lbinop_α_609_2:        and              edx, 1;                              jz    .Lbinop_α_609_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_609_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_609_4
.Lbinop_α_609_3:        movq             xmm0, rsi
.Lbinop_α_609_4:        cmp              cl, 5;                               je    .Lbinop_α_609_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_609_6
.Lbinop_α_609_5:        movq             xmm1, rdi
.Lbinop_α_609_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_609_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_609_7:                                                              jmp   n186_assign_α
.Lbinop_α_609_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_609_240
                        add              rsp, 16;                             jmp   n184_subscript_β
.Lbinop_α_609_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n186_assign_α
n185_binop_β:           mov              r11, 186
                        add              rsp, 16;                             jmp   n184_subscript_β
                        .size            n185_binop_bx, .-n185_binop_bx
                        .type            n186_assign_bx, @function
n186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 187
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n187_statement_end_α
                        .size            n186_assign_bx, .-n186_assign_bx
                        .type            n187_statement_end_bx, @function
n187_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 188
                        add              rsp, 80;                             jmp   n188_stmt_mark_α
                        .size            n187_statement_end_bx, .-n187_statement_end_bx
                        .type            n188_stmt_mark_bx, @function
n188_stmt_mark_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(intread)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n188_stmt_mark_α:       mov              r11, 189
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n189_statement_begin_α
                        .size            n188_stmt_mark_bx, .-n188_stmt_mark_bx
                        .type            n189_statement_begin_bx, @function
n189_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α: mov              r11, 190;                            jmp   n190_var_α
n189_statement_begin_β: mov              r11, 190;                            jmp   n200_stmt_mark_α
                        .size            n189_statement_begin_bx, .-n189_statement_begin_bx
                        .type            n190_var_bx, @function
n190_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             sub              rsp, 16
                        mov              r11, 191
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_lit_integer_α
                        .size            n190_var_bx, .-n190_var_bx
                        .type            n191_lit_integer_bx, @function
n191_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     sub              rsp, 16
                        mov              r11, 192
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_618_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_coerce_numeric_α
n191_lit_integer_β:     mov              r11, 192
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n189_statement_begin_β
.Llit_integer_α_618_0:  .quad            30
                        .size            n191_lit_integer_bx, .-n191_lit_integer_bx
                        .type            n192_coerce_numeric_bx, @function
n192_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 193
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_620_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_620_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_620_0
.Lcoerce_numeric_α_620_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_coerce_numeric_α
.Lcoerce_numeric_α_620_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n193_coerce_numeric_α
n192_coerce_numeric_β:  mov              r11, 193
                        add              rsp, 16;                             jmp   n191_lit_integer_β
                        .size            n192_coerce_numeric_bx, .-n192_coerce_numeric_bx
                        .type            n193_coerce_numeric_bx, @function
n193_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 194
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_622_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_622_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_622_0
.Lcoerce_numeric_α_622_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_cmp_test_α
.Lcoerce_numeric_α_622_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n194_cmp_test_α
n193_coerce_numeric_β:  mov              r11, 194
                        add              rsp, 16;                             jmp   n192_coerce_numeric_β
                        .size            n193_coerce_numeric_bx, .-n193_coerce_numeric_bx
                        .type            n194_cmp_test_bx, @function
n194_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_cmp_test_α:        sub              rsp, 16
                        mov              r11, 195
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_624_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_624_239
                        add              rsp, 16;                             jmp   n193_coerce_numeric_β
.Lcmp_test_α_624_239:                                                         jmp   n195_var_α
.Lcmp_test_α_624_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_624_240
                        add              rsp, 16;                             jmp   n193_coerce_numeric_β
.Lcmp_test_α_624_240:                                                         jmp   n195_var_α
n194_cmp_test_β:        mov              r11, 195
                        add              rsp, 16;                             jmp   n193_coerce_numeric_β
                        .size            n194_cmp_test_bx, .-n194_cmp_test_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              r11, 196
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_lit_integer_α
n195_var_β:             mov              r11, 196
                        add              rsp, 16;                             jmp   n194_cmp_test_β
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_lit_integer_bx, @function
n196_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:     sub              rsp, 16
                        mov              r11, 197
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_626_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_binop_α
n196_lit_integer_β:     mov              r11, 197
                        add              rsp, 16;                             jmp   n195_var_β
.Llit_integer_α_626_0:  .quad            1
                        .size            n196_lit_integer_bx, .-n196_lit_integer_bx
                        .type            n197_binop_bx, @function
n197_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_binop_α:           sub              rsp, 16
                        mov              r11, 198
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_627_2
                        add              rax, 1;                              jo    .Lbinop_α_627_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_627_7
.Lbinop_α_627_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_627_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_627_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_627_4
.Lbinop_α_627_3:        movq             xmm0, rsi
.Lbinop_α_627_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_627_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_627_7:                                                              jmp   n198_assign_α
.Lbinop_α_627_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_627_240
                        add              rsp, 16;                             jmp   n196_lit_integer_β
.Lbinop_α_627_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n198_assign_α
n197_binop_β:           mov              r11, 198
                        add              rsp, 16;                             jmp   n196_lit_integer_β
                        .size            n197_binop_bx, .-n197_binop_bx
                        .type            n198_assign_bx, @function
n198_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_assign_α:          mov              r11, 199
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n199_statement_end_α
                        .size            n198_assign_bx, .-n198_assign_bx
                        .type            n199_statement_end_bx, @function
n199_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_end_α:   mov              r11, 200
                        add              rsp, 128;                            jmp   n179_stmt_mark_α
                        .size            n199_statement_end_bx, .-n199_statement_end_bx
                        .type            n200_stmt_mark_bx, @function
n200_stmt_mark_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n200_stmt_mark_α:       mov              r11, 201
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n201_statement_begin_α
                        .size            n200_stmt_mark_bx, .-n200_stmt_mark_bx
                        .type            n201_statement_begin_bx, @function
n201_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_begin_α: mov              r11, 202;                            jmp   n202_lit_integer_α
n201_statement_begin_β: mov              r11, 202;                            jmp   n205_stmt_mark_α
                        .size            n201_statement_begin_bx, .-n201_statement_begin_bx
                        .type            n202_lit_integer_bx, @function
n202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:     sub              rsp, 16
                        mov              r11, 203
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_635_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_assign_α
.Llit_integer_α_635_0:  .quad            1
                        .size            n202_lit_integer_bx, .-n202_lit_integer_bx
                        .type            n203_assign_bx, @function
n203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n204_statement_end_α
                        .size            n203_assign_bx, .-n203_assign_bx
                        .type            n204_statement_end_bx, @function
n204_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:   mov              r11, 205
                        add              rsp, 16;                             jmp   n205_stmt_mark_α
                        .size            n204_statement_end_bx, .-n204_statement_end_bx
                        .type            n205_stmt_mark_bx, @function
n205_stmt_mark_bx:
#=======================================================================================================================
# strread census = census + tab['k' sx] + tab['a_much_longer_key_' sx]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n205_stmt_mark_α:       mov              r11, 206
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n206_statement_begin_α
                        .size            n205_stmt_mark_bx, .-n205_stmt_mark_bx
                        .type            n206_statement_begin_bx, @function
n206_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_begin_α: mov              r11, 207;                            jmp   n207_var_α
n206_statement_begin_β: mov              r11, 207;                            jmp   n222_stmt_mark_α
                        .size            n206_statement_begin_bx, .-n206_statement_begin_bx
                        .type            n207_var_bx, @function
n207_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_α:             sub              rsp, 16
                        mov              r11, 208
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n208_var_α
                        .size            n207_var_bx, .-n207_var_bx
                        .type            n208_var_bx, @function
n208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 209
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_lit_string_α
n208_var_β:             mov              r11, 209
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n206_statement_begin_β
                        .size            n208_var_bx, .-n208_var_bx
                        .type            n209_lit_string_bx, @function
n209_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_string_α:      sub              rsp, 16
                        mov              r11, 210
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_645_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_var_α
n209_lit_string_β:      mov              r11, 210
                        add              rsp, 16;                             jmp   n208_var_β
.Llit_string_α_645_0:   .quad            .Llit_string_α_645_0_s
.Llit_string_α_645_0_s: .string          "k"
                        .size            n209_lit_string_bx, .-n209_lit_string_bx
                        .type            n210_var_bx, @function
n210_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_α:             sub              rsp, 16
                        mov              r11, 211
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n211_binop_α
n210_var_β:             mov              r11, 211
                        add              rsp, 16;                             jmp   n209_lit_string_β
                        .size            n210_var_bx, .-n210_var_bx
                        .type            n211_binop_bx, @function
n211_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           sub              rsp, 16
                        mov              r11, 212
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n212_subscript_α
n211_binop_β:           mov              r11, 212
                        add              rsp, 16;                             jmp   n210_var_β
                        .size            n211_binop_bx, .-n211_binop_bx
                        .type            n212_subscript_bx, @function
n212_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_subscript_α:       sub              rsp, 16
                        mov              r11, 213
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_648_240
                        add              rsp, 16;                             jmp   n211_binop_β
.Lsubscript_α_648_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n213_binop_α
n212_subscript_β:       mov              r11, 213
                        add              rsp, 16;                             jmp   n211_binop_β
                        .size            n212_subscript_bx, .-n212_subscript_bx
                        .type            n213_binop_bx, @function
n213_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_binop_α:           sub              rsp, 16
                        mov              r11, 214
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_649_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_649_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_649_7
.Lbinop_α_649_2:        and              edx, 1;                              jz    .Lbinop_α_649_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_649_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_649_4
.Lbinop_α_649_3:        movq             xmm0, rsi
.Lbinop_α_649_4:        cmp              cl, 5;                               je    .Lbinop_α_649_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_649_6
.Lbinop_α_649_5:        movq             xmm1, rdi
.Lbinop_α_649_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_649_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_649_7:                                                              jmp   n214_var_α
.Lbinop_α_649_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_649_240
                        add              rsp, 16;                             jmp   n212_subscript_β
.Lbinop_α_649_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n214_var_α
n213_binop_β:           mov              r11, 214
                        add              rsp, 16;                             jmp   n212_subscript_β
                        .size            n213_binop_bx, .-n213_binop_bx
                        .type            n214_var_bx, @function
n214_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 215
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_lit_string_α
n214_var_β:             mov              r11, 215
                        add              rsp, 16;                             jmp   n213_binop_β
                        .size            n214_var_bx, .-n214_var_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      sub              rsp, 16
                        mov              r11, 216
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_651_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_var_α
n215_lit_string_β:      mov              r11, 216
                        add              rsp, 16;                             jmp   n214_var_β
.Llit_string_α_651_0:   .quad            .Llit_string_α_651_0_s
.Llit_string_α_651_0_s: .string          "a_much_longer_key_"
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_var_bx, @function
n216_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             sub              rsp, 16
                        mov              r11, 217
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n217_binop_α
n216_var_β:             mov              r11, 217
                        add              rsp, 16;                             jmp   n215_lit_string_β
                        .size            n216_var_bx, .-n216_var_bx
                        .type            n217_binop_bx, @function
n217_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_binop_α:           sub              rsp, 16
                        mov              r11, 218
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n218_subscript_α
n217_binop_β:           mov              r11, 218
                        add              rsp, 16;                             jmp   n216_var_β
                        .size            n217_binop_bx, .-n217_binop_bx
                        .type            n218_subscript_bx, @function
n218_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_subscript_α:       sub              rsp, 16
                        mov              r11, 219
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_654_240
                        add              rsp, 16;                             jmp   n217_binop_β
.Lsubscript_α_654_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n219_binop_α
n218_subscript_β:       mov              r11, 219
                        add              rsp, 16;                             jmp   n217_binop_β
                        .size            n218_subscript_bx, .-n218_subscript_bx
                        .type            n219_binop_bx, @function
n219_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_binop_α:           sub              rsp, 16
                        mov              r11, 220
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_655_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_655_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_655_7
.Lbinop_α_655_2:        and              edx, 1;                              jz    .Lbinop_α_655_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_655_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_655_4
.Lbinop_α_655_3:        movq             xmm0, rsi
.Lbinop_α_655_4:        cmp              cl, 5;                               je    .Lbinop_α_655_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_655_6
.Lbinop_α_655_5:        movq             xmm1, rdi
.Lbinop_α_655_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_655_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_655_7:                                                              jmp   n220_assign_α
.Lbinop_α_655_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_655_240
                        add              rsp, 16;                             jmp   n218_subscript_β
.Lbinop_α_655_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n220_assign_α
n219_binop_β:           mov              r11, 220
                        add              rsp, 16;                             jmp   n218_subscript_β
                        .size            n219_binop_bx, .-n219_binop_bx
                        .type            n220_assign_bx, @function
n220_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              r11, 221
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n221_statement_end_α
                        .size            n220_assign_bx, .-n220_assign_bx
                        .type            n221_statement_end_bx, @function
n221_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:   mov              r11, 222
                        add              rsp, 208;                            jmp   n222_stmt_mark_α
                        .size            n221_statement_end_bx, .-n221_statement_end_bx
                        .type            n222_stmt_mark_bx, @function
n222_stmt_mark_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(strread)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n222_stmt_mark_α:       mov              r11, 223
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n223_statement_begin_α
                        .size            n222_stmt_mark_bx, .-n222_stmt_mark_bx
                        .type            n223_statement_begin_bx, @function
n223_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α: mov              r11, 224;                            jmp   n224_var_α
n223_statement_begin_β: mov              r11, 224;                            jmp   n234_stmt_mark_α
                        .size            n223_statement_begin_bx, .-n223_statement_begin_bx
                        .type            n224_var_bx, @function
n224_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             sub              rsp, 16
                        mov              r11, 225
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_lit_integer_α
                        .size            n224_var_bx, .-n224_var_bx
                        .type            n225_lit_integer_bx, @function
n225_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     sub              rsp, 16
                        mov              r11, 226
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_664_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_coerce_numeric_α
n225_lit_integer_β:     mov              r11, 226
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n223_statement_begin_β
.Llit_integer_α_664_0:  .quad            20
                        .size            n225_lit_integer_bx, .-n225_lit_integer_bx
                        .type            n226_coerce_numeric_bx, @function
n226_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 227
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_666_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_666_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_666_0
.Lcoerce_numeric_α_666_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_coerce_numeric_α
.Lcoerce_numeric_α_666_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n227_coerce_numeric_α
n226_coerce_numeric_β:  mov              r11, 227
                        add              rsp, 16;                             jmp   n225_lit_integer_β
                        .size            n226_coerce_numeric_bx, .-n226_coerce_numeric_bx
                        .type            n227_coerce_numeric_bx, @function
n227_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 228
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_668_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_668_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_668_0
.Lcoerce_numeric_α_668_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_cmp_test_α
.Lcoerce_numeric_α_668_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n228_cmp_test_α
n227_coerce_numeric_β:  mov              r11, 228
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
                        .size            n227_coerce_numeric_bx, .-n227_coerce_numeric_bx
                        .type            n228_cmp_test_bx, @function
n228_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_cmp_test_α:        sub              rsp, 16
                        mov              r11, 229
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_670_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_670_239
                        add              rsp, 16;                             jmp   n227_coerce_numeric_β
.Lcmp_test_α_670_239:                                                         jmp   n229_var_α
.Lcmp_test_α_670_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_670_240
                        add              rsp, 16;                             jmp   n227_coerce_numeric_β
.Lcmp_test_α_670_240:                                                         jmp   n229_var_α
n228_cmp_test_β:        mov              r11, 229
                        add              rsp, 16;                             jmp   n227_coerce_numeric_β
                        .size            n228_cmp_test_bx, .-n228_cmp_test_bx
                        .type            n229_var_bx, @function
n229_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             sub              rsp, 16
                        mov              r11, 230
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_lit_integer_α
n229_var_β:             mov              r11, 230
                        add              rsp, 16;                             jmp   n228_cmp_test_β
                        .size            n229_var_bx, .-n229_var_bx
                        .type            n230_lit_integer_bx, @function
n230_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_integer_α:     sub              rsp, 16
                        mov              r11, 231
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_672_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_binop_α
n230_lit_integer_β:     mov              r11, 231
                        add              rsp, 16;                             jmp   n229_var_β
.Llit_integer_α_672_0:  .quad            1
                        .size            n230_lit_integer_bx, .-n230_lit_integer_bx
                        .type            n231_binop_bx, @function
n231_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_binop_α:           sub              rsp, 16
                        mov              r11, 232
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_673_2
                        add              rax, 1;                              jo    .Lbinop_α_673_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_673_7
.Lbinop_α_673_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_673_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_673_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_673_4
.Lbinop_α_673_3:        movq             xmm0, rsi
.Lbinop_α_673_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_673_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_673_7:                                                              jmp   n232_assign_α
.Lbinop_α_673_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_673_240
                        add              rsp, 16;                             jmp   n230_lit_integer_β
.Lbinop_α_673_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n232_assign_α
n231_binop_β:           mov              r11, 232
                        add              rsp, 16;                             jmp   n230_lit_integer_β
                        .size            n231_binop_bx, .-n231_binop_bx
                        .type            n232_assign_bx, @function
n232_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:          mov              r11, 233
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n233_statement_end_α
                        .size            n232_assign_bx, .-n232_assign_bx
                        .type            n233_statement_end_bx, @function
n233_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_end_α:   mov              r11, 234
                        add              rsp, 128;                            jmp   n205_stmt_mark_α
                        .size            n233_statement_end_bx, .-n233_statement_end_bx
                        .type            n234_stmt_mark_bx, @function
n234_stmt_mark_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n234_stmt_mark_α:       mov              r11, 235
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n235_statement_begin_α
                        .size            n234_stmt_mark_bx, .-n234_stmt_mark_bx
                        .type            n235_statement_begin_bx, @function
n235_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_statement_begin_α: mov              r11, 236;                            jmp   n236_lit_integer_α
n235_statement_begin_β: mov              r11, 236;                            jmp   n239_stmt_mark_α
                        .size            n235_statement_begin_bx, .-n235_statement_begin_bx
                        .type            n236_lit_integer_bx, @function
n236_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     sub              rsp, 16
                        mov              r11, 237
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_681_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_assign_α
.Llit_integer_α_681_0:  .quad            1
                        .size            n236_lit_integer_bx, .-n236_lit_integer_bx
                        .type            n237_assign_bx, @function
n237_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              r11, 238
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n238_statement_end_α
                        .size            n237_assign_bx, .-n237_assign_bx
                        .type            n238_statement_end_bx, @function
n238_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   mov              r11, 239
                        add              rsp, 16;                             jmp   n239_stmt_mark_α
                        .size            n238_statement_end_bx, .-n238_statement_end_bx
                        .type            n239_stmt_mark_bx, @function
n239_stmt_mark_bx:
#=======================================================================================================================
# realrd  census = census + tab[rx / 2.0]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n239_stmt_mark_α:       mov              r11, 240
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n240_statement_begin_α
                        .size            n239_stmt_mark_bx, .-n239_stmt_mark_bx
                        .type            n240_statement_begin_bx, @function
n240_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α: mov              r11, 241;                            jmp   n241_var_α
n240_statement_begin_β: mov              r11, 241;                            jmp   n250_stmt_mark_α
                        .size            n240_statement_begin_bx, .-n240_statement_begin_bx
                        .type            n241_var_bx, @function
n241_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              r11, 242
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_var_α
                        .size            n241_var_bx, .-n241_var_bx
                        .type            n242_var_bx, @function
n242_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 243
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_var_α
n242_var_β:             mov              r11, 243
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n240_statement_begin_β
                        .size            n242_var_bx, .-n242_var_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             sub              rsp, 16
                        mov              r11, 244
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_lit_real_α
n243_var_β:             mov              r11, 244
                        add              rsp, 16;                             jmp   n242_var_β
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_lit_real_bx, @function
n244_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_lit_real_α:        sub              rsp, 16
                        mov              r11, 245
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_692_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_binop_α
.Llit_real_α_692_0:     .quad            4611686018427387904
                        .size            n244_lit_real_bx, .-n244_lit_real_bx
                        .type            n245_binop_bx, @function
n245_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_binop_α:           sub              rsp, 16
                        mov              r11, 246
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_real
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div_sno@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_693_240
                        add              rsp, 32;                             jmp   n243_var_β
.Lbinop_α_693_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:316
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n246_subscript_α
n245_binop_β:           mov              r11, 246
                        add              rsp, 32;                             jmp   n243_var_β
                        .size            n245_binop_bx, .-n245_binop_bx
                        .type            n246_subscript_bx, @function
n246_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_subscript_α:       sub              rsp, 16
                        mov              r11, 247
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_694_240
                        add              rsp, 16;                             jmp   n245_binop_β
.Lsubscript_α_694_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n247_binop_α
n246_subscript_β:       mov              r11, 247
                        add              rsp, 16;                             jmp   n245_binop_β
                        .size            n246_subscript_bx, .-n246_subscript_bx
                        .type            n247_binop_bx, @function
n247_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_binop_α:           sub              rsp, 16
                        mov              r11, 248
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_695_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_695_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_695_7
.Lbinop_α_695_2:        and              edx, 1;                              jz    .Lbinop_α_695_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_695_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_695_4
.Lbinop_α_695_3:        movq             xmm0, rsi
.Lbinop_α_695_4:        cmp              cl, 5;                               je    .Lbinop_α_695_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_695_6
.Lbinop_α_695_5:        movq             xmm1, rdi
.Lbinop_α_695_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_695_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_695_7:                                                              jmp   n248_assign_α
.Lbinop_α_695_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_695_240
                        add              rsp, 16;                             jmp   n246_subscript_β
.Lbinop_α_695_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n248_assign_α
n247_binop_β:           mov              r11, 248
                        add              rsp, 16;                             jmp   n246_subscript_β
                        .size            n247_binop_bx, .-n247_binop_bx
                        .type            n248_assign_bx, @function
n248_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_assign_α:          mov              r11, 249
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n249_statement_end_α
                        .size            n248_assign_bx, .-n248_assign_bx
                        .type            n249_statement_end_bx, @function
n249_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_end_α:   mov              r11, 250
                        add              rsp, 112;                            jmp   n250_stmt_mark_α
                        .size            n249_statement_end_bx, .-n249_statement_end_bx
                        .type            n250_stmt_mark_bx, @function
n250_stmt_mark_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(realrd)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n250_stmt_mark_α:       mov              r11, 251
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n251_statement_begin_α
                        .size            n250_stmt_mark_bx, .-n250_stmt_mark_bx
                        .type            n251_statement_begin_bx, @function
n251_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_begin_α: mov              r11, 252;                            jmp   n252_var_α
n251_statement_begin_β: mov              r11, 252;                            jmp   n262_stmt_mark_α
                        .size            n251_statement_begin_bx, .-n251_statement_begin_bx
                        .type            n252_var_bx, @function
n252_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_α:             sub              rsp, 16
                        mov              r11, 253
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n253_lit_integer_α
                        .size            n252_var_bx, .-n252_var_bx
                        .type            n253_lit_integer_bx, @function
n253_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_lit_integer_α:     sub              rsp, 16
                        mov              r11, 254
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_704_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_coerce_numeric_α
n253_lit_integer_β:     mov              r11, 254
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n251_statement_begin_β
.Llit_integer_α_704_0:  .quad            12
                        .size            n253_lit_integer_bx, .-n253_lit_integer_bx
                        .type            n254_coerce_numeric_bx, @function
n254_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 255
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_706_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_706_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_706_0
.Lcoerce_numeric_α_706_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_coerce_numeric_α
.Lcoerce_numeric_α_706_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n255_coerce_numeric_α
n254_coerce_numeric_β:  mov              r11, 255
                        add              rsp, 16;                             jmp   n253_lit_integer_β
                        .size            n254_coerce_numeric_bx, .-n254_coerce_numeric_bx
                        .type            n255_coerce_numeric_bx, @function
n255_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 256
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_708_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_708_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_708_0
.Lcoerce_numeric_α_708_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n256_cmp_test_α
.Lcoerce_numeric_α_708_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n256_cmp_test_α
n255_coerce_numeric_β:  mov              r11, 256
                        add              rsp, 16;                             jmp   n254_coerce_numeric_β
                        .size            n255_coerce_numeric_bx, .-n255_coerce_numeric_bx
                        .type            n256_cmp_test_bx, @function
n256_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_cmp_test_α:        sub              rsp, 16
                        mov              r11, 257
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_710_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_710_239
                        add              rsp, 16;                             jmp   n255_coerce_numeric_β
.Lcmp_test_α_710_239:                                                         jmp   n257_var_α
.Lcmp_test_α_710_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_710_240
                        add              rsp, 16;                             jmp   n255_coerce_numeric_β
.Lcmp_test_α_710_240:                                                         jmp   n257_var_α
n256_cmp_test_β:        mov              r11, 257
                        add              rsp, 16;                             jmp   n255_coerce_numeric_β
                        .size            n256_cmp_test_bx, .-n256_cmp_test_bx
                        .type            n257_var_bx, @function
n257_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             sub              rsp, 16
                        mov              r11, 258
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n258_lit_integer_α
n257_var_β:             mov              r11, 258
                        add              rsp, 16;                             jmp   n256_cmp_test_β
                        .size            n257_var_bx, .-n257_var_bx
                        .type            n258_lit_integer_bx, @function
n258_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_integer_α:     sub              rsp, 16
                        mov              r11, 259
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_712_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n259_binop_α
n258_lit_integer_β:     mov              r11, 259
                        add              rsp, 16;                             jmp   n257_var_β
.Llit_integer_α_712_0:  .quad            1
                        .size            n258_lit_integer_bx, .-n258_lit_integer_bx
                        .type            n259_binop_bx, @function
n259_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_binop_α:           sub              rsp, 16
                        mov              r11, 260
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_713_2
                        add              rax, 1;                              jo    .Lbinop_α_713_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_713_7
.Lbinop_α_713_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_713_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_713_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_713_4
.Lbinop_α_713_3:        movq             xmm0, rsi
.Lbinop_α_713_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_713_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_713_7:                                                              jmp   n260_assign_α
.Lbinop_α_713_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_713_240
                        add              rsp, 16;                             jmp   n258_lit_integer_β
.Lbinop_α_713_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n260_assign_α
n259_binop_β:           mov              r11, 260
                        add              rsp, 16;                             jmp   n258_lit_integer_β
                        .size            n259_binop_bx, .-n259_binop_bx
                        .type            n260_assign_bx, @function
n260_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:          mov              r11, 261
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n261_statement_end_α
                        .size            n260_assign_bx, .-n260_assign_bx
                        .type            n261_statement_end_bx, @function
n261_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:   mov              r11, 262
                        add              rsp, 128;                            jmp   n239_stmt_mark_α
                        .size            n261_statement_end_bx, .-n261_statement_end_bx
                        .type            n262_stmt_mark_bx, @function
n262_stmt_mark_bx:
#=======================================================================================================================
#         census = census + tab['']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n262_stmt_mark_α:       mov              r11, 263
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n263_statement_begin_α
                        .size            n262_stmt_mark_bx, .-n262_stmt_mark_bx
                        .type            n263_statement_begin_bx, @function
n263_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α: mov              r11, 264;                            jmp   n264_var_α
n263_statement_begin_β: mov              r11, 264;                            jmp   n271_stmt_mark_α
                        .size            n263_statement_begin_bx, .-n263_statement_begin_bx
                        .type            n264_var_bx, @function
n264_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             sub              rsp, 16
                        mov              r11, 265
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n265_var_α
                        .size            n264_var_bx, .-n264_var_bx
                        .type            n265_var_bx, @function
n265_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             sub              rsp, 16
                        mov              r11, 266
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n266_lit_string_α
n265_var_β:             mov              r11, 266
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n263_statement_begin_β
                        .size            n265_var_bx, .-n265_var_bx
                        .type            n266_lit_string_bx, @function
n266_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      sub              rsp, 16
                        mov              r11, 267
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_723_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_subscript_α
n266_lit_string_β:      mov              r11, 267
                        add              rsp, 16;                             jmp   n265_var_β
.Llit_string_α_723_0:   .quad            .Llit_string_α_723_0_s
.Llit_string_α_723_0_s: .string          ""
                        .size            n266_lit_string_bx, .-n266_lit_string_bx
                        .type            n267_subscript_bx, @function
n267_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_subscript_α:       sub              rsp, 16
                        mov              r11, 268
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_724_240
                        add              rsp, 16;                             jmp   n266_lit_string_β
.Lsubscript_α_724_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n268_binop_α
n267_subscript_β:       mov              r11, 268
                        add              rsp, 16;                             jmp   n266_lit_string_β
                        .size            n267_subscript_bx, .-n267_subscript_bx
                        .type            n268_binop_bx, @function
n268_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_binop_α:           sub              rsp, 16
                        mov              r11, 269
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_725_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_725_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_725_7
.Lbinop_α_725_2:        and              edx, 1;                              jz    .Lbinop_α_725_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_725_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_725_4
.Lbinop_α_725_3:        movq             xmm0, rsi
.Lbinop_α_725_4:        cmp              cl, 5;                               je    .Lbinop_α_725_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_725_6
.Lbinop_α_725_5:        movq             xmm1, rdi
.Lbinop_α_725_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_725_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_725_7:                                                              jmp   n269_assign_α
.Lbinop_α_725_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_725_240
                        add              rsp, 16;                             jmp   n267_subscript_β
.Lbinop_α_725_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n269_assign_α
n268_binop_β:           mov              r11, 269
                        add              rsp, 16;                             jmp   n267_subscript_β
                        .size            n268_binop_bx, .-n268_binop_bx
                        .type            n269_assign_bx, @function
n269_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_α:          mov              r11, 270
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n270_statement_end_α
                        .size            n269_assign_bx, .-n269_assign_bx
                        .type            n270_statement_end_bx, @function
n270_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:   mov              r11, 271
                        add              rsp, 80;                             jmp   n271_stmt_mark_α
                        .size            n270_statement_end_bx, .-n270_statement_end_bx
                        .type            n271_stmt_mark_bx, @function
n271_stmt_mark_bx:
#=======================================================================================================================
#         census = census + SIZE(tab[9999]) + SIZE(tab['absent']) + SIZE(tab[-9999])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n271_stmt_mark_α:       mov              r11, 272
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n272_statement_begin_α
                        .size            n271_stmt_mark_bx, .-n271_stmt_mark_bx
                        .type            n272_statement_begin_bx, @function
n272_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α: mov              r11, 273;                            jmp   n273_var_α
n272_statement_begin_β: mov              r11, 273;                            jmp   n292_stmt_mark_α
                        .size            n272_statement_begin_bx, .-n272_statement_begin_bx
                        .type            n273_var_bx, @function
n273_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:             sub              rsp, 16
                        mov              r11, 274
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n274_var_α
                        .size            n273_var_bx, .-n273_var_bx
                        .type            n274_var_bx, @function
n274_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:             sub              rsp, 16
                        mov              r11, 275
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n275_lit_integer_α
n274_var_β:             mov              r11, 275
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n272_statement_begin_β
                        .size            n274_var_bx, .-n274_var_bx
                        .type            n275_lit_integer_bx, @function
n275_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_integer_α:     sub              rsp, 16
                        mov              r11, 276
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_735_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n276_subscript_α
n275_lit_integer_β:     mov              r11, 276
                        add              rsp, 16;                             jmp   n274_var_β
.Llit_integer_α_735_0:  .quad            9999
                        .size            n275_lit_integer_bx, .-n275_lit_integer_bx
                        .type            n276_subscript_bx, @function
n276_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_subscript_α:       sub              rsp, 16
                        mov              r11, 277
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_736_240
                        add              rsp, 16;                             jmp   n275_lit_integer_β
.Lsubscript_α_736_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n277_call_α
n276_subscript_β:       mov              r11, 277
                        add              rsp, 16;                             jmp   n275_lit_integer_β
                        .size            n276_subscript_bx, .-n276_subscript_bx
                        .type            n277_call_bx, @function
n277_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_call_α:            sub              rsp, 16
                        mov              r11, 278
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd738:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd738]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_737_240
                        add              rsp, 16;                             jmp   n276_subscript_β
.Lcall_α_737_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n278_binop_α
n277_call_β:            mov              r11, 278
                        add              rsp, 16;                             jmp   n276_subscript_β
                        .size            n277_call_bx, .-n277_call_bx
                        .type            n278_binop_bx, @function
n278_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_binop_α:           sub              rsp, 16
                        mov              r11, 279
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_739_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_739_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_739_7
.Lbinop_α_739_2:        and              edx, 1;                              jz    .Lbinop_α_739_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_739_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_739_4
.Lbinop_α_739_3:        movq             xmm0, rsi
.Lbinop_α_739_4:        cmp              cl, 5;                               je    .Lbinop_α_739_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_739_6
.Lbinop_α_739_5:        movq             xmm1, rdi
.Lbinop_α_739_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_739_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_739_7:                                                              jmp   n279_var_α
.Lbinop_α_739_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_739_240
                        add              rsp, 32;                             jmp   n276_subscript_β
.Lbinop_α_739_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n279_var_α
n278_binop_β:           mov              r11, 279
                        add              rsp, 32;                             jmp   n276_subscript_β
                        .size            n278_binop_bx, .-n278_binop_bx
                        .type            n279_var_bx, @function
n279_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             sub              rsp, 16
                        mov              r11, 280
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n280_lit_string_α
n279_var_β:             mov              r11, 280
                        add              rsp, 16;                             jmp   n278_binop_β
                        .size            n279_var_bx, .-n279_var_bx
                        .type            n280_lit_string_bx, @function
n280_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      sub              rsp, 16
                        mov              r11, 281
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_741_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n281_subscript_α
n280_lit_string_β:      mov              r11, 281
                        add              rsp, 16;                             jmp   n279_var_β
.Llit_string_α_741_0:   .quad            .Llit_string_α_741_0_s
.Llit_string_α_741_0_s: .string          "absent"
                        .size            n280_lit_string_bx, .-n280_lit_string_bx
                        .type            n281_subscript_bx, @function
n281_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_subscript_α:       sub              rsp, 16
                        mov              r11, 282
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_742_240
                        add              rsp, 16;                             jmp   n280_lit_string_β
.Lsubscript_α_742_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n282_call_α
n281_subscript_β:       mov              r11, 282
                        add              rsp, 16;                             jmp   n280_lit_string_β
                        .size            n281_subscript_bx, .-n281_subscript_bx
                        .type            n282_call_bx, @function
n282_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:            sub              rsp, 16
                        mov              r11, 283
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd744:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd744]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_743_240
                        add              rsp, 16;                             jmp   n281_subscript_β
.Lcall_α_743_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n283_binop_α
n282_call_β:            mov              r11, 283
                        add              rsp, 16;                             jmp   n281_subscript_β
                        .size            n282_call_bx, .-n282_call_bx
                        .type            n283_binop_bx, @function
n283_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_binop_α:           sub              rsp, 16
                        mov              r11, 284
                        mov              eax, dword ptr [rsp + 80]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_745_2
                        mov              rax, qword ptr [rsp + 88]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_745_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_745_7
.Lbinop_α_745_2:        and              edx, 1;                              jz    .Lbinop_α_745_0
                        mov              rsi, qword ptr [rsp + 88]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_745_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_745_4
.Lbinop_α_745_3:        movq             xmm0, rsi
.Lbinop_α_745_4:        cmp              cl, 5;                               je    .Lbinop_α_745_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_745_6
.Lbinop_α_745_5:        movq             xmm1, rdi
.Lbinop_α_745_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_745_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_745_7:                                                              jmp   n284_var_α
.Lbinop_α_745_0:        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_745_240
                        add              rsp, 32;                             jmp   n281_subscript_β
.Lbinop_α_745_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n284_var_α
n283_binop_β:           mov              r11, 284
                        add              rsp, 32;                             jmp   n281_subscript_β
                        .size            n283_binop_bx, .-n283_binop_bx
                        .type            n284_var_bx, @function
n284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             sub              rsp, 16
                        mov              r11, 285
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n285_lit_integer_α
n284_var_β:             mov              r11, 285
                        add              rsp, 16;                             jmp   n283_binop_β
                        .size            n284_var_bx, .-n284_var_bx
                        .type            n285_lit_integer_bx, @function
n285_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_integer_α:     sub              rsp, 16
                        mov              r11, 286
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_747_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n286_unop_α
n285_lit_integer_β:     mov              r11, 286
                        add              rsp, 16;                             jmp   n284_var_β
.Llit_integer_α_747_0:  .quad            9999
                        .size            n285_lit_integer_bx, .-n285_lit_integer_bx
                        .type            n286_unop_bx, @function
n286_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_unop_α:            sub              rsp, 16
                        mov              r11, 287
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg_sno@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:36
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n287_subscript_α
n286_unop_β:            mov              r11, 287
                        add              rsp, 16;                             jmp   n285_lit_integer_β
                        .size            n286_unop_bx, .-n286_unop_bx
                        .type            n287_subscript_bx, @function
n287_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_subscript_α:       sub              rsp, 16
                        mov              r11, 288
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 16]            # unop
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_749_240
                        add              rsp, 16;                             jmp   n286_unop_β
.Lsubscript_α_749_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n288_call_α
n287_subscript_β:       mov              r11, 288
                        add              rsp, 16;                             jmp   n286_unop_β
                        .size            n287_subscript_bx, .-n287_subscript_bx
                        .type            n288_call_bx, @function
n288_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:            sub              rsp, 16
                        mov              r11, 289
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd751:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd751]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_750_240
                        add              rsp, 16;                             jmp   n287_subscript_β
.Lcall_α_750_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:186
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n289_binop_α
n288_call_β:            mov              r11, 289
                        add              rsp, 16;                             jmp   n287_subscript_β
                        .size            n288_call_bx, .-n288_call_bx
                        .type            n289_binop_bx, @function
n289_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_binop_α:           sub              rsp, 16
                        mov              r11, 290
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_752_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_752_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_752_7
.Lbinop_α_752_2:        and              edx, 1;                              jz    .Lbinop_α_752_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_752_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_752_4
.Lbinop_α_752_3:        movq             xmm0, rsi
.Lbinop_α_752_4:        cmp              cl, 5;                               je    .Lbinop_α_752_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_752_6
.Lbinop_α_752_5:        movq             xmm1, rdi
.Lbinop_α_752_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_752_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_752_7:                                                              jmp   n290_assign_α
.Lbinop_α_752_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_752_240
                        add              rsp, 32;                             jmp   n287_subscript_β
.Lbinop_α_752_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n290_assign_α
n289_binop_β:           mov              r11, 290
                        add              rsp, 32;                             jmp   n287_subscript_β
                        .size            n289_binop_bx, .-n289_binop_bx
                        .type            n290_assign_bx, @function
n290_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_assign_α:          mov              r11, 291
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n291_statement_end_α
                        .size            n290_assign_bx, .-n290_assign_bx
                        .type            n291_statement_end_bx, @function
n291_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_end_α:   mov              r11, 292
                        add              rsp, 272;                            jmp   n292_stmt_mark_α
                        .size            n291_statement_end_bx, .-n291_statement_end_bx
                        .type            n292_stmt_mark_bx, @function
n292_stmt_mark_bx:
#=======================================================================================================================
#         pass = LT(pass, 40) pass + 1                    :S(round)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n292_stmt_mark_α:       mov              r11, 293
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n293_statement_begin_α
                        .size            n292_stmt_mark_bx, .-n292_stmt_mark_bx
                        .type            n293_statement_begin_bx, @function
n293_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_statement_begin_α: mov              r11, 294;                            jmp   n294_var_α
n293_statement_begin_β: mov              r11, 294;                            jmp   n304_stmt_mark_α
                        .size            n293_statement_begin_bx, .-n293_statement_begin_bx
                        .type            n294_var_bx, @function
n294_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_var_α:             sub              rsp, 16
                        mov              r11, 295
                        mov              rax, qword ptr [r9 + 16]             # pass
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n295_lit_integer_α
                        .size            n294_var_bx, .-n294_var_bx
                        .type            n295_lit_integer_bx, @function
n295_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     sub              rsp, 16
                        mov              r11, 296
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_761_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n296_coerce_numeric_α
n295_lit_integer_β:     mov              r11, 296
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n293_statement_begin_β
.Llit_integer_α_761_0:  .quad            40
                        .size            n295_lit_integer_bx, .-n295_lit_integer_bx
                        .type            n296_coerce_numeric_bx, @function
n296_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 297
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_763_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
.Lcoerce_numeric_α_763_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n297_coerce_numeric_α
.Lcoerce_numeric_α_763_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 147
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n297_coerce_numeric_α
n296_coerce_numeric_β:  mov              r11, 297
                        add              rsp, 16;                             jmp   n295_lit_integer_β
                        .size            n296_coerce_numeric_bx, .-n296_coerce_numeric_bx
                        .type            n297_coerce_numeric_bx, @function
n297_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 298
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_765_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_765_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_765_0
.Lcoerce_numeric_α_765_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n298_cmp_test_α
.Lcoerce_numeric_α_765_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 148
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
                        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n298_cmp_test_α
n297_coerce_numeric_β:  mov              r11, 298
                        add              rsp, 16;                             jmp   n296_coerce_numeric_β
                        .size            n297_coerce_numeric_bx, .-n297_coerce_numeric_bx
                        .type            n298_cmp_test_bx, @function
n298_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_cmp_test_α:        sub              rsp, 16
                        mov              r11, 299
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_767_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_767_239
                        add              rsp, 16;                             jmp   n297_coerce_numeric_β
.Lcmp_test_α_767_239:                                                         jmp   n299_var_α
.Lcmp_test_α_767_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_767_240
                        add              rsp, 16;                             jmp   n297_coerce_numeric_β
.Lcmp_test_α_767_240:                                                         jmp   n299_var_α
n298_cmp_test_β:        mov              r11, 299
                        add              rsp, 16;                             jmp   n297_coerce_numeric_β
                        .size            n298_cmp_test_bx, .-n298_cmp_test_bx
                        .type            n299_var_bx, @function
n299_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_var_α:             sub              rsp, 16
                        mov              r11, 300
                        mov              rax, qword ptr [r9 + 16]             # pass
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n300_lit_integer_α
n299_var_β:             mov              r11, 300
                        add              rsp, 16;                             jmp   n298_cmp_test_β
                        .size            n299_var_bx, .-n299_var_bx
                        .type            n300_lit_integer_bx, @function
n300_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_integer_α:     sub              rsp, 16
                        mov              r11, 301
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_769_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n301_binop_α
n300_lit_integer_β:     mov              r11, 301
                        add              rsp, 16;                             jmp   n299_var_β
.Llit_integer_α_769_0:  .quad            1
                        .size            n300_lit_integer_bx, .-n300_lit_integer_bx
                        .type            n301_binop_bx, @function
n301_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_binop_α:           sub              rsp, 16
                        mov              r11, 302
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_770_2
                        add              rax, 1;                              jo    .Lbinop_α_770_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_770_7
.Lbinop_α_770_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_770_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_770_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_770_4
.Lbinop_α_770_3:        movq             xmm0, rsi
.Lbinop_α_770_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_770_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_770_7:                                                              jmp   n302_assign_α
.Lbinop_α_770_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_770_240
                        add              rsp, 16;                             jmp   n300_lit_integer_β
.Lbinop_α_770_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:238
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n302_assign_α
n301_binop_β:           mov              r11, 302
                        add              rsp, 16;                             jmp   n300_lit_integer_β
                        .size            n301_binop_bx, .-n301_binop_bx
                        .type            n302_assign_bx, @function
n302_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_assign_α:          mov              r11, 303
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pass
                        mov              qword ptr [r9 + 24], rdx;            jmp   n303_statement_end_α
                        .size            n302_assign_bx, .-n302_assign_bx
                        .type            n303_statement_end_bx, @function
n303_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_end_α:   mov              r11, 304
                        add              rsp, 128;                            jmp   n16_stmt_mark_α
                        .size            n303_statement_end_bx, .-n303_statement_end_bx
                        .type            n304_stmt_mark_bx, @function
n304_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'census of 40 passes = ' census
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n304_stmt_mark_α:       mov              r11, 305
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n305_statement_begin_α
                        .size            n304_stmt_mark_bx, .-n304_stmt_mark_bx
                        .type            n305_statement_begin_bx, @function
n305_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_statement_begin_α: mov              r11, 306;                            jmp   n306_lit_string_α
n305_statement_begin_β: mov              r11, 306;                            jmp   n311_stmt_mark_α
                        .size            n305_statement_begin_bx, .-n305_statement_begin_bx
                        .type            n306_lit_string_bx, @function
n306_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      sub              rsp, 16
                        mov              r11, 307
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_778_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n307_var_α
.Llit_string_α_778_0:   .quad            .Llit_string_α_778_0_s
.Llit_string_α_778_0_s: .string          "census of 40 passes = "
                        .size            n306_lit_string_bx, .-n306_lit_string_bx
                        .type            n307_var_bx, @function
n307_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             sub              rsp, 16
                        mov              r11, 308
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n308_binop_α
n307_var_β:             mov              r11, 308
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n305_statement_begin_β
                        .size            n307_var_bx, .-n307_var_bx
                        .type            n308_binop_bx, @function
n308_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_binop_α:           sub              rsp, 16
                        mov              r11, 309
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n309_assign_α
n308_binop_β:           mov              r11, 309
                        add              rsp, 16;                             jmp   n307_var_β
                        .size            n308_binop_bx, .-n308_binop_bx
                        .type            n309_assign_bx, @function
n309_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_assign_α:          mov              r11, 310
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_781_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n310_statement_end_α
.Lassign_α_781_0:       .quad            .Lassign_α_781_0_s
.Lassign_α_781_0_s:     .string          "OUTPUT"
                        .size            n309_assign_bx, .-n309_assign_bx
                        .type            n310_statement_end_bx, @function
n310_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_statement_end_α:   mov              r11, 311
                        add              rsp, 48;                             jmp   n311_stmt_mark_α
                        .size            n310_statement_end_bx, .-n310_statement_end_bx
                        .type            n311_stmt_mark_bx, @function
n311_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'tab[17] = ' tab[17] '   tab["17"] = ' tab['17'] '   tab[5] = ' tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n311_stmt_mark_α:       mov              r11, 312
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n312_statement_begin_α
                        .size            n311_stmt_mark_bx, .-n311_stmt_mark_bx
                        .type            n312_statement_begin_bx, @function
n312_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_statement_begin_α: mov              r11, 313;                            jmp   n313_lit_string_α
n312_statement_begin_β: mov              r11, 313;                            jmp   main_γ
                        .size            n312_statement_begin_bx, .-n312_statement_begin_bx
                        .type            n313_lit_string_bx, @function
n313_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_string_α:      sub              rsp, 16
                        mov              r11, 314
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_788_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n314_var_α
.Llit_string_α_788_0:   .quad            .Llit_string_α_788_0_s
.Llit_string_α_788_0_s: .string          "tab[17] = "
                        .size            n313_lit_string_bx, .-n313_lit_string_bx
                        .type            n314_var_bx, @function
n314_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             sub              rsp, 16
                        mov              r11, 315
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n315_lit_integer_α
n314_var_β:             mov              r11, 315
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n312_statement_begin_β
                        .size            n314_var_bx, .-n314_var_bx
                        .type            n315_lit_integer_bx, @function
n315_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:     sub              rsp, 16
                        mov              r11, 316
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_790_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n316_subscript_α
n315_lit_integer_β:     mov              r11, 316
                        add              rsp, 16;                             jmp   n314_var_β
.Llit_integer_α_790_0:  .quad            17
                        .size            n315_lit_integer_bx, .-n315_lit_integer_bx
                        .type            n316_subscript_bx, @function
n316_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_subscript_α:       sub              rsp, 16
                        mov              r11, 317
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_791_240
                        add              rsp, 16;                             jmp   n315_lit_integer_β
.Lsubscript_α_791_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n317_binop_α
n316_subscript_β:       mov              r11, 317
                        add              rsp, 16;                             jmp   n315_lit_integer_β
                        .size            n316_subscript_bx, .-n316_subscript_bx
                        .type            n317_binop_bx, @function
n317_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:           sub              rsp, 16
                        mov              r11, 318
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n318_lit_string_α
n317_binop_β:           mov              r11, 318
                        add              rsp, 16;                             jmp   n316_subscript_β
                        .size            n317_binop_bx, .-n317_binop_bx
                        .type            n318_lit_string_bx, @function
n318_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:      sub              rsp, 16
                        mov              r11, 319
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_793_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n319_binop_α
n318_lit_string_β:      mov              r11, 319
                        add              rsp, 16;                             jmp   n317_binop_β
.Llit_string_α_793_0:   .quad            .Llit_string_α_793_0_s
.Llit_string_α_793_0_s: .string          "   tab[\"17\"] = "
                        .size            n318_lit_string_bx, .-n318_lit_string_bx
                        .type            n319_binop_bx, @function
n319_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_binop_α:           sub              rsp, 16
                        mov              r11, 320
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n320_var_α
n319_binop_β:           mov              r11, 320
                        add              rsp, 16;                             jmp   n318_lit_string_β
                        .size            n319_binop_bx, .-n319_binop_bx
                        .type            n320_var_bx, @function
n320_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_α:             sub              rsp, 16
                        mov              r11, 321
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n321_lit_string_α
n320_var_β:             mov              r11, 321
                        add              rsp, 16;                             jmp   n319_binop_β
                        .size            n320_var_bx, .-n320_var_bx
                        .type            n321_lit_string_bx, @function
n321_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      sub              rsp, 16
                        mov              r11, 322
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_796_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n322_subscript_α
n321_lit_string_β:      mov              r11, 322
                        add              rsp, 16;                             jmp   n320_var_β
.Llit_string_α_796_0:   .quad            .Llit_string_α_796_0_s
.Llit_string_α_796_0_s: .string          "17"
                        .size            n321_lit_string_bx, .-n321_lit_string_bx
                        .type            n322_subscript_bx, @function
n322_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_subscript_α:       sub              rsp, 16
                        mov              r11, 323
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_797_240
                        add              rsp, 16;                             jmp   n321_lit_string_β
.Lsubscript_α_797_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n323_binop_α
n322_subscript_β:       mov              r11, 323
                        add              rsp, 16;                             jmp   n321_lit_string_β
                        .size            n322_subscript_bx, .-n322_subscript_bx
                        .type            n323_binop_bx, @function
n323_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_binop_α:           sub              rsp, 16
                        mov              r11, 324
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n324_lit_string_α
n323_binop_β:           mov              r11, 324
                        add              rsp, 16;                             jmp   n322_subscript_β
                        .size            n323_binop_bx, .-n323_binop_bx
                        .type            n324_lit_string_bx, @function
n324_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      sub              rsp, 16
                        mov              r11, 325
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_799_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n325_binop_α
n324_lit_string_β:      mov              r11, 325
                        add              rsp, 16;                             jmp   n323_binop_β
.Llit_string_α_799_0:   .quad            .Llit_string_α_799_0_s
.Llit_string_α_799_0_s: .string          "   tab[5] = "
                        .size            n324_lit_string_bx, .-n324_lit_string_bx
                        .type            n325_binop_bx, @function
n325_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_binop_α:           sub              rsp, 16
                        mov              r11, 326
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n326_var_α
n325_binop_β:           mov              r11, 326
                        add              rsp, 16;                             jmp   n324_lit_string_β
                        .size            n325_binop_bx, .-n325_binop_bx
                        .type            n326_var_bx, @function
n326_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             sub              rsp, 16
                        mov              r11, 327
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n327_lit_integer_α
n326_var_β:             mov              r11, 327
                        add              rsp, 16;                             jmp   n325_binop_β
                        .size            n326_var_bx, .-n326_var_bx
                        .type            n327_lit_integer_bx, @function
n327_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:     sub              rsp, 16
                        mov              r11, 328
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_802_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n328_subscript_α
n327_lit_integer_β:     mov              r11, 328
                        add              rsp, 16;                             jmp   n326_var_β
.Llit_integer_α_802_0:  .quad            5
                        .size            n327_lit_integer_bx, .-n327_lit_integer_bx
                        .type            n328_subscript_bx, @function
n328_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_subscript_α:       sub              rsp, 16
                        mov              r11, 329
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_subscript_val@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lsubscript_α_803_240
                        add              rsp, 16;                             jmp   n327_lit_integer_β
.Lsubscript_α_803_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:43
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n329_binop_α
n328_subscript_β:       mov              r11, 329
                        add              rsp, 16;                             jmp   n327_lit_integer_β
                        .size            n328_subscript_bx, .-n328_subscript_bx
                        .type            n329_binop_bx, @function
n329_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_binop_α:           sub              rsp, 16
                        mov              r11, 330
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:66
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n330_assign_α
n329_binop_β:           mov              r11, 330
                        add              rsp, 16;                             jmp   n328_subscript_β
                        .size            n329_binop_bx, .-n329_binop_bx
                        .type            n330_assign_bx, @function
n330_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_assign_α:          mov              r11, 331
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_805_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        sub              rsp, 16
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        lea              rdi, [rsp + 0]
                        mov              esi, 1
                        mov              edx, 0
                        lea              rcx, [rsp + 16]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_c@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n331_statement_end_α
.Lassign_α_805_0:       .quad            .Lassign_α_805_0_s
.Lassign_α_805_0_s:     .string          "OUTPUT"
                        .size            n330_assign_bx, .-n330_assign_bx
                        .type            n331_statement_end_bx, @function
n331_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_statement_end_α:   mov              r11, 332
                        add              rsp, 272;                            jmp   main_γ
                        .size            n331_statement_end_bx, .-n331_statement_end_bx
                        .type            n332_goto_bx, @function
n332_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_goto_α:            mov              r11, 333;                            jmp   n16_stmt_mark_α
n332_goto_β:            mov              r11, 333;                            jmp   main_ω
                        .size            n332_goto_bx, .-n332_goto_bx
                        .type            n333_goto_bx, @function
n333_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:            mov              r11, 334;                            jmp   n28_stmt_mark_α
n333_goto_β:            mov              r11, 334;                            jmp   main_ω
                        .size            n333_goto_bx, .-n333_goto_bx
                        .type            n334_goto_bx, @function
n334_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:            mov              r11, 335;                            jmp   n54_stmt_mark_α
n334_goto_β:            mov              r11, 335;                            jmp   main_ω
                        .size            n334_goto_bx, .-n334_goto_bx
                        .type            n335_goto_bx, @function
n335_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:            mov              r11, 336;                            jmp   n100_stmt_mark_α
n335_goto_β:            mov              r11, 336;                            jmp   main_ω
                        .size            n335_goto_bx, .-n335_goto_bx
                        .type            n336_goto_bx, @function
n336_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_goto_α:            mov              r11, 337;                            jmp   n179_stmt_mark_α
n336_goto_β:            mov              r11, 337;                            jmp   main_ω
                        .size            n336_goto_bx, .-n336_goto_bx
                        .type            n337_goto_bx, @function
n337_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:            mov              r11, 338;                            jmp   n205_stmt_mark_α
n337_goto_β:            mov              r11, 338;                            jmp   main_ω
                        .size            n337_goto_bx, .-n337_goto_bx
                        .type            n338_goto_bx, @function
n338_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:            mov              r11, 339;                            jmp   n239_stmt_mark_α
n338_goto_β:            mov              r11, 339;                            jmp   main_ω
                        .size            n338_goto_bx, .-n338_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
                        push             rax                                  # gc_poll bb_glue_flat.cpp:48
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            14226278141274
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            3296
                        .quad            1
                        .quad            3623990325149696
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
