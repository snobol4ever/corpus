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
                        mov              qword ptr [rsp + 1208], rax
                        mov              dword ptr [rsp + 1200], 160
                        mov              dword ptr [rsp + 1204], 1216
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
1:                      cmp              al, 104;                             jne   .Lcall_α_345_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_345_240:       mov              qword ptr [rsp + 0], rax             # result
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
1:                      cmp              al, 104;                             jne   .Lcall_α_346_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_lit_integer_α
.Lcall_α_346_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_lit_integer_α
n1_call_β:              mov              r11, 2
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_lit_integer_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#=======================================================================================================================
# START                                   :(main1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n2_lit_integer_α:       sub              rsp, 16
                        mov              r11, 3
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_347_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n3_lit_integer_α
.Llit_integer_α_347_0:  .quad            18446744073709551615
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 16
                        mov              r11, 4
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_lit_string_α
.Llit_integer_α_348_0:  .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        sub              rsp, 16
                        mov              r11, 5
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 13
                        mov              rax, qword ptr [rip + .Llit_string_α_349_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n5_call_α
.Llit_string_α_349_0:   .quad            .Llit_string_α_349_0_s
.Llit_string_α_349_0_s: .string          "test_icon.sno"
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
.Lcall_α_rkfnzd351:     .string          "SNO$STMT"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd351]
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
                        cmp              al, 104;                             jne   .Lcall_α_350_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n6_stmt_mark_α
.Lcall_α_350_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              qword ptr [rax + 0], 1
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        add              rsp, 64;                             jmp   n7_statement_begin_α
                        .size            n6_stmt_mark_bx, .-n6_stmt_mark_bx
                        .type            n7_statement_begin_bx, @function
n7_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_begin_α:   mov              r11, 8;                              jmp   n8_statement_end_α
n7_statement_begin_β:   mov              r11, 8;                              jmp   n9_stmt_mark_α
                        .size            n7_statement_begin_bx, .-n7_statement_begin_bx
                        .type            n8_statement_end_bx, @function
n8_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     mov              r11, 9;                              jmp   n9_stmt_mark_α
                        .size            n8_statement_end_bx, .-n8_statement_end_bx
                        .type            n9_stmt_mark_bx, @function
n9_stmt_mark_bx:
#=======================================================================================================================
# main1           OUTPUT =                :(write1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 74 0
n9_stmt_mark_α:         mov              r11, 10
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 56
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 74
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n260_statement_begin_α
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
                        mov              rax, qword ptr [rip + .Llit_integer_α_362_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_assign_α
.Llit_integer_α_362_0:  .quad            5
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_assign_bx, @function
n12_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              r11, 13
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # x5.V
                        mov              qword ptr [r9 + 8], rdx;             jmp   n13_statement_end_α
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
# x5.succeed                              :(mult.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n14_stmt_mark_α:        mov              r11, 15
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 38
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n159_statement_begin_α
                        .size            n14_stmt_mark_bx, .-n14_stmt_mark_bx
                        .type            n15_statement_begin_bx, @function
n15_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_begin_α:  mov              r11, 16;                             jmp   n16_statement_end_α
n15_statement_begin_β:  mov              r11, 16;                             jmp   n17_stmt_mark_α
                        .size            n15_statement_begin_bx, .-n15_statement_begin_bx
                        .type            n16_statement_end_bx, @function
n16_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    mov              r11, 17;                             jmp   n17_stmt_mark_α
                        .size            n16_statement_end_bx, .-n16_statement_end_bx
                        .type            n17_stmt_mark_bx, @function
n17_stmt_mark_bx:
#=======================================================================================================================
# x5.fail                                 :(greater.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n17_stmt_mark_α:        mov              r11, 18
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n150_statement_begin_α
                        .size            n17_stmt_mark_bx, .-n17_stmt_mark_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_statement_begin_α:  mov              r11, 19;                             jmp   n19_lit_integer_α
n18_statement_begin_β:  mov              r11, 19;                             jmp   n22_stmt_mark_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      sub              rsp, 16
                        mov              r11, 20
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_376_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_assign_α
.Llit_integer_α_376_0:  .quad            1
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_assign_bx, @function
n20_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_assign_α:           mov              r11, 21
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # x1.V
                        mov              qword ptr [r9 + 24], rdx;            jmp   n21_statement_end_α
                        .size            n20_assign_bx, .-n20_assign_bx
                        .type            n21_statement_end_bx, @function
n21_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:    mov              r11, 22
                        add              rsp, 16;                             jmp   n22_stmt_mark_α
                        .size            n21_statement_end_bx, .-n21_statement_end_bx
                        .type            n22_stmt_mark_bx, @function
n22_stmt_mark_bx:
#=======================================================================================================================
# x1.succeed                              :(x2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n22_stmt_mark_α:        mov              r11, 23
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 14
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n64_statement_begin_α
                        .size            n22_stmt_mark_bx, .-n22_stmt_mark_bx
                        .type            n23_statement_begin_bx, @function
n23_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_begin_α:  mov              r11, 24;                             jmp   n24_statement_end_α
n23_statement_begin_β:  mov              r11, 24;                             jmp   n25_stmt_mark_α
                        .size            n23_statement_begin_bx, .-n23_statement_begin_bx
                        .type            n24_statement_end_bx, @function
n24_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    mov              r11, 25;                             jmp   n25_stmt_mark_α
                        .size            n24_statement_end_bx, .-n24_statement_end_bx
                        .type            n25_stmt_mark_bx, @function
n25_stmt_mark_bx:
#=======================================================================================================================
# x1.fail                                 :(to1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n25_stmt_mark_α:        mov              r11, 26
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n37_statement_begin_α
                        .size            n25_stmt_mark_bx, .-n25_stmt_mark_bx
                        .type            n26_statement_begin_bx, @function
n26_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_statement_begin_α:  mov              r11, 27;                             jmp   n27_lit_integer_α
n26_statement_begin_β:  mov              r11, 27;                             jmp   n30_stmt_mark_α
                        .size            n26_statement_begin_bx, .-n26_statement_begin_bx
                        .type            n27_lit_integer_bx, @function
n27_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:      sub              rsp, 16
                        mov              r11, 28
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_390_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_assign_α
.Llit_integer_α_390_0:  .quad            2
                        .size            n27_lit_integer_bx, .-n27_lit_integer_bx
                        .type            n28_assign_bx, @function
n28_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_assign_α:           mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # x2.V
                        mov              qword ptr [r9 + 40], rdx;            jmp   n29_statement_end_α
                        .size            n28_assign_bx, .-n28_assign_bx
                        .type            n29_statement_end_bx, @function
n29_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_statement_end_α:    mov              r11, 30
                        add              rsp, 16;                             jmp   n30_stmt_mark_α
                        .size            n29_statement_end_bx, .-n29_statement_end_bx
                        .type            n30_stmt_mark_bx, @function
n30_stmt_mark_bx:
#=======================================================================================================================
# x2.succeed      to1.I = x1.V            :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n30_stmt_mark_α:        mov              r11, 31
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n67_statement_begin_α
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
# x2.fail                                 :(x1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n33_stmt_mark_α:        mov              r11, 34
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n40_statement_begin_α
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
# x1.start        x1.V = 1                :(x1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n36_stmt_mark_α:        mov              r11, 37
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 4
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 9
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n18_statement_begin_α
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
# to1.fail                                :(mult.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n39_stmt_mark_α:        mov              r11, 40
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 29
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n127_statement_begin_α
                        .size            n39_stmt_mark_bx, .-n39_stmt_mark_bx
                        .type            n40_statement_begin_bx, @function
n40_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_statement_begin_α:  mov              r11, 41;                             jmp   n41_statement_end_α
n40_statement_begin_β:  mov              r11, 41;                             jmp   n42_stmt_mark_α
                        .size            n40_statement_begin_bx, .-n40_statement_begin_bx
                        .type            n41_statement_end_bx, @function
n41_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_statement_end_α:    mov              r11, 42;                             jmp   n42_stmt_mark_α
                        .size            n41_statement_end_bx, .-n41_statement_end_bx
                        .type            n42_stmt_mark_bx, @function
n42_stmt_mark_bx:
#=======================================================================================================================
# x1.resume                               :(x1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n42_stmt_mark_α:        mov              r11, 43
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 5
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 10
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n23_statement_begin_α
                        .size            n42_stmt_mark_bx, .-n42_stmt_mark_bx
                        .type            n43_statement_begin_bx, @function
n43_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_statement_begin_α:  mov              r11, 44;                             jmp   n44_var_α
n43_statement_begin_β:  mov              r11, 44;                             jmp   n51_stmt_mark_α
                        .size            n43_statement_begin_bx, .-n43_statement_begin_bx
                        .type            n44_var_bx, @function
n44_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              sub              rsp, 16
                        mov              r11, 45
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n45_var_α
                        .size            n44_var_bx, .-n44_var_bx
                        .type            n45_var_bx, @function
n45_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_α:              sub              rsp, 16
                        mov              r11, 46
                        mov              rax, qword ptr [r9 + 32]             # x2.V
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n46_coerce_numeric_α
n45_var_β:              mov              r11, 46
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n43_statement_begin_β
                        .size            n45_var_bx, .-n45_var_bx
                        .type            n46_coerce_numeric_bx, @function
n46_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 47
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_425_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_425_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_425_0
.Lcoerce_numeric_α_425_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n47_coerce_numeric_α
.Lcoerce_numeric_α_425_0:
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
1:                                                                            jmp   n47_coerce_numeric_α
n46_coerce_numeric_β:   mov              r11, 47
                        add              rsp, 16;                             jmp   n45_var_β
                        .size            n46_coerce_numeric_bx, .-n46_coerce_numeric_bx
                        .type            n47_coerce_numeric_bx, @function
n47_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 48
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_427_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_427_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_427_0
.Lcoerce_numeric_α_427_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_cmp_test_α
.Lcoerce_numeric_α_427_0:
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
1:                                                                            jmp   n48_cmp_test_α
n47_coerce_numeric_β:   mov              r11, 48
                        add              rsp, 16;                             jmp   n46_coerce_numeric_β
                        .size            n47_coerce_numeric_bx, .-n47_coerce_numeric_bx
                        .type            n48_cmp_test_bx, @function
n48_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_cmp_test_α:         sub              rsp, 16
                        mov              r11, 49
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_429_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_429_239
                        add              rsp, 16;                             jmp   n47_coerce_numeric_β
.Lcmp_test_α_429_239:                                                         jmp   n49_statement_end_α
.Lcmp_test_α_429_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_429_240
                        add              rsp, 16;                             jmp   n47_coerce_numeric_β
.Lcmp_test_α_429_240:                                                         jmp   n49_statement_end_α
                        .size            n48_cmp_test_bx, .-n48_cmp_test_bx
                        .type            n49_statement_end_bx, @function
n49_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    mov              r11, 50
                        add              rsp, 80;                             jmp   n50_stmt_mark_α
                        .size            n49_statement_end_bx, .-n49_statement_end_bx
                        .type            n50_stmt_mark_bx, @function
n50_stmt_mark_bx:
#=======================================================================================================================
#                 to1.V = to1.I           :(to1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n50_stmt_mark_α:        mov              r11, 51
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n52_statement_begin_α
                        .size            n50_stmt_mark_bx, .-n50_stmt_mark_bx
                        .type            n51_stmt_mark_bx, @function
n51_stmt_mark_bx:
#=======================================================================================================================
# x2.resume                               :(x2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n51_stmt_mark_α:        mov              r11, 52
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n31_statement_begin_α
                        .size            n51_stmt_mark_bx, .-n51_stmt_mark_bx
                        .type            n52_statement_begin_bx, @function
n52_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_statement_begin_α:  mov              r11, 53;                             jmp   n53_var_α
n52_statement_begin_β:  mov              r11, 53;                             jmp   n56_stmt_mark_α
                        .size            n52_statement_begin_bx, .-n52_statement_begin_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              sub              rsp, 16
                        mov              r11, 54
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n54_assign_α
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_assign_bx, @function
n54_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_assign_α:           mov              r11, 55
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # to1.V
                        mov              qword ptr [r9 + 72], rdx;            jmp   n55_statement_end_α
                        .size            n54_assign_bx, .-n54_assign_bx
                        .type            n55_statement_end_bx, @function
n55_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_statement_end_α:    mov              r11, 56
                        add              rsp, 16;                             jmp   n56_stmt_mark_α
                        .size            n55_statement_end_bx, .-n55_statement_end_bx
                        .type            n56_stmt_mark_bx, @function
n56_stmt_mark_bx:
#=======================================================================================================================
# to1.succeed                             :(to2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n56_stmt_mark_α:        mov              r11, 57
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n136_statement_begin_α
                        .size            n56_stmt_mark_bx, .-n56_stmt_mark_bx
                        .type            n57_statement_begin_bx, @function
n57_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_statement_begin_α:  mov              r11, 58;                             jmp   n58_var_α
n57_statement_begin_β:  mov              r11, 58;                             jmp   n63_stmt_mark_α
                        .size            n57_statement_begin_bx, .-n57_statement_begin_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              sub              rsp, 16
                        mov              r11, 59
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n59_lit_integer_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_lit_integer_bx, @function
n59_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_integer_α:      sub              rsp, 16
                        mov              r11, 60
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_447_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n60_binop_α
n59_lit_integer_β:      mov              r11, 60
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n57_statement_begin_β
.Llit_integer_α_447_0:  .quad            1
                        .size            n59_lit_integer_bx, .-n59_lit_integer_bx
                        .type            n60_binop_bx, @function
n60_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_binop_α:            sub              rsp, 16
                        mov              r11, 61
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_448_2
                        add              rax, 1;                              jo    .Lbinop_α_448_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_448_7
.Lbinop_α_448_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_448_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_448_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_448_4
.Lbinop_α_448_3:        movq             xmm0, rsi
.Lbinop_α_448_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_448_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_448_7:                                                              jmp   n61_assign_α
.Lbinop_α_448_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_448_240
                        add              rsp, 16;                             jmp   n59_lit_integer_β
.Lbinop_α_448_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n61_assign_α
n60_binop_β:            mov              r11, 61
                        add              rsp, 16;                             jmp   n59_lit_integer_β
                        .size            n60_binop_bx, .-n60_binop_bx
                        .type            n61_assign_bx, @function
n61_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_assign_α:           mov              r11, 62
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n62_statement_end_α
                        .size            n61_assign_bx, .-n61_assign_bx
                        .type            n62_statement_end_bx, @function
n62_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:    mov              r11, 63
                        add              rsp, 48;                             jmp   n63_stmt_mark_α
                        .size            n62_statement_end_bx, .-n62_statement_end_bx
                        .type            n63_stmt_mark_bx, @function
n63_stmt_mark_bx:
#=======================================================================================================================
# to1.code        LE(to1.I, x2.V)         :F(x2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n63_stmt_mark_α:        mov              r11, 64
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 11
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n43_statement_begin_α
                        .size            n63_stmt_mark_bx, .-n63_stmt_mark_bx
                        .type            n64_statement_begin_bx, @function
n64_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_begin_α:  mov              r11, 65;                             jmp   n65_statement_end_α
n64_statement_begin_β:  mov              r11, 65;                             jmp   n66_stmt_mark_α
                        .size            n64_statement_begin_bx, .-n64_statement_begin_bx
                        .type            n65_statement_end_bx, @function
n65_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_statement_end_α:    mov              r11, 66;                             jmp   n66_stmt_mark_α
                        .size            n65_statement_end_bx, .-n65_statement_end_bx
                        .type            n66_stmt_mark_bx, @function
n66_stmt_mark_bx:
#=======================================================================================================================
# x2.start        x2.V = 2                :(x2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n66_stmt_mark_α:        mov              r11, 67
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 12
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n26_statement_begin_α
                        .size            n66_stmt_mark_bx, .-n66_stmt_mark_bx
                        .type            n67_statement_begin_bx, @function
n67_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_statement_begin_α:  mov              r11, 68;                             jmp   n68_var_α
n67_statement_begin_β:  mov              r11, 68;                             jmp   n63_stmt_mark_α
                        .size            n67_statement_begin_bx, .-n67_statement_begin_bx
                        .type            n68_var_bx, @function
n68_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_α:              sub              rsp, 16
                        mov              r11, 69
                        mov              rax, qword ptr [r9 + 16]             # x1.V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n69_assign_α
                        .size            n68_var_bx, .-n68_var_bx
                        .type            n69_assign_bx, @function
n69_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_assign_α:           mov              r11, 70
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n70_statement_end_α
                        .size            n69_assign_bx, .-n69_assign_bx
                        .type            n70_statement_end_bx, @function
n70_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_statement_end_α:    mov              r11, 71
                        add              rsp, 16;                             jmp   n63_stmt_mark_α
                        .size            n70_statement_end_bx, .-n70_statement_end_bx
                        .type            n71_statement_begin_bx, @function
n71_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_statement_begin_α:  mov              r11, 72;                             jmp   n72_lit_integer_α
n71_statement_begin_β:  mov              r11, 72;                             jmp   n75_stmt_mark_α
                        .size            n71_statement_begin_bx, .-n71_statement_begin_bx
                        .type            n72_lit_integer_bx, @function
n72_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_lit_integer_α:      sub              rsp, 16
                        mov              r11, 73
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_468_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_assign_α
.Llit_integer_α_468_0:  .quad            3
                        .size            n72_lit_integer_bx, .-n72_lit_integer_bx
                        .type            n73_assign_bx, @function
n73_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_assign_α:           mov              r11, 74
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # x3.V
                        mov              qword ptr [r9 + 88], rdx;            jmp   n74_statement_end_α
                        .size            n73_assign_bx, .-n73_assign_bx
                        .type            n74_statement_end_bx, @function
n74_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_statement_end_α:    mov              r11, 75
                        add              rsp, 16;                             jmp   n75_stmt_mark_α
                        .size            n74_statement_end_bx, .-n74_statement_end_bx
                        .type            n75_stmt_mark_bx, @function
n75_stmt_mark_bx:
#=======================================================================================================================
# x3.succeed                              :(x4.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n75_stmt_mark_α:        mov              r11, 76
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 26
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n117_statement_begin_α
                        .size            n75_stmt_mark_bx, .-n75_stmt_mark_bx
                        .type            n76_statement_begin_bx, @function
n76_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_statement_begin_α:  mov              r11, 77;                             jmp   n77_statement_end_α
n76_statement_begin_β:  mov              r11, 77;                             jmp   n78_stmt_mark_α
                        .size            n76_statement_begin_bx, .-n76_statement_begin_bx
                        .type            n77_statement_end_bx, @function
n77_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    mov              r11, 78;                             jmp   n78_stmt_mark_α
                        .size            n77_statement_end_bx, .-n77_statement_end_bx
                        .type            n78_stmt_mark_bx, @function
n78_stmt_mark_bx:
#=======================================================================================================================
# x3.fail                                 :(to2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n78_stmt_mark_α:        mov              r11, 79
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 21
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n90_statement_begin_α
                        .size            n78_stmt_mark_bx, .-n78_stmt_mark_bx
                        .type            n79_statement_begin_bx, @function
n79_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_begin_α:  mov              r11, 80;                             jmp   n80_lit_integer_α
n79_statement_begin_β:  mov              r11, 80;                             jmp   n83_stmt_mark_α
                        .size            n79_statement_begin_bx, .-n79_statement_begin_bx
                        .type            n80_lit_integer_bx, @function
n80_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_lit_integer_α:      sub              rsp, 16
                        mov              r11, 81
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_482_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n81_assign_α
.Llit_integer_α_482_0:  .quad            4
                        .size            n80_lit_integer_bx, .-n80_lit_integer_bx
                        .type            n81_assign_bx, @function
n81_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_assign_α:           mov              r11, 82
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # x4.V
                        mov              qword ptr [r9 + 104], rdx;           jmp   n82_statement_end_α
                        .size            n81_assign_bx, .-n81_assign_bx
                        .type            n82_statement_end_bx, @function
n82_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_statement_end_α:    mov              r11, 83
                        add              rsp, 16;                             jmp   n83_stmt_mark_α
                        .size            n82_statement_end_bx, .-n82_statement_end_bx
                        .type            n83_stmt_mark_bx, @function
n83_stmt_mark_bx:
#=======================================================================================================================
# x4.succeed      to2.I = x3.V            :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n83_stmt_mark_α:        mov              r11, 84
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n120_statement_begin_α
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
# x4.fail                                 :(x3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n86_stmt_mark_α:        mov              r11, 87
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 22
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 32
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n93_statement_begin_α
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
# x3.start        x3.V = 3                :(x3.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n89_stmt_mark_α:        mov              r11, 90
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 16
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n71_statement_begin_α
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
# to2.fail                                :(to1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n92_stmt_mark_α:        mov              r11, 93
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n130_statement_begin_α
                        .size            n92_stmt_mark_bx, .-n92_stmt_mark_bx
                        .type            n93_statement_begin_bx, @function
n93_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_begin_α:  mov              r11, 94;                             jmp   n94_statement_end_α
n93_statement_begin_β:  mov              r11, 94;                             jmp   n95_stmt_mark_α
                        .size            n93_statement_begin_bx, .-n93_statement_begin_bx
                        .type            n94_statement_end_bx, @function
n94_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_statement_end_α:    mov              r11, 95;                             jmp   n95_stmt_mark_α
                        .size            n94_statement_end_bx, .-n94_statement_end_bx
                        .type            n95_stmt_mark_bx, @function
n95_stmt_mark_bx:
#=======================================================================================================================
# x3.resume                               :(x3.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n95_stmt_mark_α:        mov              r11, 96
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 17
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n76_statement_begin_α
                        .size            n95_stmt_mark_bx, .-n95_stmt_mark_bx
                        .type            n96_statement_begin_bx, @function
n96_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_statement_begin_α:  mov              r11, 97;                             jmp   n97_var_α
n96_statement_begin_β:  mov              r11, 97;                             jmp   n104_stmt_mark_α
                        .size            n96_statement_begin_bx, .-n96_statement_begin_bx
                        .type            n97_var_bx, @function
n97_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_var_α:              sub              rsp, 16
                        mov              r11, 98
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n98_var_α
                        .size            n97_var_bx, .-n97_var_bx
                        .type            n98_var_bx, @function
n98_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_var_α:              sub              rsp, 16
                        mov              r11, 99
                        mov              rax, qword ptr [r9 + 96]             # x4.V
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n99_coerce_numeric_α
n98_var_β:              mov              r11, 99
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n96_statement_begin_β
                        .size            n98_var_bx, .-n98_var_bx
                        .type            n99_coerce_numeric_bx, @function
n99_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_coerce_numeric_α:   sub              rsp, 16
                        mov              r11, 100
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_517_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_517_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_517_0
.Lcoerce_numeric_α_517_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n100_coerce_numeric_α
.Lcoerce_numeric_α_517_0:
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
1:                                                                            jmp   n100_coerce_numeric_α
n99_coerce_numeric_β:   mov              r11, 100
                        add              rsp, 16;                             jmp   n98_var_β
                        .size            n99_coerce_numeric_bx, .-n99_coerce_numeric_bx
                        .type            n100_coerce_numeric_bx, @function
n100_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 101
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_519_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_519_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_519_0
.Lcoerce_numeric_α_519_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n101_cmp_test_α
.Lcoerce_numeric_α_519_0:
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
1:                                                                            jmp   n101_cmp_test_α
n100_coerce_numeric_β:  mov              r11, 101
                        add              rsp, 16;                             jmp   n99_coerce_numeric_β
                        .size            n100_coerce_numeric_bx, .-n100_coerce_numeric_bx
                        .type            n101_cmp_test_bx, @function
n101_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_cmp_test_α:        sub              rsp, 16
                        mov              r11, 102
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_521_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_521_239
                        add              rsp, 16;                             jmp   n100_coerce_numeric_β
.Lcmp_test_α_521_239:                                                         jmp   n102_statement_end_α
.Lcmp_test_α_521_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_521_240
                        add              rsp, 16;                             jmp   n100_coerce_numeric_β
.Lcmp_test_α_521_240:                                                         jmp   n102_statement_end_α
                        .size            n101_cmp_test_bx, .-n101_cmp_test_bx
                        .type            n102_statement_end_bx, @function
n102_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   mov              r11, 103
                        add              rsp, 80;                             jmp   n103_stmt_mark_α
                        .size            n102_statement_end_bx, .-n102_statement_end_bx
                        .type            n103_stmt_mark_bx, @function
n103_stmt_mark_bx:
#=======================================================================================================================
#                 to2.V = to2.I           :(to2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n103_stmt_mark_α:       mov              r11, 104
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 24
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n105_statement_begin_α
                        .size            n103_stmt_mark_bx, .-n103_stmt_mark_bx
                        .type            n104_stmt_mark_bx, @function
n104_stmt_mark_bx:
#=======================================================================================================================
# x4.resume                               :(x4.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n104_stmt_mark_α:       mov              r11, 105
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 19
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n84_statement_begin_α
                        .size            n104_stmt_mark_bx, .-n104_stmt_mark_bx
                        .type            n105_statement_begin_bx, @function
n105_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_statement_begin_α: mov              r11, 106;                            jmp   n106_var_α
n105_statement_begin_β: mov              r11, 106;                            jmp   n109_stmt_mark_α
                        .size            n105_statement_begin_bx, .-n105_statement_begin_bx
                        .type            n106_var_bx, @function
n106_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              r11, 107
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_assign_α
                        .size            n106_var_bx, .-n106_var_bx
                        .type            n107_assign_bx, @function
n107_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_assign_α:          mov              r11, 108
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # to2.V
                        mov              qword ptr [r9 + 136], rdx;           jmp   n108_statement_end_α
                        .size            n107_assign_bx, .-n107_assign_bx
                        .type            n108_statement_end_bx, @function
n108_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_statement_end_α:   mov              r11, 109
                        add              rsp, 16;                             jmp   n109_stmt_mark_α
                        .size            n108_statement_end_bx, .-n108_statement_end_bx
                        .type            n109_stmt_mark_bx, @function
n109_stmt_mark_bx:
#=======================================================================================================================
# to2.succeed     mult.V = to1.V * to2.V  :S(mult.succeed)F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n109_stmt_mark_α:       mov              r11, 110
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n139_statement_begin_α
                        .size            n109_stmt_mark_bx, .-n109_stmt_mark_bx
                        .type            n110_statement_begin_bx, @function
n110_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_statement_begin_α: mov              r11, 111;                            jmp   n111_var_α
n110_statement_begin_β: mov              r11, 111;                            jmp   n116_stmt_mark_α
                        .size            n110_statement_begin_bx, .-n110_statement_begin_bx
                        .type            n111_var_bx, @function
n111_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_var_α:             sub              rsp, 16
                        mov              r11, 112
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n112_lit_integer_α
                        .size            n111_var_bx, .-n111_var_bx
                        .type            n112_lit_integer_bx, @function
n112_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_lit_integer_α:     sub              rsp, 16
                        mov              r11, 113
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_539_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n113_binop_α
n112_lit_integer_β:     mov              r11, 113
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n110_statement_begin_β
.Llit_integer_α_539_0:  .quad            1
                        .size            n112_lit_integer_bx, .-n112_lit_integer_bx
                        .type            n113_binop_bx, @function
n113_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_binop_α:           sub              rsp, 16
                        mov              r11, 114
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_540_2
                        add              rax, 1;                              jo    .Lbinop_α_540_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_540_7
.Lbinop_α_540_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_540_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_540_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_540_4
.Lbinop_α_540_3:        movq             xmm0, rsi
.Lbinop_α_540_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_540_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_540_7:                                                              jmp   n114_assign_α
.Lbinop_α_540_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_540_240
                        add              rsp, 16;                             jmp   n112_lit_integer_β
.Lbinop_α_540_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n114_assign_α
n113_binop_β:           mov              r11, 114
                        add              rsp, 16;                             jmp   n112_lit_integer_β
                        .size            n113_binop_bx, .-n113_binop_bx
                        .type            n114_assign_bx, @function
n114_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_assign_α:          mov              r11, 115
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n115_statement_end_α
                        .size            n114_assign_bx, .-n114_assign_bx
                        .type            n115_statement_end_bx, @function
n115_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:   mov              r11, 116
                        add              rsp, 48;                             jmp   n116_stmt_mark_α
                        .size            n115_statement_end_bx, .-n115_statement_end_bx
                        .type            n116_stmt_mark_bx, @function
n116_stmt_mark_bx:
#=======================================================================================================================
# to2.code        LE(to2.I, x4.V)         :F(x4.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n116_stmt_mark_α:       mov              r11, 117
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 23
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 33
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n96_statement_begin_α
                        .size            n116_stmt_mark_bx, .-n116_stmt_mark_bx
                        .type            n117_statement_begin_bx, @function
n117_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_begin_α: mov              r11, 118;                            jmp   n118_statement_end_α
n117_statement_begin_β: mov              r11, 118;                            jmp   n119_stmt_mark_α
                        .size            n117_statement_begin_bx, .-n117_statement_begin_bx
                        .type            n118_statement_end_bx, @function
n118_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_statement_end_α:   mov              r11, 119;                            jmp   n119_stmt_mark_α
                        .size            n118_statement_end_bx, .-n118_statement_end_bx
                        .type            n119_stmt_mark_bx, @function
n119_stmt_mark_bx:
#=======================================================================================================================
# x4.start        x4.V = 4                :(x4.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n119_stmt_mark_α:       mov              r11, 120
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 18
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 27
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n79_statement_begin_α
                        .size            n119_stmt_mark_bx, .-n119_stmt_mark_bx
                        .type            n120_statement_begin_bx, @function
n120_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_begin_α: mov              r11, 121;                            jmp   n121_var_α
n120_statement_begin_β: mov              r11, 121;                            jmp   n116_stmt_mark_α
                        .size            n120_statement_begin_bx, .-n120_statement_begin_bx
                        .type            n121_var_bx, @function
n121_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_var_α:             sub              rsp, 16
                        mov              r11, 122
                        mov              rax, qword ptr [r9 + 80]             # x3.V
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n122_assign_α
                        .size            n121_var_bx, .-n121_var_bx
                        .type            n122_assign_bx, @function
n122_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_assign_α:          mov              r11, 123
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n123_statement_end_α
                        .size            n122_assign_bx, .-n122_assign_bx
                        .type            n123_statement_end_bx, @function
n123_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_end_α:   mov              r11, 124
                        add              rsp, 16;                             jmp   n116_stmt_mark_α
                        .size            n123_statement_end_bx, .-n123_statement_end_bx
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
# to1.start                               :(x1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n126_stmt_mark_α:       mov              r11, 127
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 8
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 15
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n34_statement_begin_α
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
# mult.fail                               :(x5.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n129_stmt_mark_α:       mov              r11, 130
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 36
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n153_statement_begin_α
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
# to1.resume      to1.I = to1.I + 1       :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n132_stmt_mark_α:       mov              r11, 133
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 13
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n57_statement_begin_α
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
# to2.resume      to2.I = to2.I + 1       :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n135_stmt_mark_α:       mov              r11, 136
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 25
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 35
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n110_statement_begin_α
                        .size            n135_stmt_mark_bx, .-n135_stmt_mark_bx
                        .type            n136_statement_begin_bx, @function
n136_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_statement_begin_α: mov              r11, 137;                            jmp   n137_statement_end_α
n136_statement_begin_β: mov              r11, 137;                            jmp   n138_stmt_mark_α
                        .size            n136_statement_begin_bx, .-n136_statement_begin_bx
                        .type            n137_statement_end_bx, @function
n137_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_statement_end_α:   mov              r11, 138;                            jmp   n138_stmt_mark_α
                        .size            n137_statement_end_bx, .-n137_statement_end_bx
                        .type            n138_stmt_mark_bx, @function
n138_stmt_mark_bx:
#=======================================================================================================================
# to2.start                               :(x3.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n138_stmt_mark_α:       mov              r11, 139
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 20
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 30
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n87_statement_begin_α
                        .size            n138_stmt_mark_bx, .-n138_stmt_mark_bx
                        .type            n139_statement_begin_bx, @function
n139_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_begin_α: mov              r11, 140;                            jmp   n140_var_α
n139_statement_begin_β: mov              r11, 140;                            jmp   n146_stmt_mark_α
                        .size            n139_statement_begin_bx, .-n139_statement_begin_bx
                        .type            n140_var_bx, @function
n140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              r11, 141
                        mov              rax, qword ptr [r9 + 64]             # to1.V
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_var_α
                        .size            n140_var_bx, .-n140_var_bx
                        .type            n141_var_bx, @function
n141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              r11, 142
                        mov              rax, qword ptr [r9 + 128]            # to2.V
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_binop_α
n141_var_β:             mov              r11, 142
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n139_statement_begin_β
                        .size            n141_var_bx, .-n141_var_bx
                        .type            n142_binop_bx, @function
n142_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_binop_α:           sub              rsp, 16
                        mov              r11, 143
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_592_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_592_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_592_7
.Lbinop_α_592_2:        and              edx, 1;                              jz    .Lbinop_α_592_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_592_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_592_4
.Lbinop_α_592_3:        movq             xmm0, rsi
.Lbinop_α_592_4:        cmp              cl, 5;                               je    .Lbinop_α_592_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_592_6
.Lbinop_α_592_5:        movq             xmm1, rdi
.Lbinop_α_592_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_592_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_592_7:                                                              jmp   n143_assign_α
.Lbinop_α_592_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_592_240
                        add              rsp, 16;                             jmp   n141_var_β
.Lbinop_α_592_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n143_assign_α
n142_binop_β:           mov              r11, 143
                        add              rsp, 16;                             jmp   n141_var_β
                        .size            n142_binop_bx, .-n142_binop_bx
                        .type            n143_assign_bx, @function
n143_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_assign_α:          mov              r11, 144
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n144_statement_end_α
                        .size            n143_assign_bx, .-n143_assign_bx
                        .type            n144_statement_end_bx, @function
n144_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_statement_end_α:   mov              r11, 145
                        add              rsp, 48;                             jmp   n145_stmt_mark_α
                        .size            n144_statement_end_bx, .-n144_statement_end_bx
                        .type            n145_stmt_mark_bx, @function
n145_stmt_mark_bx:
#=======================================================================================================================
# mult.succeed    GT(x5.V, mult.V)        :F(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n145_stmt_mark_α:       mov              r11, 146
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n162_statement_begin_α
                        .size            n145_stmt_mark_bx, .-n145_stmt_mark_bx
                        .type            n146_stmt_mark_bx, @function
n146_stmt_mark_bx:
#=======================================================================================================================
# exception       TERMINAL = "Exception!" :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n146_stmt_mark_α:       mov              r11, 147
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 62
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 81
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n288_statement_begin_α
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
# x5.start        x5.V = 5                :(x5.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n149_stmt_mark_α:       mov              r11, 150
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 2
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 6
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n10_statement_begin_α
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
# greater.fail                            :(write1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
n152_stmt_mark_α:       mov              r11, 153
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 43
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 56
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n181_statement_begin_α
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
# x5.resume                               :(x5.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n155_stmt_mark_α:       mov              r11, 156
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 3
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 7
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n15_statement_begin_α
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
# mult.resume                             :(to2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n158_stmt_mark_α:       mov              r11, 159
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 31
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n133_statement_begin_α
                        .size            n158_stmt_mark_bx, .-n158_stmt_mark_bx
                        .type            n159_statement_begin_bx, @function
n159_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_begin_α: mov              r11, 160;                            jmp   n160_statement_end_α
n159_statement_begin_β: mov              r11, 160;                            jmp   n161_stmt_mark_α
                        .size            n159_statement_begin_bx, .-n159_statement_begin_bx
                        .type            n160_statement_end_bx, @function
n160_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_statement_end_α:   mov              r11, 161;                            jmp   n161_stmt_mark_α
                        .size            n160_statement_end_bx, .-n160_statement_end_bx
                        .type            n161_stmt_mark_bx, @function
n161_stmt_mark_bx:
#=======================================================================================================================
# mult.start                              :(to1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n161_stmt_mark_α:       mov              r11, 162
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 28
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 39
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n124_statement_begin_α
                        .size            n161_stmt_mark_bx, .-n161_stmt_mark_bx
                        .type            n162_statement_begin_bx, @function
n162_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_begin_α: mov              r11, 163;                            jmp   n163_var_α
n162_statement_begin_β: mov              r11, 163;                            jmp   n158_stmt_mark_α
                        .size            n162_statement_begin_bx, .-n162_statement_begin_bx
                        .type            n163_var_bx, @function
n163_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_α:             sub              rsp, 16
                        mov              r11, 164
                        mov              rax, qword ptr [r9 + 0]              # x5.V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n164_var_α
                        .size            n163_var_bx, .-n163_var_bx
                        .type            n164_var_bx, @function
n164_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_α:             sub              rsp, 16
                        mov              r11, 165
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n165_coerce_numeric_α
n164_var_β:             mov              r11, 165
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n162_statement_begin_β
                        .size            n164_var_bx, .-n164_var_bx
                        .type            n165_coerce_numeric_bx, @function
n165_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 166
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_635_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_635_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_635_0
.Lcoerce_numeric_α_635_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_coerce_numeric_α
.Lcoerce_numeric_α_635_0:
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
1:                                                                            jmp   n166_coerce_numeric_α
n165_coerce_numeric_β:  mov              r11, 166
                        add              rsp, 16;                             jmp   n164_var_β
                        .size            n165_coerce_numeric_bx, .-n165_coerce_numeric_bx
                        .type            n166_coerce_numeric_bx, @function
n166_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 167
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_637_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_637_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_637_0
.Lcoerce_numeric_α_637_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_cmp_test_α
.Lcoerce_numeric_α_637_0:
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
1:                                                                            jmp   n167_cmp_test_α
n166_coerce_numeric_β:  mov              r11, 167
                        add              rsp, 16;                             jmp   n165_coerce_numeric_β
                        .size            n166_coerce_numeric_bx, .-n166_coerce_numeric_bx
                        .type            n167_cmp_test_bx, @function
n167_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_cmp_test_α:        sub              rsp, 16
                        mov              r11, 168
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_639_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_639_239
                        add              rsp, 16;                             jmp   n166_coerce_numeric_β
.Lcmp_test_α_639_239:                                                         jmp   n168_statement_end_α
.Lcmp_test_α_639_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jg    .Lcmp_test_α_639_240
                        add              rsp, 16;                             jmp   n166_coerce_numeric_β
.Lcmp_test_α_639_240:                                                         jmp   n168_statement_end_α
                        .size            n167_cmp_test_bx, .-n167_cmp_test_bx
                        .type            n168_statement_end_bx, @function
n168_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_statement_end_α:   mov              r11, 169
                        add              rsp, 80;                             jmp   n169_stmt_mark_α
                        .size            n168_statement_end_bx, .-n168_statement_end_bx
                        .type            n169_stmt_mark_bx, @function
n169_stmt_mark_bx:
#=======================================================================================================================
#                 greater.V = mult.V      :(greater.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n169_stmt_mark_α:       mov              r11, 170
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 40
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n170_statement_begin_α
                        .size            n169_stmt_mark_bx, .-n169_stmt_mark_bx
                        .type            n170_statement_begin_bx, @function
n170_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_begin_α: mov              r11, 171;                            jmp   n171_var_α
n170_statement_begin_β: mov              r11, 171;                            jmp   n174_stmt_mark_α
                        .size            n170_statement_begin_bx, .-n170_statement_begin_bx
                        .type            n171_var_bx, @function
n171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              r11, 172
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_assign_α
                        .size            n171_var_bx, .-n171_var_bx
                        .type            n172_assign_bx, @function
n172_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_assign_α:          mov              r11, 173
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n173_statement_end_α
                        .size            n172_assign_bx, .-n172_assign_bx
                        .type            n173_statement_end_bx, @function
n173_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:   mov              r11, 174
                        add              rsp, 16;                             jmp   n174_stmt_mark_α
                        .size            n173_statement_end_bx, .-n173_statement_end_bx
                        .type            n174_stmt_mark_bx, @function
n174_stmt_mark_bx:
#=======================================================================================================================
# greater.succeed write.V = greater.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n174_stmt_mark_α:       mov              r11, 175
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 44
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n184_statement_begin_α
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
# greater.start                           :(x5.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n177_stmt_mark_α:       mov              r11, 178
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 34
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n147_statement_begin_α
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
# greater.resume                          :(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n180_stmt_mark_α:       mov              r11, 181
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 37
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n156_statement_begin_α
                        .size            n180_stmt_mark_bx, .-n180_stmt_mark_bx
                        .type            n181_statement_begin_bx, @function
n181_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_begin_α: mov              r11, 182;                            jmp   n182_statement_end_α
n181_statement_begin_β: mov              r11, 182;                            jmp   n183_stmt_mark_α
                        .size            n181_statement_begin_bx, .-n181_statement_begin_bx
                        .type            n182_statement_end_bx, @function
n182_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   mov              r11, 183;                            jmp   n183_stmt_mark_α
                        .size            n182_statement_end_bx, .-n182_statement_end_bx
                        .type            n183_stmt_mark_bx, @function
n183_stmt_mark_bx:
#=======================================================================================================================
# write1.fail     OUTPUT = "Failure."     :(main2)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n183_stmt_mark_α:       mov              r11, 184
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 57
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 75
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n265_statement_begin_α
                        .size            n183_stmt_mark_bx, .-n183_stmt_mark_bx
                        .type            n184_statement_begin_bx, @function
n184_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_statement_begin_α: mov              r11, 185;                            jmp   n185_var_α
n184_statement_begin_β: mov              r11, 185;                            jmp   n188_stmt_mark_α
                        .size            n184_statement_begin_bx, .-n184_statement_begin_bx
                        .type            n185_var_bx, @function
n185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              r11, 186
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_assign_α
                        .size            n185_var_bx, .-n185_var_bx
                        .type            n186_assign_bx, @function
n186_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_assign_α:          mov              r11, 187
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # write.V
                        mov              qword ptr [r9 + 184], rdx;           jmp   n187_statement_end_α
                        .size            n186_assign_bx, .-n186_assign_bx
                        .type            n187_statement_end_bx, @function
n187_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_statement_end_α:   mov              r11, 188
                        add              rsp, 16;                             jmp   n188_stmt_mark_α
                        .size            n187_statement_end_bx, .-n187_statement_end_bx
                        .type            n188_stmt_mark_bx, @function
n188_stmt_mark_bx:
#=======================================================================================================================
#                 OUTPUT = write.V        :(write1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n188_stmt_mark_α:       mov              r11, 189
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 45
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n189_statement_begin_α
                        .size            n188_stmt_mark_bx, .-n188_stmt_mark_bx
                        .type            n189_statement_begin_bx, @function
n189_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_begin_α: mov              r11, 190;                            jmp   n190_var_α
n189_statement_begin_β: mov              r11, 190;                            jmp   n193_stmt_mark_α
                        .size            n189_statement_begin_bx, .-n189_statement_begin_bx
                        .type            n190_var_bx, @function
n190_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:             sub              rsp, 16
                        mov              r11, 191
                        mov              rax, qword ptr [r9 + 176]            # write.V
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n191_assign_α
                        .size            n190_var_bx, .-n190_var_bx
                        .type            n191_assign_bx, @function
n191_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_assign_α:          mov              r11, 192
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_681_0]
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
1:                                                                            jmp   n192_statement_end_α
.Lassign_α_681_0:       .quad            .Lassign_α_681_0_s
.Lassign_α_681_0_s:     .string          "OUTPUT"
                        .size            n191_assign_bx, .-n191_assign_bx
                        .type            n192_statement_end_bx, @function
n192_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_statement_end_α:   mov              r11, 193
                        add              rsp, 16;                             jmp   n193_stmt_mark_α
                        .size            n192_statement_end_bx, .-n192_statement_end_bx
                        .type            n193_stmt_mark_bx, @function
n193_stmt_mark_bx:
#=======================================================================================================================
# write1.succeed  OUTPUT = "Success!"     :(write1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n193_stmt_mark_α:       mov              r11, 194
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 58
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 76
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n270_statement_begin_α
                        .size            n193_stmt_mark_bx, .-n193_stmt_mark_bx
                        .type            n194_statement_begin_bx, @function
n194_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_statement_begin_α: mov              r11, 195;                            jmp   n195_lit_integer_α
n194_statement_begin_β: mov              r11, 195;                            jmp   n198_stmt_mark_α
                        .size            n194_statement_begin_bx, .-n194_statement_begin_bx
                        .type            n195_lit_integer_bx, @function
n195_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     sub              rsp, 16
                        mov              r11, 196
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_688_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_assign_α
.Llit_integer_α_688_0:  .quad            1
                        .size            n195_lit_integer_bx, .-n195_lit_integer_bx
                        .type            n196_assign_bx, @function
n196_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:          mov              r11, 197
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n197_statement_end_α
                        .size            n196_assign_bx, .-n196_assign_bx
                        .type            n197_statement_end_bx, @function
n197_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:   mov              r11, 198
                        add              rsp, 16;                             jmp   n198_stmt_mark_α
                        .size            n197_statement_end_bx, .-n197_statement_end_bx
                        .type            n198_stmt_mark_bx, @function
n198_stmt_mark_bx:
#=======================================================================================================================
# to3.code        LE(to3.I, 2)            :F(write2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n198_stmt_mark_α:       mov              r11, 199
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 48
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 65
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n205_statement_begin_α
                        .size            n198_stmt_mark_bx, .-n198_stmt_mark_bx
                        .type            n199_statement_begin_bx, @function
n199_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_statement_begin_α: mov              r11, 200;                            jmp   n200_var_α
n199_statement_begin_β: mov              r11, 200;                            jmp   n198_stmt_mark_α
                        .size            n199_statement_begin_bx, .-n199_statement_begin_bx
                        .type            n200_var_bx, @function
n200_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_α:             sub              rsp, 16
                        mov              r11, 201
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n201_lit_integer_α
                        .size            n200_var_bx, .-n200_var_bx
                        .type            n201_lit_integer_bx, @function
n201_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     sub              rsp, 16
                        mov              r11, 202
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_697_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n202_binop_α
n201_lit_integer_β:     mov              r11, 202
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n199_statement_begin_β
.Llit_integer_α_697_0:  .quad            1
                        .size            n201_lit_integer_bx, .-n201_lit_integer_bx
                        .type            n202_binop_bx, @function
n202_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_binop_α:           sub              rsp, 16
                        mov              r11, 203
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_698_2
                        add              rax, 1;                              jo    .Lbinop_α_698_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_698_7
.Lbinop_α_698_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_698_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_698_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_698_4
.Lbinop_α_698_3:        movq             xmm0, rsi
.Lbinop_α_698_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_698_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_698_7:                                                              jmp   n203_assign_α
.Lbinop_α_698_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_698_240
                        add              rsp, 16;                             jmp   n201_lit_integer_β
.Lbinop_α_698_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n203_assign_α
n202_binop_β:           mov              r11, 203
                        add              rsp, 16;                             jmp   n201_lit_integer_β
                        .size            n202_binop_bx, .-n202_binop_bx
                        .type            n203_assign_bx, @function
n203_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_assign_α:          mov              r11, 204
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n204_statement_end_α
                        .size            n203_assign_bx, .-n203_assign_bx
                        .type            n204_statement_end_bx, @function
n204_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_statement_end_α:   mov              r11, 205
                        add              rsp, 48;                             jmp   n198_stmt_mark_α
                        .size            n204_statement_end_bx, .-n204_statement_end_bx
                        .type            n205_statement_begin_bx, @function
n205_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_begin_α: mov              r11, 206;                            jmp   n206_var_α
n205_statement_begin_β: mov              r11, 206;                            jmp   n213_stmt_mark_α
                        .size            n205_statement_begin_bx, .-n205_statement_begin_bx
                        .type            n206_var_bx, @function
n206_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             sub              rsp, 16
                        mov              r11, 207
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n207_lit_integer_α
                        .size            n206_var_bx, .-n206_var_bx
                        .type            n207_lit_integer_bx, @function
n207_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_integer_α:     sub              rsp, 16
                        mov              r11, 208
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_705_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_coerce_numeric_α
n207_lit_integer_β:     mov              r11, 208
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n205_statement_begin_β
.Llit_integer_α_705_0:  .quad            2
                        .size            n207_lit_integer_bx, .-n207_lit_integer_bx
                        .type            n208_coerce_numeric_bx, @function
n208_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 209
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_707_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_707_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_707_0
.Lcoerce_numeric_α_707_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n209_coerce_numeric_α
.Lcoerce_numeric_α_707_0:
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
1:                                                                            jmp   n209_coerce_numeric_α
n208_coerce_numeric_β:  mov              r11, 209
                        add              rsp, 16;                             jmp   n207_lit_integer_β
                        .size            n208_coerce_numeric_bx, .-n208_coerce_numeric_bx
                        .type            n209_coerce_numeric_bx, @function
n209_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 210
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_709_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_709_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_709_0
.Lcoerce_numeric_α_709_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_cmp_test_α
.Lcoerce_numeric_α_709_0:
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
1:                                                                            jmp   n210_cmp_test_α
n209_coerce_numeric_β:  mov              r11, 210
                        add              rsp, 16;                             jmp   n208_coerce_numeric_β
                        .size            n209_coerce_numeric_bx, .-n209_coerce_numeric_bx
                        .type            n210_cmp_test_bx, @function
n210_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_cmp_test_α:        sub              rsp, 16
                        mov              r11, 211
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_711_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_711_239
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
.Lcmp_test_α_711_239:                                                         jmp   n211_statement_end_α
.Lcmp_test_α_711_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_711_240
                        add              rsp, 16;                             jmp   n209_coerce_numeric_β
.Lcmp_test_α_711_240:                                                         jmp   n211_statement_end_α
                        .size            n210_cmp_test_bx, .-n210_cmp_test_bx
                        .type            n211_statement_end_bx, @function
n211_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   mov              r11, 212
                        add              rsp, 80;                             jmp   n212_stmt_mark_α
                        .size            n211_statement_end_bx, .-n211_statement_end_bx
                        .type            n212_stmt_mark_bx, @function
n212_stmt_mark_bx:
#=======================================================================================================================
#                 to4.I = 3               :(to4.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n212_stmt_mark_α:       mov              r11, 213
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 49
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 66
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n214_statement_begin_α
                        .size            n212_stmt_mark_bx, .-n212_stmt_mark_bx
                        .type            n213_stmt_mark_bx, @function
n213_stmt_mark_bx:
#=======================================================================================================================
# write2.fail     OUTPUT = "Failure."     :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 78 0
n213_stmt_mark_α:       mov              r11, 214
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 60
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 78
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n280_statement_begin_α
                        .size            n213_stmt_mark_bx, .-n213_stmt_mark_bx
                        .type            n214_statement_begin_bx, @function
n214_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_statement_begin_α: mov              r11, 215;                            jmp   n215_lit_integer_α
n214_statement_begin_β: mov              r11, 215;                            jmp   n218_stmt_mark_α
                        .size            n214_statement_begin_bx, .-n214_statement_begin_bx
                        .type            n215_lit_integer_bx, @function
n215_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_integer_α:     sub              rsp, 16
                        mov              r11, 216
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_720_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_assign_α
.Llit_integer_α_720_0:  .quad            3
                        .size            n215_lit_integer_bx, .-n215_lit_integer_bx
                        .type            n216_assign_bx, @function
n216_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              r11, 217
                        mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n217_statement_end_α
                        .size            n216_assign_bx, .-n216_assign_bx
                        .type            n217_statement_end_bx, @function
n217_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   mov              r11, 218
                        add              rsp, 16;                             jmp   n218_stmt_mark_α
                        .size            n217_statement_end_bx, .-n217_statement_end_bx
                        .type            n218_stmt_mark_bx, @function
n218_stmt_mark_bx:
#=======================================================================================================================
# to4.code        LE(to4.I, 4)            :F(to3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 68 0
n218_stmt_mark_α:       mov              r11, 219
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 51
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 68
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n225_statement_begin_α
                        .size            n218_stmt_mark_bx, .-n218_stmt_mark_bx
                        .type            n219_statement_begin_bx, @function
n219_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_statement_begin_α: mov              r11, 220;                            jmp   n220_var_α
n219_statement_begin_β: mov              r11, 220;                            jmp   n218_stmt_mark_α
                        .size            n219_statement_begin_bx, .-n219_statement_begin_bx
                        .type            n220_var_bx, @function
n220_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              r11, 221
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_lit_integer_α
                        .size            n220_var_bx, .-n220_var_bx
                        .type            n221_lit_integer_bx, @function
n221_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_integer_α:     sub              rsp, 16
                        mov              r11, 222
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_729_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n222_binop_α
n221_lit_integer_β:     mov              r11, 222
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n219_statement_begin_β
.Llit_integer_α_729_0:  .quad            1
                        .size            n221_lit_integer_bx, .-n221_lit_integer_bx
                        .type            n222_binop_bx, @function
n222_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_binop_α:           sub              rsp, 16
                        mov              r11, 223
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_730_2
                        add              rax, 1;                              jo    .Lbinop_α_730_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_730_7
.Lbinop_α_730_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_730_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_730_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_730_4
.Lbinop_α_730_3:        movq             xmm0, rsi
.Lbinop_α_730_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_730_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_730_7:                                                              jmp   n223_assign_α
.Lbinop_α_730_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_730_240
                        add              rsp, 16;                             jmp   n221_lit_integer_β
.Lbinop_α_730_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n223_assign_α
n222_binop_β:           mov              r11, 223
                        add              rsp, 16;                             jmp   n221_lit_integer_β
                        .size            n222_binop_bx, .-n222_binop_bx
                        .type            n223_assign_bx, @function
n223_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_assign_α:          mov              r11, 224
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n224_statement_end_α
                        .size            n223_assign_bx, .-n223_assign_bx
                        .type            n224_statement_end_bx, @function
n224_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_statement_end_α:   mov              r11, 225
                        add              rsp, 48;                             jmp   n218_stmt_mark_α
                        .size            n224_statement_end_bx, .-n224_statement_end_bx
                        .type            n225_statement_begin_bx, @function
n225_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_begin_α: mov              r11, 226;                            jmp   n226_var_α
n225_statement_begin_β: mov              r11, 226;                            jmp   n233_stmt_mark_α
                        .size            n225_statement_begin_bx, .-n225_statement_begin_bx
                        .type            n226_var_bx, @function
n226_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             sub              rsp, 16
                        mov              r11, 227
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n227_lit_integer_α
                        .size            n226_var_bx, .-n226_var_bx
                        .type            n227_lit_integer_bx, @function
n227_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_integer_α:     sub              rsp, 16
                        mov              r11, 228
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_737_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n228_coerce_numeric_α
n227_lit_integer_β:     mov              r11, 228
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n225_statement_begin_β
.Llit_integer_α_737_0:  .quad            4
                        .size            n227_lit_integer_bx, .-n227_lit_integer_bx
                        .type            n228_coerce_numeric_bx, @function
n228_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 229
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_739_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_739_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_739_0
.Lcoerce_numeric_α_739_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n229_coerce_numeric_α
.Lcoerce_numeric_α_739_0:
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
1:                                                                            jmp   n229_coerce_numeric_α
n228_coerce_numeric_β:  mov              r11, 229
                        add              rsp, 16;                             jmp   n227_lit_integer_β
                        .size            n228_coerce_numeric_bx, .-n228_coerce_numeric_bx
                        .type            n229_coerce_numeric_bx, @function
n229_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 230
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_741_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_741_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_741_0
.Lcoerce_numeric_α_741_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n230_cmp_test_α
.Lcoerce_numeric_α_741_0:
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
1:                                                                            jmp   n230_cmp_test_α
n229_coerce_numeric_β:  mov              r11, 230
                        add              rsp, 16;                             jmp   n228_coerce_numeric_β
                        .size            n229_coerce_numeric_bx, .-n229_coerce_numeric_bx
                        .type            n230_cmp_test_bx, @function
n230_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_cmp_test_α:        sub              rsp, 16
                        mov              r11, 231
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_743_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_743_239
                        add              rsp, 16;                             jmp   n229_coerce_numeric_β
.Lcmp_test_α_743_239:                                                         jmp   n231_statement_end_α
.Lcmp_test_α_743_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_743_240
                        add              rsp, 16;                             jmp   n229_coerce_numeric_β
.Lcmp_test_α_743_240:                                                         jmp   n231_statement_end_α
                        .size            n230_cmp_test_bx, .-n230_cmp_test_bx
                        .type            n231_statement_end_bx, @function
n231_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_statement_end_α:   mov              r11, 232
                        add              rsp, 80;                             jmp   n232_stmt_mark_α
                        .size            n231_statement_end_bx, .-n231_statement_end_bx
                        .type            n232_stmt_mark_bx, @function
n232_stmt_mark_bx:
#=======================================================================================================================
#                 mult.V = to3.I * to4.I  :F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n232_stmt_mark_α:       mov              r11, 233
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 52
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 69
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n234_statement_begin_α
                        .size            n232_stmt_mark_bx, .-n232_stmt_mark_bx
                        .type            n233_stmt_mark_bx, @function
n233_stmt_mark_bx:
#=======================================================================================================================
# to3.resume      to3.I = to3.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n233_stmt_mark_α:       mov              r11, 234
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 47
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 64
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n199_statement_begin_α
                        .size            n233_stmt_mark_bx, .-n233_stmt_mark_bx
                        .type            n234_statement_begin_bx, @function
n234_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_statement_begin_α: mov              r11, 235;                            jmp   n235_var_α
n234_statement_begin_β: mov              r11, 235;                            jmp   n146_stmt_mark_α
                        .size            n234_statement_begin_bx, .-n234_statement_begin_bx
                        .type            n235_var_bx, @function
n235_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             sub              rsp, 16
                        mov              r11, 236
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n236_var_α
                        .size            n235_var_bx, .-n235_var_bx
                        .type            n236_var_bx, @function
n236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             sub              rsp, 16
                        mov              r11, 237
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n237_binop_α
n236_var_β:             mov              r11, 237
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n234_statement_begin_β
                        .size            n236_var_bx, .-n236_var_bx
                        .type            n237_binop_bx, @function
n237_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_binop_α:           sub              rsp, 16
                        mov              r11, 238
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_754_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_754_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_754_7
.Lbinop_α_754_2:        and              edx, 1;                              jz    .Lbinop_α_754_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_754_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_754_4
.Lbinop_α_754_3:        movq             xmm0, rsi
.Lbinop_α_754_4:        cmp              cl, 5;                               je    .Lbinop_α_754_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_754_6
.Lbinop_α_754_5:        movq             xmm1, rdi
.Lbinop_α_754_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_754_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_754_7:                                                              jmp   n238_assign_α
.Lbinop_α_754_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_754_240
                        add              rsp, 16;                             jmp   n236_var_β
.Lbinop_α_754_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n238_assign_α
n237_binop_β:           mov              r11, 238
                        add              rsp, 16;                             jmp   n236_var_β
                        .size            n237_binop_bx, .-n237_binop_bx
                        .type            n238_assign_bx, @function
n238_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_assign_α:          mov              r11, 239
                        mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n239_statement_end_α
                        .size            n238_assign_bx, .-n238_assign_bx
                        .type            n239_statement_end_bx, @function
n239_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_statement_end_α:   mov              r11, 240
                        add              rsp, 48;                             jmp   n240_stmt_mark_α
                        .size            n239_statement_end_bx, .-n239_statement_end_bx
                        .type            n240_stmt_mark_bx, @function
n240_stmt_mark_bx:
#=======================================================================================================================
#                 GT(5, mult.V)           :F(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n240_stmt_mark_α:       mov              r11, 241
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 53
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 70
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n241_statement_begin_α
                        .size            n240_stmt_mark_bx, .-n240_stmt_mark_bx
                        .type            n241_statement_begin_bx, @function
n241_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_begin_α: mov              r11, 242;                            jmp   n242_lit_integer_α
n241_statement_begin_β: mov              r11, 242;                            jmp   n249_stmt_mark_α
                        .size            n241_statement_begin_bx, .-n241_statement_begin_bx
                        .type            n242_lit_integer_bx, @function
n242_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:     sub              rsp, 16
                        mov              r11, 243
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_762_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n243_var_α
.Llit_integer_α_762_0:  .quad            5
                        .size            n242_lit_integer_bx, .-n242_lit_integer_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             sub              rsp, 16
                        mov              r11, 244
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n244_coerce_numeric_α
n243_var_β:             mov              r11, 244
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n241_statement_begin_β
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_coerce_numeric_bx, @function
n244_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 245
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_765_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_765_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_765_0
.Lcoerce_numeric_α_765_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n245_coerce_numeric_α
.Lcoerce_numeric_α_765_0:
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
1:                                                                            jmp   n245_coerce_numeric_α
n244_coerce_numeric_β:  mov              r11, 245
                        add              rsp, 16;                             jmp   n243_var_β
                        .size            n244_coerce_numeric_bx, .-n244_coerce_numeric_bx
                        .type            n245_coerce_numeric_bx, @function
n245_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_coerce_numeric_α:  sub              rsp, 16
                        mov              r11, 246
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_767_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_767_0
                        mov              eax, dword ptr [rsp + 48]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_767_0
.Lcoerce_numeric_α_767_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n246_cmp_test_α
.Lcoerce_numeric_α_767_0:
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
1:                                                                            jmp   n246_cmp_test_α
n245_coerce_numeric_β:  mov              r11, 246
                        add              rsp, 16;                             jmp   n244_coerce_numeric_β
                        .size            n245_coerce_numeric_bx, .-n245_coerce_numeric_bx
                        .type            n246_cmp_test_bx, @function
n246_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_cmp_test_α:        sub              rsp, 16
                        mov              r11, 247
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_769_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_769_239
                        add              rsp, 16;                             jmp   n245_coerce_numeric_β
.Lcmp_test_α_769_239:                                                         jmp   n247_statement_end_α
.Lcmp_test_α_769_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jg    .Lcmp_test_α_769_240
                        add              rsp, 16;                             jmp   n245_coerce_numeric_β
.Lcmp_test_α_769_240:                                                         jmp   n247_statement_end_α
                        .size            n246_cmp_test_bx, .-n246_cmp_test_bx
                        .type            n247_statement_end_bx, @function
n247_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_statement_end_α:   mov              r11, 248
                        add              rsp, 80;                             jmp   n248_stmt_mark_α
                        .size            n247_statement_end_bx, .-n247_statement_end_bx
                        .type            n248_stmt_mark_bx, @function
n248_stmt_mark_bx:
#=======================================================================================================================
#                 greater.V = mult.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n248_stmt_mark_α:       mov              r11, 249
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 71
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n250_statement_begin_α
                        .size            n248_stmt_mark_bx, .-n248_stmt_mark_bx
                        .type            n249_stmt_mark_bx, @function
n249_stmt_mark_bx:
#=======================================================================================================================
# write2.resume   to4.I = to4.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n249_stmt_mark_α:       mov              r11, 250
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 50
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 67
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n219_statement_begin_α
                        .size            n249_stmt_mark_bx, .-n249_stmt_mark_bx
                        .type            n250_statement_begin_bx, @function
n250_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_statement_begin_α: mov              r11, 251;                            jmp   n251_var_α
n250_statement_begin_β: mov              r11, 251;                            jmp   n254_stmt_mark_α
                        .size            n250_statement_begin_bx, .-n250_statement_begin_bx
                        .type            n251_var_bx, @function
n251_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_α:             sub              rsp, 16
                        mov              r11, 252
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n252_assign_α
                        .size            n251_var_bx, .-n251_var_bx
                        .type            n252_assign_bx, @function
n252_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:          mov              r11, 253
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n253_statement_end_α
                        .size            n252_assign_bx, .-n252_assign_bx
                        .type            n253_statement_end_bx, @function
n253_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_end_α:   mov              r11, 254
                        add              rsp, 16;                             jmp   n254_stmt_mark_α
                        .size            n253_statement_end_bx, .-n253_statement_end_bx
                        .type            n254_stmt_mark_bx, @function
n254_stmt_mark_bx:
#=======================================================================================================================
#                 OUTPUT = greater.V      :(write2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n254_stmt_mark_α:       mov              r11, 255
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 72
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n255_statement_begin_α
                        .size            n254_stmt_mark_bx, .-n254_stmt_mark_bx
                        .type            n255_statement_begin_bx, @function
n255_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_statement_begin_α: mov              r11, 256;                            jmp   n256_var_α
n255_statement_begin_β: mov              r11, 256;                            jmp   n259_stmt_mark_α
                        .size            n255_statement_begin_bx, .-n255_statement_begin_bx
                        .type            n256_var_bx, @function
n256_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              r11, 257
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_assign_α
                        .size            n256_var_bx, .-n256_var_bx
                        .type            n257_assign_bx, @function
n257_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_assign_α:          mov              r11, 258
                        mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_787_0]
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
1:                                                                            jmp   n258_statement_end_α
.Lassign_α_787_0:       .quad            .Lassign_α_787_0_s
.Lassign_α_787_0_s:     .string          "OUTPUT"
                        .size            n257_assign_bx, .-n257_assign_bx
                        .type            n258_statement_end_bx, @function
n258_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_statement_end_α:   mov              r11, 259
                        add              rsp, 16;                             jmp   n259_stmt_mark_α
                        .size            n258_statement_end_bx, .-n258_statement_end_bx
                        .type            n259_stmt_mark_bx, @function
n259_stmt_mark_bx:
#=======================================================================================================================
# write2.succeed  OUTPUT = "Success!"     :(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n259_stmt_mark_α:       mov              r11, 260
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 61
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 79
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n284_statement_begin_α
                        .size            n259_stmt_mark_bx, .-n259_stmt_mark_bx
                        .type            n260_statement_begin_bx, @function
n260_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_statement_begin_α: mov              r11, 261;                            jmp   n261_lit_string_α
n260_statement_begin_β: mov              r11, 261;                            jmp   n264_stmt_mark_α
                        .size            n260_statement_begin_bx, .-n260_statement_begin_bx
                        .type            n261_lit_string_bx, @function
n261_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      sub              rsp, 16
                        mov              r11, 262
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_794_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n262_assign_α
.Llit_string_α_794_0:   .quad            .Llit_string_α_794_0_s
.Llit_string_α_794_0_s: .string          ""
                        .size            n261_lit_string_bx, .-n261_lit_string_bx
                        .type            n262_assign_bx, @function
n262_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_assign_α:          mov              r11, 263
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_795_0]
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
1:                                                                            jmp   n263_statement_end_α
.Lassign_α_795_0:       .quad            .Lassign_α_795_0_s
.Lassign_α_795_0_s:     .string          "OUTPUT"
                        .size            n262_assign_bx, .-n262_assign_bx
                        .type            n263_statement_end_bx, @function
n263_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_statement_end_α:   mov              r11, 264
                        add              rsp, 16;                             jmp   n264_stmt_mark_α
                        .size            n263_statement_end_bx, .-n263_statement_end_bx
                        .type            n264_stmt_mark_bx, @function
n264_stmt_mark_bx:
#=======================================================================================================================
# write1.start                            :(greater.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n264_stmt_mark_α:       mov              r11, 265
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 41
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 54
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n175_statement_begin_α
                        .size            n264_stmt_mark_bx, .-n264_stmt_mark_bx
                        .type            n265_statement_begin_bx, @function
n265_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_begin_α: mov              r11, 266;                            jmp   n266_lit_string_α
n265_statement_begin_β: mov              r11, 266;                            jmp   n269_stmt_mark_α
                        .size            n265_statement_begin_bx, .-n265_statement_begin_bx
                        .type            n266_lit_string_bx, @function
n266_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      sub              rsp, 16
                        mov              r11, 267
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_802_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n267_assign_α
.Llit_string_α_802_0:   .quad            .Llit_string_α_802_0_s
.Llit_string_α_802_0_s: .string          "Failure."
                        .size            n266_lit_string_bx, .-n266_lit_string_bx
                        .type            n267_assign_bx, @function
n267_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_assign_α:          mov              r11, 268
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_803_0]
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
1:                                                                            jmp   n268_statement_end_α
.Lassign_α_803_0:       .quad            .Lassign_α_803_0_s
.Lassign_α_803_0_s:     .string          "OUTPUT"
                        .size            n267_assign_bx, .-n267_assign_bx
                        .type            n268_statement_end_bx, @function
n268_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_statement_end_α:   mov              r11, 269
                        add              rsp, 16;                             jmp   n269_stmt_mark_α
                        .size            n268_statement_end_bx, .-n268_statement_end_bx
                        .type            n269_stmt_mark_bx, @function
n269_stmt_mark_bx:
#=======================================================================================================================
# main2           OUTPUT =                :(write2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 77 0
n269_stmt_mark_α:       mov              r11, 270
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 59
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 77
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n275_statement_begin_α
                        .size            n269_stmt_mark_bx, .-n269_stmt_mark_bx
                        .type            n270_statement_begin_bx, @function
n270_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_statement_begin_α: mov              r11, 271;                            jmp   n271_lit_string_α
n270_statement_begin_β: mov              r11, 271;                            jmp   n274_stmt_mark_α
                        .size            n270_statement_begin_bx, .-n270_statement_begin_bx
                        .type            n271_lit_string_bx, @function
n271_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_string_α:      sub              rsp, 16
                        mov              r11, 272
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_810_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n272_assign_α
.Llit_string_α_810_0:   .quad            .Llit_string_α_810_0_s
.Llit_string_α_810_0_s: .string          "Success!"
                        .size            n271_lit_string_bx, .-n271_lit_string_bx
                        .type            n272_assign_bx, @function
n272_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_assign_α:          mov              r11, 273
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_811_0]
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
1:                                                                            jmp   n273_statement_end_α
.Lassign_α_811_0:       .quad            .Lassign_α_811_0_s
.Lassign_α_811_0_s:     .string          "OUTPUT"
                        .size            n272_assign_bx, .-n272_assign_bx
                        .type            n273_statement_end_bx, @function
n273_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_statement_end_α:   mov              r11, 274
                        add              rsp, 16;                             jmp   n274_stmt_mark_α
                        .size            n273_statement_end_bx, .-n273_statement_end_bx
                        .type            n274_stmt_mark_bx, @function
n274_stmt_mark_bx:
#=======================================================================================================================
# write1.resume                           :(greater.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n274_stmt_mark_α:       mov              r11, 275
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 42
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 55
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n178_statement_begin_α
                        .size            n274_stmt_mark_bx, .-n274_stmt_mark_bx
                        .type            n275_statement_begin_bx, @function
n275_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_statement_begin_α: mov              r11, 276;                            jmp   n276_lit_string_α
n275_statement_begin_β: mov              r11, 276;                            jmp   n279_stmt_mark_α
                        .size            n275_statement_begin_bx, .-n275_statement_begin_bx
                        .type            n276_lit_string_bx, @function
n276_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      sub              rsp, 16
                        mov              r11, 277
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_818_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n277_assign_α
.Llit_string_α_818_0:   .quad            .Llit_string_α_818_0_s
.Llit_string_α_818_0_s: .string          ""
                        .size            n276_lit_string_bx, .-n276_lit_string_bx
                        .type            n277_assign_bx, @function
n277_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_assign_α:          mov              r11, 278
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_819_0]
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
1:                                                                            jmp   n278_statement_end_α
.Lassign_α_819_0:       .quad            .Lassign_α_819_0_s
.Lassign_α_819_0_s:     .string          "OUTPUT"
                        .size            n277_assign_bx, .-n277_assign_bx
                        .type            n278_statement_end_bx, @function
n278_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_statement_end_α:   mov              r11, 279
                        add              rsp, 16;                             jmp   n279_stmt_mark_α
                        .size            n278_statement_end_bx, .-n278_statement_end_bx
                        .type            n279_stmt_mark_bx, @function
n279_stmt_mark_bx:
#=======================================================================================================================
# write2.start    to3.I = 1               :(to3.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n279_stmt_mark_α:       mov              r11, 280
                        mov              rax, qword ptr [rip + g_stno@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 46
                        mov              rax, qword ptr [rip + g_lastno@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx
                        mov              rax, qword ptr [rip + g_line@GOTPCREL]
                        mov              rcx, qword ptr [rax + 0]
                        mov              qword ptr [rax + 0], 63
                        mov              rax, qword ptr [rip + g_lastline@GOTPCREL]
                        mov              qword ptr [rax + 0], rcx;            jmp   n194_statement_begin_α
                        .size            n279_stmt_mark_bx, .-n279_stmt_mark_bx
                        .type            n280_statement_begin_bx, @function
n280_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_statement_begin_α: mov              r11, 281;                            jmp   n281_lit_string_α
n280_statement_begin_β: mov              r11, 281;                            jmp   main_γ
                        .size            n280_statement_begin_bx, .-n280_statement_begin_bx
                        .type            n281_lit_string_bx, @function
n281_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      sub              rsp, 16
                        mov              r11, 282
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_826_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n282_assign_α
.Llit_string_α_826_0:   .quad            .Llit_string_α_826_0_s
.Llit_string_α_826_0_s: .string          "Failure."
                        .size            n281_lit_string_bx, .-n281_lit_string_bx
                        .type            n282_assign_bx, @function
n282_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_assign_α:          mov              r11, 283
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
1:                                                                            jmp   n283_statement_end_α
.Lassign_α_827_0:       .quad            .Lassign_α_827_0_s
.Lassign_α_827_0_s:     .string          "OUTPUT"
                        .size            n282_assign_bx, .-n282_assign_bx
                        .type            n283_statement_end_bx, @function
n283_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_statement_end_α:   mov              r11, 284
                        add              rsp, 16;                             jmp   main_γ
                        .size            n283_statement_end_bx, .-n283_statement_end_bx
                        .type            n284_statement_begin_bx, @function
n284_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_statement_begin_α: mov              r11, 285;                            jmp   n285_lit_string_α
n284_statement_begin_β: mov              r11, 285;                            jmp   n249_stmt_mark_α
                        .size            n284_statement_begin_bx, .-n284_statement_begin_bx
                        .type            n285_lit_string_bx, @function
n285_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_string_α:      sub              rsp, 16
                        mov              r11, 286
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_832_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n286_assign_α
.Llit_string_α_832_0:   .quad            .Llit_string_α_832_0_s
.Llit_string_α_832_0_s: .string          "Success!"
                        .size            n285_lit_string_bx, .-n285_lit_string_bx
                        .type            n286_assign_bx, @function
n286_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_assign_α:          mov              r11, 287
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
1:                                                                            jmp   n287_statement_end_α
.Lassign_α_833_0:       .quad            .Lassign_α_833_0_s
.Lassign_α_833_0_s:     .string          "OUTPUT"
                        .size            n286_assign_bx, .-n286_assign_bx
                        .type            n287_statement_end_bx, @function
n287_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_statement_end_α:   mov              r11, 288
                        add              rsp, 16;                             jmp   n249_stmt_mark_α
                        .size            n287_statement_end_bx, .-n287_statement_end_bx
                        .type            n288_statement_begin_bx, @function
n288_statement_begin_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_statement_begin_α: mov              r11, 289;                            jmp   n289_lit_string_α
n288_statement_begin_β: mov              r11, 289;                            jmp   main_γ
                        .size            n288_statement_begin_bx, .-n288_statement_begin_bx
                        .type            n289_lit_string_bx, @function
n289_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_string_α:      sub              rsp, 16
                        mov              r11, 290
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_838_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n290_assign_α
.Llit_string_α_838_0:   .quad            .Llit_string_α_838_0_s
.Llit_string_α_838_0_s: .string          "Exception!"
                        .size            n289_lit_string_bx, .-n289_lit_string_bx
                        .type            n290_assign_bx, @function
n290_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_assign_α:          mov              r11, 291
                        mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_839_0]
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
1:                                                                            jmp   n291_statement_end_α
.Lassign_α_839_0:       .quad            .Lassign_α_839_0_s
.Lassign_α_839_0_s:     .string          "TERMINAL"
                        .size            n290_assign_bx, .-n290_assign_bx
                        .type            n291_statement_end_bx, @function
n291_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_statement_end_α:   mov              r11, 292
                        add              rsp, 16;                             jmp   main_γ
                        .size            n291_statement_end_bx, .-n291_statement_end_bx
                        .type            n292_goto_bx, @function
n292_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_goto_α:            mov              r11, 293;                            jmp   n2_lit_integer_α
n292_goto_β:            mov              r11, 293;                            jmp   main_ω
                        .size            n292_goto_bx, .-n292_goto_bx
                        .type            n293_goto_bx, @function
n293_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_goto_α:            mov              r11, 294;                            jmp   n149_stmt_mark_α
n293_goto_β:            mov              r11, 294;                            jmp   main_ω
                        .size            n293_goto_bx, .-n293_goto_bx
                        .type            n294_goto_bx, @function
n294_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_goto_α:            mov              r11, 295;                            jmp   n155_stmt_mark_α
n294_goto_β:            mov              r11, 295;                            jmp   main_ω
                        .size            n294_goto_bx, .-n294_goto_bx
                        .type            n295_goto_bx, @function
n295_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_goto_α:            mov              r11, 296;                            jmp   n36_stmt_mark_α
n295_goto_β:            mov              r11, 296;                            jmp   main_ω
                        .size            n295_goto_bx, .-n295_goto_bx
                        .type            n296_goto_bx, @function
n296_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_goto_α:            mov              r11, 297;                            jmp   n42_stmt_mark_α
n296_goto_β:            mov              r11, 297;                            jmp   main_ω
                        .size            n296_goto_bx, .-n296_goto_bx
                        .type            n297_goto_bx, @function
n297_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_goto_α:            mov              r11, 298;                            jmp   n66_stmt_mark_α
n297_goto_β:            mov              r11, 298;                            jmp   main_ω
                        .size            n297_goto_bx, .-n297_goto_bx
                        .type            n298_goto_bx, @function
n298_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_goto_α:            mov              r11, 299;                            jmp   n51_stmt_mark_α
n298_goto_β:            mov              r11, 299;                            jmp   main_ω
                        .size            n298_goto_bx, .-n298_goto_bx
                        .type            n299_goto_bx, @function
n299_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_goto_α:            mov              r11, 300;                            jmp   n126_stmt_mark_α
n299_goto_β:            mov              r11, 300;                            jmp   main_ω
                        .size            n299_goto_bx, .-n299_goto_bx
                        .type            n300_goto_bx, @function
n300_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_goto_α:            mov              r11, 301;                            jmp   n25_stmt_mark_α
n300_goto_β:            mov              r11, 301;                            jmp   main_ω
                        .size            n300_goto_bx, .-n300_goto_bx
                        .type            n301_goto_bx, @function
n301_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_goto_α:            mov              r11, 302;                            jmp   n33_stmt_mark_α
n301_goto_β:            mov              r11, 302;                            jmp   main_ω
                        .size            n301_goto_bx, .-n301_goto_bx
                        .type            n302_goto_bx, @function
n302_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_goto_α:            mov              r11, 303;                            jmp   n63_stmt_mark_α
n302_goto_β:            mov              r11, 303;                            jmp   main_ω
                        .size            n302_goto_bx, .-n302_goto_bx
                        .type            n303_goto_bx, @function
n303_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_goto_α:            mov              r11, 304;                            jmp   n132_stmt_mark_α
n303_goto_β:            mov              r11, 304;                            jmp   main_ω
                        .size            n303_goto_bx, .-n303_goto_bx
                        .type            n304_goto_bx, @function
n304_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_goto_α:            mov              r11, 305;                            jmp   n22_stmt_mark_α
n304_goto_β:            mov              r11, 305;                            jmp   main_ω
                        .size            n304_goto_bx, .-n304_goto_bx
                        .type            n305_goto_bx, @function
n305_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_goto_α:            mov              r11, 306;                            jmp   n30_stmt_mark_α
n305_goto_β:            mov              r11, 306;                            jmp   main_ω
                        .size            n305_goto_bx, .-n305_goto_bx
                        .type            n306_goto_bx, @function
n306_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_goto_α:            mov              r11, 307;                            jmp   n89_stmt_mark_α
n306_goto_β:            mov              r11, 307;                            jmp   main_ω
                        .size            n306_goto_bx, .-n306_goto_bx
                        .type            n307_goto_bx, @function
n307_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_goto_α:            mov              r11, 308;                            jmp   n95_stmt_mark_α
n307_goto_β:            mov              r11, 308;                            jmp   main_ω
                        .size            n307_goto_bx, .-n307_goto_bx
                        .type            n308_goto_bx, @function
n308_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_goto_α:            mov              r11, 309;                            jmp   n119_stmt_mark_α
n308_goto_β:            mov              r11, 309;                            jmp   main_ω
                        .size            n308_goto_bx, .-n308_goto_bx
                        .type            n309_goto_bx, @function
n309_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_goto_α:            mov              r11, 310;                            jmp   n104_stmt_mark_α
n309_goto_β:            mov              r11, 310;                            jmp   main_ω
                        .size            n309_goto_bx, .-n309_goto_bx
                        .type            n310_goto_bx, @function
n310_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_goto_α:            mov              r11, 311;                            jmp   n138_stmt_mark_α
n310_goto_β:            mov              r11, 311;                            jmp   main_ω
                        .size            n310_goto_bx, .-n310_goto_bx
                        .type            n311_goto_bx, @function
n311_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_goto_α:            mov              r11, 312;                            jmp   n78_stmt_mark_α
n311_goto_β:            mov              r11, 312;                            jmp   main_ω
                        .size            n311_goto_bx, .-n311_goto_bx
                        .type            n312_goto_bx, @function
n312_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_goto_α:            mov              r11, 313;                            jmp   n86_stmt_mark_α
n312_goto_β:            mov              r11, 313;                            jmp   main_ω
                        .size            n312_goto_bx, .-n312_goto_bx
                        .type            n313_goto_bx, @function
n313_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_goto_α:            mov              r11, 314;                            jmp   n116_stmt_mark_α
n313_goto_β:            mov              r11, 314;                            jmp   main_ω
                        .size            n313_goto_bx, .-n313_goto_bx
                        .type            n314_goto_bx, @function
n314_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_goto_α:            mov              r11, 315;                            jmp   n135_stmt_mark_α
n314_goto_β:            mov              r11, 315;                            jmp   main_ω
                        .size            n314_goto_bx, .-n314_goto_bx
                        .type            n315_goto_bx, @function
n315_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:            mov              r11, 316;                            jmp   n75_stmt_mark_α
n315_goto_β:            mov              r11, 316;                            jmp   main_ω
                        .size            n315_goto_bx, .-n315_goto_bx
                        .type            n316_goto_bx, @function
n316_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_goto_α:            mov              r11, 317;                            jmp   n83_stmt_mark_α
n316_goto_β:            mov              r11, 317;                            jmp   main_ω
                        .size            n316_goto_bx, .-n316_goto_bx
                        .type            n317_goto_bx, @function
n317_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_goto_α:            mov              r11, 318;                            jmp   n161_stmt_mark_α
n317_goto_β:            mov              r11, 318;                            jmp   main_ω
                        .size            n317_goto_bx, .-n317_goto_bx
                        .type            n318_goto_bx, @function
n318_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:            mov              r11, 319;                            jmp   n39_stmt_mark_α
n318_goto_β:            mov              r11, 319;                            jmp   main_ω
                        .size            n318_goto_bx, .-n318_goto_bx
                        .type            n319_goto_bx, @function
n319_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_goto_α:            mov              r11, 320;                            jmp   n92_stmt_mark_α
n319_goto_β:            mov              r11, 320;                            jmp   main_ω
                        .size            n319_goto_bx, .-n319_goto_bx
                        .type            n320_goto_bx, @function
n320_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_goto_α:            mov              r11, 321;                            jmp   n158_stmt_mark_α
n320_goto_β:            mov              r11, 321;                            jmp   main_ω
                        .size            n320_goto_bx, .-n320_goto_bx
                        .type            n321_goto_bx, @function
n321_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_goto_α:            mov              r11, 322;                            jmp   n56_stmt_mark_α
n321_goto_β:            mov              r11, 322;                            jmp   main_ω
                        .size            n321_goto_bx, .-n321_goto_bx
                        .type            n322_goto_bx, @function
n322_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_goto_α:            mov              r11, 323;                            jmp   n109_stmt_mark_α
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
n324_goto_α:            mov              r11, 325;                            jmp   n17_stmt_mark_α
n324_goto_β:            mov              r11, 325;                            jmp   main_ω
                        .size            n324_goto_bx, .-n324_goto_bx
                        .type            n325_goto_bx, @function
n325_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_goto_α:            mov              r11, 326;                            jmp   n129_stmt_mark_α
n325_goto_β:            mov              r11, 326;                            jmp   main_ω
                        .size            n325_goto_bx, .-n325_goto_bx
                        .type            n326_goto_bx, @function
n326_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:            mov              r11, 327;                            jmp   n180_stmt_mark_α
n326_goto_β:            mov              r11, 327;                            jmp   main_ω
                        .size            n326_goto_bx, .-n326_goto_bx
                        .type            n327_goto_bx, @function
n327_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_goto_α:            mov              r11, 328;                            jmp   n14_stmt_mark_α
n327_goto_β:            mov              r11, 328;                            jmp   main_ω
                        .size            n327_goto_bx, .-n327_goto_bx
                        .type            n328_goto_bx, @function
n328_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_goto_α:            mov              r11, 329;                            jmp   n145_stmt_mark_α
n328_goto_β:            mov              r11, 329;                            jmp   main_ω
                        .size            n328_goto_bx, .-n328_goto_bx
                        .type            n329_goto_bx, @function
n329_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_goto_α:            mov              r11, 330;                            jmp   n264_stmt_mark_α
n329_goto_β:            mov              r11, 330;                            jmp   main_ω
                        .size            n329_goto_bx, .-n329_goto_bx
                        .type            n330_goto_bx, @function
n330_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_goto_α:            mov              r11, 331;                            jmp   n274_stmt_mark_α
n330_goto_β:            mov              r11, 331;                            jmp   main_ω
                        .size            n330_goto_bx, .-n330_goto_bx
                        .type            n331_goto_bx, @function
n331_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_goto_α:            mov              r11, 332;                            jmp   n152_stmt_mark_α
n331_goto_β:            mov              r11, 332;                            jmp   main_ω
                        .size            n331_goto_bx, .-n331_goto_bx
                        .type            n332_goto_bx, @function
n332_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_goto_α:            mov              r11, 333;                            jmp   n174_stmt_mark_α
n332_goto_β:            mov              r11, 333;                            jmp   main_ω
                        .size            n332_goto_bx, .-n332_goto_bx
                        .type            n333_goto_bx, @function
n333_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:            mov              r11, 334;                            jmp   n279_stmt_mark_α
n333_goto_β:            mov              r11, 334;                            jmp   main_ω
                        .size            n333_goto_bx, .-n333_goto_bx
                        .type            n334_goto_bx, @function
n334_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:            mov              r11, 335;                            jmp   n233_stmt_mark_α
n334_goto_β:            mov              r11, 335;                            jmp   main_ω
                        .size            n334_goto_bx, .-n334_goto_bx
                        .type            n335_goto_bx, @function
n335_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:            mov              r11, 336;                            jmp   n198_stmt_mark_α
n335_goto_β:            mov              r11, 336;                            jmp   main_ω
                        .size            n335_goto_bx, .-n335_goto_bx
                        .type            n336_goto_bx, @function
n336_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_goto_α:            mov              r11, 337;                            jmp   n249_stmt_mark_α
n336_goto_β:            mov              r11, 337;                            jmp   main_ω
                        .size            n336_goto_bx, .-n336_goto_bx
                        .type            n337_goto_bx, @function
n337_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:            mov              r11, 338;                            jmp   n218_stmt_mark_α
n337_goto_β:            mov              r11, 338;                            jmp   main_ω
                        .size            n337_goto_bx, .-n337_goto_bx
                        .type            n338_goto_bx, @function
n338_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:            mov              r11, 339;                            jmp   n9_stmt_mark_α
n338_goto_β:            mov              r11, 339;                            jmp   main_ω
                        .size            n338_goto_bx, .-n338_goto_bx
                        .type            n339_goto_bx, @function
n339_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_goto_α:            mov              r11, 340;                            jmp   n183_stmt_mark_α
n339_goto_β:            mov              r11, 340;                            jmp   main_ω
                        .size            n339_goto_bx, .-n339_goto_bx
                        .type            n340_goto_bx, @function
n340_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_goto_α:            mov              r11, 341;                            jmp   n193_stmt_mark_α
n340_goto_β:            mov              r11, 341;                            jmp   main_ω
                        .size            n340_goto_bx, .-n340_goto_bx
                        .type            n341_goto_bx, @function
n341_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_goto_α:            mov              r11, 342;                            jmp   n269_stmt_mark_α
n341_goto_β:            mov              r11, 342;                            jmp   main_ω
                        .size            n341_goto_bx, .-n341_goto_bx
                        .type            n342_goto_bx, @function
n342_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_goto_α:            mov              r11, 343;                            jmp   n213_stmt_mark_α
n342_goto_β:            mov              r11, 343;                            jmp   main_ω
                        .size            n342_goto_bx, .-n342_goto_bx
                        .type            n343_goto_bx, @function
n343_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_goto_α:            mov              r11, 344;                            jmp   n259_stmt_mark_α
n343_goto_β:            mov              r11, 344;                            jmp   main_ω
                        .size            n343_goto_bx, .-n343_goto_bx
                        .type            n344_goto_bx, @function
n344_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_goto_α:            mov              r11, 345;                            jmp   n146_stmt_mark_α
n344_goto_β:            mov              r11, 345;                            jmp   main_ω
                        .size            n344_goto_bx, .-n344_goto_bx
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
                        .quad            5224026688858
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1200
                        .quad            1
                        .quad            1319413953331200
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
