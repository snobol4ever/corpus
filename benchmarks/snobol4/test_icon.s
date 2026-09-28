                        .intel_syntax    noprefix
                        .text
                        .file            1 "test_icon.sno"
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
                        mov              edi, 14
                        call             rt_gva_island@PLT
                        mov              rsi, rax
                        lea              rdi, [rip + __gva_names]
                        mov              edx, 14
                        call             gva_register@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 54
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
.Lgvan0:                .string          "x5.V"
.Lgvan1:                .string          "x1.V"
.Lgvan2:                .string          "x2.V"
.Lgvan3:                .string          "to1.I"
.Lgvan4:                .string          "to1.V"
.Lgvan5:                .string          "x3.V"
.Lgvan6:                .string          "x4.V"
.Lgvan7:                .string          "to2.I"
.Lgvan8:                .string          "to2.V"
.Lgvan9:                .string          "mult.V"
.Lgvan10:               .string          "greater.V"
.Lgvan11:               .string          "write.V"
.Lgvan12:               .string          "to3.I"
.Lgvan13:               .string          "to4.I"
                        .align           8
__gva_names:
                        .quad            .Lgvan0
                        .quad            .Lgvan1
                        .quad            .Lgvan2
                        .quad            .Lgvan3
                        .quad            .Lgvan4
                        .quad            .Lgvan5
                        .quad            .Lgvan6
                        .quad            .Lgvan7
                        .quad            .Lgvan8
                        .quad            .Lgvan9
                        .quad            .Lgvan10
                        .quad            .Lgvan11
                        .quad            .Lgvan12
                        .quad            .Lgvan13
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .rodata
.Llbln0:                .string          "START"
.Llbln1:                .string          "x5.start"
.Llbln2:                .string          "x5.resume"
.Llbln3:                .string          "x1.start"
.Llbln4:                .string          "x1.resume"
.Llbln5:                .string          "x2.start"
.Llbln6:                .string          "x2.resume"
.Llbln7:                .string          "to1.start"
.Llbln8:                .string          "x1.fail"
.Llbln9:                .string          "x2.fail"
.Llbln10:               .string          "to1.code"
.Llbln11:               .string          "to1.resume"
.Llbln12:               .string          "x1.succeed"
.Llbln13:               .string          "x2.succeed"
.Llbln14:               .string          "x3.start"
.Llbln15:               .string          "x3.resume"
.Llbln16:               .string          "x4.start"
.Llbln17:               .string          "x4.resume"
.Llbln18:               .string          "to2.start"
.Llbln19:               .string          "x3.fail"
.Llbln20:               .string          "x4.fail"
.Llbln21:               .string          "to2.code"
.Llbln22:               .string          "to2.resume"
.Llbln23:               .string          "x3.succeed"
.Llbln24:               .string          "x4.succeed"
.Llbln25:               .string          "mult.start"
.Llbln26:               .string          "to1.fail"
.Llbln27:               .string          "to2.fail"
.Llbln28:               .string          "mult.resume"
.Llbln29:               .string          "to1.succeed"
.Llbln30:               .string          "to2.succeed"
.Llbln31:               .string          "greater.start"
.Llbln32:               .string          "x5.fail"
.Llbln33:               .string          "mult.fail"
.Llbln34:               .string          "greater.resume"
.Llbln35:               .string          "x5.succeed"
.Llbln36:               .string          "mult.succeed"
.Llbln37:               .string          "write1.start"
.Llbln38:               .string          "write1.resume"
.Llbln39:               .string          "greater.fail"
.Llbln40:               .string          "greater.succeed"
.Llbln41:               .string          "write2.start"
.Llbln42:               .string          "to3.resume"
.Llbln43:               .string          "to3.code"
.Llbln44:               .string          "write2.resume"
.Llbln45:               .string          "to4.code"
.Llbln46:               .string          "main1"
.Llbln47:               .string          "write1.fail"
.Llbln48:               .string          "write1.succeed"
.Llbln49:               .string          "main2"
.Llbln50:               .string          "write2.fail"
.Llbln51:               .string          "write2.succeed"
.Llbln52:               .string          "exception"
.Llbln53:               .string          "END"
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
                        .quad            .Llbln8
                        .quad            .Llbln9
                        .quad            .Llbln10
                        .quad            .Llbln11
                        .quad            .Llbln12
                        .quad            .Llbln13
                        .quad            .Llbln14
                        .quad            .Llbln15
                        .quad            .Llbln16
                        .quad            .Llbln17
                        .quad            .Llbln18
                        .quad            .Llbln19
                        .quad            .Llbln20
                        .quad            .Llbln21
                        .quad            .Llbln22
                        .quad            .Llbln23
                        .quad            .Llbln24
                        .quad            .Llbln25
                        .quad            .Llbln26
                        .quad            .Llbln27
                        .quad            .Llbln28
                        .quad            .Llbln29
                        .quad            .Llbln30
                        .quad            .Llbln31
                        .quad            .Llbln32
                        .quad            .Llbln33
                        .quad            .Llbln34
                        .quad            .Llbln35
                        .quad            .Llbln36
                        .quad            .Llbln37
                        .quad            .Llbln38
                        .quad            .Llbln39
                        .quad            .Llbln40
                        .quad            .Llbln41
                        .quad            .Llbln42
                        .quad            .Llbln43
                        .quad            .Llbln44
                        .quad            .Llbln45
                        .quad            .Llbln46
                        .quad            .Llbln47
                        .quad            .Llbln48
                        .quad            .Llbln49
                        .quad            .Llbln50
                        .quad            .Llbln51
                        .quad            .Llbln52
                        .quad            .Llbln53
                        .section         .text
                        .intel_syntax    noprefix
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        lea              rax, [rip + .Lgcmap_main]
                        mov              qword ptr [rsp + 1192], rax
                        mov              dword ptr [rsp + 1184], 160
                        mov              dword ptr [rsp + 1188], 1200
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
1:                      cmp              al, 104;                             jne   .Lcall_α_344_240
                        add              rsp, 16;                             jmp   n1_lit_integer_α
.Lcall_α_344_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 16;                             jmp   n1_lit_integer_α
n0_call_β:              mov              r11, 1
                        add              rsp, 16;                             jmp   n1_lit_integer_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#=======================================================================================================================
# START                                   :(main1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_345_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_integer_α
.Llit_integer_α_345_0:  .quad            18446744073709551615
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_346_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_lit_string_α
.Llit_integer_α_346_0:  .quad            0
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_string_bx, @function
n3_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:        sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_347_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_call_α
.Llit_string_α_347_0:   .quad            .Llit_string_α_347_0_s
.Llit_string_α_347_0_s: .string          "test_icon.sno"
                        .size            n3_lit_string_bx, .-n3_lit_string_bx
                        .type            n4_call_bx, @function
n4_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              sub              rsp, 16
                        mov              r11, 5
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
.Lcall_α_rkfnzd349:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd349]
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
                        cmp              al, 104;                             jne   .Lcall_α_348_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n5_stmt_mark_α
.Lcall_α_348_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n5_stmt_mark_α
n4_call_β:              mov              r11, 5
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n5_stmt_mark_α
                        .size            n4_call_bx, .-n4_call_bx
                        .type            n5_stmt_mark_bx, @function
n5_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_stmt_mark_α:         mov              r11, 6
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        add              rsp, 64;                             jmp   n6_statement_begin_α
                        .size            n5_stmt_mark_bx, .-n5_stmt_mark_bx
                        .type            n6_statement_begin_bx, @function
n6_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_begin_α:   mov              r11, 7;                              jmp   n7_statement_end_α
n6_statement_begin_β:   mov              r11, 7;                              jmp   n8_stmt_mark_α
                        .size            n6_statement_begin_bx, .-n6_statement_begin_bx
                        .type            n7_statement_end_bx, @function
n7_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     mov              r11, 8;                              jmp   n8_stmt_mark_α
                        .size            n7_statement_end_bx, .-n7_statement_end_bx
                        .type            n8_stmt_mark_bx, @function
n8_stmt_mark_bx:
#=======================================================================================================================
# main1           OUTPUT =                :(write1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 74 0
n8_stmt_mark_α:         mov              r11, 9
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 56
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 74
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n259_statement_begin_α
                        .size            n8_stmt_mark_bx, .-n8_stmt_mark_bx
                        .type            n9_statement_begin_bx, @function
n9_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_begin_α:   mov              r11, 10;                             jmp   n10_lit_integer_α
n9_statement_begin_β:   mov              r11, 10;                             jmp   n13_stmt_mark_α
                        .size            n9_statement_begin_bx, .-n9_statement_begin_bx
                        .type            n10_lit_integer_bx, @function
n10_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:      sub              rsp, 16
                        mov              r11, 11
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_360_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n11_assign_α
.Llit_integer_α_360_0:  .quad            5
                        .size            n10_lit_integer_bx, .-n10_lit_integer_bx
                        .type            n11_assign_bx, @function
n11_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_assign_α:           mov              r11, 12
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # x5.V
                        mov              qword ptr [r9 + 8], rdx;             jmp   n12_statement_end_α
                        .size            n11_assign_bx, .-n11_assign_bx
                        .type            n12_statement_end_bx, @function
n12_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_end_α:    mov              r11, 13
                        add              rsp, 16;                             jmp   n13_stmt_mark_α
                        .size            n12_statement_end_bx, .-n12_statement_end_bx
                        .type            n13_stmt_mark_bx, @function
n13_stmt_mark_bx:
#=======================================================================================================================
# x5.succeed                              :(mult.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n13_stmt_mark_α:        mov              r11, 14
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n158_statement_begin_α
                        .size            n13_stmt_mark_bx, .-n13_stmt_mark_bx
                        .type            n14_statement_begin_bx, @function
n14_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_begin_α:  mov              r11, 15;                             jmp   n15_statement_end_α
n14_statement_begin_β:  mov              r11, 15;                             jmp   n16_stmt_mark_α
                        .size            n14_statement_begin_bx, .-n14_statement_begin_bx
                        .type            n15_statement_end_bx, @function
n15_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:    mov              r11, 16;                             jmp   n16_stmt_mark_α
                        .size            n15_statement_end_bx, .-n15_statement_end_bx
                        .type            n16_stmt_mark_bx, @function
n16_stmt_mark_bx:
#=======================================================================================================================
# x5.fail                                 :(greater.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n16_stmt_mark_α:        mov              r11, 17
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n149_statement_begin_α
                        .size            n16_stmt_mark_bx, .-n16_stmt_mark_bx
                        .type            n17_statement_begin_bx, @function
n17_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_statement_begin_α:  mov              r11, 18;                             jmp   n18_lit_integer_α
n17_statement_begin_β:  mov              r11, 18;                             jmp   n21_stmt_mark_α
                        .size            n17_statement_begin_bx, .-n17_statement_begin_bx
                        .type            n18_lit_integer_bx, @function
n18_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      sub              rsp, 16
                        mov              r11, 19
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n19_assign_α
.Llit_integer_α_374_0:  .quad            1
                        .size            n18_lit_integer_bx, .-n18_lit_integer_bx
                        .type            n19_assign_bx, @function
n19_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_assign_α:           mov              r11, 20
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # x1.V
                        mov              qword ptr [r9 + 24], rdx;            jmp   n20_statement_end_α
                        .size            n19_assign_bx, .-n19_assign_bx
                        .type            n20_statement_end_bx, @function
n20_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_end_α:    mov              r11, 21
                        add              rsp, 16;                             jmp   n21_stmt_mark_α
                        .size            n20_statement_end_bx, .-n20_statement_end_bx
                        .type            n21_stmt_mark_bx, @function
n21_stmt_mark_bx:
#=======================================================================================================================
# x1.succeed                              :(x2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n21_stmt_mark_α:        mov              r11, 22
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n63_statement_begin_α
                        .size            n21_stmt_mark_bx, .-n21_stmt_mark_bx
                        .type            n22_statement_begin_bx, @function
n22_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_begin_α:  mov              r11, 23;                             jmp   n23_statement_end_α
n22_statement_begin_β:  mov              r11, 23;                             jmp   n24_stmt_mark_α
                        .size            n22_statement_begin_bx, .-n22_statement_begin_bx
                        .type            n23_statement_end_bx, @function
n23_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:    mov              r11, 24;                             jmp   n24_stmt_mark_α
                        .size            n23_statement_end_bx, .-n23_statement_end_bx
                        .type            n24_stmt_mark_bx, @function
n24_stmt_mark_bx:
#=======================================================================================================================
# x1.fail                                 :(to1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n24_stmt_mark_α:        mov              r11, 25
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n36_statement_begin_α
                        .size            n24_stmt_mark_bx, .-n24_stmt_mark_bx
                        .type            n25_statement_begin_bx, @function
n25_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_begin_α:  mov              r11, 26;                             jmp   n26_lit_integer_α
n25_statement_begin_β:  mov              r11, 26;                             jmp   n29_stmt_mark_α
                        .size            n25_statement_begin_bx, .-n25_statement_begin_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      sub              rsp, 16
                        mov              r11, 27
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_388_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n27_assign_α
.Llit_integer_α_388_0:  .quad            2
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_assign_bx, @function
n27_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_assign_α:           mov              r11, 28
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # x2.V
                        mov              qword ptr [r9 + 40], rdx;            jmp   n28_statement_end_α
                        .size            n27_assign_bx, .-n27_assign_bx
                        .type            n28_statement_end_bx, @function
n28_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_end_α:    mov              r11, 29
                        add              rsp, 16;                             jmp   n29_stmt_mark_α
                        .size            n28_statement_end_bx, .-n28_statement_end_bx
                        .type            n29_stmt_mark_bx, @function
n29_stmt_mark_bx:
#=======================================================================================================================
# x2.succeed      to1.I = x1.V            :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n29_stmt_mark_α:        mov              r11, 30
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n66_statement_begin_α
                        .size            n29_stmt_mark_bx, .-n29_stmt_mark_bx
                        .type            n30_statement_begin_bx, @function
n30_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_begin_α:  mov              r11, 31;                             jmp   n31_statement_end_α
n30_statement_begin_β:  mov              r11, 31;                             jmp   n32_stmt_mark_α
                        .size            n30_statement_begin_bx, .-n30_statement_begin_bx
                        .type            n31_statement_end_bx, @function
n31_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_end_α:    mov              r11, 32;                             jmp   n32_stmt_mark_α
                        .size            n31_statement_end_bx, .-n31_statement_end_bx
                        .type            n32_stmt_mark_bx, @function
n32_stmt_mark_bx:
#=======================================================================================================================
# x2.fail                                 :(x1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n32_stmt_mark_α:        mov              r11, 33
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n39_statement_begin_α
                        .size            n32_stmt_mark_bx, .-n32_stmt_mark_bx
                        .type            n33_statement_begin_bx, @function
n33_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_begin_α:  mov              r11, 34;                             jmp   n34_statement_end_α
n33_statement_begin_β:  mov              r11, 34;                             jmp   n35_stmt_mark_α
                        .size            n33_statement_begin_bx, .-n33_statement_begin_bx
                        .type            n34_statement_end_bx, @function
n34_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    mov              r11, 35;                             jmp   n35_stmt_mark_α
                        .size            n34_statement_end_bx, .-n34_statement_end_bx
                        .type            n35_stmt_mark_bx, @function
n35_stmt_mark_bx:
#=======================================================================================================================
# x1.start        x1.V = 1                :(x1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n35_stmt_mark_α:        mov              r11, 36
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n17_statement_begin_α
                        .size            n35_stmt_mark_bx, .-n35_stmt_mark_bx
                        .type            n36_statement_begin_bx, @function
n36_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_begin_α:  mov              r11, 37;                             jmp   n37_statement_end_α
n36_statement_begin_β:  mov              r11, 37;                             jmp   n38_stmt_mark_α
                        .size            n36_statement_begin_bx, .-n36_statement_begin_bx
                        .type            n37_statement_end_bx, @function
n37_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_end_α:    mov              r11, 38;                             jmp   n38_stmt_mark_α
                        .size            n37_statement_end_bx, .-n37_statement_end_bx
                        .type            n38_stmt_mark_bx, @function
n38_stmt_mark_bx:
#=======================================================================================================================
# to1.fail                                :(mult.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n38_stmt_mark_α:        mov              r11, 39
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n126_statement_begin_α
                        .size            n38_stmt_mark_bx, .-n38_stmt_mark_bx
                        .type            n39_statement_begin_bx, @function
n39_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_begin_α:  mov              r11, 40;                             jmp   n40_statement_end_α
n39_statement_begin_β:  mov              r11, 40;                             jmp   n41_stmt_mark_α
                        .size            n39_statement_begin_bx, .-n39_statement_begin_bx
                        .type            n40_statement_end_bx, @function
n40_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_end_α:    mov              r11, 41;                             jmp   n41_stmt_mark_α
                        .size            n40_statement_end_bx, .-n40_statement_end_bx
                        .type            n41_stmt_mark_bx, @function
n41_stmt_mark_bx:
#=======================================================================================================================
# x1.resume                               :(x1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n41_stmt_mark_α:        mov              r11, 42
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n22_statement_begin_α
                        .size            n41_stmt_mark_bx, .-n41_stmt_mark_bx
                        .type            n42_statement_begin_bx, @function
n42_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_statement_begin_α:  mov              r11, 43;                             jmp   n43_var_α
n42_statement_begin_β:  mov              r11, 43;                             jmp   n50_stmt_mark_α
                        .size            n42_statement_begin_bx, .-n42_statement_begin_bx
                        .type            n43_var_bx, @function
n43_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_var_α
                        .size            n43_var_bx, .-n43_var_bx
                        .type            n44_var_bx, @function
n44_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 32]             # x2.V
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_coerce_numeric_α
n44_var_β:              mov              r11, 45
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n42_statement_begin_β
                        .size            n44_var_bx, .-n44_var_bx
                        .type            n45_coerce_numeric_bx, @function
n45_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 46
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_423_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_423_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_423_0
.Lcoerce_numeric_α_423_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_coerce_numeric_α
.Lcoerce_numeric_α_423_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
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
1:                                                                            jmp   n46_coerce_numeric_α
n45_coerce_numeric_β:   mov              r11, 46
                        add              rsp, 16;                             jmp   n44_var_β
                        .size            n45_coerce_numeric_bx, .-n45_coerce_numeric_bx
                        .type            n46_coerce_numeric_bx, @function
n46_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 47
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_425_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_425_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_425_0
.Lcoerce_numeric_α_425_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_cmp_test_α
.Lcoerce_numeric_α_425_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
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
1:                                                                            jmp   n47_cmp_test_α
n46_coerce_numeric_β:   mov              r11, 47
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
                        .size            n46_coerce_numeric_bx, .-n46_coerce_numeric_bx
                        .type            n47_cmp_test_bx, @function
n47_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_cmp_test_α:         sub              rsp, 16
                        mov              r11, 48
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_427_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_427_239
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
.Lcmp_test_α_427_239:                                                         jmp   n48_statement_end_α
.Lcmp_test_α_427_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_427_240
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
.Lcmp_test_α_427_240:                                                         jmp   n48_statement_end_α
                        .size            n47_cmp_test_bx, .-n47_cmp_test_bx
                        .type            n48_statement_end_bx, @function
n48_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_statement_end_α:    mov              r11, 49
                        add              rsp, 80;                             jmp   n49_stmt_mark_α
                        .size            n48_statement_end_bx, .-n48_statement_end_bx
                        .type            n49_stmt_mark_bx, @function
n49_stmt_mark_bx:
#=======================================================================================================================
#                 to1.V = to1.I           :(to1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n49_stmt_mark_α:        mov              r11, 50
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n51_statement_begin_α
                        .size            n49_stmt_mark_bx, .-n49_stmt_mark_bx
                        .type            n50_stmt_mark_bx, @function
n50_stmt_mark_bx:
#=======================================================================================================================
# x2.resume                               :(x2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n50_stmt_mark_α:        mov              r11, 51
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n30_statement_begin_α
                        .size            n50_stmt_mark_bx, .-n50_stmt_mark_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_statement_begin_α:  mov              r11, 52;                             jmp   n52_var_α
n51_statement_begin_β:  mov              r11, 52;                             jmp   n55_stmt_mark_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              r11, 53
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_assign_α
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_assign_bx, @function
n53_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              r11, 54
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # to1.V
                        mov              qword ptr [r9 + 72], rdx;            jmp   n54_statement_end_α
                        .size            n53_assign_bx, .-n53_assign_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    mov              r11, 55
                        add              rsp, 16;                             jmp   n55_stmt_mark_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_stmt_mark_bx, @function
n55_stmt_mark_bx:
#=======================================================================================================================
# to1.succeed                             :(to2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n55_stmt_mark_α:        mov              r11, 56
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n135_statement_begin_α
                        .size            n55_stmt_mark_bx, .-n55_stmt_mark_bx
                        .type            n56_statement_begin_bx, @function
n56_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_begin_α:  mov              r11, 57;                             jmp   n57_var_α
n56_statement_begin_β:  mov              r11, 57;                             jmp   n62_stmt_mark_α
                        .size            n56_statement_begin_bx, .-n56_statement_begin_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              r11, 58
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_lit_integer_α
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              r11, 59
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_445_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_binop_α
n58_lit_integer_β:      mov              r11, 59
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n56_statement_begin_β
.Llit_integer_α_445_0:  .quad            1
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            sub              rsp, 16
                        mov              r11, 60
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_446_2
                        add              rax, 1;                              jo    .Lbinop_α_446_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_446_7
.Lbinop_α_446_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_446_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_446_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_446_4
.Lbinop_α_446_3:        movq             xmm0, rsi
.Lbinop_α_446_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_446_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_446_7:                                                              jmp   n60_assign_α
.Lbinop_α_446_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_446_240
                        add              rsp, 16;                             jmp   n58_lit_integer_β
.Lbinop_α_446_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:239
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
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
1:                                                                            jmp   n60_assign_α
n59_binop_β:            mov              r11, 60
                        add              rsp, 16;                             jmp   n58_lit_integer_β
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_assign_bx, @function
n60_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_α:           mov              r11, 61
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n61_statement_end_α
                        .size            n60_assign_bx, .-n60_assign_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    mov              r11, 62
                        add              rsp, 48;                             jmp   n62_stmt_mark_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_stmt_mark_bx, @function
n62_stmt_mark_bx:
#=======================================================================================================================
# to1.code        LE(to1.I, x2.V)         :F(x2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n62_stmt_mark_α:        mov              r11, 63
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n42_statement_begin_α
                        .size            n62_stmt_mark_bx, .-n62_stmt_mark_bx
                        .type            n63_statement_begin_bx, @function
n63_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_begin_α:  mov              r11, 64;                             jmp   n64_statement_end_α
n63_statement_begin_β:  mov              r11, 64;                             jmp   n65_stmt_mark_α
                        .size            n63_statement_begin_bx, .-n63_statement_begin_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    mov              r11, 65;                             jmp   n65_stmt_mark_α
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_stmt_mark_bx, @function
n65_stmt_mark_bx:
#=======================================================================================================================
# x2.start        x2.V = 2                :(x2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n65_stmt_mark_α:        mov              r11, 66
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n25_statement_begin_α
                        .size            n65_stmt_mark_bx, .-n65_stmt_mark_bx
                        .type            n66_statement_begin_bx, @function
n66_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_begin_α:  mov              r11, 67;                             jmp   n67_var_α
n66_statement_begin_β:  mov              r11, 67;                             jmp   n62_stmt_mark_α
                        .size            n66_statement_begin_bx, .-n66_statement_begin_bx
                        .type            n67_var_bx, @function
n67_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_α:              sub              rsp, 16
                        mov              r11, 68
                        mov              rax, qword ptr [r9 + 16]             # x1.V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n68_assign_α
                        .size            n67_var_bx, .-n67_var_bx
                        .type            n68_assign_bx, @function
n68_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              r11, 69
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n69_statement_end_α
                        .size            n68_assign_bx, .-n68_assign_bx
                        .type            n69_statement_end_bx, @function
n69_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    mov              r11, 70
                        add              rsp, 16;                             jmp   n62_stmt_mark_α
                        .size            n69_statement_end_bx, .-n69_statement_end_bx
                        .type            n70_statement_begin_bx, @function
n70_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_begin_α:  mov              r11, 71;                             jmp   n71_lit_integer_α
n70_statement_begin_β:  mov              r11, 71;                             jmp   n74_stmt_mark_α
                        .size            n70_statement_begin_bx, .-n70_statement_begin_bx
                        .type            n71_lit_integer_bx, @function
n71_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_lit_integer_α:      sub              rsp, 16
                        mov              r11, 72
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_466_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n72_assign_α
.Llit_integer_α_466_0:  .quad            3
                        .size            n71_lit_integer_bx, .-n71_lit_integer_bx
                        .type            n72_assign_bx, @function
n72_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_α:           mov              r11, 73
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # x3.V
                        mov              qword ptr [r9 + 88], rdx;            jmp   n73_statement_end_α
                        .size            n72_assign_bx, .-n72_assign_bx
                        .type            n73_statement_end_bx, @function
n73_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    mov              r11, 74
                        add              rsp, 16;                             jmp   n74_stmt_mark_α
                        .size            n73_statement_end_bx, .-n73_statement_end_bx
                        .type            n74_stmt_mark_bx, @function
n74_stmt_mark_bx:
#=======================================================================================================================
# x3.succeed                              :(x4.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n74_stmt_mark_α:        mov              r11, 75
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n116_statement_begin_α
                        .size            n74_stmt_mark_bx, .-n74_stmt_mark_bx
                        .type            n75_statement_begin_bx, @function
n75_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_begin_α:  mov              r11, 76;                             jmp   n76_statement_end_α
n75_statement_begin_β:  mov              r11, 76;                             jmp   n77_stmt_mark_α
                        .size            n75_statement_begin_bx, .-n75_statement_begin_bx
                        .type            n76_statement_end_bx, @function
n76_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_end_α:    mov              r11, 77;                             jmp   n77_stmt_mark_α
                        .size            n76_statement_end_bx, .-n76_statement_end_bx
                        .type            n77_stmt_mark_bx, @function
n77_stmt_mark_bx:
#=======================================================================================================================
# x3.fail                                 :(to2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n77_stmt_mark_α:        mov              r11, 78
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n89_statement_begin_α
                        .size            n77_stmt_mark_bx, .-n77_stmt_mark_bx
                        .type            n78_statement_begin_bx, @function
n78_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_statement_begin_α:  mov              r11, 79;                             jmp   n79_lit_integer_α
n78_statement_begin_β:  mov              r11, 79;                             jmp   n82_stmt_mark_α
                        .size            n78_statement_begin_bx, .-n78_statement_begin_bx
                        .type            n79_lit_integer_bx, @function
n79_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_lit_integer_α:      sub              rsp, 16
                        mov              r11, 80
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_480_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_assign_α
.Llit_integer_α_480_0:  .quad            4
                        .size            n79_lit_integer_bx, .-n79_lit_integer_bx
                        .type            n80_assign_bx, @function
n80_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_assign_α:           mov              r11, 81
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # x4.V
                        mov              qword ptr [r9 + 104], rdx;           jmp   n81_statement_end_α
                        .size            n80_assign_bx, .-n80_assign_bx
                        .type            n81_statement_end_bx, @function
n81_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_end_α:    mov              r11, 82
                        add              rsp, 16;                             jmp   n82_stmt_mark_α
                        .size            n81_statement_end_bx, .-n81_statement_end_bx
                        .type            n82_stmt_mark_bx, @function
n82_stmt_mark_bx:
#=======================================================================================================================
# x4.succeed      to2.I = x3.V            :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n82_stmt_mark_α:        mov              r11, 83
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n119_statement_begin_α
                        .size            n82_stmt_mark_bx, .-n82_stmt_mark_bx
                        .type            n83_statement_begin_bx, @function
n83_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_begin_α:  mov              r11, 84;                             jmp   n84_statement_end_α
n83_statement_begin_β:  mov              r11, 84;                             jmp   n85_stmt_mark_α
                        .size            n83_statement_begin_bx, .-n83_statement_begin_bx
                        .type            n84_statement_end_bx, @function
n84_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_end_α:    mov              r11, 85;                             jmp   n85_stmt_mark_α
                        .size            n84_statement_end_bx, .-n84_statement_end_bx
                        .type            n85_stmt_mark_bx, @function
n85_stmt_mark_bx:
#=======================================================================================================================
# x4.fail                                 :(x3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n85_stmt_mark_α:        mov              r11, 86
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n92_statement_begin_α
                        .size            n85_stmt_mark_bx, .-n85_stmt_mark_bx
                        .type            n86_statement_begin_bx, @function
n86_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_begin_α:  mov              r11, 87;                             jmp   n87_statement_end_α
n86_statement_begin_β:  mov              r11, 87;                             jmp   n88_stmt_mark_α
                        .size            n86_statement_begin_bx, .-n86_statement_begin_bx
                        .type            n87_statement_end_bx, @function
n87_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:    mov              r11, 88;                             jmp   n88_stmt_mark_α
                        .size            n87_statement_end_bx, .-n87_statement_end_bx
                        .type            n88_stmt_mark_bx, @function
n88_stmt_mark_bx:
#=======================================================================================================================
# x3.start        x3.V = 3                :(x3.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n88_stmt_mark_α:        mov              r11, 89
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n70_statement_begin_α
                        .size            n88_stmt_mark_bx, .-n88_stmt_mark_bx
                        .type            n89_statement_begin_bx, @function
n89_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_begin_α:  mov              r11, 90;                             jmp   n90_statement_end_α
n89_statement_begin_β:  mov              r11, 90;                             jmp   n91_stmt_mark_α
                        .size            n89_statement_begin_bx, .-n89_statement_begin_bx
                        .type            n90_statement_end_bx, @function
n90_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_end_α:    mov              r11, 91;                             jmp   n91_stmt_mark_α
                        .size            n90_statement_end_bx, .-n90_statement_end_bx
                        .type            n91_stmt_mark_bx, @function
n91_stmt_mark_bx:
#=======================================================================================================================
# to2.fail                                :(to1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n91_stmt_mark_α:        mov              r11, 92
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n129_statement_begin_α
                        .size            n91_stmt_mark_bx, .-n91_stmt_mark_bx
                        .type            n92_statement_begin_bx, @function
n92_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_begin_α:  mov              r11, 93;                             jmp   n93_statement_end_α
n92_statement_begin_β:  mov              r11, 93;                             jmp   n94_stmt_mark_α
                        .size            n92_statement_begin_bx, .-n92_statement_begin_bx
                        .type            n93_statement_end_bx, @function
n93_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    mov              r11, 94;                             jmp   n94_stmt_mark_α
                        .size            n93_statement_end_bx, .-n93_statement_end_bx
                        .type            n94_stmt_mark_bx, @function
n94_stmt_mark_bx:
#=======================================================================================================================
# x3.resume                               :(x3.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n94_stmt_mark_α:        mov              r11, 95
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n75_statement_begin_α
                        .size            n94_stmt_mark_bx, .-n94_stmt_mark_bx
                        .type            n95_statement_begin_bx, @function
n95_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_begin_α:  mov              r11, 96;                             jmp   n96_var_α
n95_statement_begin_β:  mov              r11, 96;                             jmp   n103_stmt_mark_α
                        .size            n95_statement_begin_bx, .-n95_statement_begin_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_var_α
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 98
                        mov              rax, qword ptr [r9 + 96]             # x4.V
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_coerce_numeric_α
n97_var_β:              mov              r11, 98
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n95_statement_begin_β
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_coerce_numeric_bx, @function
n98_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 99
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_515_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_515_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_515_0
.Lcoerce_numeric_α_515_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_coerce_numeric_α
.Lcoerce_numeric_α_515_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
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
1:                                                                            jmp   n99_coerce_numeric_α
n98_coerce_numeric_β:   mov              r11, 99
                        add              rsp, 16;                             jmp   n97_var_β
                        .size            n98_coerce_numeric_bx, .-n98_coerce_numeric_bx
                        .type            n99_coerce_numeric_bx, @function
n99_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 100
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_517_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_517_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_517_0
.Lcoerce_numeric_α_517_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_cmp_test_α
.Lcoerce_numeric_α_517_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
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
1:                                                                            jmp   n100_cmp_test_α
n99_coerce_numeric_β:   mov              r11, 100
                        add              rsp, 16;                             jmp   n98_coerce_numeric_β
                        .size            n99_coerce_numeric_bx, .-n99_coerce_numeric_bx
                        .type            n100_cmp_test_bx, @function
n100_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_cmp_test_α:        sub              rsp, 16
                        mov              r11, 101
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_519_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_519_239
                        add              rsp, 16;                             jmp   n99_coerce_numeric_β
.Lcmp_test_α_519_239:                                                         jmp   n101_statement_end_α
.Lcmp_test_α_519_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_519_240
                        add              rsp, 16;                             jmp   n99_coerce_numeric_β
.Lcmp_test_α_519_240:                                                         jmp   n101_statement_end_α
                        .size            n100_cmp_test_bx, .-n100_cmp_test_bx
                        .type            n101_statement_end_bx, @function
n101_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:   mov              r11, 102
                        add              rsp, 80;                             jmp   n102_stmt_mark_α
                        .size            n101_statement_end_bx, .-n101_statement_end_bx
                        .type            n102_stmt_mark_bx, @function
n102_stmt_mark_bx:
#=======================================================================================================================
#                 to2.V = to2.I           :(to2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n102_stmt_mark_α:       mov              r11, 103
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n104_statement_begin_α
                        .size            n102_stmt_mark_bx, .-n102_stmt_mark_bx
                        .type            n103_stmt_mark_bx, @function
n103_stmt_mark_bx:
#=======================================================================================================================
# x4.resume                               :(x4.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n103_stmt_mark_α:       mov              r11, 104
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n83_statement_begin_α
                        .size            n103_stmt_mark_bx, .-n103_stmt_mark_bx
                        .type            n104_statement_begin_bx, @function
n104_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_statement_begin_α: mov              r11, 105;                            jmp   n105_var_α
n104_statement_begin_β: mov              r11, 105;                            jmp   n108_stmt_mark_α
                        .size            n104_statement_begin_bx, .-n104_statement_begin_bx
                        .type            n105_var_bx, @function
n105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             sub              rsp, 16
                        mov              r11, 106
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_assign_α
                        .size            n105_var_bx, .-n105_var_bx
                        .type            n106_assign_bx, @function
n106_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              r11, 107
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # to2.V
                        mov              qword ptr [r9 + 136], rdx;           jmp   n107_statement_end_α
                        .size            n106_assign_bx, .-n106_assign_bx
                        .type            n107_statement_end_bx, @function
n107_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   mov              r11, 108
                        add              rsp, 16;                             jmp   n108_stmt_mark_α
                        .size            n107_statement_end_bx, .-n107_statement_end_bx
                        .type            n108_stmt_mark_bx, @function
n108_stmt_mark_bx:
#=======================================================================================================================
# to2.succeed     mult.V = to1.V * to2.V  :S(mult.succeed)F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n108_stmt_mark_α:       mov              r11, 109
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n138_statement_begin_α
                        .size            n108_stmt_mark_bx, .-n108_stmt_mark_bx
                        .type            n109_statement_begin_bx, @function
n109_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_begin_α: mov              r11, 110;                            jmp   n110_var_α
n109_statement_begin_β: mov              r11, 110;                            jmp   n115_stmt_mark_α
                        .size            n109_statement_begin_bx, .-n109_statement_begin_bx
                        .type            n110_var_bx, @function
n110_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_var_α:             sub              rsp, 16
                        mov              r11, 111
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n111_lit_integer_α
                        .size            n110_var_bx, .-n110_var_bx
                        .type            n111_lit_integer_bx, @function
n111_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_lit_integer_α:     sub              rsp, 16
                        mov              r11, 112
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n112_binop_α
n111_lit_integer_β:     mov              r11, 112
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n109_statement_begin_β
.Llit_integer_α_537_0:  .quad            1
                        .size            n111_lit_integer_bx, .-n111_lit_integer_bx
                        .type            n112_binop_bx, @function
n112_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_binop_α:           sub              rsp, 16
                        mov              r11, 113
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_538_2
                        add              rax, 1;                              jo    .Lbinop_α_538_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_538_7
.Lbinop_α_538_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_538_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_538_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_538_4
.Lbinop_α_538_3:        movq             xmm0, rsi
.Lbinop_α_538_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_538_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_538_7:                                                              jmp   n113_assign_α
.Lbinop_α_538_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_538_240
                        add              rsp, 16;                             jmp   n111_lit_integer_β
.Lbinop_α_538_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:239
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
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
1:                                                                            jmp   n113_assign_α
n112_binop_β:           mov              r11, 113
                        add              rsp, 16;                             jmp   n111_lit_integer_β
                        .size            n112_binop_bx, .-n112_binop_bx
                        .type            n113_assign_bx, @function
n113_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_assign_α:          mov              r11, 114
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n114_statement_end_α
                        .size            n113_assign_bx, .-n113_assign_bx
                        .type            n114_statement_end_bx, @function
n114_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_end_α:   mov              r11, 115
                        add              rsp, 48;                             jmp   n115_stmt_mark_α
                        .size            n114_statement_end_bx, .-n114_statement_end_bx
                        .type            n115_stmt_mark_bx, @function
n115_stmt_mark_bx:
#=======================================================================================================================
# to2.code        LE(to2.I, x4.V)         :F(x4.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n115_stmt_mark_α:       mov              r11, 116
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n95_statement_begin_α
                        .size            n115_stmt_mark_bx, .-n115_stmt_mark_bx
                        .type            n116_statement_begin_bx, @function
n116_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_begin_α: mov              r11, 117;                            jmp   n117_statement_end_α
n116_statement_begin_β: mov              r11, 117;                            jmp   n118_stmt_mark_α
                        .size            n116_statement_begin_bx, .-n116_statement_begin_bx
                        .type            n117_statement_end_bx, @function
n117_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   mov              r11, 118;                            jmp   n118_stmt_mark_α
                        .size            n117_statement_end_bx, .-n117_statement_end_bx
                        .type            n118_stmt_mark_bx, @function
n118_stmt_mark_bx:
#=======================================================================================================================
# x4.start        x4.V = 4                :(x4.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n118_stmt_mark_α:       mov              r11, 119
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n78_statement_begin_α
                        .size            n118_stmt_mark_bx, .-n118_stmt_mark_bx
                        .type            n119_statement_begin_bx, @function
n119_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_statement_begin_α: mov              r11, 120;                            jmp   n120_var_α
n119_statement_begin_β: mov              r11, 120;                            jmp   n115_stmt_mark_α
                        .size            n119_statement_begin_bx, .-n119_statement_begin_bx
                        .type            n120_var_bx, @function
n120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              r11, 121
                        mov              rax, qword ptr [r9 + 80]             # x3.V
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_assign_α
                        .size            n120_var_bx, .-n120_var_bx
                        .type            n121_assign_bx, @function
n121_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              r11, 122
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n122_statement_end_α
                        .size            n121_assign_bx, .-n121_assign_bx
                        .type            n122_statement_end_bx, @function
n122_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   mov              r11, 123
                        add              rsp, 16;                             jmp   n115_stmt_mark_α
                        .size            n122_statement_end_bx, .-n122_statement_end_bx
                        .type            n123_statement_begin_bx, @function
n123_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_begin_α: mov              r11, 124;                            jmp   n124_statement_end_α
n123_statement_begin_β: mov              r11, 124;                            jmp   n125_stmt_mark_α
                        .size            n123_statement_begin_bx, .-n123_statement_begin_bx
                        .type            n124_statement_end_bx, @function
n124_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   mov              r11, 125;                            jmp   n125_stmt_mark_α
                        .size            n124_statement_end_bx, .-n124_statement_end_bx
                        .type            n125_stmt_mark_bx, @function
n125_stmt_mark_bx:
#=======================================================================================================================
# to1.start                               :(x1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n125_stmt_mark_α:       mov              r11, 126
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n33_statement_begin_α
                        .size            n125_stmt_mark_bx, .-n125_stmt_mark_bx
                        .type            n126_statement_begin_bx, @function
n126_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_begin_α: mov              r11, 127;                            jmp   n127_statement_end_α
n126_statement_begin_β: mov              r11, 127;                            jmp   n128_stmt_mark_α
                        .size            n126_statement_begin_bx, .-n126_statement_begin_bx
                        .type            n127_statement_end_bx, @function
n127_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_end_α:   mov              r11, 128;                            jmp   n128_stmt_mark_α
                        .size            n127_statement_end_bx, .-n127_statement_end_bx
                        .type            n128_stmt_mark_bx, @function
n128_stmt_mark_bx:
#=======================================================================================================================
# mult.fail                               :(x5.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n128_stmt_mark_α:       mov              r11, 129
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n152_statement_begin_α
                        .size            n128_stmt_mark_bx, .-n128_stmt_mark_bx
                        .type            n129_statement_begin_bx, @function
n129_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_begin_α: mov              r11, 130;                            jmp   n130_statement_end_α
n129_statement_begin_β: mov              r11, 130;                            jmp   n131_stmt_mark_α
                        .size            n129_statement_begin_bx, .-n129_statement_begin_bx
                        .type            n130_statement_end_bx, @function
n130_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   mov              r11, 131;                            jmp   n131_stmt_mark_α
                        .size            n130_statement_end_bx, .-n130_statement_end_bx
                        .type            n131_stmt_mark_bx, @function
n131_stmt_mark_bx:
#=======================================================================================================================
# to1.resume      to1.I = to1.I + 1       :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n131_stmt_mark_α:       mov              r11, 132
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n56_statement_begin_α
                        .size            n131_stmt_mark_bx, .-n131_stmt_mark_bx
                        .type            n132_statement_begin_bx, @function
n132_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_begin_α: mov              r11, 133;                            jmp   n133_statement_end_α
n132_statement_begin_β: mov              r11, 133;                            jmp   n134_stmt_mark_α
                        .size            n132_statement_begin_bx, .-n132_statement_begin_bx
                        .type            n133_statement_end_bx, @function
n133_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_end_α:   mov              r11, 134;                            jmp   n134_stmt_mark_α
                        .size            n133_statement_end_bx, .-n133_statement_end_bx
                        .type            n134_stmt_mark_bx, @function
n134_stmt_mark_bx:
#=======================================================================================================================
# to2.resume      to2.I = to2.I + 1       :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n134_stmt_mark_α:       mov              r11, 135
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n109_statement_begin_α
                        .size            n134_stmt_mark_bx, .-n134_stmt_mark_bx
                        .type            n135_statement_begin_bx, @function
n135_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_begin_α: mov              r11, 136;                            jmp   n136_statement_end_α
n135_statement_begin_β: mov              r11, 136;                            jmp   n137_stmt_mark_α
                        .size            n135_statement_begin_bx, .-n135_statement_begin_bx
                        .type            n136_statement_end_bx, @function
n136_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_end_α:   mov              r11, 137;                            jmp   n137_stmt_mark_α
                        .size            n136_statement_end_bx, .-n136_statement_end_bx
                        .type            n137_stmt_mark_bx, @function
n137_stmt_mark_bx:
#=======================================================================================================================
# to2.start                               :(x3.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n137_stmt_mark_α:       mov              r11, 138
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n86_statement_begin_α
                        .size            n137_stmt_mark_bx, .-n137_stmt_mark_bx
                        .type            n138_statement_begin_bx, @function
n138_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_begin_α: mov              r11, 139;                            jmp   n139_var_α
n138_statement_begin_β: mov              r11, 139;                            jmp   n145_stmt_mark_α
                        .size            n138_statement_begin_bx, .-n138_statement_begin_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 64]             # to1.V
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_var_α
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_var_bx, @function
n140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              r11, 141
                        mov              rax, qword ptr [r9 + 128]            # to2.V
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_binop_α
n140_var_β:             mov              r11, 141
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n138_statement_begin_β
                        .size            n140_var_bx, .-n140_var_bx
                        .type            n141_binop_bx, @function
n141_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_binop_α:           sub              rsp, 16
                        mov              r11, 142
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_590_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_590_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_590_7
.Lbinop_α_590_2:        and              edx, 1;                              jz    .Lbinop_α_590_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_590_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_590_4
.Lbinop_α_590_3:        movq             xmm0, rsi
.Lbinop_α_590_4:        cmp              cl, 5;                               je    .Lbinop_α_590_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_590_6
.Lbinop_α_590_5:        movq             xmm1, rdi
.Lbinop_α_590_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_590_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_590_7:                                                              jmp   n142_assign_α
.Lbinop_α_590_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_590_240
                        add              rsp, 16;                             jmp   n140_var_β
.Lbinop_α_590_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:239
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
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
1:                                                                            jmp   n142_assign_α
n141_binop_β:           mov              r11, 142
                        add              rsp, 16;                             jmp   n140_var_β
                        .size            n141_binop_bx, .-n141_binop_bx
                        .type            n142_assign_bx, @function
n142_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_assign_α:          mov              r11, 143
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n143_statement_end_α
                        .size            n142_assign_bx, .-n142_assign_bx
                        .type            n143_statement_end_bx, @function
n143_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_statement_end_α:   mov              r11, 144
                        add              rsp, 48;                             jmp   n144_stmt_mark_α
                        .size            n143_statement_end_bx, .-n143_statement_end_bx
                        .type            n144_stmt_mark_bx, @function
n144_stmt_mark_bx:
#=======================================================================================================================
# mult.succeed    GT(x5.V, mult.V)        :F(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n144_stmt_mark_α:       mov              r11, 145
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n161_statement_begin_α
                        .size            n144_stmt_mark_bx, .-n144_stmt_mark_bx
                        .type            n145_stmt_mark_bx, @function
n145_stmt_mark_bx:
#=======================================================================================================================
# exception       TERMINAL = "Exception!" :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n145_stmt_mark_α:       mov              r11, 146
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 62
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 81
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n287_statement_begin_α
                        .size            n145_stmt_mark_bx, .-n145_stmt_mark_bx
                        .type            n146_statement_begin_bx, @function
n146_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_begin_α: mov              r11, 147;                            jmp   n147_statement_end_α
n146_statement_begin_β: mov              r11, 147;                            jmp   n148_stmt_mark_α
                        .size            n146_statement_begin_bx, .-n146_statement_begin_bx
                        .type            n147_statement_end_bx, @function
n147_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_end_α:   mov              r11, 148;                            jmp   n148_stmt_mark_α
                        .size            n147_statement_end_bx, .-n147_statement_end_bx
                        .type            n148_stmt_mark_bx, @function
n148_stmt_mark_bx:
#=======================================================================================================================
# x5.start        x5.V = 5                :(x5.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n148_stmt_mark_α:       mov              r11, 149
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n9_statement_begin_α
                        .size            n148_stmt_mark_bx, .-n148_stmt_mark_bx
                        .type            n149_statement_begin_bx, @function
n149_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_begin_α: mov              r11, 150;                            jmp   n150_statement_end_α
n149_statement_begin_β: mov              r11, 150;                            jmp   n151_stmt_mark_α
                        .size            n149_statement_begin_bx, .-n149_statement_begin_bx
                        .type            n150_statement_end_bx, @function
n150_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_end_α:   mov              r11, 151;                            jmp   n151_stmt_mark_α
                        .size            n150_statement_end_bx, .-n150_statement_end_bx
                        .type            n151_stmt_mark_bx, @function
n151_stmt_mark_bx:
#=======================================================================================================================
# greater.fail                            :(write1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
n151_stmt_mark_α:       mov              r11, 152
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 56
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n180_statement_begin_α
                        .size            n151_stmt_mark_bx, .-n151_stmt_mark_bx
                        .type            n152_statement_begin_bx, @function
n152_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_begin_α: mov              r11, 153;                            jmp   n153_statement_end_α
n152_statement_begin_β: mov              r11, 153;                            jmp   n154_stmt_mark_α
                        .size            n152_statement_begin_bx, .-n152_statement_begin_bx
                        .type            n153_statement_end_bx, @function
n153_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_end_α:   mov              r11, 154;                            jmp   n154_stmt_mark_α
                        .size            n153_statement_end_bx, .-n153_statement_end_bx
                        .type            n154_stmt_mark_bx, @function
n154_stmt_mark_bx:
#=======================================================================================================================
# x5.resume                               :(x5.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n154_stmt_mark_α:       mov              r11, 155
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n14_statement_begin_α
                        .size            n154_stmt_mark_bx, .-n154_stmt_mark_bx
                        .type            n155_statement_begin_bx, @function
n155_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_begin_α: mov              r11, 156;                            jmp   n156_statement_end_α
n155_statement_begin_β: mov              r11, 156;                            jmp   n157_stmt_mark_α
                        .size            n155_statement_begin_bx, .-n155_statement_begin_bx
                        .type            n156_statement_end_bx, @function
n156_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_end_α:   mov              r11, 157;                            jmp   n157_stmt_mark_α
                        .size            n156_statement_end_bx, .-n156_statement_end_bx
                        .type            n157_stmt_mark_bx, @function
n157_stmt_mark_bx:
#=======================================================================================================================
# mult.resume                             :(to2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n157_stmt_mark_α:       mov              r11, 158
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n132_statement_begin_α
                        .size            n157_stmt_mark_bx, .-n157_stmt_mark_bx
                        .type            n158_statement_begin_bx, @function
n158_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_begin_α: mov              r11, 159;                            jmp   n159_statement_end_α
n158_statement_begin_β: mov              r11, 159;                            jmp   n160_stmt_mark_α
                        .size            n158_statement_begin_bx, .-n158_statement_begin_bx
                        .type            n159_statement_end_bx, @function
n159_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   mov              r11, 160;                            jmp   n160_stmt_mark_α
                        .size            n159_statement_end_bx, .-n159_statement_end_bx
                        .type            n160_stmt_mark_bx, @function
n160_stmt_mark_bx:
#=======================================================================================================================
# mult.start                              :(to1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n160_stmt_mark_α:       mov              r11, 161
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n123_statement_begin_α
                        .size            n160_stmt_mark_bx, .-n160_stmt_mark_bx
                        .type            n161_statement_begin_bx, @function
n161_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_statement_begin_α: mov              r11, 162;                            jmp   n162_var_α
n161_statement_begin_β: mov              r11, 162;                            jmp   n157_stmt_mark_α
                        .size            n161_statement_begin_bx, .-n161_statement_begin_bx
                        .type            n162_var_bx, @function
n162_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             sub              rsp, 16
                        mov              r11, 163
                        mov              rax, qword ptr [r9 + 0]              # x5.V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_var_α
                        .size            n162_var_bx, .-n162_var_bx
                        .type            n163_var_bx, @function
n163_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              r11, 164
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_coerce_numeric_α
n163_var_β:             mov              r11, 164
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n161_statement_begin_β
                        .size            n163_var_bx, .-n163_var_bx
                        .type            n164_coerce_numeric_bx, @function
n164_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 165
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_633_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_633_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_633_0
.Lcoerce_numeric_α_633_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_coerce_numeric_α
.Lcoerce_numeric_α_633_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
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
1:                                                                            jmp   n165_coerce_numeric_α
n164_coerce_numeric_β:  mov              r11, 165
                        add              rsp, 16;                             jmp   n163_var_β
                        .size            n164_coerce_numeric_bx, .-n164_coerce_numeric_bx
                        .type            n165_coerce_numeric_bx, @function
n165_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 166
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_635_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_635_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_635_0
.Lcoerce_numeric_α_635_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_cmp_test_α
.Lcoerce_numeric_α_635_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
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
1:                                                                            jmp   n166_cmp_test_α
n165_coerce_numeric_β:  mov              r11, 166
                        add              rsp, 16;                             jmp   n164_coerce_numeric_β
                        .size            n165_coerce_numeric_bx, .-n165_coerce_numeric_bx
                        .type            n166_cmp_test_bx, @function
n166_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_cmp_test_α:        sub              rsp, 16
                        mov              r11, 167
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_637_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_637_239
                        add              rsp, 16;                             jmp   n165_coerce_numeric_β
.Lcmp_test_α_637_239:                                                         jmp   n167_statement_end_α
.Lcmp_test_α_637_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jg    .Lcmp_test_α_637_240
                        add              rsp, 16;                             jmp   n165_coerce_numeric_β
.Lcmp_test_α_637_240:                                                         jmp   n167_statement_end_α
                        .size            n166_cmp_test_bx, .-n166_cmp_test_bx
                        .type            n167_statement_end_bx, @function
n167_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   mov              r11, 168
                        add              rsp, 80;                             jmp   n168_stmt_mark_α
                        .size            n167_statement_end_bx, .-n167_statement_end_bx
                        .type            n168_stmt_mark_bx, @function
n168_stmt_mark_bx:
#=======================================================================================================================
#                 greater.V = mult.V      :(greater.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n168_stmt_mark_α:       mov              r11, 169
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n169_statement_begin_α
                        .size            n168_stmt_mark_bx, .-n168_stmt_mark_bx
                        .type            n169_statement_begin_bx, @function
n169_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_begin_α: mov              r11, 170;                            jmp   n170_var_α
n169_statement_begin_β: mov              r11, 170;                            jmp   n173_stmt_mark_α
                        .size            n169_statement_begin_bx, .-n169_statement_begin_bx
                        .type            n170_var_bx, @function
n170_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             sub              rsp, 16
                        mov              r11, 171
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_assign_α
                        .size            n170_var_bx, .-n170_var_bx
                        .type            n171_assign_bx, @function
n171_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_assign_α:          mov              r11, 172
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n172_statement_end_α
                        .size            n171_assign_bx, .-n171_assign_bx
                        .type            n172_statement_end_bx, @function
n172_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_end_α:   mov              r11, 173
                        add              rsp, 16;                             jmp   n173_stmt_mark_α
                        .size            n172_statement_end_bx, .-n172_statement_end_bx
                        .type            n173_stmt_mark_bx, @function
n173_stmt_mark_bx:
#=======================================================================================================================
# greater.succeed write.V = greater.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n173_stmt_mark_α:       mov              r11, 174
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n183_statement_begin_α
                        .size            n173_stmt_mark_bx, .-n173_stmt_mark_bx
                        .type            n174_statement_begin_bx, @function
n174_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_begin_α: mov              r11, 175;                            jmp   n175_statement_end_α
n174_statement_begin_β: mov              r11, 175;                            jmp   n176_stmt_mark_α
                        .size            n174_statement_begin_bx, .-n174_statement_begin_bx
                        .type            n175_statement_end_bx, @function
n175_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_end_α:   mov              r11, 176;                            jmp   n176_stmt_mark_α
                        .size            n175_statement_end_bx, .-n175_statement_end_bx
                        .type            n176_stmt_mark_bx, @function
n176_stmt_mark_bx:
#=======================================================================================================================
# greater.start                           :(x5.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n176_stmt_mark_α:       mov              r11, 177
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n146_statement_begin_α
                        .size            n176_stmt_mark_bx, .-n176_stmt_mark_bx
                        .type            n177_statement_begin_bx, @function
n177_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_begin_α: mov              r11, 178;                            jmp   n178_statement_end_α
n177_statement_begin_β: mov              r11, 178;                            jmp   n179_stmt_mark_α
                        .size            n177_statement_begin_bx, .-n177_statement_begin_bx
                        .type            n178_statement_end_bx, @function
n178_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_end_α:   mov              r11, 179;                            jmp   n179_stmt_mark_α
                        .size            n178_statement_end_bx, .-n178_statement_end_bx
                        .type            n179_stmt_mark_bx, @function
n179_stmt_mark_bx:
#=======================================================================================================================
# greater.resume                          :(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n179_stmt_mark_α:       mov              r11, 180
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n155_statement_begin_α
                        .size            n179_stmt_mark_bx, .-n179_stmt_mark_bx
                        .type            n180_statement_begin_bx, @function
n180_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_begin_α: mov              r11, 181;                            jmp   n181_statement_end_α
n180_statement_begin_β: mov              r11, 181;                            jmp   n182_stmt_mark_α
                        .size            n180_statement_begin_bx, .-n180_statement_begin_bx
                        .type            n181_statement_end_bx, @function
n181_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   mov              r11, 182;                            jmp   n182_stmt_mark_α
                        .size            n181_statement_end_bx, .-n181_statement_end_bx
                        .type            n182_stmt_mark_bx, @function
n182_stmt_mark_bx:
#=======================================================================================================================
# write1.fail     OUTPUT = "Failure."     :(main2)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n182_stmt_mark_α:       mov              r11, 183
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 75
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n264_statement_begin_α
                        .size            n182_stmt_mark_bx, .-n182_stmt_mark_bx
                        .type            n183_statement_begin_bx, @function
n183_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_statement_begin_α: mov              r11, 184;                            jmp   n184_var_α
n183_statement_begin_β: mov              r11, 184;                            jmp   n187_stmt_mark_α
                        .size            n183_statement_begin_bx, .-n183_statement_begin_bx
                        .type            n184_var_bx, @function
n184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              r11, 185
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_assign_α
                        .size            n184_var_bx, .-n184_var_bx
                        .type            n185_assign_bx, @function
n185_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              r11, 186
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # write.V
                        mov              qword ptr [r9 + 184], rdx;           jmp   n186_statement_end_α
                        .size            n185_assign_bx, .-n185_assign_bx
                        .type            n186_statement_end_bx, @function
n186_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   mov              r11, 187
                        add              rsp, 16;                             jmp   n187_stmt_mark_α
                        .size            n186_statement_end_bx, .-n186_statement_end_bx
                        .type            n187_stmt_mark_bx, @function
n187_stmt_mark_bx:
#=======================================================================================================================
#                 OUTPUT = write.V        :(write1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n187_stmt_mark_α:       mov              r11, 188
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 45
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n188_statement_begin_α
                        .size            n187_stmt_mark_bx, .-n187_stmt_mark_bx
                        .type            n188_statement_begin_bx, @function
n188_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_statement_begin_α: mov              r11, 189;                            jmp   n189_var_α
n188_statement_begin_β: mov              r11, 189;                            jmp   n192_stmt_mark_α
                        .size            n188_statement_begin_bx, .-n188_statement_begin_bx
                        .type            n189_var_bx, @function
n189_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:             sub              rsp, 16
                        mov              r11, 190
                        mov              rax, qword ptr [r9 + 176]            # write.V
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n190_assign_α
                        .size            n189_var_bx, .-n189_var_bx
                        .type            n190_assign_bx, @function
n190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              r11, 191
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_679_0]
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
1:                                                                            jmp   n191_statement_end_α
.Lassign_α_679_0:       .quad            .Lassign_α_679_0_s
.Lassign_α_679_0_s:     .string          "OUTPUT"
                        .size            n190_assign_bx, .-n190_assign_bx
                        .type            n191_statement_end_bx, @function
n191_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   mov              r11, 192
                        add              rsp, 16;                             jmp   n192_stmt_mark_α
                        .size            n191_statement_end_bx, .-n191_statement_end_bx
                        .type            n192_stmt_mark_bx, @function
n192_stmt_mark_bx:
#=======================================================================================================================
# write1.succeed  OUTPUT = "Success!"     :(write1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n192_stmt_mark_α:       mov              r11, 193
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 76
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n269_statement_begin_α
                        .size            n192_stmt_mark_bx, .-n192_stmt_mark_bx
                        .type            n193_statement_begin_bx, @function
n193_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_begin_α: mov              r11, 194;                            jmp   n194_lit_integer_α
n193_statement_begin_β: mov              r11, 194;                            jmp   n197_stmt_mark_α
                        .size            n193_statement_begin_bx, .-n193_statement_begin_bx
                        .type            n194_lit_integer_bx, @function
n194_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_lit_integer_α:     sub              rsp, 16
                        mov              r11, 195
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_686_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n195_assign_α
.Llit_integer_α_686_0:  .quad            1
                        .size            n194_lit_integer_bx, .-n194_lit_integer_bx
                        .type            n195_assign_bx, @function
n195_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_assign_α:          mov              r11, 196
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n196_statement_end_α
                        .size            n195_assign_bx, .-n195_assign_bx
                        .type            n196_statement_end_bx, @function
n196_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_end_α:   mov              r11, 197
                        add              rsp, 16;                             jmp   n197_stmt_mark_α
                        .size            n196_statement_end_bx, .-n196_statement_end_bx
                        .type            n197_stmt_mark_bx, @function
n197_stmt_mark_bx:
#=======================================================================================================================
# to3.code        LE(to3.I, 2)            :F(write2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n197_stmt_mark_α:       mov              r11, 198
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 65
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n204_statement_begin_α
                        .size            n197_stmt_mark_bx, .-n197_stmt_mark_bx
                        .type            n198_statement_begin_bx, @function
n198_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_begin_α: mov              r11, 199;                            jmp   n199_var_α
n198_statement_begin_β: mov              r11, 199;                            jmp   n197_stmt_mark_α
                        .size            n198_statement_begin_bx, .-n198_statement_begin_bx
                        .type            n199_var_bx, @function
n199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             sub              rsp, 16
                        mov              r11, 200
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_lit_integer_α
                        .size            n199_var_bx, .-n199_var_bx
                        .type            n200_lit_integer_bx, @function
n200_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     sub              rsp, 16
                        mov              r11, 201
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_695_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n201_binop_α
n200_lit_integer_β:     mov              r11, 201
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n198_statement_begin_β
.Llit_integer_α_695_0:  .quad            1
                        .size            n200_lit_integer_bx, .-n200_lit_integer_bx
                        .type            n201_binop_bx, @function
n201_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_binop_α:           sub              rsp, 16
                        mov              r11, 202
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_696_2
                        add              rax, 1;                              jo    .Lbinop_α_696_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_696_7
.Lbinop_α_696_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_696_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_696_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_696_4
.Lbinop_α_696_3:        movq             xmm0, rsi
.Lbinop_α_696_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_696_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_696_7:                                                              jmp   n202_assign_α
.Lbinop_α_696_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_696_240
                        add              rsp, 16;                             jmp   n200_lit_integer_β
.Lbinop_α_696_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:239
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
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
1:                                                                            jmp   n202_assign_α
n201_binop_β:           mov              r11, 202
                        add              rsp, 16;                             jmp   n200_lit_integer_β
                        .size            n201_binop_bx, .-n201_binop_bx
                        .type            n202_assign_bx, @function
n202_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:          mov              r11, 203
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n203_statement_end_α
                        .size            n202_assign_bx, .-n202_assign_bx
                        .type            n203_statement_end_bx, @function
n203_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   mov              r11, 204
                        add              rsp, 48;                             jmp   n197_stmt_mark_α
                        .size            n203_statement_end_bx, .-n203_statement_end_bx
                        .type            n204_statement_begin_bx, @function
n204_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_begin_α: mov              r11, 205;                            jmp   n205_var_α
n204_statement_begin_β: mov              r11, 205;                            jmp   n212_stmt_mark_α
                        .size            n204_statement_begin_bx, .-n204_statement_begin_bx
                        .type            n205_var_bx, @function
n205_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_α:             sub              rsp, 16
                        mov              r11, 206
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n206_lit_integer_α
                        .size            n205_var_bx, .-n205_var_bx
                        .type            n206_lit_integer_bx, @function
n206_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:     sub              rsp, 16
                        mov              r11, 207
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_703_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n207_coerce_numeric_α
n206_lit_integer_β:     mov              r11, 207
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n204_statement_begin_β
.Llit_integer_α_703_0:  .quad            2
                        .size            n206_lit_integer_bx, .-n206_lit_integer_bx
                        .type            n207_coerce_numeric_bx, @function
n207_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 208
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_705_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_705_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_705_0
.Lcoerce_numeric_α_705_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_coerce_numeric_α
.Lcoerce_numeric_α_705_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
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
1:                                                                            jmp   n208_coerce_numeric_α
n207_coerce_numeric_β:  mov              r11, 208
                        add              rsp, 16;                             jmp   n206_lit_integer_β
                        .size            n207_coerce_numeric_bx, .-n207_coerce_numeric_bx
                        .type            n208_coerce_numeric_bx, @function
n208_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 209
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_707_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_707_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_707_0
.Lcoerce_numeric_α_707_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_cmp_test_α
.Lcoerce_numeric_α_707_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
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
1:                                                                            jmp   n209_cmp_test_α
n208_coerce_numeric_β:  mov              r11, 209
                        add              rsp, 16;                             jmp   n207_coerce_numeric_β
                        .size            n208_coerce_numeric_bx, .-n208_coerce_numeric_bx
                        .type            n209_cmp_test_bx, @function
n209_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_cmp_test_α:        sub              rsp, 16
                        mov              r11, 210
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_709_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_709_239
                        add              rsp, 16;                             jmp   n208_coerce_numeric_β
.Lcmp_test_α_709_239:                                                         jmp   n210_statement_end_α
.Lcmp_test_α_709_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_709_240
                        add              rsp, 16;                             jmp   n208_coerce_numeric_β
.Lcmp_test_α_709_240:                                                         jmp   n210_statement_end_α
                        .size            n209_cmp_test_bx, .-n209_cmp_test_bx
                        .type            n210_statement_end_bx, @function
n210_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_statement_end_α:   mov              r11, 211
                        add              rsp, 80;                             jmp   n211_stmt_mark_α
                        .size            n210_statement_end_bx, .-n210_statement_end_bx
                        .type            n211_stmt_mark_bx, @function
n211_stmt_mark_bx:
#=======================================================================================================================
#                 to4.I = 3               :(to4.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n211_stmt_mark_α:       mov              r11, 212
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 66
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n213_statement_begin_α
                        .size            n211_stmt_mark_bx, .-n211_stmt_mark_bx
                        .type            n212_stmt_mark_bx, @function
n212_stmt_mark_bx:
#=======================================================================================================================
# write2.fail     OUTPUT = "Failure."     :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 78 0
n212_stmt_mark_α:       mov              r11, 213
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 60
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 78
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n279_statement_begin_α
                        .size            n212_stmt_mark_bx, .-n212_stmt_mark_bx
                        .type            n213_statement_begin_bx, @function
n213_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_begin_α: mov              r11, 214;                            jmp   n214_lit_integer_α
n213_statement_begin_β: mov              r11, 214;                            jmp   n217_stmt_mark_α
                        .size            n213_statement_begin_bx, .-n213_statement_begin_bx
                        .type            n214_lit_integer_bx, @function
n214_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:     sub              rsp, 16
                        mov              r11, 215
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_718_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n215_assign_α
.Llit_integer_α_718_0:  .quad            3
                        .size            n214_lit_integer_bx, .-n214_lit_integer_bx
                        .type            n215_assign_bx, @function
n215_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_assign_α:          mov              r11, 216
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n216_statement_end_α
                        .size            n215_assign_bx, .-n215_assign_bx
                        .type            n216_statement_end_bx, @function
n216_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_end_α:   mov              r11, 217
                        add              rsp, 16;                             jmp   n217_stmt_mark_α
                        .size            n216_statement_end_bx, .-n216_statement_end_bx
                        .type            n217_stmt_mark_bx, @function
n217_stmt_mark_bx:
#=======================================================================================================================
# to4.code        LE(to4.I, 4)            :F(to3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 68 0
n217_stmt_mark_α:       mov              r11, 218
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 68
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n224_statement_begin_α
                        .size            n217_stmt_mark_bx, .-n217_stmt_mark_bx
                        .type            n218_statement_begin_bx, @function
n218_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_begin_α: mov              r11, 219;                            jmp   n219_var_α
n218_statement_begin_β: mov              r11, 219;                            jmp   n217_stmt_mark_α
                        .size            n218_statement_begin_bx, .-n218_statement_begin_bx
                        .type            n219_var_bx, @function
n219_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_α:             sub              rsp, 16
                        mov              r11, 220
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n220_lit_integer_α
                        .size            n219_var_bx, .-n219_var_bx
                        .type            n220_lit_integer_bx, @function
n220_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_integer_α:     sub              rsp, 16
                        mov              r11, 221
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_727_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n221_binop_α
n220_lit_integer_β:     mov              r11, 221
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n218_statement_begin_β
.Llit_integer_α_727_0:  .quad            1
                        .size            n220_lit_integer_bx, .-n220_lit_integer_bx
                        .type            n221_binop_bx, @function
n221_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              r11, 222
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_728_2
                        add              rax, 1;                              jo    .Lbinop_α_728_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_728_7
.Lbinop_α_728_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_728_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_728_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_728_4
.Lbinop_α_728_3:        movq             xmm0, rsi
.Lbinop_α_728_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_728_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_728_7:                                                              jmp   n222_assign_α
.Lbinop_α_728_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_728_240
                        add              rsp, 16;                             jmp   n220_lit_integer_β
.Lbinop_α_728_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:239
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
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
1:                                                                            jmp   n222_assign_α
n221_binop_β:           mov              r11, 222
                        add              rsp, 16;                             jmp   n220_lit_integer_β
                        .size            n221_binop_bx, .-n221_binop_bx
                        .type            n222_assign_bx, @function
n222_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_assign_α:          mov              r11, 223
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n223_statement_end_α
                        .size            n222_assign_bx, .-n222_assign_bx
                        .type            n223_statement_end_bx, @function
n223_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_end_α:   mov              r11, 224
                        add              rsp, 48;                             jmp   n217_stmt_mark_α
                        .size            n223_statement_end_bx, .-n223_statement_end_bx
                        .type            n224_statement_begin_bx, @function
n224_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_begin_α: mov              r11, 225;                            jmp   n225_var_α
n224_statement_begin_β: mov              r11, 225;                            jmp   n232_stmt_mark_α
                        .size            n224_statement_begin_bx, .-n224_statement_begin_bx
                        .type            n225_var_bx, @function
n225_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             sub              rsp, 16
                        mov              r11, 226
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n226_lit_integer_α
                        .size            n225_var_bx, .-n225_var_bx
                        .type            n226_lit_integer_bx, @function
n226_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:     sub              rsp, 16
                        mov              r11, 227
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_735_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_coerce_numeric_α
n226_lit_integer_β:     mov              r11, 227
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n224_statement_begin_β
.Llit_integer_α_735_0:  .quad            4
                        .size            n226_lit_integer_bx, .-n226_lit_integer_bx
                        .type            n227_coerce_numeric_bx, @function
n227_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 228
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_737_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_737_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_737_0
.Lcoerce_numeric_α_737_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_coerce_numeric_α
.Lcoerce_numeric_α_737_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
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
1:                                                                            jmp   n228_coerce_numeric_α
n227_coerce_numeric_β:  mov              r11, 228
                        add              rsp, 16;                             jmp   n226_lit_integer_β
                        .size            n227_coerce_numeric_bx, .-n227_coerce_numeric_bx
                        .type            n228_coerce_numeric_bx, @function
n228_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 229
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_739_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_739_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_739_0
.Lcoerce_numeric_α_739_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_cmp_test_α
.Lcoerce_numeric_α_739_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
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
1:                                                                            jmp   n229_cmp_test_α
n228_coerce_numeric_β:  mov              r11, 229
                        add              rsp, 16;                             jmp   n227_coerce_numeric_β
                        .size            n228_coerce_numeric_bx, .-n228_coerce_numeric_bx
                        .type            n229_cmp_test_bx, @function
n229_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_cmp_test_α:        sub              rsp, 16
                        mov              r11, 230
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_741_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_741_239
                        add              rsp, 16;                             jmp   n228_coerce_numeric_β
.Lcmp_test_α_741_239:                                                         jmp   n230_statement_end_α
.Lcmp_test_α_741_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_741_240
                        add              rsp, 16;                             jmp   n228_coerce_numeric_β
.Lcmp_test_α_741_240:                                                         jmp   n230_statement_end_α
                        .size            n229_cmp_test_bx, .-n229_cmp_test_bx
                        .type            n230_statement_end_bx, @function
n230_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_statement_end_α:   mov              r11, 231
                        add              rsp, 80;                             jmp   n231_stmt_mark_α
                        .size            n230_statement_end_bx, .-n230_statement_end_bx
                        .type            n231_stmt_mark_bx, @function
n231_stmt_mark_bx:
#=======================================================================================================================
#                 mult.V = to3.I * to4.I  :F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n231_stmt_mark_α:       mov              r11, 232
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 69
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n233_statement_begin_α
                        .size            n231_stmt_mark_bx, .-n231_stmt_mark_bx
                        .type            n232_stmt_mark_bx, @function
n232_stmt_mark_bx:
#=======================================================================================================================
# to3.resume      to3.I = to3.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n232_stmt_mark_α:       mov              r11, 233
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 64
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n198_statement_begin_α
                        .size            n232_stmt_mark_bx, .-n232_stmt_mark_bx
                        .type            n233_statement_begin_bx, @function
n233_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_begin_α: mov              r11, 234;                            jmp   n234_var_α
n233_statement_begin_β: mov              r11, 234;                            jmp   n145_stmt_mark_α
                        .size            n233_statement_begin_bx, .-n233_statement_begin_bx
                        .type            n234_var_bx, @function
n234_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              r11, 235
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_var_α
                        .size            n234_var_bx, .-n234_var_bx
                        .type            n235_var_bx, @function
n235_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              r11, 236
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_binop_α
n235_var_β:             mov              r11, 236
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n233_statement_begin_β
                        .size            n235_var_bx, .-n235_var_bx
                        .type            n236_binop_bx, @function
n236_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_binop_α:           sub              rsp, 16
                        mov              r11, 237
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_752_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_752_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_752_7
.Lbinop_α_752_2:        and              edx, 1;                              jz    .Lbinop_α_752_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_752_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_752_4
.Lbinop_α_752_3:        movq             xmm0, rsi
.Lbinop_α_752_4:        cmp              cl, 5;                               je    .Lbinop_α_752_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_752_6
.Lbinop_α_752_5:        movq             xmm1, rdi
.Lbinop_α_752_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_752_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_752_7:                                                              jmp   n237_assign_α
.Lbinop_α_752_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_752_240
                        add              rsp, 16;                             jmp   n235_var_β
.Lbinop_α_752_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:239
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
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
1:                                                                            jmp   n237_assign_α
n236_binop_β:           mov              r11, 237
                        add              rsp, 16;                             jmp   n235_var_β
                        .size            n236_binop_bx, .-n236_binop_bx
                        .type            n237_assign_bx, @function
n237_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_assign_α:          mov              r11, 238
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n238_statement_end_α
                        .size            n237_assign_bx, .-n237_assign_bx
                        .type            n238_statement_end_bx, @function
n238_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_end_α:   mov              r11, 239
                        add              rsp, 48;                             jmp   n239_stmt_mark_α
                        .size            n238_statement_end_bx, .-n238_statement_end_bx
                        .type            n239_stmt_mark_bx, @function
n239_stmt_mark_bx:
#=======================================================================================================================
#                 GT(5, mult.V)           :F(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n239_stmt_mark_α:       mov              r11, 240
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 70
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n240_statement_begin_α
                        .size            n239_stmt_mark_bx, .-n239_stmt_mark_bx
                        .type            n240_statement_begin_bx, @function
n240_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_statement_begin_α: mov              r11, 241;                            jmp   n241_lit_integer_α
n240_statement_begin_β: mov              r11, 241;                            jmp   n248_stmt_mark_α
                        .size            n240_statement_begin_bx, .-n240_statement_begin_bx
                        .type            n241_lit_integer_bx, @function
n241_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_lit_integer_α:     sub              rsp, 16
                        mov              r11, 242
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_760_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_var_α
.Llit_integer_α_760_0:  .quad            5
                        .size            n241_lit_integer_bx, .-n241_lit_integer_bx
                        .type            n242_var_bx, @function
n242_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_α:             sub              rsp, 16
                        mov              r11, 243
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n243_coerce_numeric_α
n242_var_β:             mov              r11, 243
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n240_statement_begin_β
                        .size            n242_var_bx, .-n242_var_bx
                        .type            n243_coerce_numeric_bx, @function
n243_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 244
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_763_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
.Lcoerce_numeric_α_763_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_coerce_numeric_α
.Lcoerce_numeric_α_763_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
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
1:                                                                            jmp   n244_coerce_numeric_α
n243_coerce_numeric_β:  mov              r11, 244
                        add              rsp, 16;                             jmp   n242_var_β
                        .size            n243_coerce_numeric_bx, .-n243_coerce_numeric_bx
                        .type            n244_coerce_numeric_bx, @function
n244_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 245
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_765_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_765_0
                        mov              eax, dword ptr [rsp + 48]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_765_0
.Lcoerce_numeric_α_765_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_cmp_test_α
.Lcoerce_numeric_α_765_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
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
1:                                                                            jmp   n245_cmp_test_α
n244_coerce_numeric_β:  mov              r11, 245
                        add              rsp, 16;                             jmp   n243_coerce_numeric_β
                        .size            n244_coerce_numeric_bx, .-n244_coerce_numeric_bx
                        .type            n245_cmp_test_bx, @function
n245_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_cmp_test_α:        sub              rsp, 16
                        mov              r11, 246
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_767_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_767_239
                        add              rsp, 16;                             jmp   n244_coerce_numeric_β
.Lcmp_test_α_767_239:                                                         jmp   n246_statement_end_α
.Lcmp_test_α_767_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jg    .Lcmp_test_α_767_240
                        add              rsp, 16;                             jmp   n244_coerce_numeric_β
.Lcmp_test_α_767_240:                                                         jmp   n246_statement_end_α
                        .size            n245_cmp_test_bx, .-n245_cmp_test_bx
                        .type            n246_statement_end_bx, @function
n246_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   mov              r11, 247
                        add              rsp, 80;                             jmp   n247_stmt_mark_α
                        .size            n246_statement_end_bx, .-n246_statement_end_bx
                        .type            n247_stmt_mark_bx, @function
n247_stmt_mark_bx:
#=======================================================================================================================
#                 greater.V = mult.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n247_stmt_mark_α:       mov              r11, 248
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 71
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n249_statement_begin_α
                        .size            n247_stmt_mark_bx, .-n247_stmt_mark_bx
                        .type            n248_stmt_mark_bx, @function
n248_stmt_mark_bx:
#=======================================================================================================================
# write2.resume   to4.I = to4.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n248_stmt_mark_α:       mov              r11, 249
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 67
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n218_statement_begin_α
                        .size            n248_stmt_mark_bx, .-n248_stmt_mark_bx
                        .type            n249_statement_begin_bx, @function
n249_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_statement_begin_α: mov              r11, 250;                            jmp   n250_var_α
n249_statement_begin_β: mov              r11, 250;                            jmp   n253_stmt_mark_α
                        .size            n249_statement_begin_bx, .-n249_statement_begin_bx
                        .type            n250_var_bx, @function
n250_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             sub              rsp, 16
                        mov              r11, 251
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n251_assign_α
                        .size            n250_var_bx, .-n250_var_bx
                        .type            n251_assign_bx, @function
n251_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_assign_α:          mov              r11, 252
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n252_statement_end_α
                        .size            n251_assign_bx, .-n251_assign_bx
                        .type            n252_statement_end_bx, @function
n252_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_end_α:   mov              r11, 253
                        add              rsp, 16;                             jmp   n253_stmt_mark_α
                        .size            n252_statement_end_bx, .-n252_statement_end_bx
                        .type            n253_stmt_mark_bx, @function
n253_stmt_mark_bx:
#=======================================================================================================================
#                 OUTPUT = greater.V      :(write2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n253_stmt_mark_α:       mov              r11, 254
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 72
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n254_statement_begin_α
                        .size            n253_stmt_mark_bx, .-n253_stmt_mark_bx
                        .type            n254_statement_begin_bx, @function
n254_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_statement_begin_α: mov              r11, 255;                            jmp   n255_var_α
n254_statement_begin_β: mov              r11, 255;                            jmp   n258_stmt_mark_α
                        .size            n254_statement_begin_bx, .-n254_statement_begin_bx
                        .type            n255_var_bx, @function
n255_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             sub              rsp, 16
                        mov              r11, 256
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n256_assign_α
                        .size            n255_var_bx, .-n255_var_bx
                        .type            n256_assign_bx, @function
n256_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_assign_α:          mov              r11, 257
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_785_0]
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
1:                                                                            jmp   n257_statement_end_α
.Lassign_α_785_0:       .quad            .Lassign_α_785_0_s
.Lassign_α_785_0_s:     .string          "OUTPUT"
                        .size            n256_assign_bx, .-n256_assign_bx
                        .type            n257_statement_end_bx, @function
n257_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_end_α:   mov              r11, 258
                        add              rsp, 16;                             jmp   n258_stmt_mark_α
                        .size            n257_statement_end_bx, .-n257_statement_end_bx
                        .type            n258_stmt_mark_bx, @function
n258_stmt_mark_bx:
#=======================================================================================================================
# write2.succeed  OUTPUT = "Success!"     :(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n258_stmt_mark_α:       mov              r11, 259
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 61
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n283_statement_begin_α
                        .size            n258_stmt_mark_bx, .-n258_stmt_mark_bx
                        .type            n259_statement_begin_bx, @function
n259_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_statement_begin_α: mov              r11, 260;                            jmp   n260_lit_string_α
n259_statement_begin_β: mov              r11, 260;                            jmp   n263_stmt_mark_α
                        .size            n259_statement_begin_bx, .-n259_statement_begin_bx
                        .type            n260_lit_string_bx, @function
n260_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      sub              rsp, 16
                        mov              r11, 261
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_792_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n261_assign_α
.Llit_string_α_792_0:   .quad            .Llit_string_α_792_0_s
.Llit_string_α_792_0_s: .string          ""
                        .size            n260_lit_string_bx, .-n260_lit_string_bx
                        .type            n261_assign_bx, @function
n261_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_assign_α:          mov              r11, 262
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_793_0]
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
1:                                                                            jmp   n262_statement_end_α
.Lassign_α_793_0:       .quad            .Lassign_α_793_0_s
.Lassign_α_793_0_s:     .string          "OUTPUT"
                        .size            n261_assign_bx, .-n261_assign_bx
                        .type            n262_statement_end_bx, @function
n262_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_end_α:   mov              r11, 263
                        add              rsp, 16;                             jmp   n263_stmt_mark_α
                        .size            n262_statement_end_bx, .-n262_statement_end_bx
                        .type            n263_stmt_mark_bx, @function
n263_stmt_mark_bx:
#=======================================================================================================================
# write1.start                            :(greater.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n263_stmt_mark_α:       mov              r11, 264
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n174_statement_begin_α
                        .size            n263_stmt_mark_bx, .-n263_stmt_mark_bx
                        .type            n264_statement_begin_bx, @function
n264_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_statement_begin_α: mov              r11, 265;                            jmp   n265_lit_string_α
n264_statement_begin_β: mov              r11, 265;                            jmp   n268_stmt_mark_α
                        .size            n264_statement_begin_bx, .-n264_statement_begin_bx
                        .type            n265_lit_string_bx, @function
n265_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      sub              rsp, 16
                        mov              r11, 266
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_800_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n266_assign_α
.Llit_string_α_800_0:   .quad            .Llit_string_α_800_0_s
.Llit_string_α_800_0_s: .string          "Failure."
                        .size            n265_lit_string_bx, .-n265_lit_string_bx
                        .type            n266_assign_bx, @function
n266_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_assign_α:          mov              r11, 267
                        mov              rax, qword ptr [rsp + 0]             # lit_string
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
1:                                                                            jmp   n267_statement_end_α
.Lassign_α_801_0:       .quad            .Lassign_α_801_0_s
.Lassign_α_801_0_s:     .string          "OUTPUT"
                        .size            n266_assign_bx, .-n266_assign_bx
                        .type            n267_statement_end_bx, @function
n267_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_end_α:   mov              r11, 268
                        add              rsp, 16;                             jmp   n268_stmt_mark_α
                        .size            n267_statement_end_bx, .-n267_statement_end_bx
                        .type            n268_stmt_mark_bx, @function
n268_stmt_mark_bx:
#=======================================================================================================================
# main2           OUTPUT =                :(write2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 77 0
n268_stmt_mark_α:       mov              r11, 269
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 77
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n274_statement_begin_α
                        .size            n268_stmt_mark_bx, .-n268_stmt_mark_bx
                        .type            n269_statement_begin_bx, @function
n269_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_statement_begin_α: mov              r11, 270;                            jmp   n270_lit_string_α
n269_statement_begin_β: mov              r11, 270;                            jmp   n273_stmt_mark_α
                        .size            n269_statement_begin_bx, .-n269_statement_begin_bx
                        .type            n270_lit_string_bx, @function
n270_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      sub              rsp, 16
                        mov              r11, 271
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_808_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n271_assign_α
.Llit_string_α_808_0:   .quad            .Llit_string_α_808_0_s
.Llit_string_α_808_0_s: .string          "Success!"
                        .size            n270_lit_string_bx, .-n270_lit_string_bx
                        .type            n271_assign_bx, @function
n271_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_assign_α:          mov              r11, 272
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_809_0]
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
1:                                                                            jmp   n272_statement_end_α
.Lassign_α_809_0:       .quad            .Lassign_α_809_0_s
.Lassign_α_809_0_s:     .string          "OUTPUT"
                        .size            n271_assign_bx, .-n271_assign_bx
                        .type            n272_statement_end_bx, @function
n272_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_end_α:   mov              r11, 273
                        add              rsp, 16;                             jmp   n273_stmt_mark_α
                        .size            n272_statement_end_bx, .-n272_statement_end_bx
                        .type            n273_stmt_mark_bx, @function
n273_stmt_mark_bx:
#=======================================================================================================================
# write1.resume                           :(greater.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n273_stmt_mark_α:       mov              r11, 274
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n177_statement_begin_α
                        .size            n273_stmt_mark_bx, .-n273_stmt_mark_bx
                        .type            n274_statement_begin_bx, @function
n274_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_begin_α: mov              r11, 275;                            jmp   n275_lit_string_α
n274_statement_begin_β: mov              r11, 275;                            jmp   n278_stmt_mark_α
                        .size            n274_statement_begin_bx, .-n274_statement_begin_bx
                        .type            n275_lit_string_bx, @function
n275_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:      sub              rsp, 16
                        mov              r11, 276
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_816_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n276_assign_α
.Llit_string_α_816_0:   .quad            .Llit_string_α_816_0_s
.Llit_string_α_816_0_s: .string          ""
                        .size            n275_lit_string_bx, .-n275_lit_string_bx
                        .type            n276_assign_bx, @function
n276_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_assign_α:          mov              r11, 277
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_817_0]
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
1:                                                                            jmp   n277_statement_end_α
.Lassign_α_817_0:       .quad            .Lassign_α_817_0_s
.Lassign_α_817_0_s:     .string          "OUTPUT"
                        .size            n276_assign_bx, .-n276_assign_bx
                        .type            n277_statement_end_bx, @function
n277_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_end_α:   mov              r11, 278
                        add              rsp, 16;                             jmp   n278_stmt_mark_α
                        .size            n277_statement_end_bx, .-n277_statement_end_bx
                        .type            n278_stmt_mark_bx, @function
n278_stmt_mark_bx:
#=======================================================================================================================
# write2.start    to3.I = 1               :(to3.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n278_stmt_mark_α:       mov              r11, 279
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 63
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n193_statement_begin_α
                        .size            n278_stmt_mark_bx, .-n278_stmt_mark_bx
                        .type            n279_statement_begin_bx, @function
n279_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_statement_begin_α: mov              r11, 280;                            jmp   n280_lit_string_α
n279_statement_begin_β: mov              r11, 280;                            jmp   main_γ
                        .size            n279_statement_begin_bx, .-n279_statement_begin_bx
                        .type            n280_lit_string_bx, @function
n280_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      sub              rsp, 16
                        mov              r11, 281
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_824_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n281_assign_α
.Llit_string_α_824_0:   .quad            .Llit_string_α_824_0_s
.Llit_string_α_824_0_s: .string          "Failure."
                        .size            n280_lit_string_bx, .-n280_lit_string_bx
                        .type            n281_assign_bx, @function
n281_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_assign_α:          mov              r11, 282
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_825_0]
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
1:                                                                            jmp   n282_statement_end_α
.Lassign_α_825_0:       .quad            .Lassign_α_825_0_s
.Lassign_α_825_0_s:     .string          "OUTPUT"
                        .size            n281_assign_bx, .-n281_assign_bx
                        .type            n282_statement_end_bx, @function
n282_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_end_α:   mov              r11, 283
                        add              rsp, 16;                             jmp   main_γ
                        .size            n282_statement_end_bx, .-n282_statement_end_bx
                        .type            n283_statement_begin_bx, @function
n283_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_begin_α: mov              r11, 284;                            jmp   n284_lit_string_α
n283_statement_begin_β: mov              r11, 284;                            jmp   n248_stmt_mark_α
                        .size            n283_statement_begin_bx, .-n283_statement_begin_bx
                        .type            n284_lit_string_bx, @function
n284_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      sub              rsp, 16
                        mov              r11, 285
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_830_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_assign_α
.Llit_string_α_830_0:   .quad            .Llit_string_α_830_0_s
.Llit_string_α_830_0_s: .string          "Success!"
                        .size            n284_lit_string_bx, .-n284_lit_string_bx
                        .type            n285_assign_bx, @function
n285_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:          mov              r11, 286
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_831_0]
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
1:                                                                            jmp   n286_statement_end_α
.Lassign_α_831_0:       .quad            .Lassign_α_831_0_s
.Lassign_α_831_0_s:     .string          "OUTPUT"
                        .size            n285_assign_bx, .-n285_assign_bx
                        .type            n286_statement_end_bx, @function
n286_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_end_α:   mov              r11, 287
                        add              rsp, 16;                             jmp   n248_stmt_mark_α
                        .size            n286_statement_end_bx, .-n286_statement_end_bx
                        .type            n287_statement_begin_bx, @function
n287_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_begin_α: mov              r11, 288;                            jmp   n288_lit_string_α
n287_statement_begin_β: mov              r11, 288;                            jmp   main_γ
                        .size            n287_statement_begin_bx, .-n287_statement_begin_bx
                        .type            n288_lit_string_bx, @function
n288_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:      sub              rsp, 16
                        mov              r11, 289
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_836_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n289_assign_α
.Llit_string_α_836_0:   .quad            .Llit_string_α_836_0_s
.Llit_string_α_836_0_s: .string          "Exception!"
                        .size            n288_lit_string_bx, .-n288_lit_string_bx
                        .type            n289_assign_bx, @function
n289_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_assign_α:          mov              r11, 290
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_837_0]
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
1:                                                                            jmp   n290_statement_end_α
.Lassign_α_837_0:       .quad            .Lassign_α_837_0_s
.Lassign_α_837_0_s:     .string          "TERMINAL"
                        .size            n289_assign_bx, .-n289_assign_bx
                        .type            n290_statement_end_bx, @function
n290_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_statement_end_α:   mov              r11, 291
                        add              rsp, 16;                             jmp   main_γ
                        .size            n290_statement_end_bx, .-n290_statement_end_bx
                        .type            n291_goto_bx, @function
n291_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_goto_α:            mov              r11, 292;                            jmp   n1_lit_integer_α
n291_goto_β:            mov              r11, 292;                            jmp   main_ω
                        .size            n291_goto_bx, .-n291_goto_bx
                        .type            n292_goto_bx, @function
n292_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_goto_α:            mov              r11, 293;                            jmp   n148_stmt_mark_α
n292_goto_β:            mov              r11, 293;                            jmp   main_ω
                        .size            n292_goto_bx, .-n292_goto_bx
                        .type            n293_goto_bx, @function
n293_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_goto_α:            mov              r11, 294;                            jmp   n154_stmt_mark_α
n293_goto_β:            mov              r11, 294;                            jmp   main_ω
                        .size            n293_goto_bx, .-n293_goto_bx
                        .type            n294_goto_bx, @function
n294_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_goto_α:            mov              r11, 295;                            jmp   n35_stmt_mark_α
n294_goto_β:            mov              r11, 295;                            jmp   main_ω
                        .size            n294_goto_bx, .-n294_goto_bx
                        .type            n295_goto_bx, @function
n295_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_goto_α:            mov              r11, 296;                            jmp   n41_stmt_mark_α
n295_goto_β:            mov              r11, 296;                            jmp   main_ω
                        .size            n295_goto_bx, .-n295_goto_bx
                        .type            n296_goto_bx, @function
n296_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_goto_α:            mov              r11, 297;                            jmp   n65_stmt_mark_α
n296_goto_β:            mov              r11, 297;                            jmp   main_ω
                        .size            n296_goto_bx, .-n296_goto_bx
                        .type            n297_goto_bx, @function
n297_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_goto_α:            mov              r11, 298;                            jmp   n50_stmt_mark_α
n297_goto_β:            mov              r11, 298;                            jmp   main_ω
                        .size            n297_goto_bx, .-n297_goto_bx
                        .type            n298_goto_bx, @function
n298_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_goto_α:            mov              r11, 299;                            jmp   n125_stmt_mark_α
n298_goto_β:            mov              r11, 299;                            jmp   main_ω
                        .size            n298_goto_bx, .-n298_goto_bx
                        .type            n299_goto_bx, @function
n299_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_goto_α:            mov              r11, 300;                            jmp   n24_stmt_mark_α
n299_goto_β:            mov              r11, 300;                            jmp   main_ω
                        .size            n299_goto_bx, .-n299_goto_bx
                        .type            n300_goto_bx, @function
n300_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_goto_α:            mov              r11, 301;                            jmp   n32_stmt_mark_α
n300_goto_β:            mov              r11, 301;                            jmp   main_ω
                        .size            n300_goto_bx, .-n300_goto_bx
                        .type            n301_goto_bx, @function
n301_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_goto_α:            mov              r11, 302;                            jmp   n62_stmt_mark_α
n301_goto_β:            mov              r11, 302;                            jmp   main_ω
                        .size            n301_goto_bx, .-n301_goto_bx
                        .type            n302_goto_bx, @function
n302_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_goto_α:            mov              r11, 303;                            jmp   n131_stmt_mark_α
n302_goto_β:            mov              r11, 303;                            jmp   main_ω
                        .size            n302_goto_bx, .-n302_goto_bx
                        .type            n303_goto_bx, @function
n303_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_goto_α:            mov              r11, 304;                            jmp   n21_stmt_mark_α
n303_goto_β:            mov              r11, 304;                            jmp   main_ω
                        .size            n303_goto_bx, .-n303_goto_bx
                        .type            n304_goto_bx, @function
n304_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_goto_α:            mov              r11, 305;                            jmp   n29_stmt_mark_α
n304_goto_β:            mov              r11, 305;                            jmp   main_ω
                        .size            n304_goto_bx, .-n304_goto_bx
                        .type            n305_goto_bx, @function
n305_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_goto_α:            mov              r11, 306;                            jmp   n88_stmt_mark_α
n305_goto_β:            mov              r11, 306;                            jmp   main_ω
                        .size            n305_goto_bx, .-n305_goto_bx
                        .type            n306_goto_bx, @function
n306_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_goto_α:            mov              r11, 307;                            jmp   n94_stmt_mark_α
n306_goto_β:            mov              r11, 307;                            jmp   main_ω
                        .size            n306_goto_bx, .-n306_goto_bx
                        .type            n307_goto_bx, @function
n307_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_goto_α:            mov              r11, 308;                            jmp   n118_stmt_mark_α
n307_goto_β:            mov              r11, 308;                            jmp   main_ω
                        .size            n307_goto_bx, .-n307_goto_bx
                        .type            n308_goto_bx, @function
n308_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_goto_α:            mov              r11, 309;                            jmp   n103_stmt_mark_α
n308_goto_β:            mov              r11, 309;                            jmp   main_ω
                        .size            n308_goto_bx, .-n308_goto_bx
                        .type            n309_goto_bx, @function
n309_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_goto_α:            mov              r11, 310;                            jmp   n137_stmt_mark_α
n309_goto_β:            mov              r11, 310;                            jmp   main_ω
                        .size            n309_goto_bx, .-n309_goto_bx
                        .type            n310_goto_bx, @function
n310_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_goto_α:            mov              r11, 311;                            jmp   n77_stmt_mark_α
n310_goto_β:            mov              r11, 311;                            jmp   main_ω
                        .size            n310_goto_bx, .-n310_goto_bx
                        .type            n311_goto_bx, @function
n311_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_goto_α:            mov              r11, 312;                            jmp   n85_stmt_mark_α
n311_goto_β:            mov              r11, 312;                            jmp   main_ω
                        .size            n311_goto_bx, .-n311_goto_bx
                        .type            n312_goto_bx, @function
n312_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_goto_α:            mov              r11, 313;                            jmp   n115_stmt_mark_α
n312_goto_β:            mov              r11, 313;                            jmp   main_ω
                        .size            n312_goto_bx, .-n312_goto_bx
                        .type            n313_goto_bx, @function
n313_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_goto_α:            mov              r11, 314;                            jmp   n134_stmt_mark_α
n313_goto_β:            mov              r11, 314;                            jmp   main_ω
                        .size            n313_goto_bx, .-n313_goto_bx
                        .type            n314_goto_bx, @function
n314_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_goto_α:            mov              r11, 315;                            jmp   n74_stmt_mark_α
n314_goto_β:            mov              r11, 315;                            jmp   main_ω
                        .size            n314_goto_bx, .-n314_goto_bx
                        .type            n315_goto_bx, @function
n315_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:            mov              r11, 316;                            jmp   n82_stmt_mark_α
n315_goto_β:            mov              r11, 316;                            jmp   main_ω
                        .size            n315_goto_bx, .-n315_goto_bx
                        .type            n316_goto_bx, @function
n316_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_goto_α:            mov              r11, 317;                            jmp   n160_stmt_mark_α
n316_goto_β:            mov              r11, 317;                            jmp   main_ω
                        .size            n316_goto_bx, .-n316_goto_bx
                        .type            n317_goto_bx, @function
n317_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_goto_α:            mov              r11, 318;                            jmp   n38_stmt_mark_α
n317_goto_β:            mov              r11, 318;                            jmp   main_ω
                        .size            n317_goto_bx, .-n317_goto_bx
                        .type            n318_goto_bx, @function
n318_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:            mov              r11, 319;                            jmp   n91_stmt_mark_α
n318_goto_β:            mov              r11, 319;                            jmp   main_ω
                        .size            n318_goto_bx, .-n318_goto_bx
                        .type            n319_goto_bx, @function
n319_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_goto_α:            mov              r11, 320;                            jmp   n157_stmt_mark_α
n319_goto_β:            mov              r11, 320;                            jmp   main_ω
                        .size            n319_goto_bx, .-n319_goto_bx
                        .type            n320_goto_bx, @function
n320_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_goto_α:            mov              r11, 321;                            jmp   n55_stmt_mark_α
n320_goto_β:            mov              r11, 321;                            jmp   main_ω
                        .size            n320_goto_bx, .-n320_goto_bx
                        .type            n321_goto_bx, @function
n321_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_goto_α:            mov              r11, 322;                            jmp   n108_stmt_mark_α
n321_goto_β:            mov              r11, 322;                            jmp   main_ω
                        .size            n321_goto_bx, .-n321_goto_bx
                        .type            n322_goto_bx, @function
n322_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_goto_α:            mov              r11, 323;                            jmp   n176_stmt_mark_α
n322_goto_β:            mov              r11, 323;                            jmp   main_ω
                        .size            n322_goto_bx, .-n322_goto_bx
                        .type            n323_goto_bx, @function
n323_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_goto_α:            mov              r11, 324;                            jmp   n16_stmt_mark_α
n323_goto_β:            mov              r11, 324;                            jmp   main_ω
                        .size            n323_goto_bx, .-n323_goto_bx
                        .type            n324_goto_bx, @function
n324_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_goto_α:            mov              r11, 325;                            jmp   n128_stmt_mark_α
n324_goto_β:            mov              r11, 325;                            jmp   main_ω
                        .size            n324_goto_bx, .-n324_goto_bx
                        .type            n325_goto_bx, @function
n325_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_goto_α:            mov              r11, 326;                            jmp   n179_stmt_mark_α
n325_goto_β:            mov              r11, 326;                            jmp   main_ω
                        .size            n325_goto_bx, .-n325_goto_bx
                        .type            n326_goto_bx, @function
n326_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:            mov              r11, 327;                            jmp   n13_stmt_mark_α
n326_goto_β:            mov              r11, 327;                            jmp   main_ω
                        .size            n326_goto_bx, .-n326_goto_bx
                        .type            n327_goto_bx, @function
n327_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_goto_α:            mov              r11, 328;                            jmp   n144_stmt_mark_α
n327_goto_β:            mov              r11, 328;                            jmp   main_ω
                        .size            n327_goto_bx, .-n327_goto_bx
                        .type            n328_goto_bx, @function
n328_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_goto_α:            mov              r11, 329;                            jmp   n263_stmt_mark_α
n328_goto_β:            mov              r11, 329;                            jmp   main_ω
                        .size            n328_goto_bx, .-n328_goto_bx
                        .type            n329_goto_bx, @function
n329_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_goto_α:            mov              r11, 330;                            jmp   n273_stmt_mark_α
n329_goto_β:            mov              r11, 330;                            jmp   main_ω
                        .size            n329_goto_bx, .-n329_goto_bx
                        .type            n330_goto_bx, @function
n330_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_goto_α:            mov              r11, 331;                            jmp   n151_stmt_mark_α
n330_goto_β:            mov              r11, 331;                            jmp   main_ω
                        .size            n330_goto_bx, .-n330_goto_bx
                        .type            n331_goto_bx, @function
n331_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_goto_α:            mov              r11, 332;                            jmp   n173_stmt_mark_α
n331_goto_β:            mov              r11, 332;                            jmp   main_ω
                        .size            n331_goto_bx, .-n331_goto_bx
                        .type            n332_goto_bx, @function
n332_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_goto_α:            mov              r11, 333;                            jmp   n278_stmt_mark_α
n332_goto_β:            mov              r11, 333;                            jmp   main_ω
                        .size            n332_goto_bx, .-n332_goto_bx
                        .type            n333_goto_bx, @function
n333_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:            mov              r11, 334;                            jmp   n232_stmt_mark_α
n333_goto_β:            mov              r11, 334;                            jmp   main_ω
                        .size            n333_goto_bx, .-n333_goto_bx
                        .type            n334_goto_bx, @function
n334_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:            mov              r11, 335;                            jmp   n197_stmt_mark_α
n334_goto_β:            mov              r11, 335;                            jmp   main_ω
                        .size            n334_goto_bx, .-n334_goto_bx
                        .type            n335_goto_bx, @function
n335_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:            mov              r11, 336;                            jmp   n248_stmt_mark_α
n335_goto_β:            mov              r11, 336;                            jmp   main_ω
                        .size            n335_goto_bx, .-n335_goto_bx
                        .type            n336_goto_bx, @function
n336_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_goto_α:            mov              r11, 337;                            jmp   n217_stmt_mark_α
n336_goto_β:            mov              r11, 337;                            jmp   main_ω
                        .size            n336_goto_bx, .-n336_goto_bx
                        .type            n337_goto_bx, @function
n337_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:            mov              r11, 338;                            jmp   n8_stmt_mark_α
n337_goto_β:            mov              r11, 338;                            jmp   main_ω
                        .size            n337_goto_bx, .-n337_goto_bx
                        .type            n338_goto_bx, @function
n338_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:            mov              r11, 339;                            jmp   n182_stmt_mark_α
n338_goto_β:            mov              r11, 339;                            jmp   main_ω
                        .size            n338_goto_bx, .-n338_goto_bx
                        .type            n339_goto_bx, @function
n339_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_goto_α:            mov              r11, 340;                            jmp   n192_stmt_mark_α
n339_goto_β:            mov              r11, 340;                            jmp   main_ω
                        .size            n339_goto_bx, .-n339_goto_bx
                        .type            n340_goto_bx, @function
n340_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_goto_α:            mov              r11, 341;                            jmp   n268_stmt_mark_α
n340_goto_β:            mov              r11, 341;                            jmp   main_ω
                        .size            n340_goto_bx, .-n340_goto_bx
                        .type            n341_goto_bx, @function
n341_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_goto_α:            mov              r11, 342;                            jmp   n212_stmt_mark_α
n341_goto_β:            mov              r11, 342;                            jmp   main_ω
                        .size            n341_goto_bx, .-n341_goto_bx
                        .type            n342_goto_bx, @function
n342_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_goto_α:            mov              r11, 343;                            jmp   n258_stmt_mark_α
n342_goto_β:            mov              r11, 343;                            jmp   main_ω
                        .size            n342_goto_bx, .-n342_goto_bx
                        .type            n343_goto_bx, @function
n343_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_goto_α:            mov              r11, 344;                            jmp   n145_stmt_mark_α
n343_goto_β:            mov              r11, 344;                            jmp   main_ω
                        .size            n343_goto_bx, .-n343_goto_bx
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
                        .quad            5155307212122
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1184
                        .quad            1
                        .quad            1301821767286784
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
