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
                        mov              qword ptr [rsp + 1112], rax
                        mov              dword ptr [rsp + 1104], 160
                        mov              dword ptr [rsp + 1108], 1120
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
1:                      cmp              al, 104;                             jne   .Lcall_α_342_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_342_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                      cmp              al, 104;                             jne   .Lcall_α_343_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_line_mark_α
.Lcall_α_343_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_line_mark_α
n1_call_β:              mov              r11, 2
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_line_mark_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_line_mark_bx, @function
n2_line_mark_bx:
#=======================================================================================================================
# START                                   :(main1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n2_line_mark_α:         sub              rsp, 16
                        mov              r11, 3
                        mov              rax, qword ptr [rip + g_file@GOTPCREL]
                        mov              rcx, qword ptr [rip + .Lline_mark_α_345_0]
                        mov              qword ptr [rax + 0], rcx;            jmp   n3_stmt_mark_α
.Lline_mark_α_345_0:    .quad            .Lline_mark_α_345_0_s
.Lline_mark_α_345_0_s:  .string          "test_icon.sno"
                        .size            n2_line_mark_bx, .-n2_line_mark_bx
                        .type            n3_stmt_mark_bx, @function
n3_stmt_mark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_stmt_mark_α:         mov              r11, 4
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
                        add              rsp, 16;                             jmp   n4_statement_begin_α
                        .size            n3_stmt_mark_bx, .-n3_stmt_mark_bx
                        .type            n4_statement_begin_bx, @function
n4_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_statement_begin_α:   mov              r11, 5;                              jmp   n5_statement_end_α
n4_statement_begin_β:   mov              r11, 5;                              jmp   n6_stmt_mark_α
                        .size            n4_statement_begin_bx, .-n4_statement_begin_bx
                        .type            n5_statement_end_bx, @function
n5_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     mov              r11, 6;                              jmp   n6_stmt_mark_α
                        .size            n5_statement_end_bx, .-n5_statement_end_bx
                        .type            n6_stmt_mark_bx, @function
n6_stmt_mark_bx:
#=======================================================================================================================
# main1           OUTPUT =                :(write1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 74 0
n6_stmt_mark_α:         mov              r11, 7
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 56
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 74
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n257_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_356_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_assign_α
.Llit_integer_α_356_0:  .quad            5
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              r11, 10
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # x5.V
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
# x5.succeed                              :(mult.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n11_stmt_mark_α:        mov              r11, 12
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n156_statement_begin_α
                        .size            n11_stmt_mark_bx, .-n11_stmt_mark_bx
                        .type            n12_statement_begin_bx, @function
n12_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_statement_begin_α:  mov              r11, 13;                             jmp   n13_statement_end_α
n12_statement_begin_β:  mov              r11, 13;                             jmp   n14_stmt_mark_α
                        .size            n12_statement_begin_bx, .-n12_statement_begin_bx
                        .type            n13_statement_end_bx, @function
n13_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    mov              r11, 14;                             jmp   n14_stmt_mark_α
                        .size            n13_statement_end_bx, .-n13_statement_end_bx
                        .type            n14_stmt_mark_bx, @function
n14_stmt_mark_bx:
#=======================================================================================================================
# x5.fail                                 :(greater.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n14_stmt_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n147_statement_begin_α
                        .size            n14_stmt_mark_bx, .-n14_stmt_mark_bx
                        .type            n15_statement_begin_bx, @function
n15_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:  mov              r11, 16;                             jmp   n16_lit_integer_α
n15_statement_begin_β:  mov              r11, 16;                             jmp   n19_stmt_mark_α
                        .size            n15_statement_begin_bx, .-n15_statement_begin_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      sub              rsp, 16
                        mov              r11, 17
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_370_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n17_assign_α
.Llit_integer_α_370_0:  .quad            1
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_assign_bx, @function
n17_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_assign_α:           mov              r11, 18
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # x1.V
                        mov              qword ptr [r9 + 24], rdx;            jmp   n18_statement_end_α
                        .size            n17_assign_bx, .-n17_assign_bx
                        .type            n18_statement_end_bx, @function
n18_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_end_α:    mov              r11, 19
                        add              rsp, 16;                             jmp   n19_stmt_mark_α
                        .size            n18_statement_end_bx, .-n18_statement_end_bx
                        .type            n19_stmt_mark_bx, @function
n19_stmt_mark_bx:
#=======================================================================================================================
# x1.succeed                              :(x2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n19_stmt_mark_α:        mov              r11, 20
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n61_statement_begin_α
                        .size            n19_stmt_mark_bx, .-n19_stmt_mark_bx
                        .type            n20_statement_begin_bx, @function
n20_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_statement_begin_α:  mov              r11, 21;                             jmp   n21_statement_end_α
n20_statement_begin_β:  mov              r11, 21;                             jmp   n22_stmt_mark_α
                        .size            n20_statement_begin_bx, .-n20_statement_begin_bx
                        .type            n21_statement_end_bx, @function
n21_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    mov              r11, 22;                             jmp   n22_stmt_mark_α
                        .size            n21_statement_end_bx, .-n21_statement_end_bx
                        .type            n22_stmt_mark_bx, @function
n22_stmt_mark_bx:
#=======================================================================================================================
# x1.fail                                 :(to1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n22_stmt_mark_α:        mov              r11, 23
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n34_statement_begin_α
                        .size            n22_stmt_mark_bx, .-n22_stmt_mark_bx
                        .type            n23_statement_begin_bx, @function
n23_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 24;                             jmp   n24_lit_integer_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n27_stmt_mark_α
                        .size            n23_statement_begin_bx, .-n23_statement_begin_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      sub              rsp, 16
                        mov              r11, 25
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_384_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n25_assign_α
.Llit_integer_α_384_0:  .quad            2
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_assign_bx, @function
n25_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_assign_α:           mov              r11, 26
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # x2.V
                        mov              qword ptr [r9 + 40], rdx;            jmp   n26_statement_end_α
                        .size            n25_assign_bx, .-n25_assign_bx
                        .type            n26_statement_end_bx, @function
n26_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_end_α:    mov              r11, 27
                        add              rsp, 16;                             jmp   n27_stmt_mark_α
                        .size            n26_statement_end_bx, .-n26_statement_end_bx
                        .type            n27_stmt_mark_bx, @function
n27_stmt_mark_bx:
#=======================================================================================================================
# x2.succeed      to1.I = x1.V            :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n27_stmt_mark_α:        mov              r11, 28
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n64_statement_begin_α
                        .size            n27_stmt_mark_bx, .-n27_stmt_mark_bx
                        .type            n28_statement_begin_bx, @function
n28_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_statement_begin_α:  mov              r11, 29;                             jmp   n29_statement_end_α
n28_statement_begin_β:  mov              r11, 29;                             jmp   n30_stmt_mark_α
                        .size            n28_statement_begin_bx, .-n28_statement_begin_bx
                        .type            n29_statement_end_bx, @function
n29_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:    mov              r11, 30;                             jmp   n30_stmt_mark_α
                        .size            n29_statement_end_bx, .-n29_statement_end_bx
                        .type            n30_stmt_mark_bx, @function
n30_stmt_mark_bx:
#=======================================================================================================================
# x2.fail                                 :(x1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n30_stmt_mark_α:        mov              r11, 31
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n37_statement_begin_α
                        .size            n30_stmt_mark_bx, .-n30_stmt_mark_bx
                        .type            n31_statement_begin_bx, @function
n31_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_statement_begin_α:  mov              r11, 32;                             jmp   n32_statement_end_α
n31_statement_begin_β:  mov              r11, 32;                             jmp   n33_stmt_mark_α
                        .size            n31_statement_begin_bx, .-n31_statement_begin_bx
                        .type            n32_statement_end_bx, @function
n32_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    mov              r11, 33;                             jmp   n33_stmt_mark_α
                        .size            n32_statement_end_bx, .-n32_statement_end_bx
                        .type            n33_stmt_mark_bx, @function
n33_stmt_mark_bx:
#=======================================================================================================================
# x1.start        x1.V = 1                :(x1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n33_stmt_mark_α:        mov              r11, 34
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n15_statement_begin_α
                        .size            n33_stmt_mark_bx, .-n33_stmt_mark_bx
                        .type            n34_statement_begin_bx, @function
n34_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_begin_α:  mov              r11, 35;                             jmp   n35_statement_end_α
n34_statement_begin_β:  mov              r11, 35;                             jmp   n36_stmt_mark_α
                        .size            n34_statement_begin_bx, .-n34_statement_begin_bx
                        .type            n35_statement_end_bx, @function
n35_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_end_α:    mov              r11, 36;                             jmp   n36_stmt_mark_α
                        .size            n35_statement_end_bx, .-n35_statement_end_bx
                        .type            n36_stmt_mark_bx, @function
n36_stmt_mark_bx:
#=======================================================================================================================
# to1.fail                                :(mult.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n36_stmt_mark_α:        mov              r11, 37
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n124_statement_begin_α
                        .size            n36_stmt_mark_bx, .-n36_stmt_mark_bx
                        .type            n37_statement_begin_bx, @function
n37_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_statement_begin_α:  mov              r11, 38;                             jmp   n38_statement_end_α
n37_statement_begin_β:  mov              r11, 38;                             jmp   n39_stmt_mark_α
                        .size            n37_statement_begin_bx, .-n37_statement_begin_bx
                        .type            n38_statement_end_bx, @function
n38_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    mov              r11, 39;                             jmp   n39_stmt_mark_α
                        .size            n38_statement_end_bx, .-n38_statement_end_bx
                        .type            n39_stmt_mark_bx, @function
n39_stmt_mark_bx:
#=======================================================================================================================
# x1.resume                               :(x1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n39_stmt_mark_α:        mov              r11, 40
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n20_statement_begin_α
                        .size            n39_stmt_mark_bx, .-n39_stmt_mark_bx
                        .type            n40_statement_begin_bx, @function
n40_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 41;                             jmp   n41_var_α
n40_statement_begin_β:  mov              r11, 41;                             jmp   n48_stmt_mark_α
                        .size            n40_statement_begin_bx, .-n40_statement_begin_bx
                        .type            n41_var_bx, @function
n41_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:              sub              rsp, 16
                        mov              r11, 42
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n42_var_α
                        .size            n41_var_bx, .-n41_var_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 32]             # x2.V
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_coerce_numeric_α
n42_var_β:              mov              r11, 43
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n40_statement_begin_β
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_coerce_numeric_bx, @function
n43_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 44
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_419_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_419_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_419_0
.Lcoerce_numeric_α_419_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n44_coerce_numeric_α
.Lcoerce_numeric_α_419_0:
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
1:                                                                            jmp   n44_coerce_numeric_α
n43_coerce_numeric_β:   mov              r11, 44
                        add              rsp, 16;                             jmp   n42_var_β
                        .size            n43_coerce_numeric_bx, .-n43_coerce_numeric_bx
                        .type            n44_coerce_numeric_bx, @function
n44_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 45
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_421_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_421_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_421_0
.Lcoerce_numeric_α_421_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_cmp_test_α
.Lcoerce_numeric_α_421_0:
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
1:                                                                            jmp   n45_cmp_test_α
n44_coerce_numeric_β:   mov              r11, 45
                        add              rsp, 16;                             jmp   n43_coerce_numeric_β
                        .size            n44_coerce_numeric_bx, .-n44_coerce_numeric_bx
                        .type            n45_cmp_test_bx, @function
n45_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_cmp_test_α:         sub              rsp, 16
                        mov              r11, 46
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_423_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_423_239
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
.Lcmp_test_α_423_239:                                                         jmp   n46_statement_end_α
.Lcmp_test_α_423_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_423_240
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
.Lcmp_test_α_423_240:                                                         jmp   n46_statement_end_α
                        .size            n45_cmp_test_bx, .-n45_cmp_test_bx
                        .type            n46_statement_end_bx, @function
n46_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:    mov              r11, 47
                        add              rsp, 80;                             jmp   n47_stmt_mark_α
                        .size            n46_statement_end_bx, .-n46_statement_end_bx
                        .type            n47_stmt_mark_bx, @function
n47_stmt_mark_bx:
#=======================================================================================================================
#                 to1.V = to1.I           :(to1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n47_stmt_mark_α:        mov              r11, 48
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n49_statement_begin_α
                        .size            n47_stmt_mark_bx, .-n47_stmt_mark_bx
                        .type            n48_stmt_mark_bx, @function
n48_stmt_mark_bx:
#=======================================================================================================================
# x2.resume                               :(x2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n48_stmt_mark_α:        mov              r11, 49
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n28_statement_begin_α
                        .size            n48_stmt_mark_bx, .-n48_stmt_mark_bx
                        .type            n49_statement_begin_bx, @function
n49_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_begin_α:  mov              r11, 50;                             jmp   n50_var_α
n49_statement_begin_β:  mov              r11, 50;                             jmp   n53_stmt_mark_α
                        .size            n49_statement_begin_bx, .-n49_statement_begin_bx
                        .type            n50_var_bx, @function
n50_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_α:              sub              rsp, 16
                        mov              r11, 51
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n51_assign_α
                        .size            n50_var_bx, .-n50_var_bx
                        .type            n51_assign_bx, @function
n51_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_assign_α:           mov              r11, 52
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # to1.V
                        mov              qword ptr [r9 + 72], rdx;            jmp   n52_statement_end_α
                        .size            n51_assign_bx, .-n51_assign_bx
                        .type            n52_statement_end_bx, @function
n52_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_end_α:    mov              r11, 53
                        add              rsp, 16;                             jmp   n53_stmt_mark_α
                        .size            n52_statement_end_bx, .-n52_statement_end_bx
                        .type            n53_stmt_mark_bx, @function
n53_stmt_mark_bx:
#=======================================================================================================================
# to1.succeed                             :(to2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n53_stmt_mark_α:        mov              r11, 54
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n133_statement_begin_α
                        .size            n53_stmt_mark_bx, .-n53_stmt_mark_bx
                        .type            n54_statement_begin_bx, @function
n54_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_begin_α:  mov              r11, 55;                             jmp   n55_var_α
n54_statement_begin_β:  mov              r11, 55;                             jmp   n60_stmt_mark_α
                        .size            n54_statement_begin_bx, .-n54_statement_begin_bx
                        .type            n55_var_bx, @function
n55_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_α:              sub              rsp, 16
                        mov              r11, 56
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n56_lit_integer_α
                        .size            n55_var_bx, .-n55_var_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      sub              rsp, 16
                        mov              r11, 57
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_441_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_binop_α
n56_lit_integer_β:      mov              r11, 57
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n54_statement_begin_β
.Llit_integer_α_441_0:  .quad            1
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_binop_bx, @function
n57_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_binop_α:            sub              rsp, 16
                        mov              r11, 58
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_442_2
                        add              rax, 1;                              jo    .Lbinop_α_442_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_442_7
.Lbinop_α_442_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_442_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_442_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_442_4
.Lbinop_α_442_3:        movq             xmm0, rsi
.Lbinop_α_442_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_442_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_442_7:                                                              jmp   n58_assign_α
.Lbinop_α_442_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_442_240
                        add              rsp, 16;                             jmp   n56_lit_integer_β
.Lbinop_α_442_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n58_assign_α
n57_binop_β:            mov              r11, 58
                        add              rsp, 16;                             jmp   n56_lit_integer_β
                        .size            n57_binop_bx, .-n57_binop_bx
                        .type            n58_assign_bx, @function
n58_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_assign_α:           mov              r11, 59
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n59_statement_end_α
                        .size            n58_assign_bx, .-n58_assign_bx
                        .type            n59_statement_end_bx, @function
n59_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:    mov              r11, 60
                        add              rsp, 48;                             jmp   n60_stmt_mark_α
                        .size            n59_statement_end_bx, .-n59_statement_end_bx
                        .type            n60_stmt_mark_bx, @function
n60_stmt_mark_bx:
#=======================================================================================================================
# to1.code        LE(to1.I, x2.V)         :F(x2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n60_stmt_mark_α:        mov              r11, 61
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n40_statement_begin_α
                        .size            n60_stmt_mark_bx, .-n60_stmt_mark_bx
                        .type            n61_statement_begin_bx, @function
n61_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_begin_α:  mov              r11, 62;                             jmp   n62_statement_end_α
n61_statement_begin_β:  mov              r11, 62;                             jmp   n63_stmt_mark_α
                        .size            n61_statement_begin_bx, .-n61_statement_begin_bx
                        .type            n62_statement_end_bx, @function
n62_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 63;                             jmp   n63_stmt_mark_α
                        .size            n62_statement_end_bx, .-n62_statement_end_bx
                        .type            n63_stmt_mark_bx, @function
n63_stmt_mark_bx:
#=======================================================================================================================
# x2.start        x2.V = 2                :(x2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n63_stmt_mark_α:        mov              r11, 64
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n23_statement_begin_α
                        .size            n63_stmt_mark_bx, .-n63_stmt_mark_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 65;                             jmp   n65_var_α
n64_statement_begin_β:  mov              r11, 65;                             jmp   n60_stmt_mark_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_var_bx, @function
n65_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_α:              sub              rsp, 16
                        mov              r11, 66
                        mov              rax, qword ptr [r9 + 16]             # x1.V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n66_assign_α
                        .size            n65_var_bx, .-n65_var_bx
                        .type            n66_assign_bx, @function
n66_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_assign_α:           mov              r11, 67
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n67_statement_end_α
                        .size            n66_assign_bx, .-n66_assign_bx
                        .type            n67_statement_end_bx, @function
n67_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_end_α:    mov              r11, 68
                        add              rsp, 16;                             jmp   n60_stmt_mark_α
                        .size            n67_statement_end_bx, .-n67_statement_end_bx
                        .type            n68_statement_begin_bx, @function
n68_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_begin_α:  mov              r11, 69;                             jmp   n69_lit_integer_α
n68_statement_begin_β:  mov              r11, 69;                             jmp   n72_stmt_mark_α
                        .size            n68_statement_begin_bx, .-n68_statement_begin_bx
                        .type            n69_lit_integer_bx, @function
n69_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_integer_α:      sub              rsp, 16
                        mov              r11, 70
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_462_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n70_assign_α
.Llit_integer_α_462_0:  .quad            3
                        .size            n69_lit_integer_bx, .-n69_lit_integer_bx
                        .type            n70_assign_bx, @function
n70_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_assign_α:           mov              r11, 71
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # x3.V
                        mov              qword ptr [r9 + 88], rdx;            jmp   n71_statement_end_α
                        .size            n70_assign_bx, .-n70_assign_bx
                        .type            n71_statement_end_bx, @function
n71_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_end_α:    mov              r11, 72
                        add              rsp, 16;                             jmp   n72_stmt_mark_α
                        .size            n71_statement_end_bx, .-n71_statement_end_bx
                        .type            n72_stmt_mark_bx, @function
n72_stmt_mark_bx:
#=======================================================================================================================
# x3.succeed                              :(x4.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n72_stmt_mark_α:        mov              r11, 73
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n114_statement_begin_α
                        .size            n72_stmt_mark_bx, .-n72_stmt_mark_bx
                        .type            n73_statement_begin_bx, @function
n73_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_begin_α:  mov              r11, 74;                             jmp   n74_statement_end_α
n73_statement_begin_β:  mov              r11, 74;                             jmp   n75_stmt_mark_α
                        .size            n73_statement_begin_bx, .-n73_statement_begin_bx
                        .type            n74_statement_end_bx, @function
n74_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 75;                             jmp   n75_stmt_mark_α
                        .size            n74_statement_end_bx, .-n74_statement_end_bx
                        .type            n75_stmt_mark_bx, @function
n75_stmt_mark_bx:
#=======================================================================================================================
# x3.fail                                 :(to2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n75_stmt_mark_α:        mov              r11, 76
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n87_statement_begin_α
                        .size            n75_stmt_mark_bx, .-n75_stmt_mark_bx
                        .type            n76_statement_begin_bx, @function
n76_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77;                             jmp   n77_lit_integer_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   n80_stmt_mark_α
                        .size            n76_statement_begin_bx, .-n76_statement_begin_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              r11, 78
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_476_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_assign_α
.Llit_integer_α_476_0:  .quad            4
                        .size            n77_lit_integer_bx, .-n77_lit_integer_bx
                        .type            n78_assign_bx, @function
n78_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              r11, 79
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # x4.V
                        mov              qword ptr [r9 + 104], rdx;           jmp   n79_statement_end_α
                        .size            n78_assign_bx, .-n78_assign_bx
                        .type            n79_statement_end_bx, @function
n79_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    mov              r11, 80
                        add              rsp, 16;                             jmp   n80_stmt_mark_α
                        .size            n79_statement_end_bx, .-n79_statement_end_bx
                        .type            n80_stmt_mark_bx, @function
n80_stmt_mark_bx:
#=======================================================================================================================
# x4.succeed      to2.I = x3.V            :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n80_stmt_mark_α:        mov              r11, 81
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n117_statement_begin_α
                        .size            n80_stmt_mark_bx, .-n80_stmt_mark_bx
                        .type            n81_statement_begin_bx, @function
n81_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_statement_begin_α:  mov              r11, 82;                             jmp   n82_statement_end_α
n81_statement_begin_β:  mov              r11, 82;                             jmp   n83_stmt_mark_α
                        .size            n81_statement_begin_bx, .-n81_statement_begin_bx
                        .type            n82_statement_end_bx, @function
n82_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 83;                             jmp   n83_stmt_mark_α
                        .size            n82_statement_end_bx, .-n82_statement_end_bx
                        .type            n83_stmt_mark_bx, @function
n83_stmt_mark_bx:
#=======================================================================================================================
# x4.fail                                 :(x3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n83_stmt_mark_α:        mov              r11, 84
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n90_statement_begin_α
                        .size            n83_stmt_mark_bx, .-n83_stmt_mark_bx
                        .type            n84_statement_begin_bx, @function
n84_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_statement_begin_α:  mov              r11, 85;                             jmp   n85_statement_end_α
n84_statement_begin_β:  mov              r11, 85;                             jmp   n86_stmt_mark_α
                        .size            n84_statement_begin_bx, .-n84_statement_begin_bx
                        .type            n85_statement_end_bx, @function
n85_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    mov              r11, 86;                             jmp   n86_stmt_mark_α
                        .size            n85_statement_end_bx, .-n85_statement_end_bx
                        .type            n86_stmt_mark_bx, @function
n86_stmt_mark_bx:
#=======================================================================================================================
# x3.start        x3.V = 3                :(x3.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n86_stmt_mark_α:        mov              r11, 87
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n68_statement_begin_α
                        .size            n86_stmt_mark_bx, .-n86_stmt_mark_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_begin_α:  mov              r11, 88;                             jmp   n88_statement_end_α
n87_statement_begin_β:  mov              r11, 88;                             jmp   n89_stmt_mark_α
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_statement_end_bx, @function
n88_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_end_α:    mov              r11, 89;                             jmp   n89_stmt_mark_α
                        .size            n88_statement_end_bx, .-n88_statement_end_bx
                        .type            n89_stmt_mark_bx, @function
n89_stmt_mark_bx:
#=======================================================================================================================
# to2.fail                                :(to1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n89_stmt_mark_α:        mov              r11, 90
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n127_statement_begin_α
                        .size            n89_stmt_mark_bx, .-n89_stmt_mark_bx
                        .type            n90_statement_begin_bx, @function
n90_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_statement_begin_α:  mov              r11, 91;                             jmp   n91_statement_end_α
n90_statement_begin_β:  mov              r11, 91;                             jmp   n92_stmt_mark_α
                        .size            n90_statement_begin_bx, .-n90_statement_begin_bx
                        .type            n91_statement_end_bx, @function
n91_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    mov              r11, 92;                             jmp   n92_stmt_mark_α
                        .size            n91_statement_end_bx, .-n91_statement_end_bx
                        .type            n92_stmt_mark_bx, @function
n92_stmt_mark_bx:
#=======================================================================================================================
# x3.resume                               :(x3.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n92_stmt_mark_α:        mov              r11, 93
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n73_statement_begin_α
                        .size            n92_stmt_mark_bx, .-n92_stmt_mark_bx
                        .type            n93_statement_begin_bx, @function
n93_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 94;                             jmp   n94_var_α
n93_statement_begin_β:  mov              r11, 94;                             jmp   n101_stmt_mark_α
                        .size            n93_statement_begin_bx, .-n93_statement_begin_bx
                        .type            n94_var_bx, @function
n94_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_var_α:              sub              rsp, 16
                        mov              r11, 95
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n95_var_α
                        .size            n94_var_bx, .-n94_var_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 96]             # x4.V
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_coerce_numeric_α
n95_var_β:              mov              r11, 96
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n93_statement_begin_β
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_coerce_numeric_bx, @function
n96_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 97
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_511_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_511_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_511_0
.Lcoerce_numeric_α_511_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_coerce_numeric_α
.Lcoerce_numeric_α_511_0:
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
1:                                                                            jmp   n97_coerce_numeric_α
n96_coerce_numeric_β:   mov              r11, 97
                        add              rsp, 16;                             jmp   n95_var_β
                        .size            n96_coerce_numeric_bx, .-n96_coerce_numeric_bx
                        .type            n97_coerce_numeric_bx, @function
n97_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 98
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_513_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_513_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_513_0
.Lcoerce_numeric_α_513_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_cmp_test_α
.Lcoerce_numeric_α_513_0:
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
1:                                                                            jmp   n98_cmp_test_α
n97_coerce_numeric_β:   mov              r11, 98
                        add              rsp, 16;                             jmp   n96_coerce_numeric_β
                        .size            n97_coerce_numeric_bx, .-n97_coerce_numeric_bx
                        .type            n98_cmp_test_bx, @function
n98_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_cmp_test_α:         sub              rsp, 16
                        mov              r11, 99
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_515_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_515_239
                        add              rsp, 16;                             jmp   n97_coerce_numeric_β
.Lcmp_test_α_515_239:                                                         jmp   n99_statement_end_α
.Lcmp_test_α_515_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_515_240
                        add              rsp, 16;                             jmp   n97_coerce_numeric_β
.Lcmp_test_α_515_240:                                                         jmp   n99_statement_end_α
                        .size            n98_cmp_test_bx, .-n98_cmp_test_bx
                        .type            n99_statement_end_bx, @function
n99_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:    mov              r11, 100
                        add              rsp, 80;                             jmp   n100_stmt_mark_α
                        .size            n99_statement_end_bx, .-n99_statement_end_bx
                        .type            n100_stmt_mark_bx, @function
n100_stmt_mark_bx:
#=======================================================================================================================
#                 to2.V = to2.I           :(to2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n100_stmt_mark_α:       mov              r11, 101
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n102_statement_begin_α
                        .size            n100_stmt_mark_bx, .-n100_stmt_mark_bx
                        .type            n101_stmt_mark_bx, @function
n101_stmt_mark_bx:
#=======================================================================================================================
# x4.resume                               :(x4.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n101_stmt_mark_α:       mov              r11, 102
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n81_statement_begin_α
                        .size            n101_stmt_mark_bx, .-n101_stmt_mark_bx
                        .type            n102_statement_begin_bx, @function
n102_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_begin_α: mov              r11, 103;                            jmp   n103_var_α
n102_statement_begin_β: mov              r11, 103;                            jmp   n106_stmt_mark_α
                        .size            n102_statement_begin_bx, .-n102_statement_begin_bx
                        .type            n103_var_bx, @function
n103_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             sub              rsp, 16
                        mov              r11, 104
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_assign_α
                        .size            n103_var_bx, .-n103_var_bx
                        .type            n104_assign_bx, @function
n104_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_assign_α:          mov              r11, 105
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # to2.V
                        mov              qword ptr [r9 + 136], rdx;           jmp   n105_statement_end_α
                        .size            n104_assign_bx, .-n104_assign_bx
                        .type            n105_statement_end_bx, @function
n105_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_end_α:   mov              r11, 106
                        add              rsp, 16;                             jmp   n106_stmt_mark_α
                        .size            n105_statement_end_bx, .-n105_statement_end_bx
                        .type            n106_stmt_mark_bx, @function
n106_stmt_mark_bx:
#=======================================================================================================================
# to2.succeed     mult.V = to1.V * to2.V  :S(mult.succeed)F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n106_stmt_mark_α:       mov              r11, 107
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n136_statement_begin_α
                        .size            n106_stmt_mark_bx, .-n106_stmt_mark_bx
                        .type            n107_statement_begin_bx, @function
n107_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_begin_α: mov              r11, 108;                            jmp   n108_var_α
n107_statement_begin_β: mov              r11, 108;                            jmp   n113_stmt_mark_α
                        .size            n107_statement_begin_bx, .-n107_statement_begin_bx
                        .type            n108_var_bx, @function
n108_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_var_α:             sub              rsp, 16
                        mov              r11, 109
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n109_lit_integer_α
                        .size            n108_var_bx, .-n108_var_bx
                        .type            n109_lit_integer_bx, @function
n109_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_lit_integer_α:     sub              rsp, 16
                        mov              r11, 110
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_533_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n110_binop_α
n109_lit_integer_β:     mov              r11, 110
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n107_statement_begin_β
.Llit_integer_α_533_0:  .quad            1
                        .size            n109_lit_integer_bx, .-n109_lit_integer_bx
                        .type            n110_binop_bx, @function
n110_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_binop_α:           sub              rsp, 16
                        mov              r11, 111
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_534_2
                        add              rax, 1;                              jo    .Lbinop_α_534_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_534_7
.Lbinop_α_534_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_534_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_534_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_534_4
.Lbinop_α_534_3:        movq             xmm0, rsi
.Lbinop_α_534_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_534_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_534_7:                                                              jmp   n111_assign_α
.Lbinop_α_534_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_534_240
                        add              rsp, 16;                             jmp   n109_lit_integer_β
.Lbinop_α_534_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n111_assign_α
n110_binop_β:           mov              r11, 111
                        add              rsp, 16;                             jmp   n109_lit_integer_β
                        .size            n110_binop_bx, .-n110_binop_bx
                        .type            n111_assign_bx, @function
n111_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_assign_α:          mov              r11, 112
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n112_statement_end_α
                        .size            n111_assign_bx, .-n111_assign_bx
                        .type            n112_statement_end_bx, @function
n112_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:   mov              r11, 113
                        add              rsp, 48;                             jmp   n113_stmt_mark_α
                        .size            n112_statement_end_bx, .-n112_statement_end_bx
                        .type            n113_stmt_mark_bx, @function
n113_stmt_mark_bx:
#=======================================================================================================================
# to2.code        LE(to2.I, x4.V)         :F(x4.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n113_stmt_mark_α:       mov              r11, 114
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n93_statement_begin_α
                        .size            n113_stmt_mark_bx, .-n113_stmt_mark_bx
                        .type            n114_statement_begin_bx, @function
n114_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_statement_begin_α: mov              r11, 115;                            jmp   n115_statement_end_α
n114_statement_begin_β: mov              r11, 115;                            jmp   n116_stmt_mark_α
                        .size            n114_statement_begin_bx, .-n114_statement_begin_bx
                        .type            n115_statement_end_bx, @function
n115_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   mov              r11, 116;                            jmp   n116_stmt_mark_α
                        .size            n115_statement_end_bx, .-n115_statement_end_bx
                        .type            n116_stmt_mark_bx, @function
n116_stmt_mark_bx:
#=======================================================================================================================
# x4.start        x4.V = 4                :(x4.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n116_stmt_mark_α:       mov              r11, 117
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n76_statement_begin_α
                        .size            n116_stmt_mark_bx, .-n116_stmt_mark_bx
                        .type            n117_statement_begin_bx, @function
n117_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α: mov              r11, 118;                            jmp   n118_var_α
n117_statement_begin_β: mov              r11, 118;                            jmp   n113_stmt_mark_α
                        .size            n117_statement_begin_bx, .-n117_statement_begin_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              r11, 119
                        mov              rax, qword ptr [r9 + 80]             # x3.V
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_assign_α
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_assign_bx, @function
n119_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_assign_α:          mov              r11, 120
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n120_statement_end_α
                        .size            n119_assign_bx, .-n119_assign_bx
                        .type            n120_statement_end_bx, @function
n120_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:   mov              r11, 121
                        add              rsp, 16;                             jmp   n113_stmt_mark_α
                        .size            n120_statement_end_bx, .-n120_statement_end_bx
                        .type            n121_statement_begin_bx, @function
n121_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_begin_α: mov              r11, 122;                            jmp   n122_statement_end_α
n121_statement_begin_β: mov              r11, 122;                            jmp   n123_stmt_mark_α
                        .size            n121_statement_begin_bx, .-n121_statement_begin_bx
                        .type            n122_statement_end_bx, @function
n122_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   mov              r11, 123;                            jmp   n123_stmt_mark_α
                        .size            n122_statement_end_bx, .-n122_statement_end_bx
                        .type            n123_stmt_mark_bx, @function
n123_stmt_mark_bx:
#=======================================================================================================================
# to1.start                               :(x1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n123_stmt_mark_α:       mov              r11, 124
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n31_statement_begin_α
                        .size            n123_stmt_mark_bx, .-n123_stmt_mark_bx
                        .type            n124_statement_begin_bx, @function
n124_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_begin_α: mov              r11, 125;                            jmp   n125_statement_end_α
n124_statement_begin_β: mov              r11, 125;                            jmp   n126_stmt_mark_α
                        .size            n124_statement_begin_bx, .-n124_statement_begin_bx
                        .type            n125_statement_end_bx, @function
n125_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_end_α:   mov              r11, 126;                            jmp   n126_stmt_mark_α
                        .size            n125_statement_end_bx, .-n125_statement_end_bx
                        .type            n126_stmt_mark_bx, @function
n126_stmt_mark_bx:
#=======================================================================================================================
# mult.fail                               :(x5.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n126_stmt_mark_α:       mov              r11, 127
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n150_statement_begin_α
                        .size            n126_stmt_mark_bx, .-n126_stmt_mark_bx
                        .type            n127_statement_begin_bx, @function
n127_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_statement_begin_α: mov              r11, 128;                            jmp   n128_statement_end_α
n127_statement_begin_β: mov              r11, 128;                            jmp   n129_stmt_mark_α
                        .size            n127_statement_begin_bx, .-n127_statement_begin_bx
                        .type            n128_statement_end_bx, @function
n128_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   mov              r11, 129;                            jmp   n129_stmt_mark_α
                        .size            n128_statement_end_bx, .-n128_statement_end_bx
                        .type            n129_stmt_mark_bx, @function
n129_stmt_mark_bx:
#=======================================================================================================================
# to1.resume      to1.I = to1.I + 1       :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n129_stmt_mark_α:       mov              r11, 130
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n54_statement_begin_α
                        .size            n129_stmt_mark_bx, .-n129_stmt_mark_bx
                        .type            n130_statement_begin_bx, @function
n130_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_begin_α: mov              r11, 131;                            jmp   n131_statement_end_α
n130_statement_begin_β: mov              r11, 131;                            jmp   n132_stmt_mark_α
                        .size            n130_statement_begin_bx, .-n130_statement_begin_bx
                        .type            n131_statement_end_bx, @function
n131_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_end_α:   mov              r11, 132;                            jmp   n132_stmt_mark_α
                        .size            n131_statement_end_bx, .-n131_statement_end_bx
                        .type            n132_stmt_mark_bx, @function
n132_stmt_mark_bx:
#=======================================================================================================================
# to2.resume      to2.I = to2.I + 1       :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n132_stmt_mark_α:       mov              r11, 133
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n107_statement_begin_α
                        .size            n132_stmt_mark_bx, .-n132_stmt_mark_bx
                        .type            n133_statement_begin_bx, @function
n133_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_statement_begin_α: mov              r11, 134;                            jmp   n134_statement_end_α
n133_statement_begin_β: mov              r11, 134;                            jmp   n135_stmt_mark_α
                        .size            n133_statement_begin_bx, .-n133_statement_begin_bx
                        .type            n134_statement_end_bx, @function
n134_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:   mov              r11, 135;                            jmp   n135_stmt_mark_α
                        .size            n134_statement_end_bx, .-n134_statement_end_bx
                        .type            n135_stmt_mark_bx, @function
n135_stmt_mark_bx:
#=======================================================================================================================
# to2.start                               :(x3.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n135_stmt_mark_α:       mov              r11, 136
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n84_statement_begin_α
                        .size            n135_stmt_mark_bx, .-n135_stmt_mark_bx
                        .type            n136_statement_begin_bx, @function
n136_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 137;                            jmp   n137_var_α
n136_statement_begin_β: mov              r11, 137;                            jmp   n143_stmt_mark_α
                        .size            n136_statement_begin_bx, .-n136_statement_begin_bx
                        .type            n137_var_bx, @function
n137_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_α:             sub              rsp, 16
                        mov              r11, 138
                        mov              rax, qword ptr [r9 + 64]             # to1.V
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n138_var_α
                        .size            n137_var_bx, .-n137_var_bx
                        .type            n138_var_bx, @function
n138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 128]            # to2.V
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_binop_α
n138_var_β:             mov              r11, 139
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n136_statement_begin_β
                        .size            n138_var_bx, .-n138_var_bx
                        .type            n139_binop_bx, @function
n139_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_binop_α:           sub              rsp, 16
                        mov              r11, 140
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_586_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_586_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_586_7
.Lbinop_α_586_2:        and              edx, 1;                              jz    .Lbinop_α_586_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_586_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_586_4
.Lbinop_α_586_3:        movq             xmm0, rsi
.Lbinop_α_586_4:        cmp              cl, 5;                               je    .Lbinop_α_586_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_586_6
.Lbinop_α_586_5:        movq             xmm1, rdi
.Lbinop_α_586_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_586_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_586_7:                                                              jmp   n140_assign_α
.Lbinop_α_586_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_586_240
                        add              rsp, 16;                             jmp   n138_var_β
.Lbinop_α_586_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n140_assign_α
n139_binop_β:           mov              r11, 140
                        add              rsp, 16;                             jmp   n138_var_β
                        .size            n139_binop_bx, .-n139_binop_bx
                        .type            n140_assign_bx, @function
n140_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_assign_α:          mov              r11, 141
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n141_statement_end_α
                        .size            n140_assign_bx, .-n140_assign_bx
                        .type            n141_statement_end_bx, @function
n141_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_statement_end_α:   mov              r11, 142
                        add              rsp, 48;                             jmp   n142_stmt_mark_α
                        .size            n141_statement_end_bx, .-n141_statement_end_bx
                        .type            n142_stmt_mark_bx, @function
n142_stmt_mark_bx:
#=======================================================================================================================
# mult.succeed    GT(x5.V, mult.V)        :F(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n142_stmt_mark_α:       mov              r11, 143
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n159_statement_begin_α
                        .size            n142_stmt_mark_bx, .-n142_stmt_mark_bx
                        .type            n143_stmt_mark_bx, @function
n143_stmt_mark_bx:
#=======================================================================================================================
# exception       TERMINAL = "Exception!" :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n143_stmt_mark_α:       mov              r11, 144
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 62
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 81
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n285_statement_begin_α
                        .size            n143_stmt_mark_bx, .-n143_stmt_mark_bx
                        .type            n144_statement_begin_bx, @function
n144_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_begin_α: mov              r11, 145;                            jmp   n145_statement_end_α
n144_statement_begin_β: mov              r11, 145;                            jmp   n146_stmt_mark_α
                        .size            n144_statement_begin_bx, .-n144_statement_begin_bx
                        .type            n145_statement_end_bx, @function
n145_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:   mov              r11, 146;                            jmp   n146_stmt_mark_α
                        .size            n145_statement_end_bx, .-n145_statement_end_bx
                        .type            n146_stmt_mark_bx, @function
n146_stmt_mark_bx:
#=======================================================================================================================
# x5.start        x5.V = 5                :(x5.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n146_stmt_mark_α:       mov              r11, 147
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n7_statement_begin_α
                        .size            n146_stmt_mark_bx, .-n146_stmt_mark_bx
                        .type            n147_statement_begin_bx, @function
n147_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_statement_begin_α: mov              r11, 148;                            jmp   n148_statement_end_α
n147_statement_begin_β: mov              r11, 148;                            jmp   n149_stmt_mark_α
                        .size            n147_statement_begin_bx, .-n147_statement_begin_bx
                        .type            n148_statement_end_bx, @function
n148_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:   mov              r11, 149;                            jmp   n149_stmt_mark_α
                        .size            n148_statement_end_bx, .-n148_statement_end_bx
                        .type            n149_stmt_mark_bx, @function
n149_stmt_mark_bx:
#=======================================================================================================================
# greater.fail                            :(write1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
n149_stmt_mark_α:       mov              r11, 150
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 56
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n178_statement_begin_α
                        .size            n149_stmt_mark_bx, .-n149_stmt_mark_bx
                        .type            n150_statement_begin_bx, @function
n150_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_statement_begin_α: mov              r11, 151;                            jmp   n151_statement_end_α
n150_statement_begin_β: mov              r11, 151;                            jmp   n152_stmt_mark_α
                        .size            n150_statement_begin_bx, .-n150_statement_begin_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   mov              r11, 152;                            jmp   n152_stmt_mark_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_stmt_mark_bx, @function
n152_stmt_mark_bx:
#=======================================================================================================================
# x5.resume                               :(x5.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n152_stmt_mark_α:       mov              r11, 153
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n12_statement_begin_α
                        .size            n152_stmt_mark_bx, .-n152_stmt_mark_bx
                        .type            n153_statement_begin_bx, @function
n153_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_statement_begin_α: mov              r11, 154;                            jmp   n154_statement_end_α
n153_statement_begin_β: mov              r11, 154;                            jmp   n155_stmt_mark_α
                        .size            n153_statement_begin_bx, .-n153_statement_begin_bx
                        .type            n154_statement_end_bx, @function
n154_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:   mov              r11, 155;                            jmp   n155_stmt_mark_α
                        .size            n154_statement_end_bx, .-n154_statement_end_bx
                        .type            n155_stmt_mark_bx, @function
n155_stmt_mark_bx:
#=======================================================================================================================
# mult.resume                             :(to2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n155_stmt_mark_α:       mov              r11, 156
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n130_statement_begin_α
                        .size            n155_stmt_mark_bx, .-n155_stmt_mark_bx
                        .type            n156_statement_begin_bx, @function
n156_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_statement_begin_α: mov              r11, 157;                            jmp   n157_statement_end_α
n156_statement_begin_β: mov              r11, 157;                            jmp   n158_stmt_mark_α
                        .size            n156_statement_begin_bx, .-n156_statement_begin_bx
                        .type            n157_statement_end_bx, @function
n157_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_end_α:   mov              r11, 158;                            jmp   n158_stmt_mark_α
                        .size            n157_statement_end_bx, .-n157_statement_end_bx
                        .type            n158_stmt_mark_bx, @function
n158_stmt_mark_bx:
#=======================================================================================================================
# mult.start                              :(to1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n158_stmt_mark_α:       mov              r11, 159
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n121_statement_begin_α
                        .size            n158_stmt_mark_bx, .-n158_stmt_mark_bx
                        .type            n159_statement_begin_bx, @function
n159_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α: mov              r11, 160;                            jmp   n160_var_α
n159_statement_begin_β: mov              r11, 160;                            jmp   n155_stmt_mark_α
                        .size            n159_statement_begin_bx, .-n159_statement_begin_bx
                        .type            n160_var_bx, @function
n160_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             sub              rsp, 16
                        mov              r11, 161
                        mov              rax, qword ptr [r9 + 0]              # x5.V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n161_var_α
                        .size            n160_var_bx, .-n160_var_bx
                        .type            n161_var_bx, @function
n161_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_coerce_numeric_α
n161_var_β:             mov              r11, 162
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n159_statement_begin_β
                        .size            n161_var_bx, .-n161_var_bx
                        .type            n162_coerce_numeric_bx, @function
n162_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 163
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_629_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_629_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_629_0
.Lcoerce_numeric_α_629_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n163_coerce_numeric_α
.Lcoerce_numeric_α_629_0:
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
1:                                                                            jmp   n163_coerce_numeric_α
n162_coerce_numeric_β:  mov              r11, 163
                        add              rsp, 16;                             jmp   n161_var_β
                        .size            n162_coerce_numeric_bx, .-n162_coerce_numeric_bx
                        .type            n163_coerce_numeric_bx, @function
n163_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 164
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_631_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_631_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_631_0
.Lcoerce_numeric_α_631_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_cmp_test_α
.Lcoerce_numeric_α_631_0:
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
1:                                                                            jmp   n164_cmp_test_α
n163_coerce_numeric_β:  mov              r11, 164
                        add              rsp, 16;                             jmp   n162_coerce_numeric_β
                        .size            n163_coerce_numeric_bx, .-n163_coerce_numeric_bx
                        .type            n164_cmp_test_bx, @function
n164_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_cmp_test_α:        sub              rsp, 16
                        mov              r11, 165
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_633_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_633_239
                        add              rsp, 16;                             jmp   n163_coerce_numeric_β
.Lcmp_test_α_633_239:                                                         jmp   n165_statement_end_α
.Lcmp_test_α_633_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jg    .Lcmp_test_α_633_240
                        add              rsp, 16;                             jmp   n163_coerce_numeric_β
.Lcmp_test_α_633_240:                                                         jmp   n165_statement_end_α
                        .size            n164_cmp_test_bx, .-n164_cmp_test_bx
                        .type            n165_statement_end_bx, @function
n165_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_statement_end_α:   mov              r11, 166
                        add              rsp, 80;                             jmp   n166_stmt_mark_α
                        .size            n165_statement_end_bx, .-n165_statement_end_bx
                        .type            n166_stmt_mark_bx, @function
n166_stmt_mark_bx:
#=======================================================================================================================
#                 greater.V = mult.V      :(greater.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n166_stmt_mark_α:       mov              r11, 167
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n167_statement_begin_α
                        .size            n166_stmt_mark_bx, .-n166_stmt_mark_bx
                        .type            n167_statement_begin_bx, @function
n167_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_begin_α: mov              r11, 168;                            jmp   n168_var_α
n167_statement_begin_β: mov              r11, 168;                            jmp   n171_stmt_mark_α
                        .size            n167_statement_begin_bx, .-n167_statement_begin_bx
                        .type            n168_var_bx, @function
n168_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_α:             sub              rsp, 16
                        mov              r11, 169
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n169_assign_α
                        .size            n168_var_bx, .-n168_var_bx
                        .type            n169_assign_bx, @function
n169_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_assign_α:          mov              r11, 170
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n170_statement_end_α
                        .size            n169_assign_bx, .-n169_assign_bx
                        .type            n170_statement_end_bx, @function
n170_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:   mov              r11, 171
                        add              rsp, 16;                             jmp   n171_stmt_mark_α
                        .size            n170_statement_end_bx, .-n170_statement_end_bx
                        .type            n171_stmt_mark_bx, @function
n171_stmt_mark_bx:
#=======================================================================================================================
# greater.succeed write.V = greater.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n171_stmt_mark_α:       mov              r11, 172
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n181_statement_begin_α
                        .size            n171_stmt_mark_bx, .-n171_stmt_mark_bx
                        .type            n172_statement_begin_bx, @function
n172_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_statement_begin_α: mov              r11, 173;                            jmp   n173_statement_end_α
n172_statement_begin_β: mov              r11, 173;                            jmp   n174_stmt_mark_α
                        .size            n172_statement_begin_bx, .-n172_statement_begin_bx
                        .type            n173_statement_end_bx, @function
n173_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:   mov              r11, 174;                            jmp   n174_stmt_mark_α
                        .size            n173_statement_end_bx, .-n173_statement_end_bx
                        .type            n174_stmt_mark_bx, @function
n174_stmt_mark_bx:
#=======================================================================================================================
# greater.start                           :(x5.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n174_stmt_mark_α:       mov              r11, 175
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n144_statement_begin_α
                        .size            n174_stmt_mark_bx, .-n174_stmt_mark_bx
                        .type            n175_statement_begin_bx, @function
n175_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_statement_begin_α: mov              r11, 176;                            jmp   n176_statement_end_α
n175_statement_begin_β: mov              r11, 176;                            jmp   n177_stmt_mark_α
                        .size            n175_statement_begin_bx, .-n175_statement_begin_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   mov              r11, 177;                            jmp   n177_stmt_mark_α
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_stmt_mark_bx, @function
n177_stmt_mark_bx:
#=======================================================================================================================
# greater.resume                          :(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n177_stmt_mark_α:       mov              r11, 178
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n153_statement_begin_α
                        .size            n177_stmt_mark_bx, .-n177_stmt_mark_bx
                        .type            n178_statement_begin_bx, @function
n178_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_statement_begin_α: mov              r11, 179;                            jmp   n179_statement_end_α
n178_statement_begin_β: mov              r11, 179;                            jmp   n180_stmt_mark_α
                        .size            n178_statement_begin_bx, .-n178_statement_begin_bx
                        .type            n179_statement_end_bx, @function
n179_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_end_α:   mov              r11, 180;                            jmp   n180_stmt_mark_α
                        .size            n179_statement_end_bx, .-n179_statement_end_bx
                        .type            n180_stmt_mark_bx, @function
n180_stmt_mark_bx:
#=======================================================================================================================
# write1.fail     OUTPUT = "Failure."     :(main2)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n180_stmt_mark_α:       mov              r11, 181
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 75
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n262_statement_begin_α
                        .size            n180_stmt_mark_bx, .-n180_stmt_mark_bx
                        .type            n181_statement_begin_bx, @function
n181_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α: mov              r11, 182;                            jmp   n182_var_α
n181_statement_begin_β: mov              r11, 182;                            jmp   n185_stmt_mark_α
                        .size            n181_statement_begin_bx, .-n181_statement_begin_bx
                        .type            n182_var_bx, @function
n182_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_var_α:             sub              rsp, 16
                        mov              r11, 183
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n183_assign_α
                        .size            n182_var_bx, .-n182_var_bx
                        .type            n183_assign_bx, @function
n183_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_assign_α:          mov              r11, 184
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # write.V
                        mov              qword ptr [r9 + 184], rdx;           jmp   n184_statement_end_α
                        .size            n183_assign_bx, .-n183_assign_bx
                        .type            n184_statement_end_bx, @function
n184_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_end_α:   mov              r11, 185
                        add              rsp, 16;                             jmp   n185_stmt_mark_α
                        .size            n184_statement_end_bx, .-n184_statement_end_bx
                        .type            n185_stmt_mark_bx, @function
n185_stmt_mark_bx:
#=======================================================================================================================
#                 OUTPUT = write.V        :(write1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n185_stmt_mark_α:       mov              r11, 186
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 45
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n186_statement_begin_α
                        .size            n185_stmt_mark_bx, .-n185_stmt_mark_bx
                        .type            n186_statement_begin_bx, @function
n186_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_begin_α: mov              r11, 187;                            jmp   n187_var_α
n186_statement_begin_β: mov              r11, 187;                            jmp   n190_stmt_mark_α
                        .size            n186_statement_begin_bx, .-n186_statement_begin_bx
                        .type            n187_var_bx, @function
n187_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:             sub              rsp, 16
                        mov              r11, 188
                        mov              rax, qword ptr [r9 + 176]            # write.V
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_assign_α
                        .size            n187_var_bx, .-n187_var_bx
                        .type            n188_assign_bx, @function
n188_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_assign_α:          mov              r11, 189
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_675_0]
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
1:                                                                            jmp   n189_statement_end_α
.Lassign_α_675_0:       .quad            .Lassign_α_675_0_s
.Lassign_α_675_0_s:     .string          "OUTPUT"
                        .size            n188_assign_bx, .-n188_assign_bx
                        .type            n189_statement_end_bx, @function
n189_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   mov              r11, 190
                        add              rsp, 16;                             jmp   n190_stmt_mark_α
                        .size            n189_statement_end_bx, .-n189_statement_end_bx
                        .type            n190_stmt_mark_bx, @function
n190_stmt_mark_bx:
#=======================================================================================================================
# write1.succeed  OUTPUT = "Success!"     :(write1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n190_stmt_mark_α:       mov              r11, 191
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 76
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n267_statement_begin_α
                        .size            n190_stmt_mark_bx, .-n190_stmt_mark_bx
                        .type            n191_statement_begin_bx, @function
n191_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_begin_α: mov              r11, 192;                            jmp   n192_lit_integer_α
n191_statement_begin_β: mov              r11, 192;                            jmp   n195_stmt_mark_α
                        .size            n191_statement_begin_bx, .-n191_statement_begin_bx
                        .type            n192_lit_integer_bx, @function
n192_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     sub              rsp, 16
                        mov              r11, 193
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_682_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n193_assign_α
.Llit_integer_α_682_0:  .quad            1
                        .size            n192_lit_integer_bx, .-n192_lit_integer_bx
                        .type            n193_assign_bx, @function
n193_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_assign_α:          mov              r11, 194
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n194_statement_end_α
                        .size            n193_assign_bx, .-n193_assign_bx
                        .type            n194_statement_end_bx, @function
n194_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_end_α:   mov              r11, 195
                        add              rsp, 16;                             jmp   n195_stmt_mark_α
                        .size            n194_statement_end_bx, .-n194_statement_end_bx
                        .type            n195_stmt_mark_bx, @function
n195_stmt_mark_bx:
#=======================================================================================================================
# to3.code        LE(to3.I, 2)            :F(write2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n195_stmt_mark_α:       mov              r11, 196
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 65
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n202_statement_begin_α
                        .size            n195_stmt_mark_bx, .-n195_stmt_mark_bx
                        .type            n196_statement_begin_bx, @function
n196_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_statement_begin_α: mov              r11, 197;                            jmp   n197_var_α
n196_statement_begin_β: mov              r11, 197;                            jmp   n195_stmt_mark_α
                        .size            n196_statement_begin_bx, .-n196_statement_begin_bx
                        .type            n197_var_bx, @function
n197_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_α:             sub              rsp, 16
                        mov              r11, 198
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n198_lit_integer_α
                        .size            n197_var_bx, .-n197_var_bx
                        .type            n198_lit_integer_bx, @function
n198_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_lit_integer_α:     sub              rsp, 16
                        mov              r11, 199
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_691_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n199_binop_α
n198_lit_integer_β:     mov              r11, 199
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n196_statement_begin_β
.Llit_integer_α_691_0:  .quad            1
                        .size            n198_lit_integer_bx, .-n198_lit_integer_bx
                        .type            n199_binop_bx, @function
n199_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_binop_α:           sub              rsp, 16
                        mov              r11, 200
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_692_2
                        add              rax, 1;                              jo    .Lbinop_α_692_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_692_7
.Lbinop_α_692_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_692_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_692_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_692_4
.Lbinop_α_692_3:        movq             xmm0, rsi
.Lbinop_α_692_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_692_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_692_7:                                                              jmp   n200_assign_α
.Lbinop_α_692_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_692_240
                        add              rsp, 16;                             jmp   n198_lit_integer_β
.Lbinop_α_692_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n200_assign_α
n199_binop_β:           mov              r11, 200
                        add              rsp, 16;                             jmp   n198_lit_integer_β
                        .size            n199_binop_bx, .-n199_binop_bx
                        .type            n200_assign_bx, @function
n200_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:          mov              r11, 201
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n201_statement_end_α
                        .size            n200_assign_bx, .-n200_assign_bx
                        .type            n201_statement_end_bx, @function
n201_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   mov              r11, 202
                        add              rsp, 48;                             jmp   n195_stmt_mark_α
                        .size            n201_statement_end_bx, .-n201_statement_end_bx
                        .type            n202_statement_begin_bx, @function
n202_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_begin_α: mov              r11, 203;                            jmp   n203_var_α
n202_statement_begin_β: mov              r11, 203;                            jmp   n210_stmt_mark_α
                        .size            n202_statement_begin_bx, .-n202_statement_begin_bx
                        .type            n203_var_bx, @function
n203_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_var_α:             sub              rsp, 16
                        mov              r11, 204
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n204_lit_integer_α
                        .size            n203_var_bx, .-n203_var_bx
                        .type            n204_lit_integer_bx, @function
n204_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_integer_α:     sub              rsp, 16
                        mov              r11, 205
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_699_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_coerce_numeric_α
n204_lit_integer_β:     mov              r11, 205
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n202_statement_begin_β
.Llit_integer_α_699_0:  .quad            2
                        .size            n204_lit_integer_bx, .-n204_lit_integer_bx
                        .type            n205_coerce_numeric_bx, @function
n205_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 206
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_701_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_701_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_701_0
.Lcoerce_numeric_α_701_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n206_coerce_numeric_α
.Lcoerce_numeric_α_701_0:
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
1:                                                                            jmp   n206_coerce_numeric_α
n205_coerce_numeric_β:  mov              r11, 206
                        add              rsp, 16;                             jmp   n204_lit_integer_β
                        .size            n205_coerce_numeric_bx, .-n205_coerce_numeric_bx
                        .type            n206_coerce_numeric_bx, @function
n206_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 207
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_703_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_703_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_703_0
.Lcoerce_numeric_α_703_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n207_cmp_test_α
.Lcoerce_numeric_α_703_0:
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
1:                                                                            jmp   n207_cmp_test_α
n206_coerce_numeric_β:  mov              r11, 207
                        add              rsp, 16;                             jmp   n205_coerce_numeric_β
                        .size            n206_coerce_numeric_bx, .-n206_coerce_numeric_bx
                        .type            n207_cmp_test_bx, @function
n207_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_cmp_test_α:        sub              rsp, 16
                        mov              r11, 208
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_705_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_705_239
                        add              rsp, 16;                             jmp   n206_coerce_numeric_β
.Lcmp_test_α_705_239:                                                         jmp   n208_statement_end_α
.Lcmp_test_α_705_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_705_240
                        add              rsp, 16;                             jmp   n206_coerce_numeric_β
.Lcmp_test_α_705_240:                                                         jmp   n208_statement_end_α
                        .size            n207_cmp_test_bx, .-n207_cmp_test_bx
                        .type            n208_statement_end_bx, @function
n208_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   mov              r11, 209
                        add              rsp, 80;                             jmp   n209_stmt_mark_α
                        .size            n208_statement_end_bx, .-n208_statement_end_bx
                        .type            n209_stmt_mark_bx, @function
n209_stmt_mark_bx:
#=======================================================================================================================
#                 to4.I = 3               :(to4.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n209_stmt_mark_α:       mov              r11, 210
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 66
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n211_statement_begin_α
                        .size            n209_stmt_mark_bx, .-n209_stmt_mark_bx
                        .type            n210_stmt_mark_bx, @function
n210_stmt_mark_bx:
#=======================================================================================================================
# write2.fail     OUTPUT = "Failure."     :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 78 0
n210_stmt_mark_α:       mov              r11, 211
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 60
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 78
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n277_statement_begin_α
                        .size            n210_stmt_mark_bx, .-n210_stmt_mark_bx
                        .type            n211_statement_begin_bx, @function
n211_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_begin_α: mov              r11, 212;                            jmp   n212_lit_integer_α
n211_statement_begin_β: mov              r11, 212;                            jmp   n215_stmt_mark_α
                        .size            n211_statement_begin_bx, .-n211_statement_begin_bx
                        .type            n212_lit_integer_bx, @function
n212_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_integer_α:     sub              rsp, 16
                        mov              r11, 213
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_714_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n213_assign_α
.Llit_integer_α_714_0:  .quad            3
                        .size            n212_lit_integer_bx, .-n212_lit_integer_bx
                        .type            n213_assign_bx, @function
n213_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_assign_α:          mov              r11, 214
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n214_statement_end_α
                        .size            n213_assign_bx, .-n213_assign_bx
                        .type            n214_statement_end_bx, @function
n214_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_end_α:   mov              r11, 215
                        add              rsp, 16;                             jmp   n215_stmt_mark_α
                        .size            n214_statement_end_bx, .-n214_statement_end_bx
                        .type            n215_stmt_mark_bx, @function
n215_stmt_mark_bx:
#=======================================================================================================================
# to4.code        LE(to4.I, 4)            :F(to3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 68 0
n215_stmt_mark_α:       mov              r11, 216
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 68
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n222_statement_begin_α
                        .size            n215_stmt_mark_bx, .-n215_stmt_mark_bx
                        .type            n216_statement_begin_bx, @function
n216_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_statement_begin_α: mov              r11, 217;                            jmp   n217_var_α
n216_statement_begin_β: mov              r11, 217;                            jmp   n215_stmt_mark_α
                        .size            n216_statement_begin_bx, .-n216_statement_begin_bx
                        .type            n217_var_bx, @function
n217_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_α:             sub              rsp, 16
                        mov              r11, 218
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n218_lit_integer_α
                        .size            n217_var_bx, .-n217_var_bx
                        .type            n218_lit_integer_bx, @function
n218_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:     sub              rsp, 16
                        mov              r11, 219
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_723_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n219_binop_α
n218_lit_integer_β:     mov              r11, 219
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n216_statement_begin_β
.Llit_integer_α_723_0:  .quad            1
                        .size            n218_lit_integer_bx, .-n218_lit_integer_bx
                        .type            n219_binop_bx, @function
n219_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_binop_α:           sub              rsp, 16
                        mov              r11, 220
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_724_2
                        add              rax, 1;                              jo    .Lbinop_α_724_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_724_7
.Lbinop_α_724_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_724_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_724_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_724_4
.Lbinop_α_724_3:        movq             xmm0, rsi
.Lbinop_α_724_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_724_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_724_7:                                                              jmp   n220_assign_α
.Lbinop_α_724_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_724_240
                        add              rsp, 16;                             jmp   n218_lit_integer_β
.Lbinop_α_724_240:      mov              qword ptr [rsp + 0], rax             # result
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
                        add              rsp, 16;                             jmp   n218_lit_integer_β
                        .size            n219_binop_bx, .-n219_binop_bx
                        .type            n220_assign_bx, @function
n220_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              r11, 221
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n221_statement_end_α
                        .size            n220_assign_bx, .-n220_assign_bx
                        .type            n221_statement_end_bx, @function
n221_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:   mov              r11, 222
                        add              rsp, 48;                             jmp   n215_stmt_mark_α
                        .size            n221_statement_end_bx, .-n221_statement_end_bx
                        .type            n222_statement_begin_bx, @function
n222_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_begin_α: mov              r11, 223;                            jmp   n223_var_α
n222_statement_begin_β: mov              r11, 223;                            jmp   n230_stmt_mark_α
                        .size            n222_statement_begin_bx, .-n222_statement_begin_bx
                        .type            n223_var_bx, @function
n223_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             sub              rsp, 16
                        mov              r11, 224
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n224_lit_integer_α
                        .size            n223_var_bx, .-n223_var_bx
                        .type            n224_lit_integer_bx, @function
n224_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_integer_α:     sub              rsp, 16
                        mov              r11, 225
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_731_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_coerce_numeric_α
n224_lit_integer_β:     mov              r11, 225
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n222_statement_begin_β
.Llit_integer_α_731_0:  .quad            4
                        .size            n224_lit_integer_bx, .-n224_lit_integer_bx
                        .type            n225_coerce_numeric_bx, @function
n225_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 226
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_733_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_733_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_733_0
.Lcoerce_numeric_α_733_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_coerce_numeric_α
.Lcoerce_numeric_α_733_0:
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
1:                                                                            jmp   n226_coerce_numeric_α
n225_coerce_numeric_β:  mov              r11, 226
                        add              rsp, 16;                             jmp   n224_lit_integer_β
                        .size            n225_coerce_numeric_bx, .-n225_coerce_numeric_bx
                        .type            n226_coerce_numeric_bx, @function
n226_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 227
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_735_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_735_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_735_0
.Lcoerce_numeric_α_735_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_cmp_test_α
.Lcoerce_numeric_α_735_0:
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
1:                                                                            jmp   n227_cmp_test_α
n226_coerce_numeric_β:  mov              r11, 227
                        add              rsp, 16;                             jmp   n225_coerce_numeric_β
                        .size            n226_coerce_numeric_bx, .-n226_coerce_numeric_bx
                        .type            n227_cmp_test_bx, @function
n227_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_cmp_test_α:        sub              rsp, 16
                        mov              r11, 228
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_737_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_737_239
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
.Lcmp_test_α_737_239:                                                         jmp   n228_statement_end_α
.Lcmp_test_α_737_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_737_240
                        add              rsp, 16;                             jmp   n226_coerce_numeric_β
.Lcmp_test_α_737_240:                                                         jmp   n228_statement_end_α
                        .size            n227_cmp_test_bx, .-n227_cmp_test_bx
                        .type            n228_statement_end_bx, @function
n228_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_statement_end_α:   mov              r11, 229
                        add              rsp, 80;                             jmp   n229_stmt_mark_α
                        .size            n228_statement_end_bx, .-n228_statement_end_bx
                        .type            n229_stmt_mark_bx, @function
n229_stmt_mark_bx:
#=======================================================================================================================
#                 mult.V = to3.I * to4.I  :F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n229_stmt_mark_α:       mov              r11, 230
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 69
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n231_statement_begin_α
                        .size            n229_stmt_mark_bx, .-n229_stmt_mark_bx
                        .type            n230_stmt_mark_bx, @function
n230_stmt_mark_bx:
#=======================================================================================================================
# to3.resume      to3.I = to3.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n230_stmt_mark_α:       mov              r11, 231
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 64
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n196_statement_begin_α
                        .size            n230_stmt_mark_bx, .-n230_stmt_mark_bx
                        .type            n231_statement_begin_bx, @function
n231_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_begin_α: mov              r11, 232;                            jmp   n232_var_α
n231_statement_begin_β: mov              r11, 232;                            jmp   n143_stmt_mark_α
                        .size            n231_statement_begin_bx, .-n231_statement_begin_bx
                        .type            n232_var_bx, @function
n232_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             sub              rsp, 16
                        mov              r11, 233
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n233_var_α
                        .size            n232_var_bx, .-n232_var_bx
                        .type            n233_var_bx, @function
n233_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_binop_α
n233_var_β:             mov              r11, 234
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n231_statement_begin_β
                        .size            n233_var_bx, .-n233_var_bx
                        .type            n234_binop_bx, @function
n234_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_binop_α:           sub              rsp, 16
                        mov              r11, 235
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_748_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_748_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_748_7
.Lbinop_α_748_2:        and              edx, 1;                              jz    .Lbinop_α_748_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_748_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_748_4
.Lbinop_α_748_3:        movq             xmm0, rsi
.Lbinop_α_748_4:        cmp              cl, 5;                               je    .Lbinop_α_748_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_748_6
.Lbinop_α_748_5:        movq             xmm1, rdi
.Lbinop_α_748_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_748_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_748_7:                                                              jmp   n235_assign_α
.Lbinop_α_748_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_748_240
                        add              rsp, 16;                             jmp   n233_var_β
.Lbinop_α_748_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n235_assign_α
n234_binop_β:           mov              r11, 235
                        add              rsp, 16;                             jmp   n233_var_β
                        .size            n234_binop_bx, .-n234_binop_bx
                        .type            n235_assign_bx, @function
n235_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_assign_α:          mov              r11, 236
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n236_statement_end_α
                        .size            n235_assign_bx, .-n235_assign_bx
                        .type            n236_statement_end_bx, @function
n236_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_statement_end_α:   mov              r11, 237
                        add              rsp, 48;                             jmp   n237_stmt_mark_α
                        .size            n236_statement_end_bx, .-n236_statement_end_bx
                        .type            n237_stmt_mark_bx, @function
n237_stmt_mark_bx:
#=======================================================================================================================
#                 GT(5, mult.V)           :F(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n237_stmt_mark_α:       mov              r11, 238
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 70
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n238_statement_begin_α
                        .size            n237_stmt_mark_bx, .-n237_stmt_mark_bx
                        .type            n238_statement_begin_bx, @function
n238_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_statement_begin_α: mov              r11, 239;                            jmp   n239_lit_integer_α
n238_statement_begin_β: mov              r11, 239;                            jmp   n246_stmt_mark_α
                        .size            n238_statement_begin_bx, .-n238_statement_begin_bx
                        .type            n239_lit_integer_bx, @function
n239_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_lit_integer_α:     sub              rsp, 16
                        mov              r11, 240
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_756_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n240_var_α
.Llit_integer_α_756_0:  .quad            5
                        .size            n239_lit_integer_bx, .-n239_lit_integer_bx
                        .type            n240_var_bx, @function
n240_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             sub              rsp, 16
                        mov              r11, 241
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n241_coerce_numeric_α
n240_var_β:             mov              r11, 241
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n238_statement_begin_β
                        .size            n240_var_bx, .-n240_var_bx
                        .type            n241_coerce_numeric_bx, @function
n241_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 242
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_759_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_759_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_759_0
.Lcoerce_numeric_α_759_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n242_coerce_numeric_α
.Lcoerce_numeric_α_759_0:
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
1:                                                                            jmp   n242_coerce_numeric_α
n241_coerce_numeric_β:  mov              r11, 242
                        add              rsp, 16;                             jmp   n240_var_β
                        .size            n241_coerce_numeric_bx, .-n241_coerce_numeric_bx
                        .type            n242_coerce_numeric_bx, @function
n242_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 243
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_761_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
                        mov              eax, dword ptr [rsp + 48]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
.Lcoerce_numeric_α_761_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n243_cmp_test_α
.Lcoerce_numeric_α_761_0:
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
1:                                                                            jmp   n243_cmp_test_α
n242_coerce_numeric_β:  mov              r11, 243
                        add              rsp, 16;                             jmp   n241_coerce_numeric_β
                        .size            n242_coerce_numeric_bx, .-n242_coerce_numeric_bx
                        .type            n243_cmp_test_bx, @function
n243_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_cmp_test_α:        sub              rsp, 16
                        mov              r11, 244
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_763_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_763_239
                        add              rsp, 16;                             jmp   n242_coerce_numeric_β
.Lcmp_test_α_763_239:                                                         jmp   n244_statement_end_α
.Lcmp_test_α_763_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jg    .Lcmp_test_α_763_240
                        add              rsp, 16;                             jmp   n242_coerce_numeric_β
.Lcmp_test_α_763_240:                                                         jmp   n244_statement_end_α
                        .size            n243_cmp_test_bx, .-n243_cmp_test_bx
                        .type            n244_statement_end_bx, @function
n244_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_statement_end_α:   mov              r11, 245
                        add              rsp, 80;                             jmp   n245_stmt_mark_α
                        .size            n244_statement_end_bx, .-n244_statement_end_bx
                        .type            n245_stmt_mark_bx, @function
n245_stmt_mark_bx:
#=======================================================================================================================
#                 greater.V = mult.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n245_stmt_mark_α:       mov              r11, 246
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 71
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n247_statement_begin_α
                        .size            n245_stmt_mark_bx, .-n245_stmt_mark_bx
                        .type            n246_stmt_mark_bx, @function
n246_stmt_mark_bx:
#=======================================================================================================================
# write2.resume   to4.I = to4.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n246_stmt_mark_α:       mov              r11, 247
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 67
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n216_statement_begin_α
                        .size            n246_stmt_mark_bx, .-n246_stmt_mark_bx
                        .type            n247_statement_begin_bx, @function
n247_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_begin_α: mov              r11, 248;                            jmp   n248_var_α
n247_statement_begin_β: mov              r11, 248;                            jmp   n251_stmt_mark_α
                        .size            n247_statement_begin_bx, .-n247_statement_begin_bx
                        .type            n248_var_bx, @function
n248_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             sub              rsp, 16
                        mov              r11, 249
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n249_assign_α
                        .size            n248_var_bx, .-n248_var_bx
                        .type            n249_assign_bx, @function
n249_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_assign_α:          mov              r11, 250
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n250_statement_end_α
                        .size            n249_assign_bx, .-n249_assign_bx
                        .type            n250_statement_end_bx, @function
n250_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_end_α:   mov              r11, 251
                        add              rsp, 16;                             jmp   n251_stmt_mark_α
                        .size            n250_statement_end_bx, .-n250_statement_end_bx
                        .type            n251_stmt_mark_bx, @function
n251_stmt_mark_bx:
#=======================================================================================================================
#                 OUTPUT = greater.V      :(write2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n251_stmt_mark_α:       mov              r11, 252
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 72
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n252_statement_begin_α
                        .size            n251_stmt_mark_bx, .-n251_stmt_mark_bx
                        .type            n252_statement_begin_bx, @function
n252_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_statement_begin_α: mov              r11, 253;                            jmp   n253_var_α
n252_statement_begin_β: mov              r11, 253;                            jmp   n256_stmt_mark_α
                        .size            n252_statement_begin_bx, .-n252_statement_begin_bx
                        .type            n253_var_bx, @function
n253_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             sub              rsp, 16
                        mov              r11, 254
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n254_assign_α
                        .size            n253_var_bx, .-n253_var_bx
                        .type            n254_assign_bx, @function
n254_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_assign_α:          mov              r11, 255
                        mov              rax, qword ptr [rsp + 0]             # var
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
1:                                                                            jmp   n255_statement_end_α
.Lassign_α_781_0:       .quad            .Lassign_α_781_0_s
.Lassign_α_781_0_s:     .string          "OUTPUT"
                        .size            n254_assign_bx, .-n254_assign_bx
                        .type            n255_statement_end_bx, @function
n255_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_end_α:   mov              r11, 256
                        add              rsp, 16;                             jmp   n256_stmt_mark_α
                        .size            n255_statement_end_bx, .-n255_statement_end_bx
                        .type            n256_stmt_mark_bx, @function
n256_stmt_mark_bx:
#=======================================================================================================================
# write2.succeed  OUTPUT = "Success!"     :(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n256_stmt_mark_α:       mov              r11, 257
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 61
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n281_statement_begin_α
                        .size            n256_stmt_mark_bx, .-n256_stmt_mark_bx
                        .type            n257_statement_begin_bx, @function
n257_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_statement_begin_α: mov              r11, 258;                            jmp   n258_lit_string_α
n257_statement_begin_β: mov              r11, 258;                            jmp   n261_stmt_mark_α
                        .size            n257_statement_begin_bx, .-n257_statement_begin_bx
                        .type            n258_lit_string_bx, @function
n258_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_lit_string_α:      sub              rsp, 16
                        mov              r11, 259
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_788_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n259_assign_α
.Llit_string_α_788_0:   .quad            .Llit_string_α_788_0_s
.Llit_string_α_788_0_s: .string          ""
                        .size            n258_lit_string_bx, .-n258_lit_string_bx
                        .type            n259_assign_bx, @function
n259_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_assign_α:          mov              r11, 260
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_789_0]
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
1:                                                                            jmp   n260_statement_end_α
.Lassign_α_789_0:       .quad            .Lassign_α_789_0_s
.Lassign_α_789_0_s:     .string          "OUTPUT"
                        .size            n259_assign_bx, .-n259_assign_bx
                        .type            n260_statement_end_bx, @function
n260_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_end_α:   mov              r11, 261
                        add              rsp, 16;                             jmp   n261_stmt_mark_α
                        .size            n260_statement_end_bx, .-n260_statement_end_bx
                        .type            n261_stmt_mark_bx, @function
n261_stmt_mark_bx:
#=======================================================================================================================
# write1.start                            :(greater.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n261_stmt_mark_α:       mov              r11, 262
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n172_statement_begin_α
                        .size            n261_stmt_mark_bx, .-n261_stmt_mark_bx
                        .type            n262_statement_begin_bx, @function
n262_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_statement_begin_α: mov              r11, 263;                            jmp   n263_lit_string_α
n262_statement_begin_β: mov              r11, 263;                            jmp   n266_stmt_mark_α
                        .size            n262_statement_begin_bx, .-n262_statement_begin_bx
                        .type            n263_lit_string_bx, @function
n263_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      sub              rsp, 16
                        mov              r11, 264
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_796_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n264_assign_α
.Llit_string_α_796_0:   .quad            .Llit_string_α_796_0_s
.Llit_string_α_796_0_s: .string          "Failure."
                        .size            n263_lit_string_bx, .-n263_lit_string_bx
                        .type            n264_assign_bx, @function
n264_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:          mov              r11, 265
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_797_0]
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
1:                                                                            jmp   n265_statement_end_α
.Lassign_α_797_0:       .quad            .Lassign_α_797_0_s
.Lassign_α_797_0_s:     .string          "OUTPUT"
                        .size            n264_assign_bx, .-n264_assign_bx
                        .type            n265_statement_end_bx, @function
n265_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_end_α:   mov              r11, 266
                        add              rsp, 16;                             jmp   n266_stmt_mark_α
                        .size            n265_statement_end_bx, .-n265_statement_end_bx
                        .type            n266_stmt_mark_bx, @function
n266_stmt_mark_bx:
#=======================================================================================================================
# main2           OUTPUT =                :(write2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 77 0
n266_stmt_mark_α:       mov              r11, 267
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 77
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n272_statement_begin_α
                        .size            n266_stmt_mark_bx, .-n266_stmt_mark_bx
                        .type            n267_statement_begin_bx, @function
n267_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_statement_begin_α: mov              r11, 268;                            jmp   n268_lit_string_α
n267_statement_begin_β: mov              r11, 268;                            jmp   n271_stmt_mark_α
                        .size            n267_statement_begin_bx, .-n267_statement_begin_bx
                        .type            n268_lit_string_bx, @function
n268_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      sub              rsp, 16
                        mov              r11, 269
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_804_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n269_assign_α
.Llit_string_α_804_0:   .quad            .Llit_string_α_804_0_s
.Llit_string_α_804_0_s: .string          "Success!"
                        .size            n268_lit_string_bx, .-n268_lit_string_bx
                        .type            n269_assign_bx, @function
n269_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_assign_α:          mov              r11, 270
                        mov              rax, qword ptr [rsp + 0]             # lit_string
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
1:                                                                            jmp   n270_statement_end_α
.Lassign_α_805_0:       .quad            .Lassign_α_805_0_s
.Lassign_α_805_0_s:     .string          "OUTPUT"
                        .size            n269_assign_bx, .-n269_assign_bx
                        .type            n270_statement_end_bx, @function
n270_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_end_α:   mov              r11, 271
                        add              rsp, 16;                             jmp   n271_stmt_mark_α
                        .size            n270_statement_end_bx, .-n270_statement_end_bx
                        .type            n271_stmt_mark_bx, @function
n271_stmt_mark_bx:
#=======================================================================================================================
# write1.resume                           :(greater.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n271_stmt_mark_α:       mov              r11, 272
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n175_statement_begin_α
                        .size            n271_stmt_mark_bx, .-n271_stmt_mark_bx
                        .type            n272_statement_begin_bx, @function
n272_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_statement_begin_α: mov              r11, 273;                            jmp   n273_lit_string_α
n272_statement_begin_β: mov              r11, 273;                            jmp   n276_stmt_mark_α
                        .size            n272_statement_begin_bx, .-n272_statement_begin_bx
                        .type            n273_lit_string_bx, @function
n273_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_string_α:      sub              rsp, 16
                        mov              r11, 274
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_812_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n274_assign_α
.Llit_string_α_812_0:   .quad            .Llit_string_α_812_0_s
.Llit_string_α_812_0_s: .string          ""
                        .size            n273_lit_string_bx, .-n273_lit_string_bx
                        .type            n274_assign_bx, @function
n274_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_assign_α:          mov              r11, 275
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_813_0]
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
1:                                                                            jmp   n275_statement_end_α
.Lassign_α_813_0:       .quad            .Lassign_α_813_0_s
.Lassign_α_813_0_s:     .string          "OUTPUT"
                        .size            n274_assign_bx, .-n274_assign_bx
                        .type            n275_statement_end_bx, @function
n275_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_end_α:   mov              r11, 276
                        add              rsp, 16;                             jmp   n276_stmt_mark_α
                        .size            n275_statement_end_bx, .-n275_statement_end_bx
                        .type            n276_stmt_mark_bx, @function
n276_stmt_mark_bx:
#=======================================================================================================================
# write2.start    to3.I = 1               :(to3.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n276_stmt_mark_α:       mov              r11, 277
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 63
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n191_statement_begin_α
                        .size            n276_stmt_mark_bx, .-n276_stmt_mark_bx
                        .type            n277_statement_begin_bx, @function
n277_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_statement_begin_α: mov              r11, 278;                            jmp   n278_lit_string_α
n277_statement_begin_β: mov              r11, 278;                            jmp   main_γ
                        .size            n277_statement_begin_bx, .-n277_statement_begin_bx
                        .type            n278_lit_string_bx, @function
n278_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      sub              rsp, 16
                        mov              r11, 279
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_820_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n279_assign_α
.Llit_string_α_820_0:   .quad            .Llit_string_α_820_0_s
.Llit_string_α_820_0_s: .string          "Failure."
                        .size            n278_lit_string_bx, .-n278_lit_string_bx
                        .type            n279_assign_bx, @function
n279_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_assign_α:          mov              r11, 280
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_821_0]
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
1:                                                                            jmp   n280_statement_end_α
.Lassign_α_821_0:       .quad            .Lassign_α_821_0_s
.Lassign_α_821_0_s:     .string          "OUTPUT"
                        .size            n279_assign_bx, .-n279_assign_bx
                        .type            n280_statement_end_bx, @function
n280_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_end_α:   mov              r11, 281
                        add              rsp, 16;                             jmp   main_γ
                        .size            n280_statement_end_bx, .-n280_statement_end_bx
                        .type            n281_statement_begin_bx, @function
n281_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_begin_α: mov              r11, 282;                            jmp   n282_lit_string_α
n281_statement_begin_β: mov              r11, 282;                            jmp   n246_stmt_mark_α
                        .size            n281_statement_begin_bx, .-n281_statement_begin_bx
                        .type            n282_lit_string_bx, @function
n282_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      sub              rsp, 16
                        mov              r11, 283
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_826_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n283_assign_α
.Llit_string_α_826_0:   .quad            .Llit_string_α_826_0_s
.Llit_string_α_826_0_s: .string          "Success!"
                        .size            n282_lit_string_bx, .-n282_lit_string_bx
                        .type            n283_assign_bx, @function
n283_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_assign_α:          mov              r11, 284
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_827_0]
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
1:                                                                            jmp   n284_statement_end_α
.Lassign_α_827_0:       .quad            .Lassign_α_827_0_s
.Lassign_α_827_0_s:     .string          "OUTPUT"
                        .size            n283_assign_bx, .-n283_assign_bx
                        .type            n284_statement_end_bx, @function
n284_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_end_α:   mov              r11, 285
                        add              rsp, 16;                             jmp   n246_stmt_mark_α
                        .size            n284_statement_end_bx, .-n284_statement_end_bx
                        .type            n285_statement_begin_bx, @function
n285_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_begin_α: mov              r11, 286;                            jmp   n286_lit_string_α
n285_statement_begin_β: mov              r11, 286;                            jmp   main_γ
                        .size            n285_statement_begin_bx, .-n285_statement_begin_bx
                        .type            n286_lit_string_bx, @function
n286_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      sub              rsp, 16
                        mov              r11, 287
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n287_assign_α
.Llit_string_α_832_0:   .quad            .Llit_string_α_832_0_s
.Llit_string_α_832_0_s: .string          "Exception!"
                        .size            n286_lit_string_bx, .-n286_lit_string_bx
                        .type            n287_assign_bx, @function
n287_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_assign_α:          mov              r11, 288
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_833_0]
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
1:                                                                            jmp   n288_statement_end_α
.Lassign_α_833_0:       .quad            .Lassign_α_833_0_s
.Lassign_α_833_0_s:     .string          "TERMINAL"
                        .size            n287_assign_bx, .-n287_assign_bx
                        .type            n288_statement_end_bx, @function
n288_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_end_α:   mov              r11, 289
                        add              rsp, 16;                             jmp   main_γ
                        .size            n288_statement_end_bx, .-n288_statement_end_bx
                        .type            n289_goto_bx, @function
n289_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_goto_α:            mov              r11, 290;                            jmp   n2_line_mark_α
n289_goto_β:            mov              r11, 290;                            jmp   main_ω
                        .size            n289_goto_bx, .-n289_goto_bx
                        .type            n290_goto_bx, @function
n290_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_goto_α:            mov              r11, 291;                            jmp   n146_stmt_mark_α
n290_goto_β:            mov              r11, 291;                            jmp   main_ω
                        .size            n290_goto_bx, .-n290_goto_bx
                        .type            n291_goto_bx, @function
n291_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_goto_α:            mov              r11, 292;                            jmp   n152_stmt_mark_α
n291_goto_β:            mov              r11, 292;                            jmp   main_ω
                        .size            n291_goto_bx, .-n291_goto_bx
                        .type            n292_goto_bx, @function
n292_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_goto_α:            mov              r11, 293;                            jmp   n33_stmt_mark_α
n292_goto_β:            mov              r11, 293;                            jmp   main_ω
                        .size            n292_goto_bx, .-n292_goto_bx
                        .type            n293_goto_bx, @function
n293_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_goto_α:            mov              r11, 294;                            jmp   n39_stmt_mark_α
n293_goto_β:            mov              r11, 294;                            jmp   main_ω
                        .size            n293_goto_bx, .-n293_goto_bx
                        .type            n294_goto_bx, @function
n294_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_goto_α:            mov              r11, 295;                            jmp   n63_stmt_mark_α
n294_goto_β:            mov              r11, 295;                            jmp   main_ω
                        .size            n294_goto_bx, .-n294_goto_bx
                        .type            n295_goto_bx, @function
n295_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_goto_α:            mov              r11, 296;                            jmp   n48_stmt_mark_α
n295_goto_β:            mov              r11, 296;                            jmp   main_ω
                        .size            n295_goto_bx, .-n295_goto_bx
                        .type            n296_goto_bx, @function
n296_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_goto_α:            mov              r11, 297;                            jmp   n123_stmt_mark_α
n296_goto_β:            mov              r11, 297;                            jmp   main_ω
                        .size            n296_goto_bx, .-n296_goto_bx
                        .type            n297_goto_bx, @function
n297_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_goto_α:            mov              r11, 298;                            jmp   n22_stmt_mark_α
n297_goto_β:            mov              r11, 298;                            jmp   main_ω
                        .size            n297_goto_bx, .-n297_goto_bx
                        .type            n298_goto_bx, @function
n298_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_goto_α:            mov              r11, 299;                            jmp   n30_stmt_mark_α
n298_goto_β:            mov              r11, 299;                            jmp   main_ω
                        .size            n298_goto_bx, .-n298_goto_bx
                        .type            n299_goto_bx, @function
n299_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_goto_α:            mov              r11, 300;                            jmp   n60_stmt_mark_α
n299_goto_β:            mov              r11, 300;                            jmp   main_ω
                        .size            n299_goto_bx, .-n299_goto_bx
                        .type            n300_goto_bx, @function
n300_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_goto_α:            mov              r11, 301;                            jmp   n129_stmt_mark_α
n300_goto_β:            mov              r11, 301;                            jmp   main_ω
                        .size            n300_goto_bx, .-n300_goto_bx
                        .type            n301_goto_bx, @function
n301_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_goto_α:            mov              r11, 302;                            jmp   n19_stmt_mark_α
n301_goto_β:            mov              r11, 302;                            jmp   main_ω
                        .size            n301_goto_bx, .-n301_goto_bx
                        .type            n302_goto_bx, @function
n302_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_goto_α:            mov              r11, 303;                            jmp   n27_stmt_mark_α
n302_goto_β:            mov              r11, 303;                            jmp   main_ω
                        .size            n302_goto_bx, .-n302_goto_bx
                        .type            n303_goto_bx, @function
n303_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_goto_α:            mov              r11, 304;                            jmp   n86_stmt_mark_α
n303_goto_β:            mov              r11, 304;                            jmp   main_ω
                        .size            n303_goto_bx, .-n303_goto_bx
                        .type            n304_goto_bx, @function
n304_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_goto_α:            mov              r11, 305;                            jmp   n92_stmt_mark_α
n304_goto_β:            mov              r11, 305;                            jmp   main_ω
                        .size            n304_goto_bx, .-n304_goto_bx
                        .type            n305_goto_bx, @function
n305_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_goto_α:            mov              r11, 306;                            jmp   n116_stmt_mark_α
n305_goto_β:            mov              r11, 306;                            jmp   main_ω
                        .size            n305_goto_bx, .-n305_goto_bx
                        .type            n306_goto_bx, @function
n306_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_goto_α:            mov              r11, 307;                            jmp   n101_stmt_mark_α
n306_goto_β:            mov              r11, 307;                            jmp   main_ω
                        .size            n306_goto_bx, .-n306_goto_bx
                        .type            n307_goto_bx, @function
n307_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_goto_α:            mov              r11, 308;                            jmp   n135_stmt_mark_α
n307_goto_β:            mov              r11, 308;                            jmp   main_ω
                        .size            n307_goto_bx, .-n307_goto_bx
                        .type            n308_goto_bx, @function
n308_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_goto_α:            mov              r11, 309;                            jmp   n75_stmt_mark_α
n308_goto_β:            mov              r11, 309;                            jmp   main_ω
                        .size            n308_goto_bx, .-n308_goto_bx
                        .type            n309_goto_bx, @function
n309_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_goto_α:            mov              r11, 310;                            jmp   n83_stmt_mark_α
n309_goto_β:            mov              r11, 310;                            jmp   main_ω
                        .size            n309_goto_bx, .-n309_goto_bx
                        .type            n310_goto_bx, @function
n310_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_goto_α:            mov              r11, 311;                            jmp   n113_stmt_mark_α
n310_goto_β:            mov              r11, 311;                            jmp   main_ω
                        .size            n310_goto_bx, .-n310_goto_bx
                        .type            n311_goto_bx, @function
n311_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_goto_α:            mov              r11, 312;                            jmp   n132_stmt_mark_α
n311_goto_β:            mov              r11, 312;                            jmp   main_ω
                        .size            n311_goto_bx, .-n311_goto_bx
                        .type            n312_goto_bx, @function
n312_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_goto_α:            mov              r11, 313;                            jmp   n72_stmt_mark_α
n312_goto_β:            mov              r11, 313;                            jmp   main_ω
                        .size            n312_goto_bx, .-n312_goto_bx
                        .type            n313_goto_bx, @function
n313_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_goto_α:            mov              r11, 314;                            jmp   n80_stmt_mark_α
n313_goto_β:            mov              r11, 314;                            jmp   main_ω
                        .size            n313_goto_bx, .-n313_goto_bx
                        .type            n314_goto_bx, @function
n314_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_goto_α:            mov              r11, 315;                            jmp   n158_stmt_mark_α
n314_goto_β:            mov              r11, 315;                            jmp   main_ω
                        .size            n314_goto_bx, .-n314_goto_bx
                        .type            n315_goto_bx, @function
n315_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:            mov              r11, 316;                            jmp   n36_stmt_mark_α
n315_goto_β:            mov              r11, 316;                            jmp   main_ω
                        .size            n315_goto_bx, .-n315_goto_bx
                        .type            n316_goto_bx, @function
n316_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_goto_α:            mov              r11, 317;                            jmp   n89_stmt_mark_α
n316_goto_β:            mov              r11, 317;                            jmp   main_ω
                        .size            n316_goto_bx, .-n316_goto_bx
                        .type            n317_goto_bx, @function
n317_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_goto_α:            mov              r11, 318;                            jmp   n155_stmt_mark_α
n317_goto_β:            mov              r11, 318;                            jmp   main_ω
                        .size            n317_goto_bx, .-n317_goto_bx
                        .type            n318_goto_bx, @function
n318_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:            mov              r11, 319;                            jmp   n53_stmt_mark_α
n318_goto_β:            mov              r11, 319;                            jmp   main_ω
                        .size            n318_goto_bx, .-n318_goto_bx
                        .type            n319_goto_bx, @function
n319_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_goto_α:            mov              r11, 320;                            jmp   n106_stmt_mark_α
n319_goto_β:            mov              r11, 320;                            jmp   main_ω
                        .size            n319_goto_bx, .-n319_goto_bx
                        .type            n320_goto_bx, @function
n320_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_goto_α:            mov              r11, 321;                            jmp   n174_stmt_mark_α
n320_goto_β:            mov              r11, 321;                            jmp   main_ω
                        .size            n320_goto_bx, .-n320_goto_bx
                        .type            n321_goto_bx, @function
n321_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_goto_α:            mov              r11, 322;                            jmp   n14_stmt_mark_α
n321_goto_β:            mov              r11, 322;                            jmp   main_ω
                        .size            n321_goto_bx, .-n321_goto_bx
                        .type            n322_goto_bx, @function
n322_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_goto_α:            mov              r11, 323;                            jmp   n126_stmt_mark_α
n322_goto_β:            mov              r11, 323;                            jmp   main_ω
                        .size            n322_goto_bx, .-n322_goto_bx
                        .type            n323_goto_bx, @function
n323_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_goto_α:            mov              r11, 324;                            jmp   n177_stmt_mark_α
n323_goto_β:            mov              r11, 324;                            jmp   main_ω
                        .size            n323_goto_bx, .-n323_goto_bx
                        .type            n324_goto_bx, @function
n324_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_goto_α:            mov              r11, 325;                            jmp   n11_stmt_mark_α
n324_goto_β:            mov              r11, 325;                            jmp   main_ω
                        .size            n324_goto_bx, .-n324_goto_bx
                        .type            n325_goto_bx, @function
n325_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_goto_α:            mov              r11, 326;                            jmp   n142_stmt_mark_α
n325_goto_β:            mov              r11, 326;                            jmp   main_ω
                        .size            n325_goto_bx, .-n325_goto_bx
                        .type            n326_goto_bx, @function
n326_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:            mov              r11, 327;                            jmp   n261_stmt_mark_α
n326_goto_β:            mov              r11, 327;                            jmp   main_ω
                        .size            n326_goto_bx, .-n326_goto_bx
                        .type            n327_goto_bx, @function
n327_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_goto_α:            mov              r11, 328;                            jmp   n271_stmt_mark_α
n327_goto_β:            mov              r11, 328;                            jmp   main_ω
                        .size            n327_goto_bx, .-n327_goto_bx
                        .type            n328_goto_bx, @function
n328_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_goto_α:            mov              r11, 329;                            jmp   n149_stmt_mark_α
n328_goto_β:            mov              r11, 329;                            jmp   main_ω
                        .size            n328_goto_bx, .-n328_goto_bx
                        .type            n329_goto_bx, @function
n329_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_goto_α:            mov              r11, 330;                            jmp   n171_stmt_mark_α
n329_goto_β:            mov              r11, 330;                            jmp   main_ω
                        .size            n329_goto_bx, .-n329_goto_bx
                        .type            n330_goto_bx, @function
n330_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_goto_α:            mov              r11, 331;                            jmp   n276_stmt_mark_α
n330_goto_β:            mov              r11, 331;                            jmp   main_ω
                        .size            n330_goto_bx, .-n330_goto_bx
                        .type            n331_goto_bx, @function
n331_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_goto_α:            mov              r11, 332;                            jmp   n230_stmt_mark_α
n331_goto_β:            mov              r11, 332;                            jmp   main_ω
                        .size            n331_goto_bx, .-n331_goto_bx
                        .type            n332_goto_bx, @function
n332_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_goto_α:            mov              r11, 333;                            jmp   n195_stmt_mark_α
n332_goto_β:            mov              r11, 333;                            jmp   main_ω
                        .size            n332_goto_bx, .-n332_goto_bx
                        .type            n333_goto_bx, @function
n333_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:            mov              r11, 334;                            jmp   n246_stmt_mark_α
n333_goto_β:            mov              r11, 334;                            jmp   main_ω
                        .size            n333_goto_bx, .-n333_goto_bx
                        .type            n334_goto_bx, @function
n334_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:            mov              r11, 335;                            jmp   n215_stmt_mark_α
n334_goto_β:            mov              r11, 335;                            jmp   main_ω
                        .size            n334_goto_bx, .-n334_goto_bx
                        .type            n335_goto_bx, @function
n335_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:            mov              r11, 336;                            jmp   n6_stmt_mark_α
n335_goto_β:            mov              r11, 336;                            jmp   main_ω
                        .size            n335_goto_bx, .-n335_goto_bx
                        .type            n336_goto_bx, @function
n336_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_goto_α:            mov              r11, 337;                            jmp   n180_stmt_mark_α
n336_goto_β:            mov              r11, 337;                            jmp   main_ω
                        .size            n336_goto_bx, .-n336_goto_bx
                        .type            n337_goto_bx, @function
n337_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:            mov              r11, 338;                            jmp   n190_stmt_mark_α
n337_goto_β:            mov              r11, 338;                            jmp   main_ω
                        .size            n337_goto_bx, .-n337_goto_bx
                        .type            n338_goto_bx, @function
n338_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:            mov              r11, 339;                            jmp   n266_stmt_mark_α
n338_goto_β:            mov              r11, 339;                            jmp   main_ω
                        .size            n338_goto_bx, .-n338_goto_bx
                        .type            n339_goto_bx, @function
n339_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_goto_α:            mov              r11, 340;                            jmp   n210_stmt_mark_α
n339_goto_β:            mov              r11, 340;                            jmp   main_ω
                        .size            n339_goto_bx, .-n339_goto_bx
                        .type            n340_goto_bx, @function
n340_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_goto_α:            mov              r11, 341;                            jmp   n256_stmt_mark_α
n340_goto_β:            mov              r11, 341;                            jmp   main_ω
                        .size            n340_goto_bx, .-n340_goto_bx
                        .type            n341_goto_bx, @function
n341_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_goto_α:            mov              r11, 342;                            jmp   n143_stmt_mark_α
n341_goto_β:            mov              r11, 342;                            jmp   main_ω
                        .size            n341_goto_bx, .-n341_goto_bx
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
                        .quad            4811709828442
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1104
                        .quad            1
                        .quad            1213860837064704
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
