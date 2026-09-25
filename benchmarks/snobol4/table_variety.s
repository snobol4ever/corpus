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
                        mov              qword ptr [rsp + 3272], rax
                        mov              dword ptr [rsp + 3264], 160
                        mov              dword ptr [rsp + 3268], 3280
                        mov              eax, 0
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#=======================================================================================================================
#         census = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_337_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_337_0:  .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_338_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_338_0:  .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 17
                        mov              rax, qword ptr [rip + .Llit_string_α_339_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_339_0:   .quad            .Llit_string_α_339_0_s
.Llit_string_α_339_0_s: .string          "table_variety.sno"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_call_bx, @function
n3_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:              sub              rsp, 16
                        mov              r11, 4
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
.Lcall_α_rkfnzd341:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd341]
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
                        cmp              al, 104;                             jne   .Lcall_α_340_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_stmt_mark_α
.Lcall_α_340_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:179
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
1:                                                                            jmp   n4_stmt_mark_α
n3_call_β:              mov              r11, 4
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_stmt_mark_α
                        .size            n3_call_bx, .-n3_call_bx
                        .type            n4_stmt_mark_bx, @function
n4_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_stmt_mark_α:         mov              r11, 5
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        add              rsp, 64;                             jmp   n5_statement_begin_α
                        .size            n4_stmt_mark_bx, .-n4_stmt_mark_bx
                        .type            n5_statement_begin_bx, @function
n5_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:   mov              r11, 6;                              jmp   n6_lit_integer_α
n5_statement_begin_β:   mov              r11, 6;                              jmp   n9_stmt_mark_α
                        .size            n5_statement_begin_bx, .-n5_statement_begin_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       sub              rsp, 16
                        mov              r11, 7
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_346_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_assign_α
.Llit_integer_α_346_0:  .quad            0
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              r11, 8
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n8_statement_end_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_statement_end_bx, @function
n8_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     mov              r11, 9
                        add              rsp, 16;                             jmp   n9_stmt_mark_α
                        .size            n8_statement_end_bx, .-n8_statement_end_bx
                        .type            n9_stmt_mark_bx, @function
n9_stmt_mark_bx:
#=======================================================================================================================
#         pass = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n9_stmt_mark_α:         mov              r11, 10
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6;              jmp   n10_statement_begin_α
                        .size            n9_stmt_mark_bx, .-n9_stmt_mark_bx
                        .type            n10_statement_begin_bx, @function
n10_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_begin_α:  mov              r11, 11;                             jmp   n11_lit_integer_α
n10_statement_begin_β:  mov              r11, 11;                             jmp   n14_stmt_mark_α
                        .size            n10_statement_begin_bx, .-n10_statement_begin_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      sub              rsp, 16
                        mov              r11, 12
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_354_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_assign_α
.Llit_integer_α_354_0:  .quad            1
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_assign_bx, @function
n12_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pass
                        mov              qword ptr [r9 + 24], rdx;            jmp   n13_statement_end_α
                        .size            n12_assign_bx, .-n12_assign_bx
                        .type            n13_statement_end_bx, @function
n13_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    mov              r11, 14
                        add              rsp, 16;                             jmp   n14_stmt_mark_α
                        .size            n13_statement_end_bx, .-n13_statement_end_bx
                        .type            n14_stmt_mark_bx, @function
n14_stmt_mark_bx:
#=======================================================================================================================
# round   tab = TABLE(64)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n14_stmt_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7;              jmp   n15_statement_begin_α
                        .size            n14_stmt_mark_bx, .-n14_stmt_mark_bx
                        .type            n15_statement_begin_bx, @function
n15_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:  mov              r11, 16;                             jmp   n16_lit_integer_α
n15_statement_begin_β:  mov              r11, 16;                             jmp   n20_stmt_mark_α
                        .size            n15_statement_begin_bx, .-n15_statement_begin_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_362_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_call_α
.Llit_integer_α_362_0:  .quad            64
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             sub              rsp, 16
                        mov              r11, 18
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd364:     .string          "TABLE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd364]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 376900
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_363_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n15_statement_begin_β
.Lcall_α_363_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:179
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
1:                                                                            jmp   n18_assign_α
n17_call_β:             mov              r11, 18
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n15_statement_begin_β
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_assign_bx, @function
n18_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # tab
                        mov              qword ptr [r9 + 40], rdx;            jmp   n19_statement_end_α
                        .size            n18_assign_bx, .-n18_assign_bx
                        .type            n19_statement_end_bx, @function
n19_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 20
                        add              rsp, 32;                             jmp   n20_stmt_mark_α
                        .size            n19_statement_end_bx, .-n19_statement_end_bx
                        .type            n20_stmt_mark_bx, @function
n20_stmt_mark_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n20_stmt_mark_α:        mov              r11, 21
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 8;              jmp   n21_statement_begin_α
                        .size            n20_stmt_mark_bx, .-n20_stmt_mark_bx
                        .type            n21_statement_begin_bx, @function
n21_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22;                             jmp   n22_lit_integer_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   n26_stmt_mark_α
                        .size            n21_statement_begin_bx, .-n21_statement_begin_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      sub              rsp, 16
                        mov              r11, 23
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_372_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_unop_α
.Llit_integer_α_372_0:  .quad            30
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_unop_bx, @function
n23_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_unop_α:             sub              rsp, 16
                        mov              r11, 24
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:33
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
1:                                                                            jmp   n24_assign_α
n23_unop_β:             mov              r11, 24
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n21_statement_begin_β
                        .size            n23_unop_bx, .-n23_unop_bx
                        .type            n24_assign_bx, @function
n24_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_assign_α:           mov              r11, 25
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n25_statement_end_α
                        .size            n24_assign_bx, .-n24_assign_bx
                        .type            n25_statement_end_bx, @function
n25_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:    mov              r11, 26
                        add              rsp, 32;                             jmp   n26_stmt_mark_α
                        .size            n25_statement_end_bx, .-n25_statement_end_bx
                        .type            n26_stmt_mark_bx, @function
n26_stmt_mark_bx:
#=======================================================================================================================
# intfill tab[ix] = ix * 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n26_stmt_mark_α:        mov              r11, 27
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9;              jmp   n27_statement_begin_α
                        .size            n26_stmt_mark_bx, .-n26_stmt_mark_bx
                        .type            n27_statement_begin_bx, @function
n27_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_begin_α:  mov              r11, 28;                             jmp   n28_var_α
n27_statement_begin_β:  mov              r11, 28;                             jmp   n35_stmt_mark_α
                        .size            n27_statement_begin_bx, .-n27_statement_begin_bx
                        .type            n28_var_bx, @function
n28_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              r11, 29
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_var_α
                        .size            n28_var_bx, .-n28_var_bx
                        .type            n29_var_bx, @function
n29_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              r11, 30
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_var_α
n29_var_β:              mov              r11, 30
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n27_statement_begin_β
                        .size            n29_var_bx, .-n29_var_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              r11, 31
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_lit_integer_α
n30_var_β:              mov              r11, 31
                        add              rsp, 16;                             jmp   n29_var_β
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      sub              rsp, 16
                        mov              r11, 32
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_binop_α
n31_lit_integer_β:      mov              r11, 32
                        add              rsp, 16;                             jmp   n30_var_β
.Llit_integer_α_384_0:  .quad            3
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_binop_bx, @function
n32_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_binop_α:            sub              rsp, 16
                        mov              r11, 33
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_385_2
                        mov              rdx, 3
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_385_7
.Lbinop_α_385_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_385_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_385_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_385_4
.Lbinop_α_385_3:        movq             xmm0, rsi
.Lbinop_α_385_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_385_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_385_7:                                                              jmp   n33_assign_var_α
.Lbinop_α_385_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_385_240
                        add              rsp, 16;                             jmp   n31_lit_integer_β
.Lbinop_α_385_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n33_assign_var_α
n32_binop_β:            mov              r11, 33
                        add              rsp, 16;                             jmp   n31_lit_integer_β
                        .size            n32_binop_bx, .-n32_binop_bx
                        .type            n33_assign_var_bx, @function
n33_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_assign_var_α:       sub              rsp, 16
                        mov              r11, 34
                        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 64]
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_387_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_387_0
.Lassign_var_α_387_1:   test             rsi, rsi;                            je    .Lassign_var_α_387_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_387_238
                        add              rsp, 16;                             jmp   n32_binop_β
.Lassign_var_α_387_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n34_statement_end_α
.Lassign_var_α_387_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_387_239
                        add              rsp, 16;                             jmp   n32_binop_β
.Lassign_var_α_387_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_387_240
                        add              rsp, 16;                             jmp   n32_binop_β
.Lassign_var_α_387_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n34_statement_end_α
                        .size            n33_assign_var_bx, .-n33_assign_var_bx
                        .type            n34_statement_end_bx, @function
n34_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 35
                        add              rsp, 96;                             jmp   n35_stmt_mark_α
                        .size            n34_statement_end_bx, .-n34_statement_end_bx
                        .type            n35_stmt_mark_bx, @function
n35_stmt_mark_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(intfill)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n35_stmt_mark_α:        mov              r11, 36
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10;             jmp   n36_statement_begin_α
                        .size            n35_stmt_mark_bx, .-n35_stmt_mark_bx
                        .type            n36_statement_begin_bx, @function
n36_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37;                             jmp   n37_var_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n47_stmt_mark_α
                        .size            n36_statement_begin_bx, .-n36_statement_begin_bx
                        .type            n37_var_bx, @function
n37_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              sub              rsp, 16
                        mov              r11, 38
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n38_lit_integer_α
                        .size            n37_var_bx, .-n37_var_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      sub              rsp, 16
                        mov              r11, 39
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_395_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_coerce_numeric_α
n38_lit_integer_β:      mov              r11, 39
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n36_statement_begin_β
.Llit_integer_α_395_0:  .quad            30
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_coerce_numeric_bx, @function
n39_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 40
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_397_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_397_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_397_0
.Lcoerce_numeric_α_397_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n40_coerce_numeric_α
.Lcoerce_numeric_α_397_0:
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
1:                                                                            jmp   n40_coerce_numeric_α
n39_coerce_numeric_β:   mov              r11, 40
                        add              rsp, 16;                             jmp   n38_lit_integer_β
                        .size            n39_coerce_numeric_bx, .-n39_coerce_numeric_bx
                        .type            n40_coerce_numeric_bx, @function
n40_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 41
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_399_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_399_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_399_0
.Lcoerce_numeric_α_399_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n41_cmp_test_α
.Lcoerce_numeric_α_399_0:
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
1:                                                                            jmp   n41_cmp_test_α
n40_coerce_numeric_β:   mov              r11, 41
                        add              rsp, 16;                             jmp   n39_coerce_numeric_β
                        .size            n40_coerce_numeric_bx, .-n40_coerce_numeric_bx
                        .type            n41_cmp_test_bx, @function
n41_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_cmp_test_α:         sub              rsp, 16
                        mov              r11, 42
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_401_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_401_239
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
.Lcmp_test_α_401_239:                                                         jmp   n42_var_α
.Lcmp_test_α_401_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_401_240
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
.Lcmp_test_α_401_240:                                                         jmp   n42_var_α
n41_cmp_test_β:         mov              r11, 42
                        add              rsp, 16;                             jmp   n40_coerce_numeric_β
                        .size            n41_cmp_test_bx, .-n41_cmp_test_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_lit_integer_α
n42_var_β:              mov              r11, 43
                        add              rsp, 16;                             jmp   n41_cmp_test_β
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_lit_integer_bx, @function
n43_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      sub              rsp, 16
                        mov              r11, 44
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_403_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_binop_α
n43_lit_integer_β:      mov              r11, 44
                        add              rsp, 16;                             jmp   n42_var_β
.Llit_integer_α_403_0:  .quad            1
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_binop_bx, @function
n44_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_binop_α:            sub              rsp, 16
                        mov              r11, 45
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_404_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_404_7
.Lbinop_α_404_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_404_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_404_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_404_4
.Lbinop_α_404_3:        movq             xmm0, rsi
.Lbinop_α_404_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_404_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_404_7:                                                              jmp   n45_assign_α
.Lbinop_α_404_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_404_240
                        add              rsp, 16;                             jmp   n43_lit_integer_β
.Lbinop_α_404_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n45_assign_α
n44_binop_β:            mov              r11, 45
                        add              rsp, 16;                             jmp   n43_lit_integer_β
                        .size            n44_binop_bx, .-n44_binop_bx
                        .type            n45_assign_bx, @function
n45_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_assign_α:           mov              r11, 46
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n46_statement_end_α
                        .size            n45_assign_bx, .-n45_assign_bx
                        .type            n46_statement_end_bx, @function
n46_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        add              rsp, 128;                            jmp   n26_stmt_mark_α
                        .size            n46_statement_end_bx, .-n46_statement_end_bx
                        .type            n47_stmt_mark_bx, @function
n47_stmt_mark_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n47_stmt_mark_α:        mov              r11, 48
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 11;             jmp   n48_statement_begin_α
                        .size            n47_stmt_mark_bx, .-n47_stmt_mark_bx
                        .type            n48_statement_begin_bx, @function
n48_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_begin_α:  mov              r11, 49;                             jmp   n49_lit_integer_α
n48_statement_begin_β:  mov              r11, 49;                             jmp   n52_stmt_mark_α
                        .size            n48_statement_begin_bx, .-n48_statement_begin_bx
                        .type            n49_lit_integer_bx, @function
n49_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:      sub              rsp, 16
                        mov              r11, 50
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_412_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n50_assign_α
.Llit_integer_α_412_0:  .quad            1
                        .size            n49_lit_integer_bx, .-n49_lit_integer_bx
                        .type            n50_assign_bx, @function
n50_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_assign_α:           mov              r11, 51
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n51_statement_end_α
                        .size            n50_assign_bx, .-n50_assign_bx
                        .type            n51_statement_end_bx, @function
n51_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_end_α:    mov              r11, 52
                        add              rsp, 16;                             jmp   n52_stmt_mark_α
                        .size            n51_statement_end_bx, .-n51_statement_end_bx
                        .type            n52_stmt_mark_bx, @function
n52_stmt_mark_bx:
#=======================================================================================================================
# strfill tab['k' sx] = sx * 5
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n52_stmt_mark_α:        mov              r11, 53
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12;             jmp   n53_statement_begin_α
                        .size            n52_stmt_mark_bx, .-n52_stmt_mark_bx
                        .type            n53_statement_begin_bx, @function
n53_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_begin_α:  mov              r11, 54;                             jmp   n54_var_α
n53_statement_begin_β:  mov              r11, 54;                             jmp   n63_stmt_mark_α
                        .size            n53_statement_begin_bx, .-n53_statement_begin_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              r11, 55
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_lit_string_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_lit_string_bx, @function
n55_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_lit_string_α:       sub              rsp, 16
                        mov              r11, 56
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_421_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n56_var_α
n55_lit_string_β:       mov              r11, 56
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n53_statement_begin_β
.Llit_string_α_421_0:   .quad            .Llit_string_α_421_0_s
.Llit_string_α_421_0_s: .string          "k"
                        .size            n55_lit_string_bx, .-n55_lit_string_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_binop_α
n56_var_β:              mov              r11, 57
                        add              rsp, 16;                             jmp   n55_lit_string_β
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_binop_bx, @function
n57_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            sub              rsp, 16
                        mov              r11, 58
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n58_var_α
n57_binop_β:            mov              r11, 58
                        add              rsp, 16;                             jmp   n56_var_β
                        .size            n57_binop_bx, .-n57_binop_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_lit_integer_α
n58_var_β:              mov              r11, 59
                        add              rsp, 16;                             jmp   n57_binop_β
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_lit_integer_bx, @function
n59_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_425_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_binop_α
n59_lit_integer_β:      mov              r11, 60
                        add              rsp, 16;                             jmp   n58_var_β
.Llit_integer_α_425_0:  .quad            5
                        .size            n59_lit_integer_bx, .-n59_lit_integer_bx
                        .type            n60_binop_bx, @function
n60_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            sub              rsp, 16
                        mov              r11, 61
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_426_2
                        mov              rdx, 5
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_426_7
.Lbinop_α_426_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_426_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 5
                        cmp              al, 5;                               je    .Lbinop_α_426_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_426_4
.Lbinop_α_426_3:        movq             xmm0, rsi
.Lbinop_α_426_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_426_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_426_7:                                                              jmp   n61_assign_var_α
.Lbinop_α_426_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_426_240
                        add              rsp, 16;                             jmp   n59_lit_integer_β
.Lbinop_α_426_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n61_assign_var_α
n60_binop_β:            mov              r11, 61
                        add              rsp, 16;                             jmp   n59_lit_integer_β
                        .size            n60_binop_bx, .-n60_binop_bx
                        .type            n61_assign_var_bx, @function
n61_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_var_α:       sub              rsp, 16
                        mov              r11, 62
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_428_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_428_0
.Lassign_var_α_428_1:   test             rsi, rsi;                            je    .Lassign_var_α_428_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_428_238
                        add              rsp, 16;                             jmp   n60_binop_β
.Lassign_var_α_428_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n62_statement_end_α
.Lassign_var_α_428_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_428_239
                        add              rsp, 16;                             jmp   n60_binop_β
.Lassign_var_α_428_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_428_240
                        add              rsp, 16;                             jmp   n60_binop_β
.Lassign_var_α_428_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n62_statement_end_α
                        .size            n61_assign_var_bx, .-n61_assign_var_bx
                        .type            n62_statement_end_bx, @function
n62_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 63
                        add              rsp, 128;                            jmp   n63_stmt_mark_α
                        .size            n62_statement_end_bx, .-n62_statement_end_bx
                        .type            n63_stmt_mark_bx, @function
n63_stmt_mark_bx:
#=======================================================================================================================
#         tab['a_much_longer_key_' sx] = sx * 7
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n63_stmt_mark_α:        mov              r11, 64
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13;             jmp   n64_statement_begin_α
                        .size            n63_stmt_mark_bx, .-n63_stmt_mark_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 65;                             jmp   n65_var_α
n64_statement_begin_β:  mov              r11, 65;                             jmp   n74_stmt_mark_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_lit_string_α
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       sub              rsp, 16
                        mov              r11, 67
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_436_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n67_var_α
n66_lit_string_β:       mov              r11, 67
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n64_statement_begin_β
.Llit_string_α_436_0:   .quad            .Llit_string_α_436_0_s
.Llit_string_α_436_0_s: .string          "a_much_longer_key_"
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_binop_α
n67_var_β:              mov              r11, 68
                        add              rsp, 16;                             jmp   n66_lit_string_β
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_binop_bx, @function
n68_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_binop_α:            sub              rsp, 16
                        mov              r11, 69
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n69_var_α
n68_binop_β:            mov              r11, 69
                        add              rsp, 16;                             jmp   n67_var_β
                        .size            n68_binop_bx, .-n68_binop_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              r11, 70
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_lit_integer_α
n69_var_β:              mov              r11, 70
                        add              rsp, 16;                             jmp   n68_binop_β
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_440_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_binop_α
n70_lit_integer_β:      mov              r11, 71
                        add              rsp, 16;                             jmp   n69_var_β
.Llit_integer_α_440_0:  .quad            7
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_binop_bx, @function
n71_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:            sub              rsp, 16
                        mov              r11, 72
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_441_2
                        mov              rdx, 7
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_441_7
.Lbinop_α_441_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_441_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 7
                        cmp              al, 5;                               je    .Lbinop_α_441_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_441_4
.Lbinop_α_441_3:        movq             xmm0, rsi
.Lbinop_α_441_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_441_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_441_7:                                                              jmp   n72_assign_var_α
.Lbinop_α_441_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_441_240
                        add              rsp, 16;                             jmp   n70_lit_integer_β
.Lbinop_α_441_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n72_assign_var_α
n71_binop_β:            mov              r11, 72
                        add              rsp, 16;                             jmp   n70_lit_integer_β
                        .size            n71_binop_bx, .-n71_binop_bx
                        .type            n72_assign_var_bx, @function
n72_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_var_α:       sub              rsp, 16
                        mov              r11, 73
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_443_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_443_0
.Lassign_var_α_443_1:   test             rsi, rsi;                            je    .Lassign_var_α_443_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_443_238
                        add              rsp, 16;                             jmp   n71_binop_β
.Lassign_var_α_443_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n73_statement_end_α
.Lassign_var_α_443_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_443_239
                        add              rsp, 16;                             jmp   n71_binop_β
.Lassign_var_α_443_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_443_240
                        add              rsp, 16;                             jmp   n71_binop_β
.Lassign_var_α_443_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n73_statement_end_α
                        .size            n72_assign_var_bx, .-n72_assign_var_bx
                        .type            n73_statement_end_bx, @function
n73_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 74
                        add              rsp, 128;                            jmp   n74_stmt_mark_α
                        .size            n73_statement_end_bx, .-n73_statement_end_bx
                        .type            n74_stmt_mark_bx, @function
n74_stmt_mark_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(strfill)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n74_stmt_mark_α:        mov              r11, 75
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 14;             jmp   n75_statement_begin_α
                        .size            n74_stmt_mark_bx, .-n74_stmt_mark_bx
                        .type            n75_statement_begin_bx, @function
n75_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 76;                             jmp   n76_var_α
n75_statement_begin_β:  mov              r11, 76;                             jmp   n86_stmt_mark_α
                        .size            n75_statement_begin_bx, .-n75_statement_begin_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              r11, 77
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_lit_integer_α
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_451_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_coerce_numeric_α
n77_lit_integer_β:      mov              r11, 78
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
.Llit_integer_α_451_0:  .quad            20
                        .size            n77_lit_integer_bx, .-n77_lit_integer_bx
                        .type            n78_coerce_numeric_bx, @function
n78_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 79
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_453_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_453_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_453_0
.Lcoerce_numeric_α_453_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_coerce_numeric_α
.Lcoerce_numeric_α_453_0:
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
1:                                                                            jmp   n79_coerce_numeric_α
n78_coerce_numeric_β:   mov              r11, 79
                        add              rsp, 16;                             jmp   n77_lit_integer_β
                        .size            n78_coerce_numeric_bx, .-n78_coerce_numeric_bx
                        .type            n79_coerce_numeric_bx, @function
n79_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 80
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_455_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_455_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_455_0
.Lcoerce_numeric_α_455_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_cmp_test_α
.Lcoerce_numeric_α_455_0:
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
1:                                                                            jmp   n80_cmp_test_α
n79_coerce_numeric_β:   mov              r11, 80
                        add              rsp, 16;                             jmp   n78_coerce_numeric_β
                        .size            n79_coerce_numeric_bx, .-n79_coerce_numeric_bx
                        .type            n80_cmp_test_bx, @function
n80_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_cmp_test_α:         sub              rsp, 16
                        mov              r11, 81
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_457_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_457_239
                        add              rsp, 16;                             jmp   n79_coerce_numeric_β
.Lcmp_test_α_457_239:                                                         jmp   n81_var_α
.Lcmp_test_α_457_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_457_240
                        add              rsp, 16;                             jmp   n79_coerce_numeric_β
.Lcmp_test_α_457_240:                                                         jmp   n81_var_α
n80_cmp_test_β:         mov              r11, 81
                        add              rsp, 16;                             jmp   n79_coerce_numeric_β
                        .size            n80_cmp_test_bx, .-n80_cmp_test_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              r11, 82
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_lit_integer_α
n81_var_β:              mov              r11, 82
                        add              rsp, 16;                             jmp   n80_cmp_test_β
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              r11, 83
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_459_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_binop_α
n82_lit_integer_β:      mov              r11, 83
                        add              rsp, 16;                             jmp   n81_var_β
.Llit_integer_α_459_0:  .quad            1
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_binop_bx, @function
n83_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            sub              rsp, 16
                        mov              r11, 84
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_460_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_460_7
.Lbinop_α_460_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_460_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_460_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_460_4
.Lbinop_α_460_3:        movq             xmm0, rsi
.Lbinop_α_460_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_460_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_460_7:                                                              jmp   n84_assign_α
.Lbinop_α_460_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_460_240
                        add              rsp, 16;                             jmp   n82_lit_integer_β
.Lbinop_α_460_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n84_assign_α
n83_binop_β:            mov              r11, 84
                        add              rsp, 16;                             jmp   n82_lit_integer_β
                        .size            n83_binop_bx, .-n83_binop_bx
                        .type            n84_assign_bx, @function
n84_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              r11, 85
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n85_statement_end_α
                        .size            n84_assign_bx, .-n84_assign_bx
                        .type            n85_statement_end_bx, @function
n85_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 86
                        add              rsp, 128;                            jmp   n52_stmt_mark_α
                        .size            n85_statement_end_bx, .-n85_statement_end_bx
                        .type            n86_stmt_mark_bx, @function
n86_stmt_mark_bx:
#=======================================================================================================================
#         tab['17'] = 1700
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n86_stmt_mark_α:        mov              r11, 87
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15;             jmp   n87_statement_begin_α
                        .size            n86_stmt_mark_bx, .-n86_stmt_mark_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 88;                             jmp   n88_var_α
n87_statement_begin_β:  mov              r11, 88;                             jmp   n93_stmt_mark_α
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              r11, 89
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_string_α
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_lit_string_bx, @function
n89_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       sub              rsp, 16
                        mov              r11, 90
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_469_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_lit_integer_α
n89_lit_string_β:       mov              r11, 90
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Llit_string_α_469_0:   .quad            .Llit_string_α_469_0_s
.Llit_string_α_469_0_s: .string          "17"
                        .size            n89_lit_string_bx, .-n89_lit_string_bx
                        .type            n90_lit_integer_bx, @function
n90_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:      sub              rsp, 16
                        mov              r11, 91
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_470_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_assign_var_α
n90_lit_integer_β:      mov              r11, 91
                        add              rsp, 16;                             jmp   n89_lit_string_β
.Llit_integer_α_470_0:  .quad            1700
                        .size            n90_lit_integer_bx, .-n90_lit_integer_bx
                        .type            n91_assign_var_bx, @function
n91_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_assign_var_α:       sub              rsp, 16
                        mov              r11, 92
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_472_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_472_0
.Lassign_var_α_472_1:   test             rsi, rsi;                            je    .Lassign_var_α_472_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_472_238
                        add              rsp, 16;                             jmp   n90_lit_integer_β
.Lassign_var_α_472_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n92_statement_end_α
.Lassign_var_α_472_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_472_239
                        add              rsp, 16;                             jmp   n90_lit_integer_β
.Lassign_var_α_472_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_472_240
                        add              rsp, 16;                             jmp   n90_lit_integer_β
.Lassign_var_α_472_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n92_statement_end_α
                        .size            n91_assign_var_bx, .-n91_assign_var_bx
                        .type            n92_statement_end_bx, @function
n92_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 93
                        add              rsp, 64;                             jmp   n93_stmt_mark_α
                        .size            n92_statement_end_bx, .-n92_statement_end_bx
                        .type            n93_stmt_mark_bx, @function
n93_stmt_mark_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n93_stmt_mark_α:        mov              r11, 94
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16;             jmp   n94_statement_begin_α
                        .size            n93_stmt_mark_bx, .-n93_stmt_mark_bx
                        .type            n94_statement_begin_bx, @function
n94_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 95;                             jmp   n95_lit_integer_α
n94_statement_begin_β:  mov              r11, 95;                             jmp   n98_stmt_mark_α
                        .size            n94_statement_begin_bx, .-n94_statement_begin_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      sub              rsp, 16
                        mov              r11, 96
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_479_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_assign_α
.Llit_integer_α_479_0:  .quad            1
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_assign_bx, @function
n96_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_assign_α:           mov              r11, 97
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n97_statement_end_α
                        .size            n96_assign_bx, .-n96_assign_bx
                        .type            n97_statement_end_bx, @function
n97_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    mov              r11, 98
                        add              rsp, 16;                             jmp   n98_stmt_mark_α
                        .size            n97_statement_end_bx, .-n97_statement_end_bx
                        .type            n98_stmt_mark_bx, @function
n98_stmt_mark_bx:
#=======================================================================================================================
# realfil tab[rx / 2.0] = rx * 11
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n98_stmt_mark_α:        mov              r11, 99
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17;             jmp   n99_statement_begin_α
                        .size            n98_stmt_mark_bx, .-n98_stmt_mark_bx
                        .type            n99_statement_begin_bx, @function
n99_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_begin_α:  mov              r11, 100;                            jmp   n100_var_α
n99_statement_begin_β:  mov              r11, 100;                            jmp   n109_stmt_mark_α
                        .size            n99_statement_begin_bx, .-n99_statement_begin_bx
                        .type            n100_var_bx, @function
n100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              r11, 101
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_var_α
                        .size            n100_var_bx, .-n100_var_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              r11, 102
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_lit_real_α
n101_var_β:             mov              r11, 102
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n99_statement_begin_β
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_lit_real_bx, @function
n102_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_real_α:        sub              rsp, 16
                        mov              r11, 103
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_489_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n103_binop_α
.Llit_real_α_489_0:     .quad            4611686018427387904
                        .size            n102_lit_real_bx, .-n102_lit_real_bx
                        .type            n103_binop_bx, @function
n103_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_binop_α:           sub              rsp, 16
                        mov              r11, 104
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_real
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_490_240
                        add              rsp, 32;                             jmp   n101_var_β
.Lbinop_α_490_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:320
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
1:                                                                            jmp   n104_var_α
n103_binop_β:           mov              r11, 104
                        add              rsp, 32;                             jmp   n101_var_β
                        .size            n103_binop_bx, .-n103_binop_bx
                        .type            n104_var_bx, @function
n104_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             sub              rsp, 16
                        mov              r11, 105
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_lit_integer_α
n104_var_β:             mov              r11, 105
                        add              rsp, 16;                             jmp   n103_binop_β
                        .size            n104_var_bx, .-n104_var_bx
                        .type            n105_lit_integer_bx, @function
n105_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_integer_α:     sub              rsp, 16
                        mov              r11, 106
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_492_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_binop_α
n105_lit_integer_β:     mov              r11, 106
                        add              rsp, 16;                             jmp   n104_var_β
.Llit_integer_α_492_0:  .quad            11
                        .size            n105_lit_integer_bx, .-n105_lit_integer_bx
                        .type            n106_binop_bx, @function
n106_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_binop_α:           sub              rsp, 16
                        mov              r11, 107
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_493_2
                        mov              rdx, 11
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_493_7
.Lbinop_α_493_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_493_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 11
                        cmp              al, 5;                               je    .Lbinop_α_493_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_493_4
.Lbinop_α_493_3:        movq             xmm0, rsi
.Lbinop_α_493_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_493_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_493_7:                                                              jmp   n107_assign_var_α
.Lbinop_α_493_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_493_240
                        add              rsp, 16;                             jmp   n105_lit_integer_β
.Lbinop_α_493_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n107_assign_var_α
n106_binop_β:           mov              r11, 107
                        add              rsp, 16;                             jmp   n105_lit_integer_β
                        .size            n106_binop_bx, .-n106_binop_bx
                        .type            n107_assign_var_bx, @function
n107_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_var_α:      sub              rsp, 16
                        mov              r11, 108
                        mov              rdi, qword ptr [rsp + 112]           # var
                        mov              rsi, qword ptr [rsp + 120]
                        mov              rdx, qword ptr [rsp + 64]            # binop
                        mov              rcx, qword ptr [rsp + 72]
                        cmp              dil, 24;                             je    .Lassign_var_α_495_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_495_0
.Lassign_var_α_495_1:   test             rsi, rsi;                            je    .Lassign_var_α_495_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_495_238
                        add              rsp, 16;                             jmp   n106_binop_β
.Lassign_var_α_495_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n108_statement_end_α
.Lassign_var_α_495_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_495_239
                        add              rsp, 16;                             jmp   n106_binop_β
.Lassign_var_α_495_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_495_240
                        add              rsp, 16;                             jmp   n106_binop_β
.Lassign_var_α_495_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n108_statement_end_α
                        .size            n107_assign_var_bx, .-n107_assign_var_bx
                        .type            n108_statement_end_bx, @function
n108_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   mov              r11, 109
                        add              rsp, 128;                            jmp   n109_stmt_mark_α
                        .size            n108_statement_end_bx, .-n108_statement_end_bx
                        .type            n109_stmt_mark_bx, @function
n109_stmt_mark_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(realfil)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n109_stmt_mark_α:       mov              r11, 110
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18;             jmp   n110_statement_begin_α
                        .size            n109_stmt_mark_bx, .-n109_stmt_mark_bx
                        .type            n110_statement_begin_bx, @function
n110_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 111;                            jmp   n111_var_α
n110_statement_begin_β: mov              r11, 111;                            jmp   n121_stmt_mark_α
                        .size            n110_statement_begin_bx, .-n110_statement_begin_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_lit_integer_α
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_lit_integer_bx, @function
n112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_503_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_coerce_numeric_α
n112_lit_integer_β:     mov              r11, 113
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
.Llit_integer_α_503_0:  .quad            12
                        .size            n112_lit_integer_bx, .-n112_lit_integer_bx
                        .type            n113_coerce_numeric_bx, @function
n113_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 114
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_505_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_505_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_505_0
.Lcoerce_numeric_α_505_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n114_coerce_numeric_α
.Lcoerce_numeric_α_505_0:
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
1:                                                                            jmp   n114_coerce_numeric_α
n113_coerce_numeric_β:  mov              r11, 114
                        add              rsp, 16;                             jmp   n112_lit_integer_β
                        .size            n113_coerce_numeric_bx, .-n113_coerce_numeric_bx
                        .type            n114_coerce_numeric_bx, @function
n114_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 115
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_507_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_507_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_507_0
.Lcoerce_numeric_α_507_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_cmp_test_α
.Lcoerce_numeric_α_507_0:
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
1:                                                                            jmp   n115_cmp_test_α
n114_coerce_numeric_β:  mov              r11, 115
                        add              rsp, 16;                             jmp   n113_coerce_numeric_β
                        .size            n114_coerce_numeric_bx, .-n114_coerce_numeric_bx
                        .type            n115_cmp_test_bx, @function
n115_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_cmp_test_α:        sub              rsp, 16
                        mov              r11, 116
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_509_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_509_239
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
.Lcmp_test_α_509_239:                                                         jmp   n116_var_α
.Lcmp_test_α_509_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_509_240
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
.Lcmp_test_α_509_240:                                                         jmp   n116_var_α
n115_cmp_test_β:        mov              r11, 116
                        add              rsp, 16;                             jmp   n114_coerce_numeric_β
                        .size            n115_cmp_test_bx, .-n115_cmp_test_bx
                        .type            n116_var_bx, @function
n116_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_var_α:             sub              rsp, 16
                        mov              r11, 117
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n117_lit_integer_α
n116_var_β:             mov              r11, 117
                        add              rsp, 16;                             jmp   n115_cmp_test_β
                        .size            n116_var_bx, .-n116_var_bx
                        .type            n117_lit_integer_bx, @function
n117_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_lit_integer_α:     sub              rsp, 16
                        mov              r11, 118
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_511_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n118_binop_α
n117_lit_integer_β:     mov              r11, 118
                        add              rsp, 16;                             jmp   n116_var_β
.Llit_integer_α_511_0:  .quad            1
                        .size            n117_lit_integer_bx, .-n117_lit_integer_bx
                        .type            n118_binop_bx, @function
n118_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_binop_α:           sub              rsp, 16
                        mov              r11, 119
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_512_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_512_7
.Lbinop_α_512_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_512_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_512_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_512_4
.Lbinop_α_512_3:        movq             xmm0, rsi
.Lbinop_α_512_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_512_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_512_7:                                                              jmp   n119_assign_α
.Lbinop_α_512_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_512_240
                        add              rsp, 16;                             jmp   n117_lit_integer_β
.Lbinop_α_512_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n119_assign_α
n118_binop_β:           mov              r11, 119
                        add              rsp, 16;                             jmp   n117_lit_integer_β
                        .size            n118_binop_bx, .-n118_binop_bx
                        .type            n119_assign_bx, @function
n119_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n120_statement_end_α
                        .size            n119_assign_bx, .-n119_assign_bx
                        .type            n120_statement_end_bx, @function
n120_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   mov              r11, 121
                        add              rsp, 128;                            jmp   n98_stmt_mark_α
                        .size            n120_statement_end_bx, .-n120_statement_end_bx
                        .type            n121_stmt_mark_bx, @function
n121_stmt_mark_bx:
#=======================================================================================================================
#         tab[''] = 99
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n121_stmt_mark_α:       mov              r11, 122
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19;             jmp   n122_statement_begin_α
                        .size            n121_stmt_mark_bx, .-n121_stmt_mark_bx
                        .type            n122_statement_begin_bx, @function
n122_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 123;                            jmp   n123_var_α
n122_statement_begin_β: mov              r11, 123;                            jmp   n128_stmt_mark_α
                        .size            n122_statement_begin_bx, .-n122_statement_begin_bx
                        .type            n123_var_bx, @function
n123_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_α:             sub              rsp, 16
                        mov              r11, 124
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n124_lit_string_α
                        .size            n123_var_bx, .-n123_var_bx
                        .type            n124_lit_string_bx, @function
n124_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      sub              rsp, 16
                        mov              r11, 125
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_521_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n125_lit_integer_α
n124_lit_string_β:      mov              r11, 125
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n122_statement_begin_β
.Llit_string_α_521_0:   .quad            .Llit_string_α_521_0_s
.Llit_string_α_521_0_s: .string          ""
                        .size            n124_lit_string_bx, .-n124_lit_string_bx
                        .type            n125_lit_integer_bx, @function
n125_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_lit_integer_α:     sub              rsp, 16
                        mov              r11, 126
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_522_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n126_assign_var_α
n125_lit_integer_β:     mov              r11, 126
                        add              rsp, 16;                             jmp   n124_lit_string_β
.Llit_integer_α_522_0:  .quad            99
                        .size            n125_lit_integer_bx, .-n125_lit_integer_bx
                        .type            n126_assign_var_bx, @function
n126_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_assign_var_α:      sub              rsp, 16
                        mov              r11, 127
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_string
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_524_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_524_0
.Lassign_var_α_524_1:   test             rsi, rsi;                            je    .Lassign_var_α_524_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_524_238
                        add              rsp, 16;                             jmp   n125_lit_integer_β
.Lassign_var_α_524_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n127_statement_end_α
.Lassign_var_α_524_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_524_239
                        add              rsp, 16;                             jmp   n125_lit_integer_β
.Lassign_var_α_524_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_524_240
                        add              rsp, 16;                             jmp   n125_lit_integer_β
.Lassign_var_α_524_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n127_statement_end_α
                        .size            n126_assign_var_bx, .-n126_assign_var_bx
                        .type            n127_statement_end_bx, @function
n127_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   mov              r11, 128
                        add              rsp, 64;                             jmp   n128_stmt_mark_α
                        .size            n127_statement_end_bx, .-n127_statement_end_bx
                        .type            n128_stmt_mark_bx, @function
n128_stmt_mark_bx:
#=======================================================================================================================
#         tab[17] = 1717
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n128_stmt_mark_α:       mov              r11, 129
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20;             jmp   n129_statement_begin_α
                        .size            n128_stmt_mark_bx, .-n128_stmt_mark_bx
                        .type            n129_statement_begin_bx, @function
n129_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α: mov              r11, 130;                            jmp   n130_var_α
n129_statement_begin_β: mov              r11, 130;                            jmp   n135_stmt_mark_α
                        .size            n129_statement_begin_bx, .-n129_statement_begin_bx
                        .type            n130_var_bx, @function
n130_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_var_α:             sub              rsp, 16
                        mov              r11, 131
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n131_lit_integer_α
                        .size            n130_var_bx, .-n130_var_bx
                        .type            n131_lit_integer_bx, @function
n131_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_lit_integer_α:     sub              rsp, 16
                        mov              r11, 132
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_532_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n132_lit_integer_α
n131_lit_integer_β:     mov              r11, 132
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n129_statement_begin_β
.Llit_integer_α_532_0:  .quad            17
                        .size            n131_lit_integer_bx, .-n131_lit_integer_bx
                        .type            n132_lit_integer_bx, @function
n132_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     sub              rsp, 16
                        mov              r11, 133
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_533_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n133_assign_var_α
n132_lit_integer_β:     mov              r11, 133
                        add              rsp, 16;                             jmp   n131_lit_integer_β
.Llit_integer_α_533_0:  .quad            1717
                        .size            n132_lit_integer_bx, .-n132_lit_integer_bx
                        .type            n133_assign_var_bx, @function
n133_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_assign_var_α:      sub              rsp, 16
                        mov              r11, 134
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_535_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_535_0
.Lassign_var_α_535_1:   test             rsi, rsi;                            je    .Lassign_var_α_535_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_535_238
                        add              rsp, 16;                             jmp   n132_lit_integer_β
.Lassign_var_α_535_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n134_statement_end_α
.Lassign_var_α_535_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_535_239
                        add              rsp, 16;                             jmp   n132_lit_integer_β
.Lassign_var_α_535_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_535_240
                        add              rsp, 16;                             jmp   n132_lit_integer_β
.Lassign_var_α_535_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n134_statement_end_α
                        .size            n133_assign_var_bx, .-n133_assign_var_bx
                        .type            n134_statement_end_bx, @function
n134_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   mov              r11, 135
                        add              rsp, 64;                             jmp   n135_stmt_mark_α
                        .size            n134_statement_end_bx, .-n134_statement_end_bx
                        .type            n135_stmt_mark_bx, @function
n135_stmt_mark_bx:
#=======================================================================================================================
#         census = census + tab[17] + tab['17']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n135_stmt_mark_α:       mov              r11, 136
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21;             jmp   n136_statement_begin_α
                        .size            n135_stmt_mark_bx, .-n135_stmt_mark_bx
                        .type            n136_statement_begin_bx, @function
n136_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 137;                            jmp   n137_var_α
n136_statement_begin_β: mov              r11, 137;                            jmp   n148_stmt_mark_α
                        .size            n136_statement_begin_bx, .-n136_statement_begin_bx
                        .type            n137_var_bx, @function
n137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_var_α
                        .size            n137_var_bx, .-n137_var_bx
                        .type            n138_var_bx, @function
n138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_lit_integer_α
n138_var_β:             mov              r11, 139
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
                        .size            n138_var_bx, .-n138_var_bx
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     sub              rsp, 16
                        mov              r11, 140
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_544_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n140_subscript_α
n139_lit_integer_β:     mov              r11, 140
                        add              rsp, 16;                             jmp   n138_var_β
.Llit_integer_α_544_0:  .quad            17
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_subscript_bx, @function
n140_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_subscript_α:       sub              rsp, 16
                        mov              r11, 141
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
                        cmp              al, 104;                             jne   .Lsubscript_α_545_240
                        add              rsp, 16;                             jmp   n139_lit_integer_β
.Lsubscript_α_545_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n141_binop_α
n140_subscript_β:       mov              r11, 141
                        add              rsp, 16;                             jmp   n139_lit_integer_β
                        .size            n140_subscript_bx, .-n140_subscript_bx
                        .type            n141_binop_bx, @function
n141_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:           sub              rsp, 16
                        mov              r11, 142
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_546_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_546_7
.Lbinop_α_546_2:        and              edx, 1;                              jz    .Lbinop_α_546_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_546_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_546_4
.Lbinop_α_546_3:        movq             xmm0, rsi
.Lbinop_α_546_4:        cmp              cl, 5;                               je    .Lbinop_α_546_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_546_6
.Lbinop_α_546_5:        movq             xmm1, rdi
.Lbinop_α_546_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_546_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_546_7:                                                              jmp   n142_var_α
.Lbinop_α_546_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_546_240
                        add              rsp, 16;                             jmp   n140_subscript_β
.Lbinop_α_546_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n142_var_α
n141_binop_β:           mov              r11, 142
                        add              rsp, 16;                             jmp   n140_subscript_β
                        .size            n141_binop_bx, .-n141_binop_bx
                        .type            n142_var_bx, @function
n142_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              r11, 143
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_lit_string_α
n142_var_β:             mov              r11, 143
                        add              rsp, 16;                             jmp   n141_binop_β
                        .size            n142_var_bx, .-n142_var_bx
                        .type            n143_lit_string_bx, @function
n143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      sub              rsp, 16
                        mov              r11, 144
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_548_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_subscript_α
n143_lit_string_β:      mov              r11, 144
                        add              rsp, 16;                             jmp   n142_var_β
.Llit_string_α_548_0:   .quad            .Llit_string_α_548_0_s
.Llit_string_α_548_0_s: .string          "17"
                        .size            n143_lit_string_bx, .-n143_lit_string_bx
                        .type            n144_subscript_bx, @function
n144_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_subscript_α:       sub              rsp, 16
                        mov              r11, 145
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
                        cmp              al, 104;                             jne   .Lsubscript_α_549_240
                        add              rsp, 16;                             jmp   n143_lit_string_β
.Lsubscript_α_549_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n145_binop_α
n144_subscript_β:       mov              r11, 145
                        add              rsp, 16;                             jmp   n143_lit_string_β
                        .size            n144_subscript_bx, .-n144_subscript_bx
                        .type            n145_binop_bx, @function
n145_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:           sub              rsp, 16
                        mov              r11, 146
                        mov              eax, dword ptr [rsp + 64]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_550_2
                        mov              rax, qword ptr [rsp + 72]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_550_7
.Lbinop_α_550_2:        and              edx, 1;                              jz    .Lbinop_α_550_0
                        mov              rsi, qword ptr [rsp + 72]            # binop
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
.Lbinop_α_550_7:                                                              jmp   n146_assign_α
.Lbinop_α_550_0:        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_550_240
                        add              rsp, 16;                             jmp   n144_subscript_β
.Lbinop_α_550_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n146_assign_α
n145_binop_β:           mov              r11, 146
                        add              rsp, 16;                             jmp   n144_subscript_β
                        .size            n145_binop_bx, .-n145_binop_bx
                        .type            n146_assign_bx, @function
n146_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_assign_α:          mov              r11, 147
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n147_statement_end_α
                        .size            n146_assign_bx, .-n146_assign_bx
                        .type            n147_statement_end_bx, @function
n147_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   mov              r11, 148
                        add              rsp, 144;                            jmp   n148_stmt_mark_α
                        .size            n147_statement_end_bx, .-n147_statement_end_bx
                        .type            n148_stmt_mark_bx, @function
n148_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 500
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n148_stmt_mark_α:       mov              r11, 149
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 22;             jmp   n149_statement_begin_α
                        .size            n148_stmt_mark_bx, .-n148_stmt_mark_bx
                        .type            n149_statement_begin_bx, @function
n149_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α: mov              r11, 150;                            jmp   n150_var_α
n149_statement_begin_β: mov              r11, 150;                            jmp   n155_stmt_mark_α
                        .size            n149_statement_begin_bx, .-n149_statement_begin_bx
                        .type            n150_var_bx, @function
n150_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_var_α:             sub              rsp, 16
                        mov              r11, 151
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n151_lit_integer_α
                        .size            n150_var_bx, .-n150_var_bx
                        .type            n151_lit_integer_bx, @function
n151_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_lit_integer_α:     sub              rsp, 16
                        mov              r11, 152
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_559_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n152_lit_integer_α
n151_lit_integer_β:     mov              r11, 152
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n149_statement_begin_β
.Llit_integer_α_559_0:  .quad            5
                        .size            n151_lit_integer_bx, .-n151_lit_integer_bx
                        .type            n152_lit_integer_bx, @function
n152_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_integer_α:     sub              rsp, 16
                        mov              r11, 153
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_560_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n153_assign_var_α
n152_lit_integer_β:     mov              r11, 153
                        add              rsp, 16;                             jmp   n151_lit_integer_β
.Llit_integer_α_560_0:  .quad            500
                        .size            n152_lit_integer_bx, .-n152_lit_integer_bx
                        .type            n153_assign_var_bx, @function
n153_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_assign_var_α:      sub              rsp, 16
                        mov              r11, 154
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_562_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_562_0
.Lassign_var_α_562_1:   test             rsi, rsi;                            je    .Lassign_var_α_562_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_562_238
                        add              rsp, 16;                             jmp   n152_lit_integer_β
.Lassign_var_α_562_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n154_statement_end_α
.Lassign_var_α_562_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_562_239
                        add              rsp, 16;                             jmp   n152_lit_integer_β
.Lassign_var_α_562_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_562_240
                        add              rsp, 16;                             jmp   n152_lit_integer_β
.Lassign_var_α_562_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n154_statement_end_α
                        .size            n153_assign_var_bx, .-n153_assign_var_bx
                        .type            n154_statement_end_bx, @function
n154_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   mov              r11, 155
                        add              rsp, 64;                             jmp   n155_stmt_mark_α
                        .size            n154_statement_end_bx, .-n154_statement_end_bx
                        .type            n155_stmt_mark_bx, @function
n155_stmt_mark_bx:
#=======================================================================================================================
#         tab[5] = 501
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n155_stmt_mark_α:       mov              r11, 156
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 23;             jmp   n156_statement_begin_α
                        .size            n155_stmt_mark_bx, .-n155_stmt_mark_bx
                        .type            n156_statement_begin_bx, @function
n156_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 157;                            jmp   n157_var_α
n156_statement_begin_β: mov              r11, 157;                            jmp   n162_stmt_mark_α
                        .size            n156_statement_begin_bx, .-n156_statement_begin_bx
                        .type            n157_var_bx, @function
n157_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              r11, 158
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_lit_integer_α
                        .size            n157_var_bx, .-n157_var_bx
                        .type            n158_lit_integer_bx, @function
n158_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_integer_α:     sub              rsp, 16
                        mov              r11, 159
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_570_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n159_lit_integer_α
n158_lit_integer_β:     mov              r11, 159
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n156_statement_begin_β
.Llit_integer_α_570_0:  .quad            5
                        .size            n158_lit_integer_bx, .-n158_lit_integer_bx
                        .type            n159_lit_integer_bx, @function
n159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     sub              rsp, 16
                        mov              r11, 160
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_571_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_assign_var_α
n159_lit_integer_β:     mov              r11, 160
                        add              rsp, 16;                             jmp   n158_lit_integer_β
.Llit_integer_α_571_0:  .quad            501
                        .size            n159_lit_integer_bx, .-n159_lit_integer_bx
                        .type            n160_assign_var_bx, @function
n160_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_assign_var_α:      sub              rsp, 16
                        mov              r11, 161
                        mov              rdi, qword ptr [rsp + 48]            # var
                        mov              rsi, qword ptr [rsp + 56]
                        mov              rdx, qword ptr [rsp + 32]            # lit_integer
                        mov              rcx, qword ptr [rsp + 40]
                        cmp              dil, 24;                             je    .Lassign_var_α_573_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_573_0
.Lassign_var_α_573_1:   test             rsi, rsi;                            je    .Lassign_var_α_573_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_573_238
                        add              rsp, 16;                             jmp   n159_lit_integer_β
.Lassign_var_α_573_238: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:52
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
1:                                                                            jmp   n161_statement_end_α
.Lassign_var_α_573_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_573_239
                        add              rsp, 16;                             jmp   n159_lit_integer_β
.Lassign_var_α_573_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_573_240
                        add              rsp, 16;                             jmp   n159_lit_integer_β
.Lassign_var_α_573_240: mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_assign_var_sub.cpp:72
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
1:                                                                            jmp   n161_statement_end_α
                        .size            n160_assign_var_bx, .-n160_assign_var_bx
                        .type            n161_statement_end_bx, @function
n161_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_end_α:   mov              r11, 162
                        add              rsp, 64;                             jmp   n162_stmt_mark_α
                        .size            n161_statement_end_bx, .-n161_statement_end_bx
                        .type            n162_stmt_mark_bx, @function
n162_stmt_mark_bx:
#=======================================================================================================================
#         census = census + tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n162_stmt_mark_α:       mov              r11, 163
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 24;             jmp   n163_statement_begin_α
                        .size            n162_stmt_mark_bx, .-n162_stmt_mark_bx
                        .type            n163_statement_begin_bx, @function
n163_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_begin_α: mov              r11, 164;                            jmp   n164_var_α
n163_statement_begin_β: mov              r11, 164;                            jmp   n171_stmt_mark_α
                        .size            n163_statement_begin_bx, .-n163_statement_begin_bx
                        .type            n164_var_bx, @function
n164_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              r11, 165
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_var_α
                        .size            n164_var_bx, .-n164_var_bx
                        .type            n165_var_bx, @function
n165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              r11, 166
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_lit_integer_α
n165_var_β:             mov              r11, 166
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n163_statement_begin_β
                        .size            n165_var_bx, .-n165_var_bx
                        .type            n166_lit_integer_bx, @function
n166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     sub              rsp, 16
                        mov              r11, 167
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_582_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_subscript_α
n166_lit_integer_β:     mov              r11, 167
                        add              rsp, 16;                             jmp   n165_var_β
.Llit_integer_α_582_0:  .quad            5
                        .size            n166_lit_integer_bx, .-n166_lit_integer_bx
                        .type            n167_subscript_bx, @function
n167_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_subscript_α:       sub              rsp, 16
                        mov              r11, 168
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
                        cmp              al, 104;                             jne   .Lsubscript_α_583_240
                        add              rsp, 16;                             jmp   n166_lit_integer_β
.Lsubscript_α_583_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n168_binop_α
n167_subscript_β:       mov              r11, 168
                        add              rsp, 16;                             jmp   n166_lit_integer_β
                        .size            n167_subscript_bx, .-n167_subscript_bx
                        .type            n168_binop_bx, @function
n168_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_binop_α:           sub              rsp, 16
                        mov              r11, 169
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_584_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_584_7
.Lbinop_α_584_2:        and              edx, 1;                              jz    .Lbinop_α_584_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_584_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_584_4
.Lbinop_α_584_3:        movq             xmm0, rsi
.Lbinop_α_584_4:        cmp              cl, 5;                               je    .Lbinop_α_584_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_584_6
.Lbinop_α_584_5:        movq             xmm1, rdi
.Lbinop_α_584_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_584_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_584_7:                                                              jmp   n169_assign_α
.Lbinop_α_584_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_584_240
                        add              rsp, 16;                             jmp   n167_subscript_β
.Lbinop_α_584_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n169_assign_α
n168_binop_β:           mov              r11, 169
                        add              rsp, 16;                             jmp   n167_subscript_β
                        .size            n168_binop_bx, .-n168_binop_bx
                        .type            n169_assign_bx, @function
n169_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n170_statement_end_α
                        .size            n169_assign_bx, .-n169_assign_bx
                        .type            n170_statement_end_bx, @function
n170_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 171
                        add              rsp, 80;                             jmp   n171_stmt_mark_α
                        .size            n170_statement_end_bx, .-n170_statement_end_bx
                        .type            n171_stmt_mark_bx, @function
n171_stmt_mark_bx:
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n171_stmt_mark_α:       mov              r11, 172
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 25;             jmp   n172_statement_begin_α
                        .size            n171_stmt_mark_bx, .-n171_stmt_mark_bx
                        .type            n172_statement_begin_bx, @function
n172_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α: mov              r11, 173;                            jmp   n173_lit_integer_α
n172_statement_begin_β: mov              r11, 173;                            jmp   n177_stmt_mark_α
                        .size            n172_statement_begin_bx, .-n172_statement_begin_bx
                        .type            n173_lit_integer_bx, @function
n173_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_integer_α:     sub              rsp, 16
                        mov              r11, 174
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_592_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_unop_α
.Llit_integer_α_592_0:  .quad            30
                        .size            n173_lit_integer_bx, .-n173_lit_integer_bx
                        .type            n174_unop_bx, @function
n174_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_unop_α:            sub              rsp, 16
                        mov              r11, 175
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:33
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
1:                                                                            jmp   n175_assign_α
n174_unop_β:            mov              r11, 175
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n172_statement_begin_β
                        .size            n174_unop_bx, .-n174_unop_bx
                        .type            n175_assign_bx, @function
n175_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              r11, 176
                        mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n176_statement_end_α
                        .size            n175_assign_bx, .-n175_assign_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   mov              r11, 177
                        add              rsp, 32;                             jmp   n177_stmt_mark_α
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_stmt_mark_bx, @function
n177_stmt_mark_bx:
#=======================================================================================================================
# intread census = census + tab[ix]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n177_stmt_mark_α:       mov              r11, 178
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 26;             jmp   n178_statement_begin_α
                        .size            n177_stmt_mark_bx, .-n177_stmt_mark_bx
                        .type            n178_statement_begin_bx, @function
n178_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α: mov              r11, 179;                            jmp   n179_var_α
n178_statement_begin_β: mov              r11, 179;                            jmp   n186_stmt_mark_α
                        .size            n178_statement_begin_bx, .-n178_statement_begin_bx
                        .type            n179_var_bx, @function
n179_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              r11, 180
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_var_α
                        .size            n179_var_bx, .-n179_var_bx
                        .type            n180_var_bx, @function
n180_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_α:             sub              rsp, 16
                        mov              r11, 181
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n181_var_α
n180_var_β:             mov              r11, 181
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
                        .size            n180_var_bx, .-n180_var_bx
                        .type            n181_var_bx, @function
n181_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_α:             sub              rsp, 16
                        mov              r11, 182
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n182_subscript_α
n181_var_β:             mov              r11, 182
                        add              rsp, 16;                             jmp   n180_var_β
                        .size            n181_var_bx, .-n181_var_bx
                        .type            n182_subscript_bx, @function
n182_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_subscript_α:       sub              rsp, 16
                        mov              r11, 183
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
                        cmp              al, 104;                             jne   .Lsubscript_α_604_240
                        add              rsp, 16;                             jmp   n181_var_β
.Lsubscript_α_604_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n183_binop_α
n182_subscript_β:       mov              r11, 183
                        add              rsp, 16;                             jmp   n181_var_β
                        .size            n182_subscript_bx, .-n182_subscript_bx
                        .type            n183_binop_bx, @function
n183_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_binop_α:           sub              rsp, 16
                        mov              r11, 184
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_605_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_605_7
.Lbinop_α_605_2:        and              edx, 1;                              jz    .Lbinop_α_605_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_605_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_605_4
.Lbinop_α_605_3:        movq             xmm0, rsi
.Lbinop_α_605_4:        cmp              cl, 5;                               je    .Lbinop_α_605_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_605_6
.Lbinop_α_605_5:        movq             xmm1, rdi
.Lbinop_α_605_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_605_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_605_7:                                                              jmp   n184_assign_α
.Lbinop_α_605_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_605_240
                        add              rsp, 16;                             jmp   n182_subscript_β
.Lbinop_α_605_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n184_assign_α
n183_binop_β:           mov              r11, 184
                        add              rsp, 16;                             jmp   n182_subscript_β
                        .size            n183_binop_bx, .-n183_binop_bx
                        .type            n184_assign_bx, @function
n184_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 185
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n185_statement_end_α
                        .size            n184_assign_bx, .-n184_assign_bx
                        .type            n185_statement_end_bx, @function
n185_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:   mov              r11, 186
                        add              rsp, 80;                             jmp   n186_stmt_mark_α
                        .size            n185_statement_end_bx, .-n185_statement_end_bx
                        .type            n186_stmt_mark_bx, @function
n186_stmt_mark_bx:
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(intread)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n186_stmt_mark_α:       mov              r11, 187
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 27;             jmp   n187_statement_begin_α
                        .size            n186_stmt_mark_bx, .-n186_stmt_mark_bx
                        .type            n187_statement_begin_bx, @function
n187_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α: mov              r11, 188;                            jmp   n188_var_α
n187_statement_begin_β: mov              r11, 188;                            jmp   n198_stmt_mark_α
                        .size            n187_statement_begin_bx, .-n187_statement_begin_bx
                        .type            n188_var_bx, @function
n188_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              r11, 189
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_lit_integer_α
                        .size            n188_var_bx, .-n188_var_bx
                        .type            n189_lit_integer_bx, @function
n189_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     sub              rsp, 16
                        mov              r11, 190
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_614_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_coerce_numeric_α
n189_lit_integer_β:     mov              r11, 190
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n187_statement_begin_β
.Llit_integer_α_614_0:  .quad            30
                        .size            n189_lit_integer_bx, .-n189_lit_integer_bx
                        .type            n190_coerce_numeric_bx, @function
n190_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 191
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_616_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_616_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_616_0
.Lcoerce_numeric_α_616_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n191_coerce_numeric_α
.Lcoerce_numeric_α_616_0:
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
1:                                                                            jmp   n191_coerce_numeric_α
n190_coerce_numeric_β:  mov              r11, 191
                        add              rsp, 16;                             jmp   n189_lit_integer_β
                        .size            n190_coerce_numeric_bx, .-n190_coerce_numeric_bx
                        .type            n191_coerce_numeric_bx, @function
n191_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 192
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_618_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_618_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_618_0
.Lcoerce_numeric_α_618_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n192_cmp_test_α
.Lcoerce_numeric_α_618_0:
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
1:                                                                            jmp   n192_cmp_test_α
n191_coerce_numeric_β:  mov              r11, 192
                        add              rsp, 16;                             jmp   n190_coerce_numeric_β
                        .size            n191_coerce_numeric_bx, .-n191_coerce_numeric_bx
                        .type            n192_cmp_test_bx, @function
n192_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_cmp_test_α:        sub              rsp, 16
                        mov              r11, 193
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_620_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_620_239
                        add              rsp, 16;                             jmp   n191_coerce_numeric_β
.Lcmp_test_α_620_239:                                                         jmp   n193_var_α
.Lcmp_test_α_620_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_620_240
                        add              rsp, 16;                             jmp   n191_coerce_numeric_β
.Lcmp_test_α_620_240:                                                         jmp   n193_var_α
n192_cmp_test_β:        mov              r11, 193
                        add              rsp, 16;                             jmp   n191_coerce_numeric_β
                        .size            n192_cmp_test_bx, .-n192_cmp_test_bx
                        .type            n193_var_bx, @function
n193_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_α:             sub              rsp, 16
                        mov              r11, 194
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n194_lit_integer_α
n193_var_β:             mov              r11, 194
                        add              rsp, 16;                             jmp   n192_cmp_test_β
                        .size            n193_var_bx, .-n193_var_bx
                        .type            n194_lit_integer_bx, @function
n194_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     sub              rsp, 16
                        mov              r11, 195
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_622_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n195_binop_α
n194_lit_integer_β:     mov              r11, 195
                        add              rsp, 16;                             jmp   n193_var_β
.Llit_integer_α_622_0:  .quad            1
                        .size            n194_lit_integer_bx, .-n194_lit_integer_bx
                        .type            n195_binop_bx, @function
n195_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_binop_α:           sub              rsp, 16
                        mov              r11, 196
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_623_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_623_7
.Lbinop_α_623_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_623_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_623_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_623_4
.Lbinop_α_623_3:        movq             xmm0, rsi
.Lbinop_α_623_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_623_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_623_7:                                                              jmp   n196_assign_α
.Lbinop_α_623_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_623_240
                        add              rsp, 16;                             jmp   n194_lit_integer_β
.Lbinop_α_623_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n196_assign_α
n195_binop_β:           mov              r11, 196
                        add              rsp, 16;                             jmp   n194_lit_integer_β
                        .size            n195_binop_bx, .-n195_binop_bx
                        .type            n196_assign_bx, @function
n196_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:          mov              r11, 197
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n197_statement_end_α
                        .size            n196_assign_bx, .-n196_assign_bx
                        .type            n197_statement_end_bx, @function
n197_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:   mov              r11, 198
                        add              rsp, 128;                            jmp   n177_stmt_mark_α
                        .size            n197_statement_end_bx, .-n197_statement_end_bx
                        .type            n198_stmt_mark_bx, @function
n198_stmt_mark_bx:
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n198_stmt_mark_α:       mov              r11, 199
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 28;             jmp   n199_statement_begin_α
                        .size            n198_stmt_mark_bx, .-n198_stmt_mark_bx
                        .type            n199_statement_begin_bx, @function
n199_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α: mov              r11, 200;                            jmp   n200_lit_integer_α
n199_statement_begin_β: mov              r11, 200;                            jmp   n203_stmt_mark_α
                        .size            n199_statement_begin_bx, .-n199_statement_begin_bx
                        .type            n200_lit_integer_bx, @function
n200_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     sub              rsp, 16
                        mov              r11, 201
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_631_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n201_assign_α
.Llit_integer_α_631_0:  .quad            1
                        .size            n200_lit_integer_bx, .-n200_lit_integer_bx
                        .type            n201_assign_bx, @function
n201_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_assign_α:          mov              r11, 202
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n202_statement_end_α
                        .size            n201_assign_bx, .-n201_assign_bx
                        .type            n202_statement_end_bx, @function
n202_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_end_α:   mov              r11, 203
                        add              rsp, 16;                             jmp   n203_stmt_mark_α
                        .size            n202_statement_end_bx, .-n202_statement_end_bx
                        .type            n203_stmt_mark_bx, @function
n203_stmt_mark_bx:
#=======================================================================================================================
# strread census = census + tab['k' sx] + tab['a_much_longer_key_' sx]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n203_stmt_mark_α:       mov              r11, 204
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 29;             jmp   n204_statement_begin_α
                        .size            n203_stmt_mark_bx, .-n203_stmt_mark_bx
                        .type            n204_statement_begin_bx, @function
n204_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_begin_α: mov              r11, 205;                            jmp   n205_var_α
n204_statement_begin_β: mov              r11, 205;                            jmp   n220_stmt_mark_α
                        .size            n204_statement_begin_bx, .-n204_statement_begin_bx
                        .type            n205_var_bx, @function
n205_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             sub              rsp, 16
                        mov              r11, 206
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_var_α
                        .size            n205_var_bx, .-n205_var_bx
                        .type            n206_var_bx, @function
n206_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_lit_string_α
n206_var_β:             mov              r11, 207
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n204_statement_begin_β
                        .size            n206_var_bx, .-n206_var_bx
                        .type            n207_lit_string_bx, @function
n207_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      sub              rsp, 16
                        mov              r11, 208
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_641_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_var_α
n207_lit_string_β:      mov              r11, 208
                        add              rsp, 16;                             jmp   n206_var_β
.Llit_string_α_641_0:   .quad            .Llit_string_α_641_0_s
.Llit_string_α_641_0_s: .string          "k"
                        .size            n207_lit_string_bx, .-n207_lit_string_bx
                        .type            n208_var_bx, @function
n208_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_α:             sub              rsp, 16
                        mov              r11, 209
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n209_binop_α
n208_var_β:             mov              r11, 209
                        add              rsp, 16;                             jmp   n207_lit_string_β
                        .size            n208_var_bx, .-n208_var_bx
                        .type            n209_binop_bx, @function
n209_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_binop_α:           sub              rsp, 16
                        mov              r11, 210
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n210_subscript_α
n209_binop_β:           mov              r11, 210
                        add              rsp, 16;                             jmp   n208_var_β
                        .size            n209_binop_bx, .-n209_binop_bx
                        .type            n210_subscript_bx, @function
n210_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_subscript_α:       sub              rsp, 16
                        mov              r11, 211
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
                        cmp              al, 104;                             jne   .Lsubscript_α_644_240
                        add              rsp, 16;                             jmp   n209_binop_β
.Lsubscript_α_644_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n211_binop_α
n210_subscript_β:       mov              r11, 211
                        add              rsp, 16;                             jmp   n209_binop_β
                        .size            n210_subscript_bx, .-n210_subscript_bx
                        .type            n211_binop_bx, @function
n211_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_binop_α:           sub              rsp, 16
                        mov              r11, 212
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_645_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_645_7
.Lbinop_α_645_2:        and              edx, 1;                              jz    .Lbinop_α_645_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_645_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_645_4
.Lbinop_α_645_3:        movq             xmm0, rsi
.Lbinop_α_645_4:        cmp              cl, 5;                               je    .Lbinop_α_645_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_645_6
.Lbinop_α_645_5:        movq             xmm1, rdi
.Lbinop_α_645_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_645_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_645_7:                                                              jmp   n212_var_α
.Lbinop_α_645_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_645_240
                        add              rsp, 16;                             jmp   n210_subscript_β
.Lbinop_α_645_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n212_var_α
n211_binop_β:           mov              r11, 212
                        add              rsp, 16;                             jmp   n210_subscript_β
                        .size            n211_binop_bx, .-n211_binop_bx
                        .type            n212_var_bx, @function
n212_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             sub              rsp, 16
                        mov              r11, 213
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_lit_string_α
n212_var_β:             mov              r11, 213
                        add              rsp, 16;                             jmp   n211_binop_β
                        .size            n212_var_bx, .-n212_var_bx
                        .type            n213_lit_string_bx, @function
n213_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      sub              rsp, 16
                        mov              r11, 214
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_647_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_var_α
n213_lit_string_β:      mov              r11, 214
                        add              rsp, 16;                             jmp   n212_var_β
.Llit_string_α_647_0:   .quad            .Llit_string_α_647_0_s
.Llit_string_α_647_0_s: .string          "a_much_longer_key_"
                        .size            n213_lit_string_bx, .-n213_lit_string_bx
                        .type            n214_var_bx, @function
n214_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              r11, 215
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_binop_α
n214_var_β:             mov              r11, 215
                        add              rsp, 16;                             jmp   n213_lit_string_β
                        .size            n214_var_bx, .-n214_var_bx
                        .type            n215_binop_bx, @function
n215_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:           sub              rsp, 16
                        mov              r11, 216
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n216_subscript_α
n215_binop_β:           mov              r11, 216
                        add              rsp, 16;                             jmp   n214_var_β
                        .size            n215_binop_bx, .-n215_binop_bx
                        .type            n216_subscript_bx, @function
n216_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_subscript_α:       sub              rsp, 16
                        mov              r11, 217
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
                        cmp              al, 104;                             jne   .Lsubscript_α_650_240
                        add              rsp, 16;                             jmp   n215_binop_β
.Lsubscript_α_650_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n217_binop_α
n216_subscript_β:       mov              r11, 217
                        add              rsp, 16;                             jmp   n215_binop_β
                        .size            n216_subscript_bx, .-n216_subscript_bx
                        .type            n217_binop_bx, @function
n217_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_binop_α:           sub              rsp, 16
                        mov              r11, 218
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_651_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_651_7
.Lbinop_α_651_2:        and              edx, 1;                              jz    .Lbinop_α_651_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_651_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_651_4
.Lbinop_α_651_3:        movq             xmm0, rsi
.Lbinop_α_651_4:        cmp              cl, 5;                               je    .Lbinop_α_651_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_651_6
.Lbinop_α_651_5:        movq             xmm1, rdi
.Lbinop_α_651_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_651_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_651_7:                                                              jmp   n218_assign_α
.Lbinop_α_651_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_651_240
                        add              rsp, 16;                             jmp   n216_subscript_β
.Lbinop_α_651_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n218_assign_α
n217_binop_β:           mov              r11, 218
                        add              rsp, 16;                             jmp   n216_subscript_β
                        .size            n217_binop_bx, .-n217_binop_bx
                        .type            n218_assign_bx, @function
n218_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_assign_α:          mov              r11, 219
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n219_statement_end_α
                        .size            n218_assign_bx, .-n218_assign_bx
                        .type            n219_statement_end_bx, @function
n219_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_end_α:   mov              r11, 220
                        add              rsp, 208;                            jmp   n220_stmt_mark_α
                        .size            n219_statement_end_bx, .-n219_statement_end_bx
                        .type            n220_stmt_mark_bx, @function
n220_stmt_mark_bx:
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(strread)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n220_stmt_mark_α:       mov              r11, 221
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 30;             jmp   n221_statement_begin_α
                        .size            n220_stmt_mark_bx, .-n220_stmt_mark_bx
                        .type            n221_statement_begin_bx, @function
n221_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_begin_α: mov              r11, 222;                            jmp   n222_var_α
n221_statement_begin_β: mov              r11, 222;                            jmp   n232_stmt_mark_α
                        .size            n221_statement_begin_bx, .-n221_statement_begin_bx
                        .type            n222_var_bx, @function
n222_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_α:             sub              rsp, 16
                        mov              r11, 223
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n223_lit_integer_α
                        .size            n222_var_bx, .-n222_var_bx
                        .type            n223_lit_integer_bx, @function
n223_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_integer_α:     sub              rsp, 16
                        mov              r11, 224
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_660_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n224_coerce_numeric_α
n223_lit_integer_β:     mov              r11, 224
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n221_statement_begin_β
.Llit_integer_α_660_0:  .quad            20
                        .size            n223_lit_integer_bx, .-n223_lit_integer_bx
                        .type            n224_coerce_numeric_bx, @function
n224_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 225
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_662_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_662_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_662_0
.Lcoerce_numeric_α_662_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_coerce_numeric_α
.Lcoerce_numeric_α_662_0:
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
1:                                                                            jmp   n225_coerce_numeric_α
n224_coerce_numeric_β:  mov              r11, 225
                        add              rsp, 16;                             jmp   n223_lit_integer_β
                        .size            n224_coerce_numeric_bx, .-n224_coerce_numeric_bx
                        .type            n225_coerce_numeric_bx, @function
n225_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 226
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_664_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_664_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_664_0
.Lcoerce_numeric_α_664_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_cmp_test_α
.Lcoerce_numeric_α_664_0:
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
1:                                                                            jmp   n226_cmp_test_α
n225_coerce_numeric_β:  mov              r11, 226
                        add              rsp, 16;                             jmp   n224_coerce_numeric_β
                        .size            n225_coerce_numeric_bx, .-n225_coerce_numeric_bx
                        .type            n226_cmp_test_bx, @function
n226_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_cmp_test_α:        sub              rsp, 16
                        mov              r11, 227
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_666_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_666_239
                        add              rsp, 16;                             jmp   n225_coerce_numeric_β
.Lcmp_test_α_666_239:                                                         jmp   n227_var_α
.Lcmp_test_α_666_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_666_240
                        add              rsp, 16;                             jmp   n225_coerce_numeric_β
.Lcmp_test_α_666_240:                                                         jmp   n227_var_α
n226_cmp_test_β:        mov              r11, 227
                        add              rsp, 16;                             jmp   n225_coerce_numeric_β
                        .size            n226_cmp_test_bx, .-n226_cmp_test_bx
                        .type            n227_var_bx, @function
n227_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             sub              rsp, 16
                        mov              r11, 228
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n228_lit_integer_α
n227_var_β:             mov              r11, 228
                        add              rsp, 16;                             jmp   n226_cmp_test_β
                        .size            n227_var_bx, .-n227_var_bx
                        .type            n228_lit_integer_bx, @function
n228_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     sub              rsp, 16
                        mov              r11, 229
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_668_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_binop_α
n228_lit_integer_β:     mov              r11, 229
                        add              rsp, 16;                             jmp   n227_var_β
.Llit_integer_α_668_0:  .quad            1
                        .size            n228_lit_integer_bx, .-n228_lit_integer_bx
                        .type            n229_binop_bx, @function
n229_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_binop_α:           sub              rsp, 16
                        mov              r11, 230
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_669_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_669_7
.Lbinop_α_669_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_669_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_669_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_669_4
.Lbinop_α_669_3:        movq             xmm0, rsi
.Lbinop_α_669_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_669_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_669_7:                                                              jmp   n230_assign_α
.Lbinop_α_669_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_669_240
                        add              rsp, 16;                             jmp   n228_lit_integer_β
.Lbinop_α_669_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n230_assign_α
n229_binop_β:           mov              r11, 230
                        add              rsp, 16;                             jmp   n228_lit_integer_β
                        .size            n229_binop_bx, .-n229_binop_bx
                        .type            n230_assign_bx, @function
n230_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_assign_α:          mov              r11, 231
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n231_statement_end_α
                        .size            n230_assign_bx, .-n230_assign_bx
                        .type            n231_statement_end_bx, @function
n231_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_end_α:   mov              r11, 232
                        add              rsp, 128;                            jmp   n203_stmt_mark_α
                        .size            n231_statement_end_bx, .-n231_statement_end_bx
                        .type            n232_stmt_mark_bx, @function
n232_stmt_mark_bx:
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n232_stmt_mark_α:       mov              r11, 233
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 31;             jmp   n233_statement_begin_α
                        .size            n232_stmt_mark_bx, .-n232_stmt_mark_bx
                        .type            n233_statement_begin_bx, @function
n233_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_begin_α: mov              r11, 234;                            jmp   n234_lit_integer_α
n233_statement_begin_β: mov              r11, 234;                            jmp   n237_stmt_mark_α
                        .size            n233_statement_begin_bx, .-n233_statement_begin_bx
                        .type            n234_lit_integer_bx, @function
n234_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:     sub              rsp, 16
                        mov              r11, 235
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_677_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n235_assign_α
.Llit_integer_α_677_0:  .quad            1
                        .size            n234_lit_integer_bx, .-n234_lit_integer_bx
                        .type            n235_assign_bx, @function
n235_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:          mov              r11, 236
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n236_statement_end_α
                        .size            n235_assign_bx, .-n235_assign_bx
                        .type            n236_statement_end_bx, @function
n236_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_end_α:   mov              r11, 237
                        add              rsp, 16;                             jmp   n237_stmt_mark_α
                        .size            n236_statement_end_bx, .-n236_statement_end_bx
                        .type            n237_stmt_mark_bx, @function
n237_stmt_mark_bx:
#=======================================================================================================================
# realrd  census = census + tab[rx / 2.0]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n237_stmt_mark_α:       mov              r11, 238
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 32;             jmp   n238_statement_begin_α
                        .size            n237_stmt_mark_bx, .-n237_stmt_mark_bx
                        .type            n238_statement_begin_bx, @function
n238_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α: mov              r11, 239;                            jmp   n239_var_α
n238_statement_begin_β: mov              r11, 239;                            jmp   n248_stmt_mark_α
                        .size            n238_statement_begin_bx, .-n238_statement_begin_bx
                        .type            n239_var_bx, @function
n239_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             sub              rsp, 16
                        mov              r11, 240
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n240_var_α
                        .size            n239_var_bx, .-n239_var_bx
                        .type            n240_var_bx, @function
n240_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              r11, 241
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_var_α
n240_var_β:             mov              r11, 241
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n238_statement_begin_β
                        .size            n240_var_bx, .-n240_var_bx
                        .type            n241_var_bx, @function
n241_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              r11, 242
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_lit_real_α
n241_var_β:             mov              r11, 242
                        add              rsp, 16;                             jmp   n240_var_β
                        .size            n241_var_bx, .-n241_var_bx
                        .type            n242_lit_real_bx, @function
n242_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_real_α:        sub              rsp, 16
                        mov              r11, 243
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_688_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n243_binop_α
.Llit_real_α_688_0:     .quad            4611686018427387904
                        .size            n242_lit_real_bx, .-n242_lit_real_bx
                        .type            n243_binop_bx, @function
n243_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_binop_α:           sub              rsp, 16
                        mov              r11, 244
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_real
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_div@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_689_240
                        add              rsp, 32;                             jmp   n241_var_β
.Lbinop_α_689_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:320
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
1:                                                                            jmp   n244_subscript_α
n243_binop_β:           mov              r11, 244
                        add              rsp, 32;                             jmp   n241_var_β
                        .size            n243_binop_bx, .-n243_binop_bx
                        .type            n244_subscript_bx, @function
n244_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_subscript_α:       sub              rsp, 16
                        mov              r11, 245
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
                        cmp              al, 104;                             jne   .Lsubscript_α_690_240
                        add              rsp, 16;                             jmp   n243_binop_β
.Lsubscript_α_690_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n245_binop_α
n244_subscript_β:       mov              r11, 245
                        add              rsp, 16;                             jmp   n243_binop_β
                        .size            n244_subscript_bx, .-n244_subscript_bx
                        .type            n245_binop_bx, @function
n245_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_binop_α:           sub              rsp, 16
                        mov              r11, 246
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_691_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_691_7
.Lbinop_α_691_2:        and              edx, 1;                              jz    .Lbinop_α_691_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_691_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_691_4
.Lbinop_α_691_3:        movq             xmm0, rsi
.Lbinop_α_691_4:        cmp              cl, 5;                               je    .Lbinop_α_691_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_691_6
.Lbinop_α_691_5:        movq             xmm1, rdi
.Lbinop_α_691_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_691_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_691_7:                                                              jmp   n246_assign_α
.Lbinop_α_691_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_691_240
                        add              rsp, 16;                             jmp   n244_subscript_β
.Lbinop_α_691_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n246_assign_α
n245_binop_β:           mov              r11, 246
                        add              rsp, 16;                             jmp   n244_subscript_β
                        .size            n245_binop_bx, .-n245_binop_bx
                        .type            n246_assign_bx, @function
n246_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_assign_α:          mov              r11, 247
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n247_statement_end_α
                        .size            n246_assign_bx, .-n246_assign_bx
                        .type            n247_statement_end_bx, @function
n247_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:   mov              r11, 248
                        add              rsp, 112;                            jmp   n248_stmt_mark_α
                        .size            n247_statement_end_bx, .-n247_statement_end_bx
                        .type            n248_stmt_mark_bx, @function
n248_stmt_mark_bx:
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(realrd)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n248_stmt_mark_α:       mov              r11, 249
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 33;             jmp   n249_statement_begin_α
                        .size            n248_stmt_mark_bx, .-n248_stmt_mark_bx
                        .type            n249_statement_begin_bx, @function
n249_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α: mov              r11, 250;                            jmp   n250_var_α
n249_statement_begin_β: mov              r11, 250;                            jmp   n260_stmt_mark_α
                        .size            n249_statement_begin_bx, .-n249_statement_begin_bx
                        .type            n250_var_bx, @function
n250_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_lit_integer_α
                        .size            n250_var_bx, .-n250_var_bx
                        .type            n251_lit_integer_bx, @function
n251_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_integer_α:     sub              rsp, 16
                        mov              r11, 252
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_700_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n252_coerce_numeric_α
n251_lit_integer_β:     mov              r11, 252
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n249_statement_begin_β
.Llit_integer_α_700_0:  .quad            12
                        .size            n251_lit_integer_bx, .-n251_lit_integer_bx
                        .type            n252_coerce_numeric_bx, @function
n252_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 253
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_702_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_702_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_702_0
.Lcoerce_numeric_α_702_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n253_coerce_numeric_α
.Lcoerce_numeric_α_702_0:
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
1:                                                                            jmp   n253_coerce_numeric_α
n252_coerce_numeric_β:  mov              r11, 253
                        add              rsp, 16;                             jmp   n251_lit_integer_β
                        .size            n252_coerce_numeric_bx, .-n252_coerce_numeric_bx
                        .type            n253_coerce_numeric_bx, @function
n253_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 254
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_704_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_704_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_704_0
.Lcoerce_numeric_α_704_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n254_cmp_test_α
.Lcoerce_numeric_α_704_0:
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
1:                                                                            jmp   n254_cmp_test_α
n253_coerce_numeric_β:  mov              r11, 254
                        add              rsp, 16;                             jmp   n252_coerce_numeric_β
                        .size            n253_coerce_numeric_bx, .-n253_coerce_numeric_bx
                        .type            n254_cmp_test_bx, @function
n254_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_cmp_test_α:        sub              rsp, 16
                        mov              r11, 255
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_706_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_706_239
                        add              rsp, 16;                             jmp   n253_coerce_numeric_β
.Lcmp_test_α_706_239:                                                         jmp   n255_var_α
.Lcmp_test_α_706_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_706_240
                        add              rsp, 16;                             jmp   n253_coerce_numeric_β
.Lcmp_test_α_706_240:                                                         jmp   n255_var_α
n254_cmp_test_β:        mov              r11, 255
                        add              rsp, 16;                             jmp   n253_coerce_numeric_β
                        .size            n254_cmp_test_bx, .-n254_cmp_test_bx
                        .type            n255_var_bx, @function
n255_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             sub              rsp, 16
                        mov              r11, 256
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_lit_integer_α
n255_var_β:             mov              r11, 256
                        add              rsp, 16;                             jmp   n254_cmp_test_β
                        .size            n255_var_bx, .-n255_var_bx
                        .type            n256_lit_integer_bx, @function
n256_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_lit_integer_α:     sub              rsp, 16
                        mov              r11, 257
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_708_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n257_binop_α
n256_lit_integer_β:     mov              r11, 257
                        add              rsp, 16;                             jmp   n255_var_β
.Llit_integer_α_708_0:  .quad            1
                        .size            n256_lit_integer_bx, .-n256_lit_integer_bx
                        .type            n257_binop_bx, @function
n257_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_binop_α:           sub              rsp, 16
                        mov              r11, 258
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_709_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_709_7
.Lbinop_α_709_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_709_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_709_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_709_4
.Lbinop_α_709_3:        movq             xmm0, rsi
.Lbinop_α_709_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_709_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_709_7:                                                              jmp   n258_assign_α
.Lbinop_α_709_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_709_240
                        add              rsp, 16;                             jmp   n256_lit_integer_β
.Lbinop_α_709_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n258_assign_α
n257_binop_β:           mov              r11, 258
                        add              rsp, 16;                             jmp   n256_lit_integer_β
                        .size            n257_binop_bx, .-n257_binop_bx
                        .type            n258_assign_bx, @function
n258_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_assign_α:          mov              r11, 259
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n259_statement_end_α
                        .size            n258_assign_bx, .-n258_assign_bx
                        .type            n259_statement_end_bx, @function
n259_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_end_α:   mov              r11, 260
                        add              rsp, 128;                            jmp   n237_stmt_mark_α
                        .size            n259_statement_end_bx, .-n259_statement_end_bx
                        .type            n260_stmt_mark_bx, @function
n260_stmt_mark_bx:
#=======================================================================================================================
#         census = census + tab['']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n260_stmt_mark_α:       mov              r11, 261
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 34;             jmp   n261_statement_begin_α
                        .size            n260_stmt_mark_bx, .-n260_stmt_mark_bx
                        .type            n261_statement_begin_bx, @function
n261_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_begin_α: mov              r11, 262;                            jmp   n262_var_α
n261_statement_begin_β: mov              r11, 262;                            jmp   n269_stmt_mark_α
                        .size            n261_statement_begin_bx, .-n261_statement_begin_bx
                        .type            n262_var_bx, @function
n262_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_var_α:             sub              rsp, 16
                        mov              r11, 263
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n263_var_α
                        .size            n262_var_bx, .-n262_var_bx
                        .type            n263_var_bx, @function
n263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             sub              rsp, 16
                        mov              r11, 264
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n264_lit_string_α
n263_var_β:             mov              r11, 264
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n261_statement_begin_β
                        .size            n263_var_bx, .-n263_var_bx
                        .type            n264_lit_string_bx, @function
n264_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      sub              rsp, 16
                        mov              r11, 265
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_719_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_subscript_α
n264_lit_string_β:      mov              r11, 265
                        add              rsp, 16;                             jmp   n263_var_β
.Llit_string_α_719_0:   .quad            .Llit_string_α_719_0_s
.Llit_string_α_719_0_s: .string          ""
                        .size            n264_lit_string_bx, .-n264_lit_string_bx
                        .type            n265_subscript_bx, @function
n265_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_subscript_α:       sub              rsp, 16
                        mov              r11, 266
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
                        cmp              al, 104;                             jne   .Lsubscript_α_720_240
                        add              rsp, 16;                             jmp   n264_lit_string_β
.Lsubscript_α_720_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n266_binop_α
n265_subscript_β:       mov              r11, 266
                        add              rsp, 16;                             jmp   n264_lit_string_β
                        .size            n265_subscript_bx, .-n265_subscript_bx
                        .type            n266_binop_bx, @function
n266_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_binop_α:           sub              rsp, 16
                        mov              r11, 267
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_721_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_721_7
.Lbinop_α_721_2:        and              edx, 1;                              jz    .Lbinop_α_721_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_721_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_721_4
.Lbinop_α_721_3:        movq             xmm0, rsi
.Lbinop_α_721_4:        cmp              cl, 5;                               je    .Lbinop_α_721_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_721_6
.Lbinop_α_721_5:        movq             xmm1, rdi
.Lbinop_α_721_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_721_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_721_7:                                                              jmp   n267_assign_α
.Lbinop_α_721_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_721_240
                        add              rsp, 16;                             jmp   n265_subscript_β
.Lbinop_α_721_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n267_assign_α
n266_binop_β:           mov              r11, 267
                        add              rsp, 16;                             jmp   n265_subscript_β
                        .size            n266_binop_bx, .-n266_binop_bx
                        .type            n267_assign_bx, @function
n267_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:          mov              r11, 268
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n268_statement_end_α
                        .size            n267_assign_bx, .-n267_assign_bx
                        .type            n268_statement_end_bx, @function
n268_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:   mov              r11, 269
                        add              rsp, 80;                             jmp   n269_stmt_mark_α
                        .size            n268_statement_end_bx, .-n268_statement_end_bx
                        .type            n269_stmt_mark_bx, @function
n269_stmt_mark_bx:
#=======================================================================================================================
#         census = census + SIZE(tab[9999]) + SIZE(tab['absent']) + SIZE(tab[-9999])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n269_stmt_mark_α:       mov              r11, 270
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 35;             jmp   n270_statement_begin_α
                        .size            n269_stmt_mark_bx, .-n269_stmt_mark_bx
                        .type            n270_statement_begin_bx, @function
n270_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_begin_α: mov              r11, 271;                            jmp   n271_var_α
n270_statement_begin_β: mov              r11, 271;                            jmp   n290_stmt_mark_α
                        .size            n270_statement_begin_bx, .-n270_statement_begin_bx
                        .type            n271_var_bx, @function
n271_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_α:             sub              rsp, 16
                        mov              r11, 272
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n272_var_α
                        .size            n271_var_bx, .-n271_var_bx
                        .type            n272_var_bx, @function
n272_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             sub              rsp, 16
                        mov              r11, 273
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n273_lit_integer_α
n272_var_β:             mov              r11, 273
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n270_statement_begin_β
                        .size            n272_var_bx, .-n272_var_bx
                        .type            n273_lit_integer_bx, @function
n273_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:     sub              rsp, 16
                        mov              r11, 274
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_731_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_subscript_α
n273_lit_integer_β:     mov              r11, 274
                        add              rsp, 16;                             jmp   n272_var_β
.Llit_integer_α_731_0:  .quad            9999
                        .size            n273_lit_integer_bx, .-n273_lit_integer_bx
                        .type            n274_subscript_bx, @function
n274_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_subscript_α:       sub              rsp, 16
                        mov              r11, 275
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
                        cmp              al, 104;                             jne   .Lsubscript_α_732_240
                        add              rsp, 16;                             jmp   n273_lit_integer_β
.Lsubscript_α_732_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n275_call_α
n274_subscript_β:       mov              r11, 275
                        add              rsp, 16;                             jmp   n273_lit_integer_β
                        .size            n274_subscript_bx, .-n274_subscript_bx
                        .type            n275_call_bx, @function
n275_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_call_α:            sub              rsp, 16
                        mov              r11, 276
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd734:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd734]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_733_240
                        add              rsp, 16;                             jmp   n274_subscript_β
.Lcall_α_733_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:179
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
1:                                                                            jmp   n276_binop_α
n275_call_β:            mov              r11, 276
                        add              rsp, 16;                             jmp   n274_subscript_β
                        .size            n275_call_bx, .-n275_call_bx
                        .type            n276_binop_bx, @function
n276_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_binop_α:           sub              rsp, 16
                        mov              r11, 277
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_735_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_735_7
.Lbinop_α_735_2:        and              edx, 1;                              jz    .Lbinop_α_735_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_735_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_735_4
.Lbinop_α_735_3:        movq             xmm0, rsi
.Lbinop_α_735_4:        cmp              cl, 5;                               je    .Lbinop_α_735_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_735_6
.Lbinop_α_735_5:        movq             xmm1, rdi
.Lbinop_α_735_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_735_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_735_7:                                                              jmp   n277_var_α
.Lbinop_α_735_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_735_240
                        add              rsp, 32;                             jmp   n274_subscript_β
.Lbinop_α_735_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n277_var_α
n276_binop_β:           mov              r11, 277
                        add              rsp, 32;                             jmp   n274_subscript_β
                        .size            n276_binop_bx, .-n276_binop_bx
                        .type            n277_var_bx, @function
n277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             sub              rsp, 16
                        mov              r11, 278
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_lit_string_α
n277_var_β:             mov              r11, 278
                        add              rsp, 16;                             jmp   n276_binop_β
                        .size            n277_var_bx, .-n277_var_bx
                        .type            n278_lit_string_bx, @function
n278_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      sub              rsp, 16
                        mov              r11, 279
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_737_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_subscript_α
n278_lit_string_β:      mov              r11, 279
                        add              rsp, 16;                             jmp   n277_var_β
.Llit_string_α_737_0:   .quad            .Llit_string_α_737_0_s
.Llit_string_α_737_0_s: .string          "absent"
                        .size            n278_lit_string_bx, .-n278_lit_string_bx
                        .type            n279_subscript_bx, @function
n279_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_subscript_α:       sub              rsp, 16
                        mov              r11, 280
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
                        cmp              al, 104;                             jne   .Lsubscript_α_738_240
                        add              rsp, 16;                             jmp   n278_lit_string_β
.Lsubscript_α_738_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n280_call_α
n279_subscript_β:       mov              r11, 280
                        add              rsp, 16;                             jmp   n278_lit_string_β
                        .size            n279_subscript_bx, .-n279_subscript_bx
                        .type            n280_call_bx, @function
n280_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_call_α:            sub              rsp, 16
                        mov              r11, 281
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd740:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd740]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_739_240
                        add              rsp, 16;                             jmp   n279_subscript_β
.Lcall_α_739_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:179
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
1:                                                                            jmp   n281_binop_α
n280_call_β:            mov              r11, 281
                        add              rsp, 16;                             jmp   n279_subscript_β
                        .size            n280_call_bx, .-n280_call_bx
                        .type            n281_binop_bx, @function
n281_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_binop_α:           sub              rsp, 16
                        mov              r11, 282
                        mov              eax, dword ptr [rsp + 80]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_741_2
                        mov              rax, qword ptr [rsp + 88]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_741_7
.Lbinop_α_741_2:        and              edx, 1;                              jz    .Lbinop_α_741_0
                        mov              rsi, qword ptr [rsp + 88]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_741_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_741_4
.Lbinop_α_741_3:        movq             xmm0, rsi
.Lbinop_α_741_4:        cmp              cl, 5;                               je    .Lbinop_α_741_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_741_6
.Lbinop_α_741_5:        movq             xmm1, rdi
.Lbinop_α_741_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_741_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_741_7:                                                              jmp   n282_var_α
.Lbinop_α_741_0:        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_741_240
                        add              rsp, 32;                             jmp   n279_subscript_β
.Lbinop_α_741_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n282_var_α
n281_binop_β:           mov              r11, 282
                        add              rsp, 32;                             jmp   n279_subscript_β
                        .size            n281_binop_bx, .-n281_binop_bx
                        .type            n282_var_bx, @function
n282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             sub              rsp, 16
                        mov              r11, 283
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n283_lit_integer_α
n282_var_β:             mov              r11, 283
                        add              rsp, 16;                             jmp   n281_binop_β
                        .size            n282_var_bx, .-n282_var_bx
                        .type            n283_lit_integer_bx, @function
n283_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:     sub              rsp, 16
                        mov              r11, 284
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_743_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_unop_α
n283_lit_integer_β:     mov              r11, 284
                        add              rsp, 16;                             jmp   n282_var_β
.Llit_integer_α_743_0:  .quad            9999
                        .size            n283_lit_integer_bx, .-n283_lit_integer_bx
                        .type            n284_unop_bx, @function
n284_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_unop_α:            sub              rsp, 16
                        mov              r11, 285
                        mov              rdi, qword ptr [rsp + 16]            # lit_integer
                        mov              rsi, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_num_neg@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_unop.cpp:33
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
1:                                                                            jmp   n285_subscript_α
n284_unop_β:            mov              r11, 285
                        add              rsp, 16;                             jmp   n283_lit_integer_β
                        .size            n284_unop_bx, .-n284_unop_bx
                        .type            n285_subscript_bx, @function
n285_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_subscript_α:       sub              rsp, 16
                        mov              r11, 286
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
                        cmp              al, 104;                             jne   .Lsubscript_α_745_240
                        add              rsp, 16;                             jmp   n284_unop_β
.Lsubscript_α_745_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n286_call_α
n285_subscript_β:       mov              r11, 286
                        add              rsp, 16;                             jmp   n284_unop_β
                        .size            n285_subscript_bx, .-n285_subscript_bx
                        .type            n286_call_bx, @function
n286_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            sub              rsp, 16
                        mov              r11, 287
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd747:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd747]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
                        add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_746_240
                        add              rsp, 16;                             jmp   n285_subscript_β
.Lcall_α_746_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_call_fn.cpp:179
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
1:                                                                            jmp   n287_binop_α
n286_call_β:            mov              r11, 287
                        add              rsp, 16;                             jmp   n285_subscript_β
                        .size            n286_call_bx, .-n286_call_bx
                        .type            n287_binop_bx, @function
n287_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_binop_α:           sub              rsp, 16
                        mov              r11, 288
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_748_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_748_7
.Lbinop_α_748_2:        and              edx, 1;                              jz    .Lbinop_α_748_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_748_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_748_4
.Lbinop_α_748_3:        movq             xmm0, rsi
.Lbinop_α_748_4:        cmp              cl, 5;                               je    .Lbinop_α_748_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_748_6
.Lbinop_α_748_5:        movq             xmm1, rdi
.Lbinop_α_748_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_748_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_748_7:                                                              jmp   n288_assign_α
.Lbinop_α_748_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_748_240
                        add              rsp, 32;                             jmp   n285_subscript_β
.Lbinop_α_748_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n288_assign_α
n287_binop_β:           mov              r11, 288
                        add              rsp, 32;                             jmp   n285_subscript_β
                        .size            n287_binop_bx, .-n287_binop_bx
                        .type            n288_assign_bx, @function
n288_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:          mov              r11, 289
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n289_statement_end_α
                        .size            n288_assign_bx, .-n288_assign_bx
                        .type            n289_statement_end_bx, @function
n289_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_end_α:   mov              r11, 290
                        add              rsp, 272;                            jmp   n290_stmt_mark_α
                        .size            n289_statement_end_bx, .-n289_statement_end_bx
                        .type            n290_stmt_mark_bx, @function
n290_stmt_mark_bx:
#=======================================================================================================================
#         pass = LT(pass, 40) pass + 1                    :S(round)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n290_stmt_mark_α:       mov              r11, 291
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 36;             jmp   n291_statement_begin_α
                        .size            n290_stmt_mark_bx, .-n290_stmt_mark_bx
                        .type            n291_statement_begin_bx, @function
n291_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_begin_α: mov              r11, 292;                            jmp   n292_var_α
n291_statement_begin_β: mov              r11, 292;                            jmp   n302_stmt_mark_α
                        .size            n291_statement_begin_bx, .-n291_statement_begin_bx
                        .type            n292_var_bx, @function
n292_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             sub              rsp, 16
                        mov              r11, 293
                        mov              rax, qword ptr [r9 + 16]             # pass
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_lit_integer_α
                        .size            n292_var_bx, .-n292_var_bx
                        .type            n293_lit_integer_bx, @function
n293_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:     sub              rsp, 16
                        mov              r11, 294
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_757_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n294_coerce_numeric_α
n293_lit_integer_β:     mov              r11, 294
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n291_statement_begin_β
.Llit_integer_α_757_0:  .quad            40
                        .size            n293_lit_integer_bx, .-n293_lit_integer_bx
                        .type            n294_coerce_numeric_bx, @function
n294_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 295
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_759_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_759_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_759_0
.Lcoerce_numeric_α_759_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n295_coerce_numeric_α
.Lcoerce_numeric_α_759_0:
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
1:                                                                            jmp   n295_coerce_numeric_α
n294_coerce_numeric_β:  mov              r11, 295
                        add              rsp, 16;                             jmp   n293_lit_integer_β
                        .size            n294_coerce_numeric_bx, .-n294_coerce_numeric_bx
                        .type            n295_coerce_numeric_bx, @function
n295_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 296
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_761_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
.Lcoerce_numeric_α_761_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n296_cmp_test_α
.Lcoerce_numeric_α_761_0:
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
1:                                                                            jmp   n296_cmp_test_α
n295_coerce_numeric_β:  mov              r11, 296
                        add              rsp, 16;                             jmp   n294_coerce_numeric_β
                        .size            n295_coerce_numeric_bx, .-n295_coerce_numeric_bx
                        .type            n296_cmp_test_bx, @function
n296_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_cmp_test_α:        sub              rsp, 16
                        mov              r11, 297
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_763_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_763_239
                        add              rsp, 16;                             jmp   n295_coerce_numeric_β
.Lcmp_test_α_763_239:                                                         jmp   n297_var_α
.Lcmp_test_α_763_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_763_240
                        add              rsp, 16;                             jmp   n295_coerce_numeric_β
.Lcmp_test_α_763_240:                                                         jmp   n297_var_α
n296_cmp_test_β:        mov              r11, 297
                        add              rsp, 16;                             jmp   n295_coerce_numeric_β
                        .size            n296_cmp_test_bx, .-n296_cmp_test_bx
                        .type            n297_var_bx, @function
n297_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_var_α:             sub              rsp, 16
                        mov              r11, 298
                        mov              rax, qword ptr [r9 + 16]             # pass
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n298_lit_integer_α
n297_var_β:             mov              r11, 298
                        add              rsp, 16;                             jmp   n296_cmp_test_β
                        .size            n297_var_bx, .-n297_var_bx
                        .type            n298_lit_integer_bx, @function
n298_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_integer_α:     sub              rsp, 16
                        mov              r11, 299
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_765_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n299_binop_α
n298_lit_integer_β:     mov              r11, 299
                        add              rsp, 16;                             jmp   n297_var_β
.Llit_integer_α_765_0:  .quad            1
                        .size            n298_lit_integer_bx, .-n298_lit_integer_bx
                        .type            n299_binop_bx, @function
n299_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_binop_α:           sub              rsp, 16
                        mov              r11, 300
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_766_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_766_7
.Lbinop_α_766_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_766_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_766_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_766_4
.Lbinop_α_766_3:        movq             xmm0, rsi
.Lbinop_α_766_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_766_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_766_7:                                                              jmp   n300_assign_α
.Lbinop_α_766_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_766_240
                        add              rsp, 16;                             jmp   n298_lit_integer_β
.Lbinop_α_766_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:242
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
1:                                                                            jmp   n300_assign_α
n299_binop_β:           mov              r11, 300
                        add              rsp, 16;                             jmp   n298_lit_integer_β
                        .size            n299_binop_bx, .-n299_binop_bx
                        .type            n300_assign_bx, @function
n300_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_assign_α:          mov              r11, 301
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pass
                        mov              qword ptr [r9 + 24], rdx;            jmp   n301_statement_end_α
                        .size            n300_assign_bx, .-n300_assign_bx
                        .type            n301_statement_end_bx, @function
n301_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_statement_end_α:   mov              r11, 302
                        add              rsp, 128;                            jmp   n14_stmt_mark_α
                        .size            n301_statement_end_bx, .-n301_statement_end_bx
                        .type            n302_stmt_mark_bx, @function
n302_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'census of 40 passes = ' census
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n302_stmt_mark_α:       mov              r11, 303
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37;             jmp   n303_statement_begin_α
                        .size            n302_stmt_mark_bx, .-n302_stmt_mark_bx
                        .type            n303_statement_begin_bx, @function
n303_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_statement_begin_α: mov              r11, 304;                            jmp   n304_lit_string_α
n303_statement_begin_β: mov              r11, 304;                            jmp   n309_stmt_mark_α
                        .size            n303_statement_begin_bx, .-n303_statement_begin_bx
                        .type            n304_lit_string_bx, @function
n304_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:      sub              rsp, 16
                        mov              r11, 305
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_774_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n305_var_α
.Llit_string_α_774_0:   .quad            .Llit_string_α_774_0_s
.Llit_string_α_774_0_s: .string          "census of 40 passes = "
                        .size            n304_lit_string_bx, .-n304_lit_string_bx
                        .type            n305_var_bx, @function
n305_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             sub              rsp, 16
                        mov              r11, 306
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n306_binop_α
n305_var_β:             mov              r11, 306
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n303_statement_begin_β
                        .size            n305_var_bx, .-n305_var_bx
                        .type            n306_binop_bx, @function
n306_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_binop_α:           sub              rsp, 16
                        mov              r11, 307
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n307_assign_α
n306_binop_β:           mov              r11, 307
                        add              rsp, 16;                             jmp   n305_var_β
                        .size            n306_binop_bx, .-n306_binop_bx
                        .type            n307_assign_bx, @function
n307_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_assign_α:          mov              r11, 308
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_777_0]
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
1:                                                                            jmp   n308_statement_end_α
.Lassign_α_777_0:       .quad            .Lassign_α_777_0_s
.Lassign_α_777_0_s:     .string          "OUTPUT"
                        .size            n307_assign_bx, .-n307_assign_bx
                        .type            n308_statement_end_bx, @function
n308_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_statement_end_α:   mov              r11, 309
                        add              rsp, 48;                             jmp   n309_stmt_mark_α
                        .size            n308_statement_end_bx, .-n308_statement_end_bx
                        .type            n309_stmt_mark_bx, @function
n309_stmt_mark_bx:
#=======================================================================================================================
#         OUTPUT = 'tab[17] = ' tab[17] '   tab["17"] = ' tab['17'] '   tab[5] = ' tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n309_stmt_mark_α:       mov              r11, 310
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 38;             jmp   n310_statement_begin_α
                        .size            n309_stmt_mark_bx, .-n309_stmt_mark_bx
                        .type            n310_statement_begin_bx, @function
n310_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_statement_begin_α: mov              r11, 311;                            jmp   n311_lit_string_α
n310_statement_begin_β: mov              r11, 311;                            jmp   main_γ
                        .size            n310_statement_begin_bx, .-n310_statement_begin_bx
                        .type            n311_lit_string_bx, @function
n311_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:      sub              rsp, 16
                        mov              r11, 312
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_784_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n312_var_α
.Llit_string_α_784_0:   .quad            .Llit_string_α_784_0_s
.Llit_string_α_784_0_s: .string          "tab[17] = "
                        .size            n311_lit_string_bx, .-n311_lit_string_bx
                        .type            n312_var_bx, @function
n312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             sub              rsp, 16
                        mov              r11, 313
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n313_lit_integer_α
n312_var_β:             mov              r11, 313
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n310_statement_begin_β
                        .size            n312_var_bx, .-n312_var_bx
                        .type            n313_lit_integer_bx, @function
n313_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:     sub              rsp, 16
                        mov              r11, 314
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_786_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n314_subscript_α
n313_lit_integer_β:     mov              r11, 314
                        add              rsp, 16;                             jmp   n312_var_β
.Llit_integer_α_786_0:  .quad            17
                        .size            n313_lit_integer_bx, .-n313_lit_integer_bx
                        .type            n314_subscript_bx, @function
n314_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_subscript_α:       sub              rsp, 16
                        mov              r11, 315
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
                        cmp              al, 104;                             jne   .Lsubscript_α_787_240
                        add              rsp, 16;                             jmp   n313_lit_integer_β
.Lsubscript_α_787_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n315_binop_α
n314_subscript_β:       mov              r11, 315
                        add              rsp, 16;                             jmp   n313_lit_integer_β
                        .size            n314_subscript_bx, .-n314_subscript_bx
                        .type            n315_binop_bx, @function
n315_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_binop_α:           sub              rsp, 16
                        mov              r11, 316
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n316_lit_string_α
n315_binop_β:           mov              r11, 316
                        add              rsp, 16;                             jmp   n314_subscript_β
                        .size            n315_binop_bx, .-n315_binop_bx
                        .type            n316_lit_string_bx, @function
n316_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      sub              rsp, 16
                        mov              r11, 317
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_789_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n317_binop_α
n316_lit_string_β:      mov              r11, 317
                        add              rsp, 16;                             jmp   n315_binop_β
.Llit_string_α_789_0:   .quad            .Llit_string_α_789_0_s
.Llit_string_α_789_0_s: .string          "   tab[\"17\"] = "
                        .size            n316_lit_string_bx, .-n316_lit_string_bx
                        .type            n317_binop_bx, @function
n317_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_binop_α:           sub              rsp, 16
                        mov              r11, 318
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n318_var_α
n317_binop_β:           mov              r11, 318
                        add              rsp, 16;                             jmp   n316_lit_string_β
                        .size            n317_binop_bx, .-n317_binop_bx
                        .type            n318_var_bx, @function
n318_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             sub              rsp, 16
                        mov              r11, 319
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_lit_string_α
n318_var_β:             mov              r11, 319
                        add              rsp, 16;                             jmp   n317_binop_β
                        .size            n318_var_bx, .-n318_var_bx
                        .type            n319_lit_string_bx, @function
n319_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:      sub              rsp, 16
                        mov              r11, 320
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_792_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n320_subscript_α
n319_lit_string_β:      mov              r11, 320
                        add              rsp, 16;                             jmp   n318_var_β
.Llit_string_α_792_0:   .quad            .Llit_string_α_792_0_s
.Llit_string_α_792_0_s: .string          "17"
                        .size            n319_lit_string_bx, .-n319_lit_string_bx
                        .type            n320_subscript_bx, @function
n320_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_subscript_α:       sub              rsp, 16
                        mov              r11, 321
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
                        cmp              al, 104;                             jne   .Lsubscript_α_793_240
                        add              rsp, 16;                             jmp   n319_lit_string_β
.Lsubscript_α_793_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n321_binop_α
n320_subscript_β:       mov              r11, 321
                        add              rsp, 16;                             jmp   n319_lit_string_β
                        .size            n320_subscript_bx, .-n320_subscript_bx
                        .type            n321_binop_bx, @function
n321_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:           sub              rsp, 16
                        mov              r11, 322
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n322_lit_string_α
n321_binop_β:           mov              r11, 322
                        add              rsp, 16;                             jmp   n320_subscript_β
                        .size            n321_binop_bx, .-n321_binop_bx
                        .type            n322_lit_string_bx, @function
n322_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      sub              rsp, 16
                        mov              r11, 323
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_795_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_binop_α
n322_lit_string_β:      mov              r11, 323
                        add              rsp, 16;                             jmp   n321_binop_β
.Llit_string_α_795_0:   .quad            .Llit_string_α_795_0_s
.Llit_string_α_795_0_s: .string          "   tab[5] = "
                        .size            n322_lit_string_bx, .-n322_lit_string_bx
                        .type            n323_binop_bx, @function
n323_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_binop_α:           sub              rsp, 16
                        mov              r11, 324
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n324_var_α
n323_binop_β:           mov              r11, 324
                        add              rsp, 16;                             jmp   n322_lit_string_β
                        .size            n323_binop_bx, .-n323_binop_bx
                        .type            n324_var_bx, @function
n324_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             sub              rsp, 16
                        mov              r11, 325
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_lit_integer_α
n324_var_β:             mov              r11, 325
                        add              rsp, 16;                             jmp   n323_binop_β
                        .size            n324_var_bx, .-n324_var_bx
                        .type            n325_lit_integer_bx, @function
n325_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_integer_α:     sub              rsp, 16
                        mov              r11, 326
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_798_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n326_subscript_α
n325_lit_integer_β:     mov              r11, 326
                        add              rsp, 16;                             jmp   n324_var_β
.Llit_integer_α_798_0:  .quad            5
                        .size            n325_lit_integer_bx, .-n325_lit_integer_bx
                        .type            n326_subscript_bx, @function
n326_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_subscript_α:       sub              rsp, 16
                        mov              r11, 327
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
                        cmp              al, 104;                             jne   .Lsubscript_α_799_240
                        add              rsp, 16;                             jmp   n325_lit_integer_β
.Lsubscript_α_799_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:44
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
1:                                                                            jmp   n327_binop_α
n326_subscript_β:       mov              r11, 327
                        add              rsp, 16;                             jmp   n325_lit_integer_β
                        .size            n326_subscript_bx, .-n326_subscript_bx
                        .type            n327_binop_bx, @function
n327_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_binop_α:           sub              rsp, 16
                        mov              r11, 328
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:68
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
1:                                                                            jmp   n328_assign_α
n327_binop_β:           mov              r11, 328
                        add              rsp, 16;                             jmp   n326_subscript_β
                        .size            n327_binop_bx, .-n327_binop_bx
                        .type            n328_assign_bx, @function
n328_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_assign_α:          mov              r11, 329
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_801_0]
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
1:                                                                            jmp   n329_statement_end_α
.Lassign_α_801_0:       .quad            .Lassign_α_801_0_s
.Lassign_α_801_0_s:     .string          "OUTPUT"
                        .size            n328_assign_bx, .-n328_assign_bx
                        .type            n329_statement_end_bx, @function
n329_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_statement_end_α:   mov              r11, 330
                        add              rsp, 272;                            jmp   main_γ
                        .size            n329_statement_end_bx, .-n329_statement_end_bx
                        .type            n330_goto_bx, @function
n330_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_goto_α:            mov              r11, 331;                            jmp   n14_stmt_mark_α
n330_goto_β:            mov              r11, 331;                            jmp   main_ω
                        .size            n330_goto_bx, .-n330_goto_bx
                        .type            n331_goto_bx, @function
n331_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_goto_α:            mov              r11, 332;                            jmp   n26_stmt_mark_α
n331_goto_β:            mov              r11, 332;                            jmp   main_ω
                        .size            n331_goto_bx, .-n331_goto_bx
                        .type            n332_goto_bx, @function
n332_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_goto_α:            mov              r11, 333;                            jmp   n52_stmt_mark_α
n332_goto_β:            mov              r11, 333;                            jmp   main_ω
                        .size            n332_goto_bx, .-n332_goto_bx
                        .type            n333_goto_bx, @function
n333_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:            mov              r11, 334;                            jmp   n98_stmt_mark_α
n333_goto_β:            mov              r11, 334;                            jmp   main_ω
                        .size            n333_goto_bx, .-n333_goto_bx
                        .type            n334_goto_bx, @function
n334_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:            mov              r11, 335;                            jmp   n177_stmt_mark_α
n334_goto_β:            mov              r11, 335;                            jmp   main_ω
                        .size            n334_goto_bx, .-n334_goto_bx
                        .type            n335_goto_bx, @function
n335_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:            mov              r11, 336;                            jmp   n203_stmt_mark_α
n335_goto_β:            mov              r11, 336;                            jmp   main_ω
                        .size            n335_goto_bx, .-n335_goto_bx
                        .type            n336_goto_bx, @function
n336_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_goto_α:            mov              r11, 337;                            jmp   n237_stmt_mark_α
n336_goto_β:            mov              r11, 337;                            jmp   main_ω
                        .size            n336_goto_bx, .-n336_goto_bx
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
                        .quad            14088839187802
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            3264
                        .quad            1
                        .quad            3588805953060864
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
