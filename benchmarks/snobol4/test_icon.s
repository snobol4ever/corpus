                        .intel_syntax    noprefix
                        .text
                        .file            1 "test_icon.sno"
                        .file            2 "<included>"
                        .globl           main
main:
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
                        mov              rdi, qword ptr [rsp]
                        mov              rdi, qword ptr [rdi]
                        call             rt_main_progname_stage@PLT
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
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
main_α_body:
                        .type            n0_lit_integer_bx, @function
n0_lit_integer_bx:
#=======================================================================================================================
# START                                   :(main1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n0_lit_integer_α:       sub              rsp, 16
                        mov              r11, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_343_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n1_lit_integer_α
.Llit_integer_α_343_0:  .quad            18446744073709551615
                        .size            n0_lit_integer_bx, .-n0_lit_integer_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       sub              rsp, 16
                        mov              r11, 2
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_344_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n2_lit_string_α
.Llit_integer_α_344_0:  .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_lit_string_bx, @function
n2_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_string_α:        sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_345_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_call_α
.Llit_string_α_345_0:   .quad            .Llit_string_α_345_0_s
.Llit_string_α_345_0_s: .string          "test_icon.sno"
                        .size            n2_lit_string_bx, .-n2_lit_string_bx
                        .type            n3_call_bx, @function
n3_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_call_α:              sub              rsp, 16
                        mov              r11, 4
                        sub              rsp, 48
                        mov              r8, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 0], r8
                        mov              r8, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 8], r8
                        mov              r8, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 16], r8
                        mov              r8, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 24], r8
                        mov              r8, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 32], r8
                        mov              r8, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 40], r8
                        .section         .rodata
.Lcall_α_rkfnzd347:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd347]
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
                        cmp              al, 104;                             jne   .Lcall_α_346_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n4_stmt_mark_α
.Lcall_α_346_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n4_stmt_mark_α
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
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n5_statement_begin_α
                        .size            n4_stmt_mark_bx, .-n4_stmt_mark_bx
                        .type            n5_statement_begin_bx, @function
n5_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_begin_α:   mov              r11, 6
                        mov              r10, 1;                              jmp   n6_statement_end_α
n5_statement_begin_β:   mov              r11, 6
                        add              rsp, 64;                             jmp   n7_stmt_mark_α
                        .size            n5_statement_begin_bx, .-n5_statement_begin_bx
                        .type            n6_statement_end_bx, @function
n6_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_statement_end_α:     mov              r11, 7
                        mov              r10, 1
                        add              rsp, 64;                             jmp   n7_stmt_mark_α
                        .size            n6_statement_end_bx, .-n6_statement_end_bx
                        .type            n7_stmt_mark_bx, @function
n7_stmt_mark_bx:
#=======================================================================================================================
# main1           OUTPUT =                :(write1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 74 0
n7_stmt_mark_α:         mov              r11, 8
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 56
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 74
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n258_statement_begin_α
                        .size            n7_stmt_mark_bx, .-n7_stmt_mark_bx
                        .type            n8_statement_begin_bx, @function
n8_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_begin_α:   mov              r11, 9
                        mov              r10, 2;                              jmp   n9_lit_integer_α
n8_statement_begin_β:   mov              r11, 9;                              jmp   n12_stmt_mark_α
                        .size            n8_statement_begin_bx, .-n8_statement_begin_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       sub              rsp, 16
                        mov              r11, 10
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_358_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n10_assign_α
.Llit_integer_α_358_0:  .quad            5
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_assign_bx, @function
n10_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_assign_α:           mov              r11, 11
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # x5.V
                        mov              qword ptr [r9 + 8], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_359_0]
                        .section         .rodata
.Lassign_α_359_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_359_1_s]
                        mov              r8, 74
                        mov              r9, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n11_statement_end_α
.Lassign_α_359_0:       .quad            .Lassign_α_359_0_s
.Lassign_α_359_0_s:     .string          "x5.V"
                        .size            n10_assign_bx, .-n10_assign_bx
                        .type            n11_statement_end_bx, @function
n11_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:    mov              r11, 12
                        mov              r10, 2
                        add              rsp, 16;                             jmp   n12_stmt_mark_α
                        .size            n11_statement_end_bx, .-n11_statement_end_bx
                        .type            n12_stmt_mark_bx, @function
n12_stmt_mark_bx:
#=======================================================================================================================
# x5.succeed                              :(mult.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n12_stmt_mark_α:        mov              r11, 13
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n157_statement_begin_α
                        .size            n12_stmt_mark_bx, .-n12_stmt_mark_bx
                        .type            n13_statement_begin_bx, @function
n13_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_begin_α:  mov              r11, 14
                        mov              r10, 3;                              jmp   n14_statement_end_α
n13_statement_begin_β:  mov              r11, 14;                             jmp   n15_stmt_mark_α
                        .size            n13_statement_begin_bx, .-n13_statement_begin_bx
                        .type            n14_statement_end_bx, @function
n14_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_statement_end_α:    mov              r11, 15
                        mov              r10, 3;                              jmp   n15_stmt_mark_α
                        .size            n14_statement_end_bx, .-n14_statement_end_bx
                        .type            n15_stmt_mark_bx, @function
n15_stmt_mark_bx:
#=======================================================================================================================
# x5.fail                                 :(greater.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n15_stmt_mark_α:        mov              r11, 16
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n148_statement_begin_α
                        .size            n15_stmt_mark_bx, .-n15_stmt_mark_bx
                        .type            n16_statement_begin_bx, @function
n16_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_begin_α:  mov              r11, 17
                        mov              r10, 4;                              jmp   n17_lit_integer_α
n16_statement_begin_β:  mov              r11, 17;                             jmp   n20_stmt_mark_α
                        .size            n16_statement_begin_bx, .-n16_statement_begin_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              r11, 18
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_372_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
.Llit_integer_α_372_0:  .quad            1
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_assign_bx, @function
n18_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              r11, 19
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # x1.V
                        mov              qword ptr [r9 + 24], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_373_0]
                        .section         .rodata
.Lassign_α_373_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_373_1_s]
                        mov              r8, 47
                        mov              r9, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n19_statement_end_α
.Lassign_α_373_0:       .quad            .Lassign_α_373_0_s
.Lassign_α_373_0_s:     .string          "x1.V"
                        .size            n18_assign_bx, .-n18_assign_bx
                        .type            n19_statement_end_bx, @function
n19_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    mov              r11, 20
                        mov              r10, 4
                        add              rsp, 16;                             jmp   n20_stmt_mark_α
                        .size            n19_statement_end_bx, .-n19_statement_end_bx
                        .type            n20_stmt_mark_bx, @function
n20_stmt_mark_bx:
#=======================================================================================================================
# x1.succeed                              :(x2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n20_stmt_mark_α:        mov              r11, 21
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n62_statement_begin_α
                        .size            n20_stmt_mark_bx, .-n20_stmt_mark_bx
                        .type            n21_statement_begin_bx, @function
n21_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_begin_α:  mov              r11, 22
                        mov              r10, 5;                              jmp   n22_statement_end_α
n21_statement_begin_β:  mov              r11, 22;                             jmp   n23_stmt_mark_α
                        .size            n21_statement_begin_bx, .-n21_statement_begin_bx
                        .type            n22_statement_end_bx, @function
n22_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    mov              r11, 23
                        mov              r10, 5;                              jmp   n23_stmt_mark_α
                        .size            n22_statement_end_bx, .-n22_statement_end_bx
                        .type            n23_stmt_mark_bx, @function
n23_stmt_mark_bx:
#=======================================================================================================================
# x1.fail                                 :(to1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n23_stmt_mark_α:        mov              r11, 24
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n35_statement_begin_α
                        .size            n23_stmt_mark_bx, .-n23_stmt_mark_bx
                        .type            n24_statement_begin_bx, @function
n24_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_begin_α:  mov              r11, 25
                        mov              r10, 6;                              jmp   n25_lit_integer_α
n24_statement_begin_β:  mov              r11, 25;                             jmp   n28_stmt_mark_α
                        .size            n24_statement_begin_bx, .-n24_statement_begin_bx
                        .type            n25_lit_integer_bx, @function
n25_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      sub              rsp, 16
                        mov              r11, 26
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_386_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n26_assign_α
.Llit_integer_α_386_0:  .quad            2
                        .size            n25_lit_integer_bx, .-n25_lit_integer_bx
                        .type            n26_assign_bx, @function
n26_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_assign_α:           mov              r11, 27
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # x2.V
                        mov              qword ptr [r9 + 40], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_387_0]
                        .section         .rodata
.Lassign_α_387_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_387_1_s]
                        mov              r8, 16
                        mov              r9, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n27_statement_end_α
.Lassign_α_387_0:       .quad            .Lassign_α_387_0_s
.Lassign_α_387_0_s:     .string          "x2.V"
                        .size            n26_assign_bx, .-n26_assign_bx
                        .type            n27_statement_end_bx, @function
n27_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:    mov              r11, 28
                        mov              r10, 6
                        add              rsp, 16;                             jmp   n28_stmt_mark_α
                        .size            n27_statement_end_bx, .-n27_statement_end_bx
                        .type            n28_stmt_mark_bx, @function
n28_stmt_mark_bx:
#=======================================================================================================================
# x2.succeed      to1.I = x1.V            :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n28_stmt_mark_α:        mov              r11, 29
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n65_statement_begin_α
                        .size            n28_stmt_mark_bx, .-n28_stmt_mark_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_begin_α:  mov              r11, 30
                        mov              r10, 7;                              jmp   n30_statement_end_α
n29_statement_begin_β:  mov              r11, 30;                             jmp   n31_stmt_mark_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_statement_end_bx, @function
n30_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:    mov              r11, 31
                        mov              r10, 7;                              jmp   n31_stmt_mark_α
                        .size            n30_statement_end_bx, .-n30_statement_end_bx
                        .type            n31_stmt_mark_bx, @function
n31_stmt_mark_bx:
#=======================================================================================================================
# x2.fail                                 :(x1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n31_stmt_mark_α:        mov              r11, 32
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n38_statement_begin_α
                        .size            n31_stmt_mark_bx, .-n31_stmt_mark_bx
                        .type            n32_statement_begin_bx, @function
n32_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_begin_α:  mov              r11, 33
                        mov              r10, 8;                              jmp   n33_statement_end_α
n32_statement_begin_β:  mov              r11, 33;                             jmp   n34_stmt_mark_α
                        .size            n32_statement_begin_bx, .-n32_statement_begin_bx
                        .type            n33_statement_end_bx, @function
n33_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:    mov              r11, 34
                        mov              r10, 8;                              jmp   n34_stmt_mark_α
                        .size            n33_statement_end_bx, .-n33_statement_end_bx
                        .type            n34_stmt_mark_bx, @function
n34_stmt_mark_bx:
#=======================================================================================================================
# x1.start        x1.V = 1                :(x1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n34_stmt_mark_α:        mov              r11, 35
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n16_statement_begin_α
                        .size            n34_stmt_mark_bx, .-n34_stmt_mark_bx
                        .type            n35_statement_begin_bx, @function
n35_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_statement_begin_α:  mov              r11, 36
                        mov              r10, 9;                              jmp   n36_statement_end_α
n35_statement_begin_β:  mov              r11, 36;                             jmp   n37_stmt_mark_α
                        .size            n35_statement_begin_bx, .-n35_statement_begin_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:    mov              r11, 37
                        mov              r10, 9;                              jmp   n37_stmt_mark_α
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_stmt_mark_bx, @function
n37_stmt_mark_bx:
#=======================================================================================================================
# to1.fail                                :(mult.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n37_stmt_mark_α:        mov              r11, 38
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n125_statement_begin_α
                        .size            n37_stmt_mark_bx, .-n37_stmt_mark_bx
                        .type            n38_statement_begin_bx, @function
n38_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_begin_α:  mov              r11, 39
                        mov              r10, 10;                             jmp   n39_statement_end_α
n38_statement_begin_β:  mov              r11, 39;                             jmp   n40_stmt_mark_α
                        .size            n38_statement_begin_bx, .-n38_statement_begin_bx
                        .type            n39_statement_end_bx, @function
n39_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_statement_end_α:    mov              r11, 40
                        mov              r10, 10;                             jmp   n40_stmt_mark_α
                        .size            n39_statement_end_bx, .-n39_statement_end_bx
                        .type            n40_stmt_mark_bx, @function
n40_stmt_mark_bx:
#=======================================================================================================================
# x1.resume                               :(x1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n40_stmt_mark_α:        mov              r11, 41
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n21_statement_begin_α
                        .size            n40_stmt_mark_bx, .-n40_stmt_mark_bx
                        .type            n41_statement_begin_bx, @function
n41_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_begin_α:  mov              r11, 42
                        mov              r10, 11;                             jmp   n42_var_α
n41_statement_begin_β:  mov              r11, 42;                             jmp   n49_stmt_mark_α
                        .size            n41_statement_begin_bx, .-n41_statement_begin_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              sub              rsp, 16
                        mov              r11, 43
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n43_var_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_var_bx, @function
n43_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_α:              sub              rsp, 16
                        mov              r11, 44
                        mov              rax, qword ptr [r9 + 32]             # x2.V
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n44_coerce_numeric_α
n43_var_β:              mov              r11, 44
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n41_statement_begin_β
                        .size            n43_var_bx, .-n43_var_bx
                        .type            n44_coerce_numeric_bx, @function
n44_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 45
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_421_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_421_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_421_0
.Lcoerce_numeric_α_421_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n45_coerce_numeric_α
.Lcoerce_numeric_α_421_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n45_coerce_numeric_α
n44_coerce_numeric_β:   mov              r11, 45
                        add              rsp, 16;                             jmp   n43_var_β
                        .size            n44_coerce_numeric_bx, .-n44_coerce_numeric_bx
                        .type            n45_coerce_numeric_bx, @function
n45_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 46
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_423_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_423_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_423_0
.Lcoerce_numeric_α_423_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n46_cmp_test_α
.Lcoerce_numeric_α_423_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n46_cmp_test_α
n45_coerce_numeric_β:   mov              r11, 46
                        add              rsp, 16;                             jmp   n44_coerce_numeric_β
                        .size            n45_coerce_numeric_bx, .-n45_coerce_numeric_bx
                        .type            n46_cmp_test_bx, @function
n46_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_cmp_test_α:         sub              rsp, 16
                        mov              r11, 47
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_425_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_425_239
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
.Lcmp_test_α_425_239:                                                         jmp   n47_statement_end_α
.Lcmp_test_α_425_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lcmp_test_α_425_240
                        add              rsp, 16;                             jmp   n45_coerce_numeric_β
.Lcmp_test_α_425_240:                                                         jmp   n47_statement_end_α
                        .size            n46_cmp_test_bx, .-n46_cmp_test_bx
                        .type            n47_statement_end_bx, @function
n47_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_statement_end_α:    mov              r11, 48
                        mov              r10, 11
                        add              rsp, 80;                             jmp   n48_stmt_mark_α
                        .size            n47_statement_end_bx, .-n47_statement_end_bx
                        .type            n48_stmt_mark_bx, @function
n48_stmt_mark_bx:
#=======================================================================================================================
#                 to1.V = to1.I           :(to1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n48_stmt_mark_α:        mov              r11, 49
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n50_statement_begin_α
                        .size            n48_stmt_mark_bx, .-n48_stmt_mark_bx
                        .type            n49_stmt_mark_bx, @function
n49_stmt_mark_bx:
#=======================================================================================================================
# x2.resume                               :(x2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n49_stmt_mark_α:        mov              r11, 50
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n29_statement_begin_α
                        .size            n49_stmt_mark_bx, .-n49_stmt_mark_bx
                        .type            n50_statement_begin_bx, @function
n50_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_begin_α:  mov              r11, 51
                        mov              r10, 12;                             jmp   n51_var_α
n50_statement_begin_β:  mov              r11, 51;                             jmp   n54_stmt_mark_α
                        .size            n50_statement_begin_bx, .-n50_statement_begin_bx
                        .type            n51_var_bx, @function
n51_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_α:              sub              rsp, 16
                        mov              r11, 52
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n52_assign_α
                        .size            n51_var_bx, .-n51_var_bx
                        .type            n52_assign_bx, @function
n52_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_assign_α:           mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # to1.V
                        mov              qword ptr [r9 + 72], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_435_0]
                        .section         .rodata
.Lassign_α_435_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_435_1_s]
                        mov              r8, 13
                        mov              r9, 12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n53_statement_end_α
.Lassign_α_435_0:       .quad            .Lassign_α_435_0_s
.Lassign_α_435_0_s:     .string          "to1.V"
                        .size            n52_assign_bx, .-n52_assign_bx
                        .type            n53_statement_end_bx, @function
n53_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_statement_end_α:    mov              r11, 54
                        mov              r10, 12
                        add              rsp, 16;                             jmp   n54_stmt_mark_α
                        .size            n53_statement_end_bx, .-n53_statement_end_bx
                        .type            n54_stmt_mark_bx, @function
n54_stmt_mark_bx:
#=======================================================================================================================
# to1.succeed                             :(to2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n54_stmt_mark_α:        mov              r11, 55
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n134_statement_begin_α
                        .size            n54_stmt_mark_bx, .-n54_stmt_mark_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_begin_α:  mov              r11, 56
                        mov              r10, 13;                             jmp   n56_var_α
n55_statement_begin_β:  mov              r11, 56;                             jmp   n61_stmt_mark_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_var_bx, @function
n56_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_α:              sub              rsp, 16
                        mov              r11, 57
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n57_lit_integer_α
                        .size            n56_var_bx, .-n56_var_bx
                        .type            n57_lit_integer_bx, @function
n57_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_integer_α:      sub              rsp, 16
                        mov              r11, 58
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_443_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n58_binop_α
n57_lit_integer_β:      mov              r11, 58
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n55_statement_begin_β
.Llit_integer_α_443_0:  .quad            1
                        .size            n57_lit_integer_bx, .-n57_lit_integer_bx
                        .type            n58_binop_bx, @function
n58_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_binop_α:            sub              rsp, 16
                        mov              r11, 59
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_444_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_444_7
.Lbinop_α_444_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_444_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_444_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_444_4
.Lbinop_α_444_3:        movq             xmm0, rsi
.Lbinop_α_444_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_444_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_444_7:                                                              jmp   n59_assign_α
.Lbinop_α_444_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_444_240
                        add              rsp, 16;                             jmp   n57_lit_integer_β
.Lbinop_α_444_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_assign_α
                        .size            n58_binop_bx, .-n58_binop_bx
                        .type            n59_assign_bx, @function
n59_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              r11, 60
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_445_0]
                        .section         .rodata
.Lassign_α_445_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_445_1_s]
                        mov              r8, 43
                        mov              r9, 13
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n60_statement_end_α
.Lassign_α_445_0:       .quad            .Lassign_α_445_0_s
.Lassign_α_445_0_s:     .string          "to1.I"
                        .size            n59_assign_bx, .-n59_assign_bx
                        .type            n60_statement_end_bx, @function
n60_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    mov              r11, 61
                        mov              r10, 13
                        add              rsp, 48;                             jmp   n61_stmt_mark_α
                        .size            n60_statement_end_bx, .-n60_statement_end_bx
                        .type            n61_stmt_mark_bx, @function
n61_stmt_mark_bx:
#=======================================================================================================================
# to1.code        LE(to1.I, x2.V)         :F(x2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n61_stmt_mark_α:        mov              r11, 62
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n41_statement_begin_α
                        .size            n61_stmt_mark_bx, .-n61_stmt_mark_bx
                        .type            n62_statement_begin_bx, @function
n62_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_begin_α:  mov              r11, 63
                        mov              r10, 14;                             jmp   n63_statement_end_α
n62_statement_begin_β:  mov              r11, 63;                             jmp   n64_stmt_mark_α
                        .size            n62_statement_begin_bx, .-n62_statement_begin_bx
                        .type            n63_statement_end_bx, @function
n63_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_statement_end_α:    mov              r11, 64
                        mov              r10, 14;                             jmp   n64_stmt_mark_α
                        .size            n63_statement_end_bx, .-n63_statement_end_bx
                        .type            n64_stmt_mark_bx, @function
n64_stmt_mark_bx:
#=======================================================================================================================
# x2.start        x2.V = 2                :(x2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n64_stmt_mark_α:        mov              r11, 65
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n24_statement_begin_α
                        .size            n64_stmt_mark_bx, .-n64_stmt_mark_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_begin_α:  mov              r11, 66
                        mov              r10, 15;                             jmp   n66_var_α
n65_statement_begin_β:  mov              r11, 66;                             jmp   n61_stmt_mark_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              r11, 67
                        mov              rax, qword ptr [r9 + 16]             # x1.V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_assign_α
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_assign_bx, @function
n67_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_assign_α:           mov              r11, 68
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_459_0]
                        .section         .rodata
.Lassign_α_459_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_459_1_s]
                        mov              r8, 12
                        mov              r9, 15
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n68_statement_end_α
.Lassign_α_459_0:       .quad            .Lassign_α_459_0_s
.Lassign_α_459_0_s:     .string          "to1.I"
                        .size            n67_assign_bx, .-n67_assign_bx
                        .type            n68_statement_end_bx, @function
n68_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:    mov              r11, 69
                        mov              r10, 15
                        add              rsp, 16;                             jmp   n61_stmt_mark_α
                        .size            n68_statement_end_bx, .-n68_statement_end_bx
                        .type            n69_statement_begin_bx, @function
n69_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_begin_α:  mov              r11, 70
                        mov              r10, 16;                             jmp   n70_lit_integer_α
n69_statement_begin_β:  mov              r11, 70;                             jmp   n73_stmt_mark_α
                        .size            n69_statement_begin_bx, .-n69_statement_begin_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              r11, 71
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_464_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_assign_α
.Llit_integer_α_464_0:  .quad            3
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_assign_bx, @function
n71_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_assign_α:           mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # x3.V
                        mov              qword ptr [r9 + 88], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_465_0]
                        .section         .rodata
.Lassign_α_465_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_465_1_s]
                        mov              r8, 12
                        mov              r9, 16
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n72_statement_end_α
.Lassign_α_465_0:       .quad            .Lassign_α_465_0_s
.Lassign_α_465_0_s:     .string          "x3.V"
                        .size            n71_assign_bx, .-n71_assign_bx
                        .type            n72_statement_end_bx, @function
n72_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:    mov              r11, 73
                        mov              r10, 16
                        add              rsp, 16;                             jmp   n73_stmt_mark_α
                        .size            n72_statement_end_bx, .-n72_statement_end_bx
                        .type            n73_stmt_mark_bx, @function
n73_stmt_mark_bx:
#=======================================================================================================================
# x3.succeed                              :(x4.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n73_stmt_mark_α:        mov              r11, 74
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n115_statement_begin_α
                        .size            n73_stmt_mark_bx, .-n73_stmt_mark_bx
                        .type            n74_statement_begin_bx, @function
n74_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_begin_α:  mov              r11, 75
                        mov              r10, 17;                             jmp   n75_statement_end_α
n74_statement_begin_β:  mov              r11, 75;                             jmp   n76_stmt_mark_α
                        .size            n74_statement_begin_bx, .-n74_statement_begin_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    mov              r11, 76
                        mov              r10, 17;                             jmp   n76_stmt_mark_α
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_stmt_mark_bx, @function
n76_stmt_mark_bx:
#=======================================================================================================================
# x3.fail                                 :(to2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n76_stmt_mark_α:        mov              r11, 77
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n88_statement_begin_α
                        .size            n76_stmt_mark_bx, .-n76_stmt_mark_bx
                        .type            n77_statement_begin_bx, @function
n77_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_begin_α:  mov              r11, 78
                        mov              r10, 18;                             jmp   n78_lit_integer_α
n77_statement_begin_β:  mov              r11, 78;                             jmp   n81_stmt_mark_α
                        .size            n77_statement_begin_bx, .-n77_statement_begin_bx
                        .type            n78_lit_integer_bx, @function
n78_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_lit_integer_α:      sub              rsp, 16
                        mov              r11, 79
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_478_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_assign_α
.Llit_integer_α_478_0:  .quad            4
                        .size            n78_lit_integer_bx, .-n78_lit_integer_bx
                        .type            n79_assign_bx, @function
n79_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_assign_α:           mov              r11, 80
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # x4.V
                        mov              qword ptr [r9 + 104], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_479_0]
                        .section         .rodata
.Lassign_α_479_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_479_1_s]
                        mov              r8, 31
                        mov              r9, 18
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n80_statement_end_α
.Lassign_α_479_0:       .quad            .Lassign_α_479_0_s
.Lassign_α_479_0_s:     .string          "x4.V"
                        .size            n79_assign_bx, .-n79_assign_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:    mov              r11, 81
                        mov              r10, 18
                        add              rsp, 16;                             jmp   n81_stmt_mark_α
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_stmt_mark_bx, @function
n81_stmt_mark_bx:
#=======================================================================================================================
# x4.succeed      to2.I = x3.V            :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n81_stmt_mark_α:        mov              r11, 82
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n118_statement_begin_α
                        .size            n81_stmt_mark_bx, .-n81_stmt_mark_bx
                        .type            n82_statement_begin_bx, @function
n82_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_begin_α:  mov              r11, 83
                        mov              r10, 19;                             jmp   n83_statement_end_α
n82_statement_begin_β:  mov              r11, 83;                             jmp   n84_stmt_mark_α
                        .size            n82_statement_begin_bx, .-n82_statement_begin_bx
                        .type            n83_statement_end_bx, @function
n83_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:    mov              r11, 84
                        mov              r10, 19;                             jmp   n84_stmt_mark_α
                        .size            n83_statement_end_bx, .-n83_statement_end_bx
                        .type            n84_stmt_mark_bx, @function
n84_stmt_mark_bx:
#=======================================================================================================================
# x4.fail                                 :(x3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n84_stmt_mark_α:        mov              r11, 85
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n91_statement_begin_α
                        .size            n84_stmt_mark_bx, .-n84_stmt_mark_bx
                        .type            n85_statement_begin_bx, @function
n85_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_begin_α:  mov              r11, 86
                        mov              r10, 20;                             jmp   n86_statement_end_α
n85_statement_begin_β:  mov              r11, 86;                             jmp   n87_stmt_mark_α
                        .size            n85_statement_begin_bx, .-n85_statement_begin_bx
                        .type            n86_statement_end_bx, @function
n86_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:    mov              r11, 87
                        mov              r10, 20;                             jmp   n87_stmt_mark_α
                        .size            n86_statement_end_bx, .-n86_statement_end_bx
                        .type            n87_stmt_mark_bx, @function
n87_stmt_mark_bx:
#=======================================================================================================================
# x3.start        x3.V = 3                :(x3.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n87_stmt_mark_α:        mov              r11, 88
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n69_statement_begin_α
                        .size            n87_stmt_mark_bx, .-n87_stmt_mark_bx
                        .type            n88_statement_begin_bx, @function
n88_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_statement_begin_α:  mov              r11, 89
                        mov              r10, 21;                             jmp   n89_statement_end_α
n88_statement_begin_β:  mov              r11, 89;                             jmp   n90_stmt_mark_α
                        .size            n88_statement_begin_bx, .-n88_statement_begin_bx
                        .type            n89_statement_end_bx, @function
n89_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:    mov              r11, 90
                        mov              r10, 21;                             jmp   n90_stmt_mark_α
                        .size            n89_statement_end_bx, .-n89_statement_end_bx
                        .type            n90_stmt_mark_bx, @function
n90_stmt_mark_bx:
#=======================================================================================================================
# to2.fail                                :(to1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n90_stmt_mark_α:        mov              r11, 91
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n128_statement_begin_α
                        .size            n90_stmt_mark_bx, .-n90_stmt_mark_bx
                        .type            n91_statement_begin_bx, @function
n91_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_begin_α:  mov              r11, 92
                        mov              r10, 22;                             jmp   n92_statement_end_α
n91_statement_begin_β:  mov              r11, 92;                             jmp   n93_stmt_mark_α
                        .size            n91_statement_begin_bx, .-n91_statement_begin_bx
                        .type            n92_statement_end_bx, @function
n92_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_statement_end_α:    mov              r11, 93
                        mov              r10, 22;                             jmp   n93_stmt_mark_α
                        .size            n92_statement_end_bx, .-n92_statement_end_bx
                        .type            n93_stmt_mark_bx, @function
n93_stmt_mark_bx:
#=======================================================================================================================
# x3.resume                               :(x3.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n93_stmt_mark_α:        mov              r11, 94
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n74_statement_begin_α
                        .size            n93_stmt_mark_bx, .-n93_stmt_mark_bx
                        .type            n94_statement_begin_bx, @function
n94_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_begin_α:  mov              r11, 95
                        mov              r10, 23;                             jmp   n95_var_α
n94_statement_begin_β:  mov              r11, 95;                             jmp   n102_stmt_mark_α
                        .size            n94_statement_begin_bx, .-n94_statement_begin_bx
                        .type            n95_var_bx, @function
n95_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_α:              sub              rsp, 16
                        mov              r11, 96
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n96_var_α
                        .size            n95_var_bx, .-n95_var_bx
                        .type            n96_var_bx, @function
n96_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_α:              sub              rsp, 16
                        mov              r11, 97
                        mov              rax, qword ptr [r9 + 96]             # x4.V
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n97_coerce_numeric_α
n96_var_β:              mov              r11, 97
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n94_statement_begin_β
                        .size            n96_var_bx, .-n96_var_bx
                        .type            n97_coerce_numeric_bx, @function
n97_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 98
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_513_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_513_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_513_0
.Lcoerce_numeric_α_513_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n98_coerce_numeric_α
.Lcoerce_numeric_α_513_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n98_coerce_numeric_α
n97_coerce_numeric_β:   mov              r11, 98
                        add              rsp, 16;                             jmp   n96_var_β
                        .size            n97_coerce_numeric_bx, .-n97_coerce_numeric_bx
                        .type            n98_coerce_numeric_bx, @function
n98_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 99
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_515_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_515_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_515_0
.Lcoerce_numeric_α_515_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n99_cmp_test_α
.Lcoerce_numeric_α_515_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n99_cmp_test_α
n98_coerce_numeric_β:   mov              r11, 99
                        add              rsp, 16;                             jmp   n97_coerce_numeric_β
                        .size            n98_coerce_numeric_bx, .-n98_coerce_numeric_bx
                        .type            n99_cmp_test_bx, @function
n99_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_cmp_test_α:         sub              rsp, 16
                        mov              r11, 100
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_517_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_517_239
                        add              rsp, 16;                             jmp   n98_coerce_numeric_β
.Lcmp_test_α_517_239:                                                         jmp   n100_statement_end_α
.Lcmp_test_α_517_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lcmp_test_α_517_240
                        add              rsp, 16;                             jmp   n98_coerce_numeric_β
.Lcmp_test_α_517_240:                                                         jmp   n100_statement_end_α
                        .size            n99_cmp_test_bx, .-n99_cmp_test_bx
                        .type            n100_statement_end_bx, @function
n100_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_statement_end_α:   mov              r11, 101
                        mov              r10, 23
                        add              rsp, 80;                             jmp   n101_stmt_mark_α
                        .size            n100_statement_end_bx, .-n100_statement_end_bx
                        .type            n101_stmt_mark_bx, @function
n101_stmt_mark_bx:
#=======================================================================================================================
#                 to2.V = to2.I           :(to2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n101_stmt_mark_α:       mov              r11, 102
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n103_statement_begin_α
                        .size            n101_stmt_mark_bx, .-n101_stmt_mark_bx
                        .type            n102_stmt_mark_bx, @function
n102_stmt_mark_bx:
#=======================================================================================================================
# x4.resume                               :(x4.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n102_stmt_mark_α:       mov              r11, 103
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n82_statement_begin_α
                        .size            n102_stmt_mark_bx, .-n102_stmt_mark_bx
                        .type            n103_statement_begin_bx, @function
n103_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_statement_begin_α: mov              r11, 104
                        mov              r10, 24;                             jmp   n104_var_α
n103_statement_begin_β: mov              r11, 104;                            jmp   n107_stmt_mark_α
                        .size            n103_statement_begin_bx, .-n103_statement_begin_bx
                        .type            n104_var_bx, @function
n104_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             sub              rsp, 16
                        mov              r11, 105
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_assign_α
                        .size            n104_var_bx, .-n104_var_bx
                        .type            n105_assign_bx, @function
n105_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_assign_α:          mov              r11, 106
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # to2.V
                        mov              qword ptr [r9 + 136], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_527_0]
                        .section         .rodata
.Lassign_α_527_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_527_1_s]
                        mov              r8, 28
                        mov              r9, 24
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n106_statement_end_α
.Lassign_α_527_0:       .quad            .Lassign_α_527_0_s
.Lassign_α_527_0_s:     .string          "to2.V"
                        .size            n105_assign_bx, .-n105_assign_bx
                        .type            n106_statement_end_bx, @function
n106_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_statement_end_α:   mov              r11, 107
                        mov              r10, 24
                        add              rsp, 16;                             jmp   n107_stmt_mark_α
                        .size            n106_statement_end_bx, .-n106_statement_end_bx
                        .type            n107_stmt_mark_bx, @function
n107_stmt_mark_bx:
#=======================================================================================================================
# to2.succeed     mult.V = to1.V * to2.V  :S(mult.succeed)F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n107_stmt_mark_α:       mov              r11, 108
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n137_statement_begin_α
                        .size            n107_stmt_mark_bx, .-n107_stmt_mark_bx
                        .type            n108_statement_begin_bx, @function
n108_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_begin_α: mov              r11, 109
                        mov              r10, 25;                             jmp   n109_var_α
n108_statement_begin_β: mov              r11, 109;                            jmp   n114_stmt_mark_α
                        .size            n108_statement_begin_bx, .-n108_statement_begin_bx
                        .type            n109_var_bx, @function
n109_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_var_α:             sub              rsp, 16
                        mov              r11, 110
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n110_lit_integer_α
                        .size            n109_var_bx, .-n109_var_bx
                        .type            n110_lit_integer_bx, @function
n110_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_lit_integer_α:     sub              rsp, 16
                        mov              r11, 111
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_535_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n111_binop_α
n110_lit_integer_β:     mov              r11, 111
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n108_statement_begin_β
.Llit_integer_α_535_0:  .quad            1
                        .size            n110_lit_integer_bx, .-n110_lit_integer_bx
                        .type            n111_binop_bx, @function
n111_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_binop_α:           sub              rsp, 16
                        mov              r11, 112
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_536_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_536_7
.Lbinop_α_536_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_536_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_536_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_536_4
.Lbinop_α_536_3:        movq             xmm0, rsi
.Lbinop_α_536_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_536_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_536_7:                                                              jmp   n112_assign_α
.Lbinop_α_536_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_536_240
                        add              rsp, 16;                             jmp   n110_lit_integer_β
.Lbinop_α_536_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_assign_α
                        .size            n111_binop_bx, .-n111_binop_bx
                        .type            n112_assign_bx, @function
n112_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_assign_α:          mov              r11, 113
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_537_0]
                        .section         .rodata
.Lassign_α_537_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_537_1_s]
                        mov              r8, 44
                        mov              r9, 25
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n113_statement_end_α
.Lassign_α_537_0:       .quad            .Lassign_α_537_0_s
.Lassign_α_537_0_s:     .string          "to2.I"
                        .size            n112_assign_bx, .-n112_assign_bx
                        .type            n113_statement_end_bx, @function
n113_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:   mov              r11, 114
                        mov              r10, 25
                        add              rsp, 48;                             jmp   n114_stmt_mark_α
                        .size            n113_statement_end_bx, .-n113_statement_end_bx
                        .type            n114_stmt_mark_bx, @function
n114_stmt_mark_bx:
#=======================================================================================================================
# to2.code        LE(to2.I, x4.V)         :F(x4.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n114_stmt_mark_α:       mov              r11, 115
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n94_statement_begin_α
                        .size            n114_stmt_mark_bx, .-n114_stmt_mark_bx
                        .type            n115_statement_begin_bx, @function
n115_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_begin_α: mov              r11, 116
                        mov              r10, 26;                             jmp   n116_statement_end_α
n115_statement_begin_β: mov              r11, 116;                            jmp   n117_stmt_mark_α
                        .size            n115_statement_begin_bx, .-n115_statement_begin_bx
                        .type            n116_statement_end_bx, @function
n116_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_statement_end_α:   mov              r11, 117
                        mov              r10, 26;                             jmp   n117_stmt_mark_α
                        .size            n116_statement_end_bx, .-n116_statement_end_bx
                        .type            n117_stmt_mark_bx, @function
n117_stmt_mark_bx:
#=======================================================================================================================
# x4.start        x4.V = 4                :(x4.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n117_stmt_mark_α:       mov              r11, 118
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n77_statement_begin_α
                        .size            n117_stmt_mark_bx, .-n117_stmt_mark_bx
                        .type            n118_statement_begin_bx, @function
n118_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_begin_α: mov              r11, 119
                        mov              r10, 27;                             jmp   n119_var_α
n118_statement_begin_β: mov              r11, 119;                            jmp   n114_stmt_mark_α
                        .size            n118_statement_begin_bx, .-n118_statement_begin_bx
                        .type            n119_var_bx, @function
n119_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              r11, 120
                        mov              rax, qword ptr [r9 + 80]             # x3.V
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_assign_α
                        .size            n119_var_bx, .-n119_var_bx
                        .type            n120_assign_bx, @function
n120_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_assign_α:          mov              r11, 121
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_551_0]
                        .section         .rodata
.Lassign_α_551_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_551_1_s]
                        mov              r8, 27
                        mov              r9, 27
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n121_statement_end_α
.Lassign_α_551_0:       .quad            .Lassign_α_551_0_s
.Lassign_α_551_0_s:     .string          "to2.I"
                        .size            n120_assign_bx, .-n120_assign_bx
                        .type            n121_statement_end_bx, @function
n121_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_statement_end_α:   mov              r11, 122
                        mov              r10, 27
                        add              rsp, 16;                             jmp   n114_stmt_mark_α
                        .size            n121_statement_end_bx, .-n121_statement_end_bx
                        .type            n122_statement_begin_bx, @function
n122_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_begin_α: mov              r11, 123
                        mov              r10, 28;                             jmp   n123_statement_end_α
n122_statement_begin_β: mov              r11, 123;                            jmp   n124_stmt_mark_α
                        .size            n122_statement_begin_bx, .-n122_statement_begin_bx
                        .type            n123_statement_end_bx, @function
n123_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_end_α:   mov              r11, 124
                        mov              r10, 28;                             jmp   n124_stmt_mark_α
                        .size            n123_statement_end_bx, .-n123_statement_end_bx
                        .type            n124_stmt_mark_bx, @function
n124_stmt_mark_bx:
#=======================================================================================================================
# to1.start                               :(x1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n124_stmt_mark_α:       mov              r11, 125
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n32_statement_begin_α
                        .size            n124_stmt_mark_bx, .-n124_stmt_mark_bx
                        .type            n125_statement_begin_bx, @function
n125_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_statement_begin_α: mov              r11, 126
                        mov              r10, 29;                             jmp   n126_statement_end_α
n125_statement_begin_β: mov              r11, 126;                            jmp   n127_stmt_mark_α
                        .size            n125_statement_begin_bx, .-n125_statement_begin_bx
                        .type            n126_statement_end_bx, @function
n126_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:   mov              r11, 127
                        mov              r10, 29;                             jmp   n127_stmt_mark_α
                        .size            n126_statement_end_bx, .-n126_statement_end_bx
                        .type            n127_stmt_mark_bx, @function
n127_stmt_mark_bx:
#=======================================================================================================================
# mult.fail                               :(x5.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n127_stmt_mark_α:       mov              r11, 128
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n151_statement_begin_α
                        .size            n127_stmt_mark_bx, .-n127_stmt_mark_bx
                        .type            n128_statement_begin_bx, @function
n128_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_begin_α: mov              r11, 129
                        mov              r10, 30;                             jmp   n129_statement_end_α
n128_statement_begin_β: mov              r11, 129;                            jmp   n130_stmt_mark_α
                        .size            n128_statement_begin_bx, .-n128_statement_begin_bx
                        .type            n129_statement_end_bx, @function
n129_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:   mov              r11, 130
                        mov              r10, 30;                             jmp   n130_stmt_mark_α
                        .size            n129_statement_end_bx, .-n129_statement_end_bx
                        .type            n130_stmt_mark_bx, @function
n130_stmt_mark_bx:
#=======================================================================================================================
# to1.resume      to1.I = to1.I + 1       :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n130_stmt_mark_α:       mov              r11, 131
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n55_statement_begin_α
                        .size            n130_stmt_mark_bx, .-n130_stmt_mark_bx
                        .type            n131_statement_begin_bx, @function
n131_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_statement_begin_α: mov              r11, 132
                        mov              r10, 31;                             jmp   n132_statement_end_α
n131_statement_begin_β: mov              r11, 132;                            jmp   n133_stmt_mark_α
                        .size            n131_statement_begin_bx, .-n131_statement_begin_bx
                        .type            n132_statement_end_bx, @function
n132_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:   mov              r11, 133
                        mov              r10, 31;                             jmp   n133_stmt_mark_α
                        .size            n132_statement_end_bx, .-n132_statement_end_bx
                        .type            n133_stmt_mark_bx, @function
n133_stmt_mark_bx:
#=======================================================================================================================
# to2.resume      to2.I = to2.I + 1       :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n133_stmt_mark_α:       mov              r11, 134
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n108_statement_begin_α
                        .size            n133_stmt_mark_bx, .-n133_stmt_mark_bx
                        .type            n134_statement_begin_bx, @function
n134_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_begin_α: mov              r11, 135
                        mov              r10, 32;                             jmp   n135_statement_end_α
n134_statement_begin_β: mov              r11, 135;                            jmp   n136_stmt_mark_α
                        .size            n134_statement_begin_bx, .-n134_statement_begin_bx
                        .type            n135_statement_end_bx, @function
n135_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_statement_end_α:   mov              r11, 136
                        mov              r10, 32;                             jmp   n136_stmt_mark_α
                        .size            n135_statement_end_bx, .-n135_statement_end_bx
                        .type            n136_stmt_mark_bx, @function
n136_stmt_mark_bx:
#=======================================================================================================================
# to2.start                               :(x3.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n136_stmt_mark_α:       mov              r11, 137
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n85_statement_begin_α
                        .size            n136_stmt_mark_bx, .-n136_stmt_mark_bx
                        .type            n137_statement_begin_bx, @function
n137_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_begin_α: mov              r11, 138
                        mov              r10, 33;                             jmp   n138_var_α
n137_statement_begin_β: mov              r11, 138;                            jmp   n144_stmt_mark_α
                        .size            n137_statement_begin_bx, .-n137_statement_begin_bx
                        .type            n138_var_bx, @function
n138_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_α:             sub              rsp, 16
                        mov              r11, 139
                        mov              rax, qword ptr [r9 + 64]             # to1.V
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n139_var_α
                        .size            n138_var_bx, .-n138_var_bx
                        .type            n139_var_bx, @function
n139_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_α:             sub              rsp, 16
                        mov              r11, 140
                        mov              rax, qword ptr [r9 + 128]            # to2.V
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n140_binop_α
n139_var_β:             mov              r11, 140
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n137_statement_begin_β
                        .size            n139_var_bx, .-n139_var_bx
                        .type            n140_binop_bx, @function
n140_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_binop_α:           sub              rsp, 16
                        mov              r11, 141
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_588_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_588_7
.Lbinop_α_588_2:        and              edx, 1;                              jz    .Lbinop_α_588_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_588_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_588_4
.Lbinop_α_588_3:        movq             xmm0, rsi
.Lbinop_α_588_4:        cmp              cl, 5;                               je    .Lbinop_α_588_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_588_6
.Lbinop_α_588_5:        movq             xmm1, rdi
.Lbinop_α_588_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_588_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_588_7:                                                              jmp   n141_assign_α
.Lbinop_α_588_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_588_240
                        add              rsp, 16;                             jmp   n139_var_β
.Lbinop_α_588_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_assign_α
                        .size            n140_binop_bx, .-n140_binop_bx
                        .type            n141_assign_bx, @function
n141_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:          mov              r11, 142
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_589_0]
                        .section         .rodata
.Lassign_α_589_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_589_1_s]
                        mov              r8, 30
                        mov              r9, 33
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n142_statement_end_α
.Lassign_α_589_0:       .quad            .Lassign_α_589_0_s
.Lassign_α_589_0_s:     .string          "mult.V"
                        .size            n141_assign_bx, .-n141_assign_bx
                        .type            n142_statement_end_bx, @function
n142_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   mov              r11, 143
                        mov              r10, 33
                        add              rsp, 48;                             jmp   n143_stmt_mark_α
                        .size            n142_statement_end_bx, .-n142_statement_end_bx
                        .type            n143_stmt_mark_bx, @function
n143_stmt_mark_bx:
#=======================================================================================================================
# mult.succeed    GT(x5.V, mult.V)        :F(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n143_stmt_mark_α:       mov              r11, 144
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n160_statement_begin_α
                        .size            n143_stmt_mark_bx, .-n143_stmt_mark_bx
                        .type            n144_stmt_mark_bx, @function
n144_stmt_mark_bx:
#=======================================================================================================================
# exception       TERMINAL = "Exception!" :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n144_stmt_mark_α:       mov              r11, 145
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 62
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 81
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n286_statement_begin_α
                        .size            n144_stmt_mark_bx, .-n144_stmt_mark_bx
                        .type            n145_statement_begin_bx, @function
n145_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_begin_α: mov              r11, 146
                        mov              r10, 34;                             jmp   n146_statement_end_α
n145_statement_begin_β: mov              r11, 146;                            jmp   n147_stmt_mark_α
                        .size            n145_statement_begin_bx, .-n145_statement_begin_bx
                        .type            n146_statement_end_bx, @function
n146_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   mov              r11, 147
                        mov              r10, 34;                             jmp   n147_stmt_mark_α
                        .size            n146_statement_end_bx, .-n146_statement_end_bx
                        .type            n147_stmt_mark_bx, @function
n147_stmt_mark_bx:
#=======================================================================================================================
# x5.start        x5.V = 5                :(x5.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n147_stmt_mark_α:       mov              r11, 148
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n8_statement_begin_α
                        .size            n147_stmt_mark_bx, .-n147_stmt_mark_bx
                        .type            n148_statement_begin_bx, @function
n148_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_begin_α: mov              r11, 149
                        mov              r10, 35;                             jmp   n149_statement_end_α
n148_statement_begin_β: mov              r11, 149;                            jmp   n150_stmt_mark_α
                        .size            n148_statement_begin_bx, .-n148_statement_begin_bx
                        .type            n149_statement_end_bx, @function
n149_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_statement_end_α:   mov              r11, 150
                        mov              r10, 35;                             jmp   n150_stmt_mark_α
                        .size            n149_statement_end_bx, .-n149_statement_end_bx
                        .type            n150_stmt_mark_bx, @function
n150_stmt_mark_bx:
#=======================================================================================================================
# greater.fail                            :(write1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
n150_stmt_mark_α:       mov              r11, 151
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 56
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n179_statement_begin_α
                        .size            n150_stmt_mark_bx, .-n150_stmt_mark_bx
                        .type            n151_statement_begin_bx, @function
n151_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_begin_α: mov              r11, 152
                        mov              r10, 36;                             jmp   n152_statement_end_α
n151_statement_begin_β: mov              r11, 152;                            jmp   n153_stmt_mark_α
                        .size            n151_statement_begin_bx, .-n151_statement_begin_bx
                        .type            n152_statement_end_bx, @function
n152_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   mov              r11, 153
                        mov              r10, 36;                             jmp   n153_stmt_mark_α
                        .size            n152_statement_end_bx, .-n152_statement_end_bx
                        .type            n153_stmt_mark_bx, @function
n153_stmt_mark_bx:
#=======================================================================================================================
# x5.resume                               :(x5.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n153_stmt_mark_α:       mov              r11, 154
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n13_statement_begin_α
                        .size            n153_stmt_mark_bx, .-n153_stmt_mark_bx
                        .type            n154_statement_begin_bx, @function
n154_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_begin_α: mov              r11, 155
                        mov              r10, 37;                             jmp   n155_statement_end_α
n154_statement_begin_β: mov              r11, 155;                            jmp   n156_stmt_mark_α
                        .size            n154_statement_begin_bx, .-n154_statement_begin_bx
                        .type            n155_statement_end_bx, @function
n155_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_statement_end_α:   mov              r11, 156
                        mov              r10, 37;                             jmp   n156_stmt_mark_α
                        .size            n155_statement_end_bx, .-n155_statement_end_bx
                        .type            n156_stmt_mark_bx, @function
n156_stmt_mark_bx:
#=======================================================================================================================
# mult.resume                             :(to2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n156_stmt_mark_α:       mov              r11, 157
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n131_statement_begin_α
                        .size            n156_stmt_mark_bx, .-n156_stmt_mark_bx
                        .type            n157_statement_begin_bx, @function
n157_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_statement_begin_α: mov              r11, 158
                        mov              r10, 38;                             jmp   n158_statement_end_α
n157_statement_begin_β: mov              r11, 158;                            jmp   n159_stmt_mark_α
                        .size            n157_statement_begin_bx, .-n157_statement_begin_bx
                        .type            n158_statement_end_bx, @function
n158_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_statement_end_α:   mov              r11, 159
                        mov              r10, 38;                             jmp   n159_stmt_mark_α
                        .size            n158_statement_end_bx, .-n158_statement_end_bx
                        .type            n159_stmt_mark_bx, @function
n159_stmt_mark_bx:
#=======================================================================================================================
# mult.start                              :(to1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n159_stmt_mark_α:       mov              r11, 160
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n122_statement_begin_α
                        .size            n159_stmt_mark_bx, .-n159_stmt_mark_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_begin_α: mov              r11, 161
                        mov              r10, 39;                             jmp   n161_var_α
n160_statement_begin_β: mov              r11, 161;                            jmp   n156_stmt_mark_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_var_bx, @function
n161_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:             sub              rsp, 16
                        mov              r11, 162
                        mov              rax, qword ptr [r9 + 0]              # x5.V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n162_var_α
                        .size            n161_var_bx, .-n161_var_bx
                        .type            n162_var_bx, @function
n162_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             sub              rsp, 16
                        mov              r11, 163
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_coerce_numeric_α
n162_var_β:             mov              r11, 163
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n160_statement_begin_β
                        .size            n162_var_bx, .-n162_var_bx
                        .type            n163_coerce_numeric_bx, @function
n163_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 164
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_631_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_631_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_631_0
.Lcoerce_numeric_α_631_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_coerce_numeric_α
.Lcoerce_numeric_α_631_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n164_coerce_numeric_α
n163_coerce_numeric_β:  mov              r11, 164
                        add              rsp, 16;                             jmp   n162_var_β
                        .size            n163_coerce_numeric_bx, .-n163_coerce_numeric_bx
                        .type            n164_coerce_numeric_bx, @function
n164_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 165
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_633_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_633_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_633_0
.Lcoerce_numeric_α_633_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_cmp_test_α
.Lcoerce_numeric_α_633_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n165_cmp_test_α
n164_coerce_numeric_β:  mov              r11, 165
                        add              rsp, 16;                             jmp   n163_coerce_numeric_β
                        .size            n164_coerce_numeric_bx, .-n164_coerce_numeric_bx
                        .type            n165_cmp_test_bx, @function
n165_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_cmp_test_α:        sub              rsp, 16
                        mov              r11, 166
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_635_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_635_239
                        add              rsp, 16;                             jmp   n164_coerce_numeric_β
.Lcmp_test_α_635_239:                                                         jmp   n166_statement_end_α
.Lcmp_test_α_635_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jg    .Lcmp_test_α_635_240
                        add              rsp, 16;                             jmp   n164_coerce_numeric_β
.Lcmp_test_α_635_240:                                                         jmp   n166_statement_end_α
                        .size            n165_cmp_test_bx, .-n165_cmp_test_bx
                        .type            n166_statement_end_bx, @function
n166_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_statement_end_α:   mov              r11, 167
                        mov              r10, 39
                        add              rsp, 80;                             jmp   n167_stmt_mark_α
                        .size            n166_statement_end_bx, .-n166_statement_end_bx
                        .type            n167_stmt_mark_bx, @function
n167_stmt_mark_bx:
#=======================================================================================================================
#                 greater.V = mult.V      :(greater.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n167_stmt_mark_α:       mov              r11, 168
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n168_statement_begin_α
                        .size            n167_stmt_mark_bx, .-n167_stmt_mark_bx
                        .type            n168_statement_begin_bx, @function
n168_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_begin_α: mov              r11, 169
                        mov              r10, 40;                             jmp   n169_var_α
n168_statement_begin_β: mov              r11, 169;                            jmp   n172_stmt_mark_α
                        .size            n168_statement_begin_bx, .-n168_statement_begin_bx
                        .type            n169_var_bx, @function
n169_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_α:             sub              rsp, 16
                        mov              r11, 170
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n170_assign_α
                        .size            n169_var_bx, .-n169_var_bx
                        .type            n170_assign_bx, @function
n170_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_assign_α:          mov              r11, 171
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_643_0]
                        .section         .rodata
.Lassign_α_643_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_643_1_s]
                        mov              r8, 52
                        mov              r9, 40
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n171_statement_end_α
.Lassign_α_643_0:       .quad            .Lassign_α_643_0_s
.Lassign_α_643_0_s:     .string          "greater.V"
                        .size            n170_assign_bx, .-n170_assign_bx
                        .type            n171_statement_end_bx, @function
n171_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_statement_end_α:   mov              r11, 172
                        mov              r10, 40
                        add              rsp, 16;                             jmp   n172_stmt_mark_α
                        .size            n171_statement_end_bx, .-n171_statement_end_bx
                        .type            n172_stmt_mark_bx, @function
n172_stmt_mark_bx:
#=======================================================================================================================
# greater.succeed write.V = greater.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n172_stmt_mark_α:       mov              r11, 173
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n182_statement_begin_α
                        .size            n172_stmt_mark_bx, .-n172_stmt_mark_bx
                        .type            n173_statement_begin_bx, @function
n173_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_begin_α: mov              r11, 174
                        mov              r10, 41;                             jmp   n174_statement_end_α
n173_statement_begin_β: mov              r11, 174;                            jmp   n175_stmt_mark_α
                        .size            n173_statement_begin_bx, .-n173_statement_begin_bx
                        .type            n174_statement_end_bx, @function
n174_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_statement_end_α:   mov              r11, 175
                        mov              r10, 41;                             jmp   n175_stmt_mark_α
                        .size            n174_statement_end_bx, .-n174_statement_end_bx
                        .type            n175_stmt_mark_bx, @function
n175_stmt_mark_bx:
#=======================================================================================================================
# greater.start                           :(x5.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n175_stmt_mark_α:       mov              r11, 176
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n145_statement_begin_α
                        .size            n175_stmt_mark_bx, .-n175_stmt_mark_bx
                        .type            n176_statement_begin_bx, @function
n176_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_begin_α: mov              r11, 177
                        mov              r10, 42;                             jmp   n177_statement_end_α
n176_statement_begin_β: mov              r11, 177;                            jmp   n178_stmt_mark_α
                        .size            n176_statement_begin_bx, .-n176_statement_begin_bx
                        .type            n177_statement_end_bx, @function
n177_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_statement_end_α:   mov              r11, 178
                        mov              r10, 42;                             jmp   n178_stmt_mark_α
                        .size            n177_statement_end_bx, .-n177_statement_end_bx
                        .type            n178_stmt_mark_bx, @function
n178_stmt_mark_bx:
#=======================================================================================================================
# greater.resume                          :(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n178_stmt_mark_α:       mov              r11, 179
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n154_statement_begin_α
                        .size            n178_stmt_mark_bx, .-n178_stmt_mark_bx
                        .type            n179_statement_begin_bx, @function
n179_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_statement_begin_α: mov              r11, 180
                        mov              r10, 43;                             jmp   n180_statement_end_α
n179_statement_begin_β: mov              r11, 180;                            jmp   n181_stmt_mark_α
                        .size            n179_statement_begin_bx, .-n179_statement_begin_bx
                        .type            n180_statement_end_bx, @function
n180_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_statement_end_α:   mov              r11, 181
                        mov              r10, 43;                             jmp   n181_stmt_mark_α
                        .size            n180_statement_end_bx, .-n180_statement_end_bx
                        .type            n181_stmt_mark_bx, @function
n181_stmt_mark_bx:
#=======================================================================================================================
# write1.fail     OUTPUT = "Failure."     :(main2)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n181_stmt_mark_α:       mov              r11, 182
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 75
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n263_statement_begin_α
                        .size            n181_stmt_mark_bx, .-n181_stmt_mark_bx
                        .type            n182_statement_begin_bx, @function
n182_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_begin_α: mov              r11, 183
                        mov              r10, 44;                             jmp   n183_var_α
n182_statement_begin_β: mov              r11, 183;                            jmp   n186_stmt_mark_α
                        .size            n182_statement_begin_bx, .-n182_statement_begin_bx
                        .type            n183_var_bx, @function
n183_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_α:             sub              rsp, 16
                        mov              r11, 184
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n184_assign_α
                        .size            n183_var_bx, .-n183_var_bx
                        .type            n184_assign_bx, @function
n184_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_assign_α:          mov              r11, 185
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # write.V
                        mov              qword ptr [r9 + 184], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_669_0]
                        .section         .rodata
.Lassign_α_669_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_669_1_s]
                        mov              r8, 75
                        mov              r9, 44
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n185_statement_end_α
.Lassign_α_669_0:       .quad            .Lassign_α_669_0_s
.Lassign_α_669_0_s:     .string          "write.V"
                        .size            n184_assign_bx, .-n184_assign_bx
                        .type            n185_statement_end_bx, @function
n185_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_statement_end_α:   mov              r11, 186
                        mov              r10, 44
                        add              rsp, 16;                             jmp   n186_stmt_mark_α
                        .size            n185_statement_end_bx, .-n185_statement_end_bx
                        .type            n186_stmt_mark_bx, @function
n186_stmt_mark_bx:
#=======================================================================================================================
#                 OUTPUT = write.V        :(write1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n186_stmt_mark_α:       mov              r11, 187
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 45
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n187_statement_begin_α
                        .size            n186_stmt_mark_bx, .-n186_stmt_mark_bx
                        .type            n187_statement_begin_bx, @function
n187_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_begin_α: mov              r11, 188
                        mov              r10, 45;                             jmp   n188_var_α
n187_statement_begin_β: mov              r11, 188;                            jmp   n191_stmt_mark_α
                        .size            n187_statement_begin_bx, .-n187_statement_begin_bx
                        .type            n188_var_bx, @function
n188_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_α:             sub              rsp, 16
                        mov              r11, 189
                        mov              rax, qword ptr [r9 + 176]            # write.V
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n189_assign_α
                        .size            n188_var_bx, .-n188_var_bx
                        .type            n189_assign_bx, @function
n189_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_assign_α:          mov              r11, 190
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_677_0]
                        .section         .rodata
.Lassign_α_677_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_677_1_s]
                        mov              r8, 58
                        mov              r9, 45
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_677_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n190_statement_end_α
.Lassign_α_677_0:       .quad            .Lassign_α_677_0_s
.Lassign_α_677_0_s:     .string          "OUTPUT"
                        .size            n189_assign_bx, .-n189_assign_bx
                        .type            n190_statement_end_bx, @function
n190_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_statement_end_α:   mov              r11, 191
                        mov              r10, 45
                        add              rsp, 16;                             jmp   n191_stmt_mark_α
                        .size            n190_statement_end_bx, .-n190_statement_end_bx
                        .type            n191_stmt_mark_bx, @function
n191_stmt_mark_bx:
#=======================================================================================================================
# write1.succeed  OUTPUT = "Success!"     :(write1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n191_stmt_mark_α:       mov              r11, 192
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 76
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n268_statement_begin_α
                        .size            n191_stmt_mark_bx, .-n191_stmt_mark_bx
                        .type            n192_statement_begin_bx, @function
n192_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_begin_α: mov              r11, 193
                        mov              r10, 46;                             jmp   n193_lit_integer_α
n192_statement_begin_β: mov              r11, 193;                            jmp   n196_stmt_mark_α
                        .size            n192_statement_begin_bx, .-n192_statement_begin_bx
                        .type            n193_lit_integer_bx, @function
n193_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_lit_integer_α:     sub              rsp, 16
                        mov              r11, 194
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_684_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n194_assign_α
.Llit_integer_α_684_0:  .quad            1
                        .size            n193_lit_integer_bx, .-n193_lit_integer_bx
                        .type            n194_assign_bx, @function
n194_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_assign_α:          mov              r11, 195
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_685_0]
                        .section         .rodata
.Lassign_α_685_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_685_1_s]
                        mov              r8, 76
                        mov              r9, 46
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n195_statement_end_α
.Lassign_α_685_0:       .quad            .Lassign_α_685_0_s
.Lassign_α_685_0_s:     .string          "to3.I"
                        .size            n194_assign_bx, .-n194_assign_bx
                        .type            n195_statement_end_bx, @function
n195_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_statement_end_α:   mov              r11, 196
                        mov              r10, 46
                        add              rsp, 16;                             jmp   n196_stmt_mark_α
                        .size            n195_statement_end_bx, .-n195_statement_end_bx
                        .type            n196_stmt_mark_bx, @function
n196_stmt_mark_bx:
#=======================================================================================================================
# to3.code        LE(to3.I, 2)            :F(write2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n196_stmt_mark_α:       mov              r11, 197
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 65
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n203_statement_begin_α
                        .size            n196_stmt_mark_bx, .-n196_stmt_mark_bx
                        .type            n197_statement_begin_bx, @function
n197_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_begin_α: mov              r11, 198
                        mov              r10, 47;                             jmp   n198_var_α
n197_statement_begin_β: mov              r11, 198;                            jmp   n196_stmt_mark_α
                        .size            n197_statement_begin_bx, .-n197_statement_begin_bx
                        .type            n198_var_bx, @function
n198_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_α:             sub              rsp, 16
                        mov              r11, 199
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n199_lit_integer_α
                        .size            n198_var_bx, .-n198_var_bx
                        .type            n199_lit_integer_bx, @function
n199_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_integer_α:     sub              rsp, 16
                        mov              r11, 200
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_693_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_binop_α
n199_lit_integer_β:     mov              r11, 200
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n197_statement_begin_β
.Llit_integer_α_693_0:  .quad            1
                        .size            n199_lit_integer_bx, .-n199_lit_integer_bx
                        .type            n200_binop_bx, @function
n200_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_binop_α:           sub              rsp, 16
                        mov              r11, 201
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_694_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_694_7
.Lbinop_α_694_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_694_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_694_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_694_4
.Lbinop_α_694_3:        movq             xmm0, rsi
.Lbinop_α_694_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_694_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_694_7:                                                              jmp   n201_assign_α
.Lbinop_α_694_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_694_240
                        add              rsp, 16;                             jmp   n199_lit_integer_β
.Lbinop_α_694_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_assign_α
                        .size            n200_binop_bx, .-n200_binop_bx
                        .type            n201_assign_bx, @function
n201_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_assign_α:          mov              r11, 202
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_695_0]
                        .section         .rodata
.Lassign_α_695_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_695_1_s]
                        mov              r8, 65
                        mov              r9, 47
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n202_statement_end_α
.Lassign_α_695_0:       .quad            .Lassign_α_695_0_s
.Lassign_α_695_0_s:     .string          "to3.I"
                        .size            n201_assign_bx, .-n201_assign_bx
                        .type            n202_statement_end_bx, @function
n202_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_statement_end_α:   mov              r11, 203
                        mov              r10, 47
                        add              rsp, 48;                             jmp   n196_stmt_mark_α
                        .size            n202_statement_end_bx, .-n202_statement_end_bx
                        .type            n203_statement_begin_bx, @function
n203_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_begin_α: mov              r11, 204
                        mov              r10, 48;                             jmp   n204_var_α
n203_statement_begin_β: mov              r11, 204;                            jmp   n211_stmt_mark_α
                        .size            n203_statement_begin_bx, .-n203_statement_begin_bx
                        .type            n204_var_bx, @function
n204_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_α:             sub              rsp, 16
                        mov              r11, 205
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n205_lit_integer_α
                        .size            n204_var_bx, .-n204_var_bx
                        .type            n205_lit_integer_bx, @function
n205_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_integer_α:     sub              rsp, 16
                        mov              r11, 206
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_701_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n206_coerce_numeric_α
n205_lit_integer_β:     mov              r11, 206
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n203_statement_begin_β
.Llit_integer_α_701_0:  .quad            2
                        .size            n205_lit_integer_bx, .-n205_lit_integer_bx
                        .type            n206_coerce_numeric_bx, @function
n206_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 207
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_703_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_703_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_703_0
.Lcoerce_numeric_α_703_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n207_coerce_numeric_α
.Lcoerce_numeric_α_703_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n207_coerce_numeric_α
n206_coerce_numeric_β:  mov              r11, 207
                        add              rsp, 16;                             jmp   n205_lit_integer_β
                        .size            n206_coerce_numeric_bx, .-n206_coerce_numeric_bx
                        .type            n207_coerce_numeric_bx, @function
n207_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 208
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_705_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_705_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_705_0
.Lcoerce_numeric_α_705_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_cmp_test_α
.Lcoerce_numeric_α_705_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n208_cmp_test_α
n207_coerce_numeric_β:  mov              r11, 208
                        add              rsp, 16;                             jmp   n206_coerce_numeric_β
                        .size            n207_coerce_numeric_bx, .-n207_coerce_numeric_bx
                        .type            n208_cmp_test_bx, @function
n208_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_cmp_test_α:        sub              rsp, 16
                        mov              r11, 209
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_707_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_707_239
                        add              rsp, 16;                             jmp   n207_coerce_numeric_β
.Lcmp_test_α_707_239:                                                         jmp   n209_statement_end_α
.Lcmp_test_α_707_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lcmp_test_α_707_240
                        add              rsp, 16;                             jmp   n207_coerce_numeric_β
.Lcmp_test_α_707_240:                                                         jmp   n209_statement_end_α
                        .size            n208_cmp_test_bx, .-n208_cmp_test_bx
                        .type            n209_statement_end_bx, @function
n209_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   mov              r11, 210
                        mov              r10, 48
                        add              rsp, 80;                             jmp   n210_stmt_mark_α
                        .size            n209_statement_end_bx, .-n209_statement_end_bx
                        .type            n210_stmt_mark_bx, @function
n210_stmt_mark_bx:
#=======================================================================================================================
#                 to4.I = 3               :(to4.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n210_stmt_mark_α:       mov              r11, 211
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 66
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n212_statement_begin_α
                        .size            n210_stmt_mark_bx, .-n210_stmt_mark_bx
                        .type            n211_stmt_mark_bx, @function
n211_stmt_mark_bx:
#=======================================================================================================================
# write2.fail     OUTPUT = "Failure."     :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 78 0
n211_stmt_mark_α:       mov              r11, 212
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 60
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 78
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n278_statement_begin_α
                        .size            n211_stmt_mark_bx, .-n211_stmt_mark_bx
                        .type            n212_statement_begin_bx, @function
n212_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_statement_begin_α: mov              r11, 213
                        mov              r10, 49;                             jmp   n213_lit_integer_α
n212_statement_begin_β: mov              r11, 213;                            jmp   n216_stmt_mark_α
                        .size            n212_statement_begin_bx, .-n212_statement_begin_bx
                        .type            n213_lit_integer_bx, @function
n213_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_integer_α:     sub              rsp, 16
                        mov              r11, 214
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_716_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_assign_α
.Llit_integer_α_716_0:  .quad            3
                        .size            n213_lit_integer_bx, .-n213_lit_integer_bx
                        .type            n214_assign_bx, @function
n214_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_assign_α:          mov              r11, 215
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_717_0]
                        .section         .rodata
.Lassign_α_717_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_717_1_s]
                        mov              r8, 78
                        mov              r9, 49
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n215_statement_end_α
.Lassign_α_717_0:       .quad            .Lassign_α_717_0_s
.Lassign_α_717_0_s:     .string          "to4.I"
                        .size            n214_assign_bx, .-n214_assign_bx
                        .type            n215_statement_end_bx, @function
n215_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_statement_end_α:   mov              r11, 216
                        mov              r10, 49
                        add              rsp, 16;                             jmp   n216_stmt_mark_α
                        .size            n215_statement_end_bx, .-n215_statement_end_bx
                        .type            n216_stmt_mark_bx, @function
n216_stmt_mark_bx:
#=======================================================================================================================
# to4.code        LE(to4.I, 4)            :F(to3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 68 0
n216_stmt_mark_α:       mov              r11, 217
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 68
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n223_statement_begin_α
                        .size            n216_stmt_mark_bx, .-n216_stmt_mark_bx
                        .type            n217_statement_begin_bx, @function
n217_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_begin_α: mov              r11, 218
                        mov              r10, 50;                             jmp   n218_var_α
n217_statement_begin_β: mov              r11, 218;                            jmp   n216_stmt_mark_α
                        .size            n217_statement_begin_bx, .-n217_statement_begin_bx
                        .type            n218_var_bx, @function
n218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              r11, 219
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_lit_integer_α
                        .size            n218_var_bx, .-n218_var_bx
                        .type            n219_lit_integer_bx, @function
n219_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_integer_α:     sub              rsp, 16
                        mov              r11, 220
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_725_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_binop_α
n219_lit_integer_β:     mov              r11, 220
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n217_statement_begin_β
.Llit_integer_α_725_0:  .quad            1
                        .size            n219_lit_integer_bx, .-n219_lit_integer_bx
                        .type            n220_binop_bx, @function
n220_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_binop_α:           sub              rsp, 16
                        mov              r11, 221
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_726_2
                        add              rax, 1
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_726_7
.Lbinop_α_726_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_726_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_726_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_726_4
.Lbinop_α_726_3:        movq             xmm0, rsi
.Lbinop_α_726_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_726_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_726_7:                                                              jmp   n221_assign_α
.Lbinop_α_726_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_726_240
                        add              rsp, 16;                             jmp   n219_lit_integer_β
.Lbinop_α_726_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_assign_α
                        .size            n220_binop_bx, .-n220_binop_bx
                        .type            n221_assign_bx, @function
n221_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_assign_α:          mov              r11, 222
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_727_0]
                        .section         .rodata
.Lassign_α_727_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_727_1_s]
                        mov              r8, 68
                        mov              r9, 50
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n222_statement_end_α
.Lassign_α_727_0:       .quad            .Lassign_α_727_0_s
.Lassign_α_727_0_s:     .string          "to4.I"
                        .size            n221_assign_bx, .-n221_assign_bx
                        .type            n222_statement_end_bx, @function
n222_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_statement_end_α:   mov              r11, 223
                        mov              r10, 50
                        add              rsp, 48;                             jmp   n216_stmt_mark_α
                        .size            n222_statement_end_bx, .-n222_statement_end_bx
                        .type            n223_statement_begin_bx, @function
n223_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_statement_begin_α: mov              r11, 224
                        mov              r10, 51;                             jmp   n224_var_α
n223_statement_begin_β: mov              r11, 224;                            jmp   n231_stmt_mark_α
                        .size            n223_statement_begin_bx, .-n223_statement_begin_bx
                        .type            n224_var_bx, @function
n224_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_α:             sub              rsp, 16
                        mov              r11, 225
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n225_lit_integer_α
                        .size            n224_var_bx, .-n224_var_bx
                        .type            n225_lit_integer_bx, @function
n225_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     sub              rsp, 16
                        mov              r11, 226
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_733_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n226_coerce_numeric_α
n225_lit_integer_β:     mov              r11, 226
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n223_statement_begin_β
.Llit_integer_α_733_0:  .quad            4
                        .size            n225_lit_integer_bx, .-n225_lit_integer_bx
                        .type            n226_coerce_numeric_bx, @function
n226_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 227
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_735_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_735_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_735_0
.Lcoerce_numeric_α_735_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n227_coerce_numeric_α
.Lcoerce_numeric_α_735_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n227_coerce_numeric_α
n226_coerce_numeric_β:  mov              r11, 227
                        add              rsp, 16;                             jmp   n225_lit_integer_β
                        .size            n226_coerce_numeric_bx, .-n226_coerce_numeric_bx
                        .type            n227_coerce_numeric_bx, @function
n227_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 228
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_737_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_737_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_737_0
.Lcoerce_numeric_α_737_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_cmp_test_α
.Lcoerce_numeric_α_737_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n228_cmp_test_α
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
                        cmp              dl, 3;                               jne   .Lcmp_test_α_739_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_739_239
                        add              rsp, 16;                             jmp   n227_coerce_numeric_β
.Lcmp_test_α_739_239:                                                         jmp   n229_statement_end_α
.Lcmp_test_α_739_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jle   .Lcmp_test_α_739_240
                        add              rsp, 16;                             jmp   n227_coerce_numeric_β
.Lcmp_test_α_739_240:                                                         jmp   n229_statement_end_α
                        .size            n228_cmp_test_bx, .-n228_cmp_test_bx
                        .type            n229_statement_end_bx, @function
n229_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_statement_end_α:   mov              r11, 230
                        mov              r10, 51
                        add              rsp, 80;                             jmp   n230_stmt_mark_α
                        .size            n229_statement_end_bx, .-n229_statement_end_bx
                        .type            n230_stmt_mark_bx, @function
n230_stmt_mark_bx:
#=======================================================================================================================
#                 mult.V = to3.I * to4.I  :F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n230_stmt_mark_α:       mov              r11, 231
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 69
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n232_statement_begin_α
                        .size            n230_stmt_mark_bx, .-n230_stmt_mark_bx
                        .type            n231_stmt_mark_bx, @function
n231_stmt_mark_bx:
#=======================================================================================================================
# to3.resume      to3.I = to3.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n231_stmt_mark_α:       mov              r11, 232
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 64
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n197_statement_begin_α
                        .size            n231_stmt_mark_bx, .-n231_stmt_mark_bx
                        .type            n232_statement_begin_bx, @function
n232_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_statement_begin_α: mov              r11, 233
                        mov              r10, 52;                             jmp   n233_var_α
n232_statement_begin_β: mov              r11, 233;                            jmp   n144_stmt_mark_α
                        .size            n232_statement_begin_bx, .-n232_statement_begin_bx
                        .type            n233_var_bx, @function
n233_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              r11, 234
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_var_α
                        .size            n233_var_bx, .-n233_var_bx
                        .type            n234_var_bx, @function
n234_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_α:             sub              rsp, 16
                        mov              r11, 235
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n235_binop_α
n234_var_β:             mov              r11, 235
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n232_statement_begin_β
                        .size            n234_var_bx, .-n234_var_bx
                        .type            n235_binop_bx, @function
n235_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_binop_α:           sub              rsp, 16
                        mov              r11, 236
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_750_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_750_7
.Lbinop_α_750_2:        and              edx, 1;                              jz    .Lbinop_α_750_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_750_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_750_4
.Lbinop_α_750_3:        movq             xmm0, rsi
.Lbinop_α_750_4:        cmp              cl, 5;                               je    .Lbinop_α_750_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_750_6
.Lbinop_α_750_5:        movq             xmm1, rdi
.Lbinop_α_750_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_750_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_750_7:                                                              jmp   n236_assign_α
.Lbinop_α_750_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_mul@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_750_240
                        add              rsp, 16;                             jmp   n234_var_β
.Lbinop_α_750_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_assign_α
                        .size            n235_binop_bx, .-n235_binop_bx
                        .type            n236_assign_bx, @function
n236_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:          mov              r11, 237
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_751_0]
                        .section         .rodata
.Lassign_α_751_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_751_1_s]
                        mov              r8, 64
                        mov              r9, 52
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n237_statement_end_α
.Lassign_α_751_0:       .quad            .Lassign_α_751_0_s
.Lassign_α_751_0_s:     .string          "mult.V"
                        .size            n236_assign_bx, .-n236_assign_bx
                        .type            n237_statement_end_bx, @function
n237_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:   mov              r11, 238
                        mov              r10, 52
                        add              rsp, 48;                             jmp   n238_stmt_mark_α
                        .size            n237_statement_end_bx, .-n237_statement_end_bx
                        .type            n238_stmt_mark_bx, @function
n238_stmt_mark_bx:
#=======================================================================================================================
#                 GT(5, mult.V)           :F(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n238_stmt_mark_α:       mov              r11, 239
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 70
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n239_statement_begin_α
                        .size            n238_stmt_mark_bx, .-n238_stmt_mark_bx
                        .type            n239_statement_begin_bx, @function
n239_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_begin_α: mov              r11, 240
                        mov              r10, 53;                             jmp   n240_lit_integer_α
n239_statement_begin_β: mov              r11, 240;                            jmp   n247_stmt_mark_α
                        .size            n239_statement_begin_bx, .-n239_statement_begin_bx
                        .type            n240_lit_integer_bx, @function
n240_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     sub              rsp, 16
                        mov              r11, 241
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_758_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_var_α
.Llit_integer_α_758_0:  .quad            5
                        .size            n240_lit_integer_bx, .-n240_lit_integer_bx
                        .type            n241_var_bx, @function
n241_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             sub              rsp, 16
                        mov              r11, 242
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n242_coerce_numeric_α
n241_var_β:             mov              r11, 242
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n239_statement_begin_β
                        .size            n241_var_bx, .-n241_var_bx
                        .type            n242_coerce_numeric_bx, @function
n242_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 243
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_761_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_761_0
.Lcoerce_numeric_α_761_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n243_coerce_numeric_α
.Lcoerce_numeric_α_761_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n243_coerce_numeric_α
n242_coerce_numeric_β:  mov              r11, 243
                        add              rsp, 16;                             jmp   n241_var_β
                        .size            n242_coerce_numeric_bx, .-n242_coerce_numeric_bx
                        .type            n243_coerce_numeric_bx, @function
n243_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 244
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_763_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
                        mov              eax, dword ptr [rsp + 48]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_763_0
.Lcoerce_numeric_α_763_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n244_cmp_test_α
.Lcoerce_numeric_α_763_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_coerce_num2_d@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n244_cmp_test_α
n243_coerce_numeric_β:  mov              r11, 244
                        add              rsp, 16;                             jmp   n242_coerce_numeric_β
                        .size            n243_coerce_numeric_bx, .-n243_coerce_numeric_bx
                        .type            n244_cmp_test_bx, @function
n244_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_cmp_test_α:        sub              rsp, 16
                        mov              r11, 245
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_765_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_765_239
                        add              rsp, 16;                             jmp   n243_coerce_numeric_β
.Lcmp_test_α_765_239:                                                         jmp   n245_statement_end_α
.Lcmp_test_α_765_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_cmp_d@PLT
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             eax, eax;                            jg    .Lcmp_test_α_765_240
                        add              rsp, 16;                             jmp   n243_coerce_numeric_β
.Lcmp_test_α_765_240:                                                         jmp   n245_statement_end_α
                        .size            n244_cmp_test_bx, .-n244_cmp_test_bx
                        .type            n245_statement_end_bx, @function
n245_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_statement_end_α:   mov              r11, 246
                        mov              r10, 53
                        add              rsp, 80;                             jmp   n246_stmt_mark_α
                        .size            n245_statement_end_bx, .-n245_statement_end_bx
                        .type            n246_stmt_mark_bx, @function
n246_stmt_mark_bx:
#=======================================================================================================================
#                 greater.V = mult.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n246_stmt_mark_α:       mov              r11, 247
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 71
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n248_statement_begin_α
                        .size            n246_stmt_mark_bx, .-n246_stmt_mark_bx
                        .type            n247_stmt_mark_bx, @function
n247_stmt_mark_bx:
#=======================================================================================================================
# write2.resume   to4.I = to4.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n247_stmt_mark_α:       mov              r11, 248
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 67
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n217_statement_begin_α
                        .size            n247_stmt_mark_bx, .-n247_stmt_mark_bx
                        .type            n248_statement_begin_bx, @function
n248_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_statement_begin_α: mov              r11, 249
                        mov              r10, 54;                             jmp   n249_var_α
n248_statement_begin_β: mov              r11, 249;                            jmp   n252_stmt_mark_α
                        .size            n248_statement_begin_bx, .-n248_statement_begin_bx
                        .type            n249_var_bx, @function
n249_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:             sub              rsp, 16
                        mov              r11, 250
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_assign_α
                        .size            n249_var_bx, .-n249_var_bx
                        .type            n250_assign_bx, @function
n250_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:          mov              r11, 251
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_775_0]
                        .section         .rodata
.Lassign_α_775_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_775_1_s]
                        mov              r8, 67
                        mov              r9, 54
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax;                                 jmp   n251_statement_end_α
.Lassign_α_775_0:       .quad            .Lassign_α_775_0_s
.Lassign_α_775_0_s:     .string          "greater.V"
                        .size            n250_assign_bx, .-n250_assign_bx
                        .type            n251_statement_end_bx, @function
n251_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:   mov              r11, 252
                        mov              r10, 54
                        add              rsp, 16;                             jmp   n252_stmt_mark_α
                        .size            n251_statement_end_bx, .-n251_statement_end_bx
                        .type            n252_stmt_mark_bx, @function
n252_stmt_mark_bx:
#=======================================================================================================================
#                 OUTPUT = greater.V      :(write2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n252_stmt_mark_α:       mov              r11, 253
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 72
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n253_statement_begin_α
                        .size            n252_stmt_mark_bx, .-n252_stmt_mark_bx
                        .type            n253_statement_begin_bx, @function
n253_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_begin_α: mov              r11, 254
                        mov              r10, 55;                             jmp   n254_var_α
n253_statement_begin_β: mov              r11, 254;                            jmp   n257_stmt_mark_α
                        .size            n253_statement_begin_bx, .-n253_statement_begin_bx
                        .type            n254_var_bx, @function
n254_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_var_α:             sub              rsp, 16
                        mov              r11, 255
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n255_assign_α
                        .size            n254_var_bx, .-n254_var_bx
                        .type            n255_assign_bx, @function
n255_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              r11, 256
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_783_0]
                        .section         .rodata
.Lassign_α_783_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_783_1_s]
                        mov              r8, 72
                        mov              r9, 55
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_783_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_statement_end_α
.Lassign_α_783_0:       .quad            .Lassign_α_783_0_s
.Lassign_α_783_0_s:     .string          "OUTPUT"
                        .size            n255_assign_bx, .-n255_assign_bx
                        .type            n256_statement_end_bx, @function
n256_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   mov              r11, 257
                        mov              r10, 55
                        add              rsp, 16;                             jmp   n257_stmt_mark_α
                        .size            n256_statement_end_bx, .-n256_statement_end_bx
                        .type            n257_stmt_mark_bx, @function
n257_stmt_mark_bx:
#=======================================================================================================================
# write2.succeed  OUTPUT = "Success!"     :(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n257_stmt_mark_α:       mov              r11, 258
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 61
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n282_statement_begin_α
                        .size            n257_stmt_mark_bx, .-n257_stmt_mark_bx
                        .type            n258_statement_begin_bx, @function
n258_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_begin_α: mov              r11, 259
                        mov              r10, 56;                             jmp   n259_lit_string_α
n258_statement_begin_β: mov              r11, 259;                            jmp   n262_stmt_mark_α
                        .size            n258_statement_begin_bx, .-n258_statement_begin_bx
                        .type            n259_lit_string_bx, @function
n259_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:      sub              rsp, 16
                        mov              r11, 260
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_790_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n260_assign_α
.Llit_string_α_790_0:   .quad            .Llit_string_α_790_0_s
.Llit_string_α_790_0_s: .string          ""
                        .size            n259_lit_string_bx, .-n259_lit_string_bx
                        .type            n260_assign_bx, @function
n260_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:          mov              r11, 261
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_791_0]
                        .section         .rodata
.Lassign_α_791_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_791_1_s]
                        mov              r8, 79
                        mov              r9, 56
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_791_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n261_statement_end_α
.Lassign_α_791_0:       .quad            .Lassign_α_791_0_s
.Lassign_α_791_0_s:     .string          "OUTPUT"
                        .size            n260_assign_bx, .-n260_assign_bx
                        .type            n261_statement_end_bx, @function
n261_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:   mov              r11, 262
                        mov              r10, 56
                        add              rsp, 16;                             jmp   n262_stmt_mark_α
                        .size            n261_statement_end_bx, .-n261_statement_end_bx
                        .type            n262_stmt_mark_bx, @function
n262_stmt_mark_bx:
#=======================================================================================================================
# write1.start                            :(greater.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n262_stmt_mark_α:       mov              r11, 263
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n173_statement_begin_α
                        .size            n262_stmt_mark_bx, .-n262_stmt_mark_bx
                        .type            n263_statement_begin_bx, @function
n263_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_begin_α: mov              r11, 264
                        mov              r10, 57;                             jmp   n264_lit_string_α
n263_statement_begin_β: mov              r11, 264;                            jmp   n267_stmt_mark_α
                        .size            n263_statement_begin_bx, .-n263_statement_begin_bx
                        .type            n264_lit_string_bx, @function
n264_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      sub              rsp, 16
                        mov              r11, 265
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_798_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_assign_α
.Llit_string_α_798_0:   .quad            .Llit_string_α_798_0_s
.Llit_string_α_798_0_s: .string          "Failure."
                        .size            n264_lit_string_bx, .-n264_lit_string_bx
                        .type            n265_assign_bx, @function
n265_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:          mov              r11, 266
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_799_0]
                        .section         .rodata
.Lassign_α_799_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_799_1_s]
                        mov              r8, 54
                        mov              r9, 57
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_799_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n266_statement_end_α
.Lassign_α_799_0:       .quad            .Lassign_α_799_0_s
.Lassign_α_799_0_s:     .string          "OUTPUT"
                        .size            n265_assign_bx, .-n265_assign_bx
                        .type            n266_statement_end_bx, @function
n266_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:   mov              r11, 267
                        mov              r10, 57
                        add              rsp, 16;                             jmp   n267_stmt_mark_α
                        .size            n266_statement_end_bx, .-n266_statement_end_bx
                        .type            n267_stmt_mark_bx, @function
n267_stmt_mark_bx:
#=======================================================================================================================
# main2           OUTPUT =                :(write2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 77 0
n267_stmt_mark_α:       mov              r11, 268
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 77
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n273_statement_begin_α
                        .size            n267_stmt_mark_bx, .-n267_stmt_mark_bx
                        .type            n268_statement_begin_bx, @function
n268_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_begin_α: mov              r11, 269
                        mov              r10, 58;                             jmp   n269_lit_string_α
n268_statement_begin_β: mov              r11, 269;                            jmp   n272_stmt_mark_α
                        .size            n268_statement_begin_bx, .-n268_statement_begin_bx
                        .type            n269_lit_string_bx, @function
n269_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:      sub              rsp, 16
                        mov              r11, 270
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_806_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n270_assign_α
.Llit_string_α_806_0:   .quad            .Llit_string_α_806_0_s
.Llit_string_α_806_0_s: .string          "Success!"
                        .size            n269_lit_string_bx, .-n269_lit_string_bx
                        .type            n270_assign_bx, @function
n270_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:          mov              r11, 271
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_807_0]
                        .section         .rodata
.Lassign_α_807_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_807_1_s]
                        mov              r8, 77
                        mov              r9, 58
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_807_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n271_statement_end_α
.Lassign_α_807_0:       .quad            .Lassign_α_807_0_s
.Lassign_α_807_0_s:     .string          "OUTPUT"
                        .size            n270_assign_bx, .-n270_assign_bx
                        .type            n271_statement_end_bx, @function
n271_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:   mov              r11, 272
                        mov              r10, 58
                        add              rsp, 16;                             jmp   n272_stmt_mark_α
                        .size            n271_statement_end_bx, .-n271_statement_end_bx
                        .type            n272_stmt_mark_bx, @function
n272_stmt_mark_bx:
#=======================================================================================================================
# write1.resume                           :(greater.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n272_stmt_mark_α:       mov              r11, 273
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n176_statement_begin_α
                        .size            n272_stmt_mark_bx, .-n272_stmt_mark_bx
                        .type            n273_statement_begin_bx, @function
n273_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_begin_α: mov              r11, 274
                        mov              r10, 59;                             jmp   n274_lit_string_α
n273_statement_begin_β: mov              r11, 274;                            jmp   n277_stmt_mark_α
                        .size            n273_statement_begin_bx, .-n273_statement_begin_bx
                        .type            n274_lit_string_bx, @function
n274_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      sub              rsp, 16
                        mov              r11, 275
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_814_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_assign_α
.Llit_string_α_814_0:   .quad            .Llit_string_α_814_0_s
.Llit_string_α_814_0_s: .string          ""
                        .size            n274_lit_string_bx, .-n274_lit_string_bx
                        .type            n275_assign_bx, @function
n275_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:          mov              r11, 276
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_815_0]
                        .section         .rodata
.Lassign_α_815_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_815_1_s]
                        mov              r8, 55
                        mov              r9, 59
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_815_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n276_statement_end_α
.Lassign_α_815_0:       .quad            .Lassign_α_815_0_s
.Lassign_α_815_0_s:     .string          "OUTPUT"
                        .size            n275_assign_bx, .-n275_assign_bx
                        .type            n276_statement_end_bx, @function
n276_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:   mov              r11, 277
                        mov              r10, 59
                        add              rsp, 16;                             jmp   n277_stmt_mark_α
                        .size            n276_statement_end_bx, .-n276_statement_end_bx
                        .type            n277_stmt_mark_bx, @function
n277_stmt_mark_bx:
#=======================================================================================================================
# write2.start    to3.I = 1               :(to3.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n277_stmt_mark_α:       mov              r11, 278
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              qword ptr [rax + 0], 63
                        mov              rax, qword ptr [rip + g_stcount@GOTPCREL]
                        inc              qword ptr [rax + 0];                 jmp   n192_statement_begin_α
                        .size            n277_stmt_mark_bx, .-n277_stmt_mark_bx
                        .type            n278_statement_begin_bx, @function
n278_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_statement_begin_α: mov              r11, 279
                        mov              r10, 60;                             jmp   n279_lit_string_α
n278_statement_begin_β: mov              r11, 279;                            jmp   main_γ
                        .size            n278_statement_begin_bx, .-n278_statement_begin_bx
                        .type            n279_lit_string_bx, @function
n279_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      sub              rsp, 16
                        mov              r11, 280
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_822_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n280_assign_α
.Llit_string_α_822_0:   .quad            .Llit_string_α_822_0_s
.Llit_string_α_822_0_s: .string          "Failure."
                        .size            n279_lit_string_bx, .-n279_lit_string_bx
                        .type            n280_assign_bx, @function
n280_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:          mov              r11, 281
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_823_0]
                        .section         .rodata
.Lassign_α_823_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_823_1_s]
                        mov              r8, 63
                        mov              r9, 60
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_823_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n281_statement_end_α
.Lassign_α_823_0:       .quad            .Lassign_α_823_0_s
.Lassign_α_823_0_s:     .string          "OUTPUT"
                        .size            n280_assign_bx, .-n280_assign_bx
                        .type            n281_statement_end_bx, @function
n281_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:   mov              r11, 282
                        mov              r10, 60
                        add              rsp, 16;                             jmp   main_γ
                        .size            n281_statement_end_bx, .-n281_statement_end_bx
                        .type            n282_statement_begin_bx, @function
n282_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_statement_begin_α: mov              r11, 283
                        mov              r10, 61;                             jmp   n283_lit_string_α
n282_statement_begin_β: mov              r11, 283;                            jmp   n247_stmt_mark_α
                        .size            n282_statement_begin_bx, .-n282_statement_begin_bx
                        .type            n283_lit_string_bx, @function
n283_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_string_α:      sub              rsp, 16
                        mov              r11, 284
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_828_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n284_assign_α
.Llit_string_α_828_0:   .quad            .Llit_string_α_828_0_s
.Llit_string_α_828_0_s: .string          "Success!"
                        .size            n283_lit_string_bx, .-n283_lit_string_bx
                        .type            n284_assign_bx, @function
n284_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_assign_α:          mov              r11, 285
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_829_0]
                        .section         .rodata
.Lassign_α_829_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_829_1_s]
                        mov              r8, 63
                        mov              r9, 61
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_829_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n285_statement_end_α
.Lassign_α_829_0:       .quad            .Lassign_α_829_0_s
.Lassign_α_829_0_s:     .string          "OUTPUT"
                        .size            n284_assign_bx, .-n284_assign_bx
                        .type            n285_statement_end_bx, @function
n285_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_statement_end_α:   mov              r11, 286
                        mov              r10, 61
                        add              rsp, 16;                             jmp   n247_stmt_mark_α
                        .size            n285_statement_end_bx, .-n285_statement_end_bx
                        .type            n286_statement_begin_bx, @function
n286_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_begin_α: mov              r11, 287
                        mov              r10, 62;                             jmp   n287_lit_string_α
n286_statement_begin_β: mov              r11, 287;                            jmp   main_γ
                        .size            n286_statement_begin_bx, .-n286_statement_begin_bx
                        .type            n287_lit_string_bx, @function
n287_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      sub              rsp, 16
                        mov              r11, 288
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_834_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n288_assign_α
.Llit_string_α_834_0:   .quad            .Llit_string_α_834_0_s
.Llit_string_α_834_0_s: .string          "Exception!"
                        .size            n287_lit_string_bx, .-n287_lit_string_bx
                        .type            n288_assign_bx, @function
n288_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_assign_α:          mov              r11, 289
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        push             rax
                        push             rax
                        push             rdi
                        push             rsi
                        push             rdx
                        push             rcx
                        push             r8
                        push             r9
                        push             r10
                        push             r11
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_835_0]
                        .section         .rodata
.Lassign_α_835_1_s:     .string          "test_icon.sno"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rcx, [rip + .Lassign_α_835_1_s]
                        mov              r8, 63
                        mov              r9, 62
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             comm_var@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        pop              r11
                        pop              r10
                        pop              r9
                        pop              r8
                        pop              rcx
                        pop              rdx
                        pop              rsi
                        pop              rdi
                        pop              rax
                        pop              rax
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_835_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n289_statement_end_α
.Lassign_α_835_0:       .quad            .Lassign_α_835_0_s
.Lassign_α_835_0_s:     .string          "TERMINAL"
                        .size            n288_assign_bx, .-n288_assign_bx
                        .type            n289_statement_end_bx, @function
n289_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_statement_end_α:   mov              r11, 290
                        mov              r10, 62
                        add              rsp, 16;                             jmp   main_γ
                        .size            n289_statement_end_bx, .-n289_statement_end_bx
                        .type            n290_goto_bx, @function
n290_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_goto_α:            mov              r11, 291;                            jmp   n0_lit_integer_α
n290_goto_β:            mov              r11, 291;                            jmp   main_ω
                        .size            n290_goto_bx, .-n290_goto_bx
                        .type            n291_goto_bx, @function
n291_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_goto_α:            mov              r11, 292;                            jmp   n147_stmt_mark_α
n291_goto_β:            mov              r11, 292;                            jmp   main_ω
                        .size            n291_goto_bx, .-n291_goto_bx
                        .type            n292_goto_bx, @function
n292_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_goto_α:            mov              r11, 293;                            jmp   n153_stmt_mark_α
n292_goto_β:            mov              r11, 293;                            jmp   main_ω
                        .size            n292_goto_bx, .-n292_goto_bx
                        .type            n293_goto_bx, @function
n293_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_goto_α:            mov              r11, 294;                            jmp   n34_stmt_mark_α
n293_goto_β:            mov              r11, 294;                            jmp   main_ω
                        .size            n293_goto_bx, .-n293_goto_bx
                        .type            n294_goto_bx, @function
n294_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_goto_α:            mov              r11, 295;                            jmp   n40_stmt_mark_α
n294_goto_β:            mov              r11, 295;                            jmp   main_ω
                        .size            n294_goto_bx, .-n294_goto_bx
                        .type            n295_goto_bx, @function
n295_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_goto_α:            mov              r11, 296;                            jmp   n64_stmt_mark_α
n295_goto_β:            mov              r11, 296;                            jmp   main_ω
                        .size            n295_goto_bx, .-n295_goto_bx
                        .type            n296_goto_bx, @function
n296_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_goto_α:            mov              r11, 297;                            jmp   n49_stmt_mark_α
n296_goto_β:            mov              r11, 297;                            jmp   main_ω
                        .size            n296_goto_bx, .-n296_goto_bx
                        .type            n297_goto_bx, @function
n297_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_goto_α:            mov              r11, 298;                            jmp   n124_stmt_mark_α
n297_goto_β:            mov              r11, 298;                            jmp   main_ω
                        .size            n297_goto_bx, .-n297_goto_bx
                        .type            n298_goto_bx, @function
n298_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_goto_α:            mov              r11, 299;                            jmp   n23_stmt_mark_α
n298_goto_β:            mov              r11, 299;                            jmp   main_ω
                        .size            n298_goto_bx, .-n298_goto_bx
                        .type            n299_goto_bx, @function
n299_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_goto_α:            mov              r11, 300;                            jmp   n31_stmt_mark_α
n299_goto_β:            mov              r11, 300;                            jmp   main_ω
                        .size            n299_goto_bx, .-n299_goto_bx
                        .type            n300_goto_bx, @function
n300_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_goto_α:            mov              r11, 301;                            jmp   n61_stmt_mark_α
n300_goto_β:            mov              r11, 301;                            jmp   main_ω
                        .size            n300_goto_bx, .-n300_goto_bx
                        .type            n301_goto_bx, @function
n301_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_goto_α:            mov              r11, 302;                            jmp   n130_stmt_mark_α
n301_goto_β:            mov              r11, 302;                            jmp   main_ω
                        .size            n301_goto_bx, .-n301_goto_bx
                        .type            n302_goto_bx, @function
n302_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_goto_α:            mov              r11, 303;                            jmp   n20_stmt_mark_α
n302_goto_β:            mov              r11, 303;                            jmp   main_ω
                        .size            n302_goto_bx, .-n302_goto_bx
                        .type            n303_goto_bx, @function
n303_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_goto_α:            mov              r11, 304;                            jmp   n28_stmt_mark_α
n303_goto_β:            mov              r11, 304;                            jmp   main_ω
                        .size            n303_goto_bx, .-n303_goto_bx
                        .type            n304_goto_bx, @function
n304_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_goto_α:            mov              r11, 305;                            jmp   n87_stmt_mark_α
n304_goto_β:            mov              r11, 305;                            jmp   main_ω
                        .size            n304_goto_bx, .-n304_goto_bx
                        .type            n305_goto_bx, @function
n305_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_goto_α:            mov              r11, 306;                            jmp   n93_stmt_mark_α
n305_goto_β:            mov              r11, 306;                            jmp   main_ω
                        .size            n305_goto_bx, .-n305_goto_bx
                        .type            n306_goto_bx, @function
n306_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_goto_α:            mov              r11, 307;                            jmp   n117_stmt_mark_α
n306_goto_β:            mov              r11, 307;                            jmp   main_ω
                        .size            n306_goto_bx, .-n306_goto_bx
                        .type            n307_goto_bx, @function
n307_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_goto_α:            mov              r11, 308;                            jmp   n102_stmt_mark_α
n307_goto_β:            mov              r11, 308;                            jmp   main_ω
                        .size            n307_goto_bx, .-n307_goto_bx
                        .type            n308_goto_bx, @function
n308_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_goto_α:            mov              r11, 309;                            jmp   n136_stmt_mark_α
n308_goto_β:            mov              r11, 309;                            jmp   main_ω
                        .size            n308_goto_bx, .-n308_goto_bx
                        .type            n309_goto_bx, @function
n309_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_goto_α:            mov              r11, 310;                            jmp   n76_stmt_mark_α
n309_goto_β:            mov              r11, 310;                            jmp   main_ω
                        .size            n309_goto_bx, .-n309_goto_bx
                        .type            n310_goto_bx, @function
n310_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_goto_α:            mov              r11, 311;                            jmp   n84_stmt_mark_α
n310_goto_β:            mov              r11, 311;                            jmp   main_ω
                        .size            n310_goto_bx, .-n310_goto_bx
                        .type            n311_goto_bx, @function
n311_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_goto_α:            mov              r11, 312;                            jmp   n114_stmt_mark_α
n311_goto_β:            mov              r11, 312;                            jmp   main_ω
                        .size            n311_goto_bx, .-n311_goto_bx
                        .type            n312_goto_bx, @function
n312_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_goto_α:            mov              r11, 313;                            jmp   n133_stmt_mark_α
n312_goto_β:            mov              r11, 313;                            jmp   main_ω
                        .size            n312_goto_bx, .-n312_goto_bx
                        .type            n313_goto_bx, @function
n313_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_goto_α:            mov              r11, 314;                            jmp   n73_stmt_mark_α
n313_goto_β:            mov              r11, 314;                            jmp   main_ω
                        .size            n313_goto_bx, .-n313_goto_bx
                        .type            n314_goto_bx, @function
n314_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_goto_α:            mov              r11, 315;                            jmp   n81_stmt_mark_α
n314_goto_β:            mov              r11, 315;                            jmp   main_ω
                        .size            n314_goto_bx, .-n314_goto_bx
                        .type            n315_goto_bx, @function
n315_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:            mov              r11, 316;                            jmp   n159_stmt_mark_α
n315_goto_β:            mov              r11, 316;                            jmp   main_ω
                        .size            n315_goto_bx, .-n315_goto_bx
                        .type            n316_goto_bx, @function
n316_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_goto_α:            mov              r11, 317;                            jmp   n37_stmt_mark_α
n316_goto_β:            mov              r11, 317;                            jmp   main_ω
                        .size            n316_goto_bx, .-n316_goto_bx
                        .type            n317_goto_bx, @function
n317_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_goto_α:            mov              r11, 318;                            jmp   n90_stmt_mark_α
n317_goto_β:            mov              r11, 318;                            jmp   main_ω
                        .size            n317_goto_bx, .-n317_goto_bx
                        .type            n318_goto_bx, @function
n318_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:            mov              r11, 319;                            jmp   n156_stmt_mark_α
n318_goto_β:            mov              r11, 319;                            jmp   main_ω
                        .size            n318_goto_bx, .-n318_goto_bx
                        .type            n319_goto_bx, @function
n319_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_goto_α:            mov              r11, 320;                            jmp   n54_stmt_mark_α
n319_goto_β:            mov              r11, 320;                            jmp   main_ω
                        .size            n319_goto_bx, .-n319_goto_bx
                        .type            n320_goto_bx, @function
n320_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_goto_α:            mov              r11, 321;                            jmp   n107_stmt_mark_α
n320_goto_β:            mov              r11, 321;                            jmp   main_ω
                        .size            n320_goto_bx, .-n320_goto_bx
                        .type            n321_goto_bx, @function
n321_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_goto_α:            mov              r11, 322;                            jmp   n175_stmt_mark_α
n321_goto_β:            mov              r11, 322;                            jmp   main_ω
                        .size            n321_goto_bx, .-n321_goto_bx
                        .type            n322_goto_bx, @function
n322_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_goto_α:            mov              r11, 323;                            jmp   n15_stmt_mark_α
n322_goto_β:            mov              r11, 323;                            jmp   main_ω
                        .size            n322_goto_bx, .-n322_goto_bx
                        .type            n323_goto_bx, @function
n323_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_goto_α:            mov              r11, 324;                            jmp   n127_stmt_mark_α
n323_goto_β:            mov              r11, 324;                            jmp   main_ω
                        .size            n323_goto_bx, .-n323_goto_bx
                        .type            n324_goto_bx, @function
n324_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_goto_α:            mov              r11, 325;                            jmp   n178_stmt_mark_α
n324_goto_β:            mov              r11, 325;                            jmp   main_ω
                        .size            n324_goto_bx, .-n324_goto_bx
                        .type            n325_goto_bx, @function
n325_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_goto_α:            mov              r11, 326;                            jmp   n12_stmt_mark_α
n325_goto_β:            mov              r11, 326;                            jmp   main_ω
                        .size            n325_goto_bx, .-n325_goto_bx
                        .type            n326_goto_bx, @function
n326_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:            mov              r11, 327;                            jmp   n143_stmt_mark_α
n326_goto_β:            mov              r11, 327;                            jmp   main_ω
                        .size            n326_goto_bx, .-n326_goto_bx
                        .type            n327_goto_bx, @function
n327_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_goto_α:            mov              r11, 328;                            jmp   n262_stmt_mark_α
n327_goto_β:            mov              r11, 328;                            jmp   main_ω
                        .size            n327_goto_bx, .-n327_goto_bx
                        .type            n328_goto_bx, @function
n328_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_goto_α:            mov              r11, 329;                            jmp   n272_stmt_mark_α
n328_goto_β:            mov              r11, 329;                            jmp   main_ω
                        .size            n328_goto_bx, .-n328_goto_bx
                        .type            n329_goto_bx, @function
n329_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_goto_α:            mov              r11, 330;                            jmp   n150_stmt_mark_α
n329_goto_β:            mov              r11, 330;                            jmp   main_ω
                        .size            n329_goto_bx, .-n329_goto_bx
                        .type            n330_goto_bx, @function
n330_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_goto_α:            mov              r11, 331;                            jmp   n172_stmt_mark_α
n330_goto_β:            mov              r11, 331;                            jmp   main_ω
                        .size            n330_goto_bx, .-n330_goto_bx
                        .type            n331_goto_bx, @function
n331_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_goto_α:            mov              r11, 332;                            jmp   n277_stmt_mark_α
n331_goto_β:            mov              r11, 332;                            jmp   main_ω
                        .size            n331_goto_bx, .-n331_goto_bx
                        .type            n332_goto_bx, @function
n332_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_goto_α:            mov              r11, 333;                            jmp   n231_stmt_mark_α
n332_goto_β:            mov              r11, 333;                            jmp   main_ω
                        .size            n332_goto_bx, .-n332_goto_bx
                        .type            n333_goto_bx, @function
n333_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:            mov              r11, 334;                            jmp   n196_stmt_mark_α
n333_goto_β:            mov              r11, 334;                            jmp   main_ω
                        .size            n333_goto_bx, .-n333_goto_bx
                        .type            n334_goto_bx, @function
n334_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:            mov              r11, 335;                            jmp   n247_stmt_mark_α
n334_goto_β:            mov              r11, 335;                            jmp   main_ω
                        .size            n334_goto_bx, .-n334_goto_bx
                        .type            n335_goto_bx, @function
n335_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:            mov              r11, 336;                            jmp   n216_stmt_mark_α
n335_goto_β:            mov              r11, 336;                            jmp   main_ω
                        .size            n335_goto_bx, .-n335_goto_bx
                        .type            n336_goto_bx, @function
n336_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_goto_α:            mov              r11, 337;                            jmp   n7_stmt_mark_α
n336_goto_β:            mov              r11, 337;                            jmp   main_ω
                        .size            n336_goto_bx, .-n336_goto_bx
                        .type            n337_goto_bx, @function
n337_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:            mov              r11, 338;                            jmp   n181_stmt_mark_α
n337_goto_β:            mov              r11, 338;                            jmp   main_ω
                        .size            n337_goto_bx, .-n337_goto_bx
                        .type            n338_goto_bx, @function
n338_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:            mov              r11, 339;                            jmp   n191_stmt_mark_α
n338_goto_β:            mov              r11, 339;                            jmp   main_ω
                        .size            n338_goto_bx, .-n338_goto_bx
                        .type            n339_goto_bx, @function
n339_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_goto_α:            mov              r11, 340;                            jmp   n267_stmt_mark_α
n339_goto_β:            mov              r11, 340;                            jmp   main_ω
                        .size            n339_goto_bx, .-n339_goto_bx
                        .type            n340_goto_bx, @function
n340_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_goto_α:            mov              r11, 341;                            jmp   n211_stmt_mark_α
n340_goto_β:            mov              r11, 341;                            jmp   main_ω
                        .size            n340_goto_bx, .-n340_goto_bx
                        .type            n341_goto_bx, @function
n341_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_goto_α:            mov              r11, 342;                            jmp   n257_stmt_mark_α
n341_goto_β:            mov              r11, 342;                            jmp   main_ω
                        .size            n341_goto_bx, .-n341_goto_bx
                        .type            n342_goto_bx, @function
n342_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_goto_α:            mov              r11, 343;                            jmp   n144_stmt_mark_α
n342_goto_β:            mov              r11, 343;                            jmp   main_ω
                        .size            n342_goto_bx, .-n342_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
                        xor              edi, edi
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
                        .section         .note.GNU-stack,"",@progbits
