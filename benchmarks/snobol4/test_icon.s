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
                        mov              qword ptr [rsp + 1096], rax
                        mov              dword ptr [rsp + 1088], 160
                        mov              dword ptr [rsp + 1092], 1104
                        mov              eax, 0
main_α_body:
                        .type            n0_call_bx, @function
n0_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_α:              sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_α_279_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_279_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n1_call_α
n0_call_β:              add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
                        .size            n0_call_bx, .-n0_call_bx
                        .type            n1_call_bx, @function
n1_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_call_α:              sub              rsp, 16
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
1:                      cmp              al, 104;                             jne   .Lcall_α_280_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
.Lcall_α_280_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_statement_begin_α
n1_call_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_statement_begin_bx, @function
n2_statement_begin_bx:
#=======================================================================================================================
# START                                   :(main1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n2_statement_begin_α:                                                         jmp   n3_statement_end_α
n2_statement_begin_β:                                                         jmp   n198_statement_begin_α
                        .size            n2_statement_begin_bx, .-n2_statement_begin_bx
                        .type            n3_statement_end_bx, @function
n3_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:                                                           jmp   n198_statement_begin_α
                        .size            n3_statement_end_bx, .-n3_statement_end_bx
                        .type            n4_statement_begin_bx, @function
n4_statement_begin_bx:
#=======================================================================================================================
# x5.start        x5.V = 5                :(x5.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n4_statement_begin_α:                                                         jmp   n5_lit_integer_α
n4_statement_begin_β:                                                         jmp   n116_statement_begin_α
                        .size            n4_statement_begin_bx, .-n4_statement_begin_bx
                        .type            n5_lit_integer_bx, @function
n5_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_287_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n6_assign_α
.Llit_integer_α_287_0:  .quad            5
                        .size            n5_lit_integer_bx, .-n5_lit_integer_bx
                        .type            n6_assign_bx, @function
n6_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # x5.V
                        mov              qword ptr [r9 + 8], rdx;             jmp   n7_statement_end_α
                        .size            n6_assign_bx, .-n6_assign_bx
                        .type            n7_statement_end_bx, @function
n7_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_statement_end_α:     add              rsp, 16;                             jmp   n116_statement_begin_α
                        .size            n7_statement_end_bx, .-n7_statement_end_bx
                        .type            n8_statement_begin_bx, @function
n8_statement_begin_bx:
#=======================================================================================================================
# x5.resume                               :(x5.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n8_statement_begin_α:                                                         jmp   n9_statement_end_α
n8_statement_begin_β:                                                         jmp   n110_statement_begin_α
                        .size            n8_statement_begin_bx, .-n8_statement_begin_bx
                        .type            n9_statement_end_bx, @function
n9_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_statement_end_α:                                                           jmp   n110_statement_begin_α
                        .size            n9_statement_end_bx, .-n9_statement_end_bx
                        .type            n10_statement_begin_bx, @function
n10_statement_begin_bx:
#=======================================================================================================================
# x1.start        x1.V = 1                :(x1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n10_statement_begin_α:                                                        jmp   n11_lit_integer_α
n10_statement_begin_β:                                                        jmp   n45_statement_begin_α
                        .size            n10_statement_begin_bx, .-n10_statement_begin_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_297_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n12_assign_α
.Llit_integer_α_297_0:  .quad            1
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_assign_bx, @function
n12_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # x1.V
                        mov              qword ptr [r9 + 24], rdx;            jmp   n13_statement_end_α
                        .size            n12_assign_bx, .-n12_assign_bx
                        .type            n13_statement_end_bx, @function
n13_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_statement_end_α:    add              rsp, 16;                             jmp   n45_statement_begin_α
                        .size            n13_statement_end_bx, .-n13_statement_end_bx
                        .type            n14_statement_begin_bx, @function
n14_statement_begin_bx:
#=======================================================================================================================
# x1.resume                               :(x1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n14_statement_begin_α:                                                        jmp   n15_statement_end_α
n14_statement_begin_β:                                                        jmp   n24_statement_begin_α
                        .size            n14_statement_begin_bx, .-n14_statement_begin_bx
                        .type            n15_statement_end_bx, @function
n15_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_statement_end_α:                                                          jmp   n24_statement_begin_α
                        .size            n15_statement_end_bx, .-n15_statement_end_bx
                        .type            n16_statement_begin_bx, @function
n16_statement_begin_bx:
#=======================================================================================================================
# x2.start        x2.V = 2                :(x2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n16_statement_begin_α:                                                        jmp   n17_lit_integer_α
n16_statement_begin_β:                                                        jmp   n47_statement_begin_α
                        .size            n16_statement_begin_bx, .-n16_statement_begin_bx
                        .type            n17_lit_integer_bx, @function
n17_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_307_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n18_assign_α
.Llit_integer_α_307_0:  .quad            2
                        .size            n17_lit_integer_bx, .-n17_lit_integer_bx
                        .type            n18_assign_bx, @function
n18_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # x2.V
                        mov              qword ptr [r9 + 40], rdx;            jmp   n19_statement_end_α
                        .size            n18_assign_bx, .-n18_assign_bx
                        .type            n19_statement_end_bx, @function
n19_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:    add              rsp, 16;                             jmp   n47_statement_begin_α
                        .size            n19_statement_end_bx, .-n19_statement_end_bx
                        .type            n20_statement_begin_bx, @function
n20_statement_begin_bx:
#=======================================================================================================================
# x2.resume                               :(x2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n20_statement_begin_α:                                                        jmp   n21_statement_end_α
n20_statement_begin_β:                                                        jmp   n26_statement_begin_α
                        .size            n20_statement_begin_bx, .-n20_statement_begin_bx
                        .type            n21_statement_end_bx, @function
n21_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_statement_end_α:                                                          jmp   n26_statement_begin_α
                        .size            n21_statement_end_bx, .-n21_statement_end_bx
                        .type            n22_statement_begin_bx, @function
n22_statement_begin_bx:
#=======================================================================================================================
# to1.start                               :(x1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n22_statement_begin_α:                                                        jmp   n23_statement_end_α
n22_statement_begin_β:                                                        jmp   n10_statement_begin_α
                        .size            n22_statement_begin_bx, .-n22_statement_begin_bx
                        .type            n23_statement_end_bx, @function
n23_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_statement_end_α:                                                          jmp   n10_statement_begin_α
                        .size            n23_statement_end_bx, .-n23_statement_end_bx
                        .type            n24_statement_begin_bx, @function
n24_statement_begin_bx:
#=======================================================================================================================
# x1.fail                                 :(to1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n24_statement_begin_α:                                                        jmp   n25_statement_end_α
n24_statement_begin_β:                                                        jmp   n94_statement_begin_α
                        .size            n24_statement_begin_bx, .-n24_statement_begin_bx
                        .type            n25_statement_end_bx, @function
n25_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_statement_end_α:                                                          jmp   n94_statement_begin_α
                        .size            n25_statement_end_bx, .-n25_statement_end_bx
                        .type            n26_statement_begin_bx, @function
n26_statement_begin_bx:
#=======================================================================================================================
# x2.fail                                 :(x1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n26_statement_begin_α:                                                        jmp   n27_statement_end_α
n26_statement_begin_β:                                                        jmp   n14_statement_begin_α
                        .size            n26_statement_begin_bx, .-n26_statement_begin_bx
                        .type            n27_statement_end_bx, @function
n27_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:                                                          jmp   n14_statement_begin_α
                        .size            n27_statement_end_bx, .-n27_statement_end_bx
                        .type            n28_statement_begin_bx, @function
n28_statement_begin_bx:
#=======================================================================================================================
# to1.code        LE(to1.I, x2.V)         :F(x2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n28_statement_begin_α:                                                        jmp   n29_var_α
n28_statement_begin_β:                                                        jmp   n20_statement_begin_α
                        .size            n28_statement_begin_bx, .-n28_statement_begin_bx
                        .type            n29_var_bx, @function
n29_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n30_var_α
                        .size            n29_var_bx, .-n29_var_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # x2.V
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n31_coerce_numeric_α
n30_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n28_statement_begin_β
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_coerce_numeric_bx, @function
n31_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_332_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_332_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_332_0
.Lcoerce_numeric_α_332_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n32_coerce_numeric_α
.Lcoerce_numeric_α_332_0:
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
1:                                                                            jmp   n32_coerce_numeric_α
n31_coerce_numeric_β:   add              rsp, 16;                             jmp   n30_var_β
                        .size            n31_coerce_numeric_bx, .-n31_coerce_numeric_bx
                        .type            n32_coerce_numeric_bx, @function
n32_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_334_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_334_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_334_0
.Lcoerce_numeric_α_334_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n33_cmp_test_α
.Lcoerce_numeric_α_334_0:
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
1:                                                                            jmp   n33_cmp_test_α
n32_coerce_numeric_β:   add              rsp, 16;                             jmp   n31_coerce_numeric_β
                        .size            n32_coerce_numeric_bx, .-n32_coerce_numeric_bx
                        .type            n33_cmp_test_bx, @function
n33_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_336_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_336_239
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
.Lcmp_test_α_336_239:                                                         jmp   n34_statement_end_α
.Lcmp_test_α_336_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_336_240
                        add              rsp, 16;                             jmp   n32_coerce_numeric_β
.Lcmp_test_α_336_240:                                                         jmp   n34_statement_end_α
                        .size            n33_cmp_test_bx, .-n33_cmp_test_bx
                        .type            n34_statement_end_bx, @function
n34_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_statement_end_α:    add              rsp, 80;                             jmp   n35_statement_begin_α
                        .size            n34_statement_end_bx, .-n34_statement_end_bx
                        .type            n35_statement_begin_bx, @function
n35_statement_begin_bx:
#=======================================================================================================================
#                 to1.V = to1.I           :(to1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n35_statement_begin_α:                                                        jmp   n36_var_α
n35_statement_begin_β:                                                        jmp   n100_statement_begin_α
                        .size            n35_statement_begin_bx, .-n35_statement_begin_bx
                        .type            n36_var_bx, @function
n36_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n37_assign_α
                        .size            n36_var_bx, .-n36_var_bx
                        .type            n37_assign_bx, @function
n37_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # to1.V
                        mov              qword ptr [r9 + 72], rdx;            jmp   n38_statement_end_α
                        .size            n37_assign_bx, .-n37_assign_bx
                        .type            n38_statement_end_bx, @function
n38_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_statement_end_α:    add              rsp, 16;                             jmp   n100_statement_begin_α
                        .size            n38_statement_end_bx, .-n38_statement_end_bx
                        .type            n39_statement_begin_bx, @function
n39_statement_begin_bx:
#=======================================================================================================================
# to1.resume      to1.I = to1.I + 1       :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n39_statement_begin_α:                                                        jmp   n40_var_α
n39_statement_begin_β:                                                        jmp   n28_statement_begin_α
                        .size            n39_statement_begin_bx, .-n39_statement_begin_bx
                        .type            n40_var_bx, @function
n40_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_lit_integer_α
                        .size            n40_var_bx, .-n40_var_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_binop_α
n41_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n39_statement_begin_β
.Llit_integer_α_348_0:  .quad            1
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_binop_bx, @function
n42_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_349_2
                        add              rax, 1;                              jo    .Lbinop_α_349_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_349_7
.Lbinop_α_349_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_349_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_349_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_349_4
.Lbinop_α_349_3:        movq             xmm0, rsi
.Lbinop_α_349_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_349_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_349_7:                                                              jmp   n43_assign_α
.Lbinop_α_349_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_349_240
                        add              rsp, 16;                             jmp   n41_lit_integer_β
.Lbinop_α_349_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n43_assign_α
n42_binop_β:            add              rsp, 16;                             jmp   n41_lit_integer_β
                        .size            n42_binop_bx, .-n42_binop_bx
                        .type            n43_assign_bx, @function
n43_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n44_statement_end_α
                        .size            n43_assign_bx, .-n43_assign_bx
                        .type            n44_statement_end_bx, @function
n44_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    add              rsp, 48;                             jmp   n28_statement_begin_α
                        .size            n44_statement_end_bx, .-n44_statement_end_bx
                        .type            n45_statement_begin_bx, @function
n45_statement_begin_bx:
#=======================================================================================================================
# x1.succeed                              :(x2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n45_statement_begin_α:                                                        jmp   n46_statement_end_α
n45_statement_begin_β:                                                        jmp   n16_statement_begin_α
                        .size            n45_statement_begin_bx, .-n45_statement_begin_bx
                        .type            n46_statement_end_bx, @function
n46_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_statement_end_α:                                                          jmp   n16_statement_begin_α
                        .size            n46_statement_end_bx, .-n46_statement_end_bx
                        .type            n47_statement_begin_bx, @function
n47_statement_begin_bx:
#=======================================================================================================================
# x2.succeed      to1.I = x1.V            :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n47_statement_begin_α:                                                        jmp   n48_var_α
n47_statement_begin_β:                                                        jmp   n28_statement_begin_α
                        .size            n47_statement_begin_bx, .-n47_statement_begin_bx
                        .type            n48_var_bx, @function
n48_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x1.V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n49_assign_α
                        .size            n48_var_bx, .-n48_var_bx
                        .type            n49_assign_bx, @function
n49_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n50_statement_end_α
                        .size            n49_assign_bx, .-n49_assign_bx
                        .type            n50_statement_end_bx, @function
n50_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_statement_end_α:    add              rsp, 16;                             jmp   n28_statement_begin_α
                        .size            n50_statement_end_bx, .-n50_statement_end_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
#=======================================================================================================================
# x3.start        x3.V = 3                :(x3.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n51_statement_begin_α:                                                        jmp   n52_lit_integer_α
n51_statement_begin_β:                                                        jmp   n86_statement_begin_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_lit_integer_bx, @function
n52_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_365_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n53_assign_α
.Llit_integer_α_365_0:  .quad            3
                        .size            n52_lit_integer_bx, .-n52_lit_integer_bx
                        .type            n53_assign_bx, @function
n53_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # x3.V
                        mov              qword ptr [r9 + 88], rdx;            jmp   n54_statement_end_α
                        .size            n53_assign_bx, .-n53_assign_bx
                        .type            n54_statement_end_bx, @function
n54_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_statement_end_α:    add              rsp, 16;                             jmp   n86_statement_begin_α
                        .size            n54_statement_end_bx, .-n54_statement_end_bx
                        .type            n55_statement_begin_bx, @function
n55_statement_begin_bx:
#=======================================================================================================================
# x3.resume                               :(x3.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n55_statement_begin_α:                                                        jmp   n56_statement_end_α
n55_statement_begin_β:                                                        jmp   n65_statement_begin_α
                        .size            n55_statement_begin_bx, .-n55_statement_begin_bx
                        .type            n56_statement_end_bx, @function
n56_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:                                                          jmp   n65_statement_begin_α
                        .size            n56_statement_end_bx, .-n56_statement_end_bx
                        .type            n57_statement_begin_bx, @function
n57_statement_begin_bx:
#=======================================================================================================================
# x4.start        x4.V = 4                :(x4.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n57_statement_begin_α:                                                        jmp   n58_lit_integer_α
n57_statement_begin_β:                                                        jmp   n88_statement_begin_α
                        .size            n57_statement_begin_bx, .-n57_statement_begin_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_375_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_assign_α
.Llit_integer_α_375_0:  .quad            4
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_assign_bx, @function
n59_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # x4.V
                        mov              qword ptr [r9 + 104], rdx;           jmp   n60_statement_end_α
                        .size            n59_assign_bx, .-n59_assign_bx
                        .type            n60_statement_end_bx, @function
n60_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_statement_end_α:    add              rsp, 16;                             jmp   n88_statement_begin_α
                        .size            n60_statement_end_bx, .-n60_statement_end_bx
                        .type            n61_statement_begin_bx, @function
n61_statement_begin_bx:
#=======================================================================================================================
# x4.resume                               :(x4.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n61_statement_begin_α:                                                        jmp   n62_statement_end_α
n61_statement_begin_β:                                                        jmp   n67_statement_begin_α
                        .size            n61_statement_begin_bx, .-n61_statement_begin_bx
                        .type            n62_statement_end_bx, @function
n62_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_statement_end_α:                                                          jmp   n67_statement_begin_α
                        .size            n62_statement_end_bx, .-n62_statement_end_bx
                        .type            n63_statement_begin_bx, @function
n63_statement_begin_bx:
#=======================================================================================================================
# to2.start                               :(x3.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n63_statement_begin_α:                                                        jmp   n64_statement_end_α
n63_statement_begin_β:                                                        jmp   n51_statement_begin_α
                        .size            n63_statement_begin_bx, .-n63_statement_begin_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:                                                          jmp   n51_statement_begin_α
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_statement_begin_bx, @function
n65_statement_begin_bx:
#=======================================================================================================================
# x3.fail                                 :(to2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n65_statement_begin_α:                                                        jmp   n66_statement_end_α
n65_statement_begin_β:                                                        jmp   n96_statement_begin_α
                        .size            n65_statement_begin_bx, .-n65_statement_begin_bx
                        .type            n66_statement_end_bx, @function
n66_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_statement_end_α:                                                          jmp   n96_statement_begin_α
                        .size            n66_statement_end_bx, .-n66_statement_end_bx
                        .type            n67_statement_begin_bx, @function
n67_statement_begin_bx:
#=======================================================================================================================
# x4.fail                                 :(x3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n67_statement_begin_α:                                                        jmp   n68_statement_end_α
n67_statement_begin_β:                                                        jmp   n55_statement_begin_α
                        .size            n67_statement_begin_bx, .-n67_statement_begin_bx
                        .type            n68_statement_end_bx, @function
n68_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_statement_end_α:                                                          jmp   n55_statement_begin_α
                        .size            n68_statement_end_bx, .-n68_statement_end_bx
                        .type            n69_statement_begin_bx, @function
n69_statement_begin_bx:
#=======================================================================================================================
# to2.code        LE(to2.I, x4.V)         :F(x4.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n69_statement_begin_α:                                                        jmp   n70_var_α
n69_statement_begin_β:                                                        jmp   n61_statement_begin_α
                        .size            n69_statement_begin_bx, .-n69_statement_begin_bx
                        .type            n70_var_bx, @function
n70_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n71_var_α
                        .size            n70_var_bx, .-n70_var_bx
                        .type            n71_var_bx, @function
n71_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # x4.V
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n72_coerce_numeric_α
n71_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n69_statement_begin_β
                        .size            n71_var_bx, .-n71_var_bx
                        .type            n72_coerce_numeric_bx, @function
n72_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_400_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_400_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_400_0
.Lcoerce_numeric_α_400_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n73_coerce_numeric_α
.Lcoerce_numeric_α_400_0:
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
1:                                                                            jmp   n73_coerce_numeric_α
n72_coerce_numeric_β:   add              rsp, 16;                             jmp   n71_var_β
                        .size            n72_coerce_numeric_bx, .-n72_coerce_numeric_bx
                        .type            n73_coerce_numeric_bx, @function
n73_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_402_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_402_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_402_0
.Lcoerce_numeric_α_402_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n74_cmp_test_α
.Lcoerce_numeric_α_402_0:
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
1:                                                                            jmp   n74_cmp_test_α
n73_coerce_numeric_β:   add              rsp, 16;                             jmp   n72_coerce_numeric_β
                        .size            n73_coerce_numeric_bx, .-n73_coerce_numeric_bx
                        .type            n74_cmp_test_bx, @function
n74_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_404_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_404_239
                        add              rsp, 16;                             jmp   n73_coerce_numeric_β
.Lcmp_test_α_404_239:                                                         jmp   n75_statement_end_α
.Lcmp_test_α_404_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_404_240
                        add              rsp, 16;                             jmp   n73_coerce_numeric_β
.Lcmp_test_α_404_240:                                                         jmp   n75_statement_end_α
                        .size            n74_cmp_test_bx, .-n74_cmp_test_bx
                        .type            n75_statement_end_bx, @function
n75_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_statement_end_α:    add              rsp, 80;                             jmp   n76_statement_begin_α
                        .size            n75_statement_end_bx, .-n75_statement_end_bx
                        .type            n76_statement_begin_bx, @function
n76_statement_begin_bx:
#=======================================================================================================================
#                 to2.V = to2.I           :(to2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n76_statement_begin_α:                                                        jmp   n77_var_α
n76_statement_begin_β:                                                        jmp   n102_statement_begin_α
                        .size            n76_statement_begin_bx, .-n76_statement_begin_bx
                        .type            n77_var_bx, @function
n77_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n78_assign_α
                        .size            n77_var_bx, .-n77_var_bx
                        .type            n78_assign_bx, @function
n78_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # to2.V
                        mov              qword ptr [r9 + 136], rdx;           jmp   n79_statement_end_α
                        .size            n78_assign_bx, .-n78_assign_bx
                        .type            n79_statement_end_bx, @function
n79_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_statement_end_α:    add              rsp, 16;                             jmp   n102_statement_begin_α
                        .size            n79_statement_end_bx, .-n79_statement_end_bx
                        .type            n80_statement_begin_bx, @function
n80_statement_begin_bx:
#=======================================================================================================================
# to2.resume      to2.I = to2.I + 1       :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n80_statement_begin_α:                                                        jmp   n81_var_α
n80_statement_begin_β:                                                        jmp   n69_statement_begin_α
                        .size            n80_statement_begin_bx, .-n80_statement_begin_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_lit_integer_α
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_416_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_binop_α
n82_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n80_statement_begin_β
.Llit_integer_α_416_0:  .quad            1
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_binop_bx, @function
n83_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_417_2
                        add              rax, 1;                              jo    .Lbinop_α_417_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_417_7
.Lbinop_α_417_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_417_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_417_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_417_4
.Lbinop_α_417_3:        movq             xmm0, rsi
.Lbinop_α_417_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_417_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_417_7:                                                              jmp   n84_assign_α
.Lbinop_α_417_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_417_240
                        add              rsp, 16;                             jmp   n82_lit_integer_β
.Lbinop_α_417_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n84_assign_α
n83_binop_β:            add              rsp, 16;                             jmp   n82_lit_integer_β
                        .size            n83_binop_bx, .-n83_binop_bx
                        .type            n84_assign_bx, @function
n84_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n85_statement_end_α
                        .size            n84_assign_bx, .-n84_assign_bx
                        .type            n85_statement_end_bx, @function
n85_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    add              rsp, 48;                             jmp   n69_statement_begin_α
                        .size            n85_statement_end_bx, .-n85_statement_end_bx
                        .type            n86_statement_begin_bx, @function
n86_statement_begin_bx:
#=======================================================================================================================
# x3.succeed                              :(x4.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n86_statement_begin_α:                                                        jmp   n87_statement_end_α
n86_statement_begin_β:                                                        jmp   n57_statement_begin_α
                        .size            n86_statement_begin_bx, .-n86_statement_begin_bx
                        .type            n87_statement_end_bx, @function
n87_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_statement_end_α:                                                          jmp   n57_statement_begin_α
                        .size            n87_statement_end_bx, .-n87_statement_end_bx
                        .type            n88_statement_begin_bx, @function
n88_statement_begin_bx:
#=======================================================================================================================
# x4.succeed      to2.I = x3.V            :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n88_statement_begin_α:                                                        jmp   n89_var_α
n88_statement_begin_β:                                                        jmp   n69_statement_begin_α
                        .size            n88_statement_begin_bx, .-n88_statement_begin_bx
                        .type            n89_var_bx, @function
n89_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # x3.V
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n90_assign_α
                        .size            n89_var_bx, .-n89_var_bx
                        .type            n90_assign_bx, @function
n90_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n91_statement_end_α
                        .size            n90_assign_bx, .-n90_assign_bx
                        .type            n91_statement_end_bx, @function
n91_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_statement_end_α:    add              rsp, 16;                             jmp   n69_statement_begin_α
                        .size            n91_statement_end_bx, .-n91_statement_end_bx
                        .type            n92_statement_begin_bx, @function
n92_statement_begin_bx:
#=======================================================================================================================
# mult.start                              :(to1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n92_statement_begin_α:                                                        jmp   n93_statement_end_α
n92_statement_begin_β:                                                        jmp   n22_statement_begin_α
                        .size            n92_statement_begin_bx, .-n92_statement_begin_bx
                        .type            n93_statement_end_bx, @function
n93_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:                                                          jmp   n22_statement_begin_α
                        .size            n93_statement_end_bx, .-n93_statement_end_bx
                        .type            n94_statement_begin_bx, @function
n94_statement_begin_bx:
#=======================================================================================================================
# to1.fail                                :(mult.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n94_statement_begin_α:                                                        jmp   n95_statement_end_α
n94_statement_begin_β:                                                        jmp   n112_statement_begin_α
                        .size            n94_statement_begin_bx, .-n94_statement_begin_bx
                        .type            n95_statement_end_bx, @function
n95_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_statement_end_α:                                                          jmp   n112_statement_begin_α
                        .size            n95_statement_end_bx, .-n95_statement_end_bx
                        .type            n96_statement_begin_bx, @function
n96_statement_begin_bx:
#=======================================================================================================================
# to2.fail                                :(to1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n96_statement_begin_α:                                                        jmp   n97_statement_end_α
n96_statement_begin_β:                                                        jmp   n39_statement_begin_α
                        .size            n96_statement_begin_bx, .-n96_statement_begin_bx
                        .type            n97_statement_end_bx, @function
n97_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:                                                          jmp   n39_statement_begin_α
                        .size            n97_statement_end_bx, .-n97_statement_end_bx
                        .type            n98_statement_begin_bx, @function
n98_statement_begin_bx:
#=======================================================================================================================
# mult.resume                             :(to2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n98_statement_begin_α:                                                        jmp   n99_statement_end_α
n98_statement_begin_β:                                                        jmp   n80_statement_begin_α
                        .size            n98_statement_begin_bx, .-n98_statement_begin_bx
                        .type            n99_statement_end_bx, @function
n99_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_statement_end_α:                                                          jmp   n80_statement_begin_α
                        .size            n99_statement_end_bx, .-n99_statement_end_bx
                        .type            n100_statement_begin_bx, @function
n100_statement_begin_bx:
#=======================================================================================================================
# to1.succeed                             :(to2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n100_statement_begin_α:                                                       jmp   n101_statement_end_α
n100_statement_begin_β:                                                       jmp   n63_statement_begin_α
                        .size            n100_statement_begin_bx, .-n100_statement_begin_bx
                        .type            n101_statement_end_bx, @function
n101_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_statement_end_α:                                                         jmp   n63_statement_begin_α
                        .size            n101_statement_end_bx, .-n101_statement_end_bx
                        .type            n102_statement_begin_bx, @function
n102_statement_begin_bx:
#=======================================================================================================================
# to2.succeed     mult.V = to1.V * to2.V  :S(mult.succeed)F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n102_statement_begin_α:                                                       jmp   n103_var_α
n102_statement_begin_β:                                                       jmp   n222_statement_begin_α
                        .size            n102_statement_begin_bx, .-n102_statement_begin_bx
                        .type            n103_var_bx, @function
n103_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # to1.V
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n104_var_α
                        .size            n103_var_bx, .-n103_var_bx
                        .type            n104_var_bx, @function
n104_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # to2.V
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n105_binop_α
n104_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n102_statement_begin_β
                        .size            n104_var_bx, .-n104_var_bx
                        .type            n105_binop_bx, @function
n105_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_455_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_455_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_455_7
.Lbinop_α_455_2:        and              edx, 1;                              jz    .Lbinop_α_455_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_455_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_455_4
.Lbinop_α_455_3:        movq             xmm0, rsi
.Lbinop_α_455_4:        cmp              cl, 5;                               je    .Lbinop_α_455_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_455_6
.Lbinop_α_455_5:        movq             xmm1, rdi
.Lbinop_α_455_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_455_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_455_7:                                                              jmp   n106_assign_α
.Lbinop_α_455_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_455_240
                        add              rsp, 16;                             jmp   n104_var_β
.Lbinop_α_455_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n106_assign_α
n105_binop_β:           add              rsp, 16;                             jmp   n104_var_β
                        .size            n105_binop_bx, .-n105_binop_bx
                        .type            n106_assign_bx, @function
n106_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n107_statement_end_α
                        .size            n106_assign_bx, .-n106_assign_bx
                        .type            n107_statement_end_bx, @function
n107_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_statement_end_α:   add              rsp, 48;                             jmp   n118_statement_begin_α
                        .size            n107_statement_end_bx, .-n107_statement_end_bx
                        .type            n108_statement_begin_bx, @function
n108_statement_begin_bx:
#=======================================================================================================================
# greater.start                           :(x5.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n108_statement_begin_α:                                                       jmp   n109_statement_end_α
n108_statement_begin_β:                                                       jmp   n4_statement_begin_α
                        .size            n108_statement_begin_bx, .-n108_statement_begin_bx
                        .type            n109_statement_end_bx, @function
n109_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:                                                         jmp   n4_statement_begin_α
                        .size            n109_statement_end_bx, .-n109_statement_end_bx
                        .type            n110_statement_begin_bx, @function
n110_statement_begin_bx:
#=======================================================================================================================
# x5.fail                                 :(greater.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n110_statement_begin_α:                                                       jmp   n111_statement_end_α
n110_statement_begin_β:                                                       jmp   n133_statement_begin_α
                        .size            n110_statement_begin_bx, .-n110_statement_begin_bx
                        .type            n111_statement_end_bx, @function
n111_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_statement_end_α:                                                         jmp   n133_statement_begin_α
                        .size            n111_statement_end_bx, .-n111_statement_end_bx
                        .type            n112_statement_begin_bx, @function
n112_statement_begin_bx:
#=======================================================================================================================
# mult.fail                               :(x5.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n112_statement_begin_α:                                                       jmp   n113_statement_end_α
n112_statement_begin_β:                                                       jmp   n8_statement_begin_α
                        .size            n112_statement_begin_bx, .-n112_statement_begin_bx
                        .type            n113_statement_end_bx, @function
n113_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_statement_end_α:                                                         jmp   n8_statement_begin_α
                        .size            n113_statement_end_bx, .-n113_statement_end_bx
                        .type            n114_statement_begin_bx, @function
n114_statement_begin_bx:
#=======================================================================================================================
# greater.resume                          :(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n114_statement_begin_α:                                                       jmp   n115_statement_end_α
n114_statement_begin_β:                                                       jmp   n98_statement_begin_α
                        .size            n114_statement_begin_bx, .-n114_statement_begin_bx
                        .type            n115_statement_end_bx, @function
n115_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_statement_end_α:                                                         jmp   n98_statement_begin_α
                        .size            n115_statement_end_bx, .-n115_statement_end_bx
                        .type            n116_statement_begin_bx, @function
n116_statement_begin_bx:
#=======================================================================================================================
# x5.succeed                              :(mult.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n116_statement_begin_α:                                                       jmp   n117_statement_end_α
n116_statement_begin_β:                                                       jmp   n92_statement_begin_α
                        .size            n116_statement_begin_bx, .-n116_statement_begin_bx
                        .type            n117_statement_end_bx, @function
n117_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:                                                         jmp   n92_statement_begin_α
                        .size            n117_statement_end_bx, .-n117_statement_end_bx
                        .type            n118_statement_begin_bx, @function
n118_statement_begin_bx:
#=======================================================================================================================
# mult.succeed    GT(x5.V, mult.V)        :F(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n118_statement_begin_α:                                                       jmp   n119_var_α
n118_statement_begin_β:                                                       jmp   n98_statement_begin_α
                        .size            n118_statement_begin_bx, .-n118_statement_begin_bx
                        .type            n119_var_bx, @function
n119_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # x5.V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n120_var_α
                        .size            n119_var_bx, .-n119_var_bx
                        .type            n120_var_bx, @function
n120_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n121_coerce_numeric_α
n120_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n118_statement_begin_β
                        .size            n120_var_bx, .-n120_var_bx
                        .type            n121_coerce_numeric_bx, @function
n121_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_484_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
.Lcoerce_numeric_α_484_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n122_coerce_numeric_α
.Lcoerce_numeric_α_484_0:
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
1:                                                                            jmp   n122_coerce_numeric_α
n121_coerce_numeric_β:  add              rsp, 16;                             jmp   n120_var_β
                        .size            n121_coerce_numeric_bx, .-n121_coerce_numeric_bx
                        .type            n122_coerce_numeric_bx, @function
n122_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_486_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_486_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_486_0
.Lcoerce_numeric_α_486_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n123_cmp_test_α
.Lcoerce_numeric_α_486_0:
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
1:                                                                            jmp   n123_cmp_test_α
n122_coerce_numeric_β:  add              rsp, 16;                             jmp   n121_coerce_numeric_β
                        .size            n122_coerce_numeric_bx, .-n122_coerce_numeric_bx
                        .type            n123_cmp_test_bx, @function
n123_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_488_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_488_239
                        add              rsp, 16;                             jmp   n122_coerce_numeric_β
.Lcmp_test_α_488_239:                                                         jmp   n124_statement_end_α
.Lcmp_test_α_488_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jg    .Lcmp_test_α_488_240
                        add              rsp, 16;                             jmp   n122_coerce_numeric_β
.Lcmp_test_α_488_240:                                                         jmp   n124_statement_end_α
                        .size            n123_cmp_test_bx, .-n123_cmp_test_bx
                        .type            n124_statement_end_bx, @function
n124_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_statement_end_α:   add              rsp, 80;                             jmp   n125_statement_begin_α
                        .size            n124_statement_end_bx, .-n124_statement_end_bx
                        .type            n125_statement_begin_bx, @function
n125_statement_begin_bx:
#=======================================================================================================================
#                 greater.V = mult.V      :(greater.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n125_statement_begin_α:                                                       jmp   n126_var_α
n125_statement_begin_β:                                                       jmp   n135_statement_begin_α
                        .size            n125_statement_begin_bx, .-n125_statement_begin_bx
                        .type            n126_var_bx, @function
n126_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n127_assign_α
                        .size            n126_var_bx, .-n126_var_bx
                        .type            n127_assign_bx, @function
n127_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n128_statement_end_α
                        .size            n127_assign_bx, .-n127_assign_bx
                        .type            n128_statement_end_bx, @function
n128_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_statement_end_α:   add              rsp, 16;                             jmp   n135_statement_begin_α
                        .size            n128_statement_end_bx, .-n128_statement_end_bx
                        .type            n129_statement_begin_bx, @function
n129_statement_begin_bx:
#=======================================================================================================================
# write1.start                            :(greater.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n129_statement_begin_α:                                                       jmp   n130_statement_end_α
n129_statement_begin_β:                                                       jmp   n108_statement_begin_α
                        .size            n129_statement_begin_bx, .-n129_statement_begin_bx
                        .type            n130_statement_end_bx, @function
n130_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:                                                         jmp   n108_statement_begin_α
                        .size            n130_statement_end_bx, .-n130_statement_end_bx
                        .type            n131_statement_begin_bx, @function
n131_statement_begin_bx:
#=======================================================================================================================
# write1.resume                           :(greater.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n131_statement_begin_α:                                                       jmp   n132_statement_end_α
n131_statement_begin_β:                                                       jmp   n114_statement_begin_α
                        .size            n131_statement_begin_bx, .-n131_statement_begin_bx
                        .type            n132_statement_end_bx, @function
n132_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:                                                         jmp   n114_statement_begin_α
                        .size            n132_statement_end_bx, .-n132_statement_end_bx
                        .type            n133_statement_begin_bx, @function
n133_statement_begin_bx:
#=======================================================================================================================
# greater.fail                            :(write1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
n133_statement_begin_α:                                                       jmp   n134_statement_end_α
n133_statement_begin_β:                                                       jmp   n202_statement_begin_α
                        .size            n133_statement_begin_bx, .-n133_statement_begin_bx
                        .type            n134_statement_end_bx, @function
n134_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_statement_end_α:                                                         jmp   n202_statement_begin_α
                        .size            n134_statement_end_bx, .-n134_statement_end_bx
                        .type            n135_statement_begin_bx, @function
n135_statement_begin_bx:
#=======================================================================================================================
# greater.succeed write.V = greater.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n135_statement_begin_α:                                                       jmp   n136_var_α
n135_statement_begin_β:                                                       jmp   n139_statement_begin_α
                        .size            n135_statement_begin_bx, .-n135_statement_begin_bx
                        .type            n136_var_bx, @function
n136_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_assign_α
                        .size            n136_var_bx, .-n136_var_bx
                        .type            n137_assign_bx, @function
n137_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # write.V
                        mov              qword ptr [r9 + 184], rdx;           jmp   n138_statement_end_α
                        .size            n137_assign_bx, .-n137_assign_bx
                        .type            n138_statement_end_bx, @function
n138_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   add              rsp, 16;                             jmp   n139_statement_begin_α
                        .size            n138_statement_end_bx, .-n138_statement_end_bx
                        .type            n139_statement_begin_bx, @function
n139_statement_begin_bx:
#=======================================================================================================================
#                 OUTPUT = write.V        :(write1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n139_statement_begin_α:                                                       jmp   n140_var_α
n139_statement_begin_β:                                                       jmp   n206_statement_begin_α
                        .size            n139_statement_begin_bx, .-n139_statement_begin_bx
                        .type            n140_var_bx, @function
n140_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # write.V
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n141_assign_α
                        .size            n140_var_bx, .-n140_var_bx
                        .type            n141_assign_bx, @function
n141_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_518_0]
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
1:                                                                            jmp   n142_statement_end_α
.Lassign_α_518_0:       .quad            .Lassign_α_518_0_s
.Lassign_α_518_0_s:     .string          "OUTPUT"
                        .size            n141_assign_bx, .-n141_assign_bx
                        .type            n142_statement_end_bx, @function
n142_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:   add              rsp, 16;                             jmp   n206_statement_begin_α
                        .size            n142_statement_end_bx, .-n142_statement_end_bx
                        .type            n143_statement_begin_bx, @function
n143_statement_begin_bx:
#=======================================================================================================================
# write2.start    to3.I = 1               :(to3.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n143_statement_begin_α:                                                       jmp   n144_lit_integer_α
n143_statement_begin_β:                                                       jmp   n153_statement_begin_α
                        .size            n143_statement_begin_bx, .-n143_statement_begin_bx
                        .type            n144_lit_integer_bx, @function
n144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_523_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n145_assign_α
.Llit_integer_α_523_0:  .quad            1
                        .size            n144_lit_integer_bx, .-n144_lit_integer_bx
                        .type            n145_assign_bx, @function
n145_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n146_statement_end_α
                        .size            n145_assign_bx, .-n145_assign_bx
                        .type            n146_statement_end_bx, @function
n146_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_statement_end_α:   add              rsp, 16;                             jmp   n153_statement_begin_α
                        .size            n146_statement_end_bx, .-n146_statement_end_bx
                        .type            n147_statement_begin_bx, @function
n147_statement_begin_bx:
#=======================================================================================================================
# to3.resume      to3.I = to3.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n147_statement_begin_α:                                                       jmp   n148_var_α
n147_statement_begin_β:                                                       jmp   n153_statement_begin_α
                        .size            n147_statement_begin_bx, .-n147_statement_begin_bx
                        .type            n148_var_bx, @function
n148_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n149_lit_integer_α
                        .size            n148_var_bx, .-n148_var_bx
                        .type            n149_lit_integer_bx, @function
n149_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_530_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n150_binop_α
n149_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n147_statement_begin_β
.Llit_integer_α_530_0:  .quad            1
                        .size            n149_lit_integer_bx, .-n149_lit_integer_bx
                        .type            n150_binop_bx, @function
n150_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_531_2
                        add              rax, 1;                              jo    .Lbinop_α_531_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_531_7
.Lbinop_α_531_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_531_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_531_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_531_4
.Lbinop_α_531_3:        movq             xmm0, rsi
.Lbinop_α_531_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_531_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_531_7:                                                              jmp   n151_assign_α
.Lbinop_α_531_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_531_240
                        add              rsp, 16;                             jmp   n149_lit_integer_β
.Lbinop_α_531_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n151_assign_α
n150_binop_β:           add              rsp, 16;                             jmp   n149_lit_integer_β
                        .size            n150_binop_bx, .-n150_binop_bx
                        .type            n151_assign_bx, @function
n151_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n152_statement_end_α
                        .size            n151_assign_bx, .-n151_assign_bx
                        .type            n152_statement_end_bx, @function
n152_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_statement_end_α:   add              rsp, 48;                             jmp   n153_statement_begin_α
                        .size            n152_statement_end_bx, .-n152_statement_end_bx
                        .type            n153_statement_begin_bx, @function
n153_statement_begin_bx:
#=======================================================================================================================
# to3.code        LE(to3.I, 2)            :F(write2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n153_statement_begin_α:                                                       jmp   n154_var_α
n153_statement_begin_β:                                                       jmp   n214_statement_begin_α
                        .size            n153_statement_begin_bx, .-n153_statement_begin_bx
                        .type            n154_var_bx, @function
n154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_lit_integer_α
                        .size            n154_var_bx, .-n154_var_bx
                        .type            n155_lit_integer_bx, @function
n155_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_538_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_coerce_numeric_α
n155_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n153_statement_begin_β
.Llit_integer_α_538_0:  .quad            2
                        .size            n155_lit_integer_bx, .-n155_lit_integer_bx
                        .type            n156_coerce_numeric_bx, @function
n156_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_540_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_540_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_540_0
.Lcoerce_numeric_α_540_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_coerce_numeric_α
.Lcoerce_numeric_α_540_0:
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
1:                                                                            jmp   n157_coerce_numeric_α
n156_coerce_numeric_β:  add              rsp, 16;                             jmp   n155_lit_integer_β
                        .size            n156_coerce_numeric_bx, .-n156_coerce_numeric_bx
                        .type            n157_coerce_numeric_bx, @function
n157_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_542_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_542_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_542_0
.Lcoerce_numeric_α_542_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_cmp_test_α
.Lcoerce_numeric_α_542_0:
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
1:                                                                            jmp   n158_cmp_test_α
n157_coerce_numeric_β:  add              rsp, 16;                             jmp   n156_coerce_numeric_β
                        .size            n157_coerce_numeric_bx, .-n157_coerce_numeric_bx
                        .type            n158_cmp_test_bx, @function
n158_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_544_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_544_239
                        add              rsp, 16;                             jmp   n157_coerce_numeric_β
.Lcmp_test_α_544_239:                                                         jmp   n159_statement_end_α
.Lcmp_test_α_544_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_544_240
                        add              rsp, 16;                             jmp   n157_coerce_numeric_β
.Lcmp_test_α_544_240:                                                         jmp   n159_statement_end_α
                        .size            n158_cmp_test_bx, .-n158_cmp_test_bx
                        .type            n159_statement_end_bx, @function
n159_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   add              rsp, 80;                             jmp   n160_statement_begin_α
                        .size            n159_statement_end_bx, .-n159_statement_end_bx
                        .type            n160_statement_begin_bx, @function
n160_statement_begin_bx:
#=======================================================================================================================
#                 to4.I = 3               :(to4.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n160_statement_begin_α:                                                       jmp   n161_lit_integer_α
n160_statement_begin_β:                                                       jmp   n170_statement_begin_α
                        .size            n160_statement_begin_bx, .-n160_statement_begin_bx
                        .type            n161_lit_integer_bx, @function
n161_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_549_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n162_assign_α
.Llit_integer_α_549_0:  .quad            3
                        .size            n161_lit_integer_bx, .-n161_lit_integer_bx
                        .type            n162_assign_bx, @function
n162_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n163_statement_end_α
                        .size            n162_assign_bx, .-n162_assign_bx
                        .type            n163_statement_end_bx, @function
n163_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_statement_end_α:   add              rsp, 16;                             jmp   n170_statement_begin_α
                        .size            n163_statement_end_bx, .-n163_statement_end_bx
                        .type            n164_statement_begin_bx, @function
n164_statement_begin_bx:
#=======================================================================================================================
# write2.resume   to4.I = to4.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n164_statement_begin_α:                                                       jmp   n165_var_α
n164_statement_begin_β:                                                       jmp   n170_statement_begin_α
                        .size            n164_statement_begin_bx, .-n164_statement_begin_bx
                        .type            n165_var_bx, @function
n165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_lit_integer_α
                        .size            n165_var_bx, .-n165_var_bx
                        .type            n166_lit_integer_bx, @function
n166_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_556_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n167_binop_α
n166_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n164_statement_begin_β
.Llit_integer_α_556_0:  .quad            1
                        .size            n166_lit_integer_bx, .-n166_lit_integer_bx
                        .type            n167_binop_bx, @function
n167_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_557_2
                        add              rax, 1;                              jo    .Lbinop_α_557_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_557_7
.Lbinop_α_557_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_557_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_557_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_557_4
.Lbinop_α_557_3:        movq             xmm0, rsi
.Lbinop_α_557_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_557_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_557_7:                                                              jmp   n168_assign_α
.Lbinop_α_557_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_557_240
                        add              rsp, 16;                             jmp   n166_lit_integer_β
.Lbinop_α_557_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n168_assign_α
n167_binop_β:           add              rsp, 16;                             jmp   n166_lit_integer_β
                        .size            n167_binop_bx, .-n167_binop_bx
                        .type            n168_assign_bx, @function
n168_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n169_statement_end_α
                        .size            n168_assign_bx, .-n168_assign_bx
                        .type            n169_statement_end_bx, @function
n169_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_statement_end_α:   add              rsp, 48;                             jmp   n170_statement_begin_α
                        .size            n169_statement_end_bx, .-n169_statement_end_bx
                        .type            n170_statement_begin_bx, @function
n170_statement_begin_bx:
#=======================================================================================================================
# to4.code        LE(to4.I, 4)            :F(to3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 68 0
n170_statement_begin_α:                                                       jmp   n171_var_α
n170_statement_begin_β:                                                       jmp   n147_statement_begin_α
                        .size            n170_statement_begin_bx, .-n170_statement_begin_bx
                        .type            n171_var_bx, @function
n171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_lit_integer_α
                        .size            n171_var_bx, .-n171_var_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_564_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_coerce_numeric_α
n172_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n170_statement_begin_β
.Llit_integer_α_564_0:  .quad            4
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_coerce_numeric_bx, @function
n173_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_566_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_566_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_566_0
.Lcoerce_numeric_α_566_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n174_coerce_numeric_α
.Lcoerce_numeric_α_566_0:
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
1:                                                                            jmp   n174_coerce_numeric_α
n173_coerce_numeric_β:  add              rsp, 16;                             jmp   n172_lit_integer_β
                        .size            n173_coerce_numeric_bx, .-n173_coerce_numeric_bx
                        .type            n174_coerce_numeric_bx, @function
n174_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_568_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_568_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_568_0
.Lcoerce_numeric_α_568_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n175_cmp_test_α
.Lcoerce_numeric_α_568_0:
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
1:                                                                            jmp   n175_cmp_test_α
n174_coerce_numeric_β:  add              rsp, 16;                             jmp   n173_coerce_numeric_β
                        .size            n174_coerce_numeric_bx, .-n174_coerce_numeric_bx
                        .type            n175_cmp_test_bx, @function
n175_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_570_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_570_239
                        add              rsp, 16;                             jmp   n174_coerce_numeric_β
.Lcmp_test_α_570_239:                                                         jmp   n176_statement_end_α
.Lcmp_test_α_570_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jle   .Lcmp_test_α_570_240
                        add              rsp, 16;                             jmp   n174_coerce_numeric_β
.Lcmp_test_α_570_240:                                                         jmp   n176_statement_end_α
                        .size            n175_cmp_test_bx, .-n175_cmp_test_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   add              rsp, 80;                             jmp   n177_statement_begin_α
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_statement_begin_bx, @function
n177_statement_begin_bx:
#=======================================================================================================================
#                 mult.V = to3.I * to4.I  :F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n177_statement_begin_α:                                                       jmp   n178_var_α
n177_statement_begin_β:                                                       jmp   n222_statement_begin_α
                        .size            n177_statement_begin_bx, .-n177_statement_begin_bx
                        .type            n178_var_bx, @function
n178_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n179_var_α
                        .size            n178_var_bx, .-n178_var_bx
                        .type            n179_var_bx, @function
n179_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_binop_α
n179_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n177_statement_begin_β
                        .size            n179_var_bx, .-n179_var_bx
                        .type            n180_binop_bx, @function
n180_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_577_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_577_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_577_7
.Lbinop_α_577_2:        and              edx, 1;                              jz    .Lbinop_α_577_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_577_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_577_4
.Lbinop_α_577_3:        movq             xmm0, rsi
.Lbinop_α_577_4:        cmp              cl, 5;                               je    .Lbinop_α_577_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_577_6
.Lbinop_α_577_5:        movq             xmm1, rdi
.Lbinop_α_577_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_577_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_577_7:                                                              jmp   n181_assign_α
.Lbinop_α_577_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_577_240
                        add              rsp, 16;                             jmp   n179_var_β
.Lbinop_α_577_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n181_assign_α
n180_binop_β:           add              rsp, 16;                             jmp   n179_var_β
                        .size            n180_binop_bx, .-n180_binop_bx
                        .type            n181_assign_bx, @function
n181_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n182_statement_end_α
                        .size            n181_assign_bx, .-n181_assign_bx
                        .type            n182_statement_end_bx, @function
n182_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   add              rsp, 48;                             jmp   n183_statement_begin_α
                        .size            n182_statement_end_bx, .-n182_statement_end_bx
                        .type            n183_statement_begin_bx, @function
n183_statement_begin_bx:
#=======================================================================================================================
#                 GT(5, mult.V)           :F(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n183_statement_begin_α:                                                       jmp   n184_lit_integer_α
n183_statement_begin_β:                                                       jmp   n164_statement_begin_α
                        .size            n183_statement_begin_bx, .-n183_statement_begin_bx
                        .type            n184_lit_integer_bx, @function
n184_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_583_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n185_var_α
.Llit_integer_α_583_0:  .quad            5
                        .size            n184_lit_integer_bx, .-n184_lit_integer_bx
                        .type            n185_var_bx, @function
n185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_coerce_numeric_α
n185_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n183_statement_begin_β
                        .size            n185_var_bx, .-n185_var_bx
                        .type            n186_coerce_numeric_bx, @function
n186_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_586_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_586_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_586_0
.Lcoerce_numeric_α_586_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n187_coerce_numeric_α
.Lcoerce_numeric_α_586_0:
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
1:                                                                            jmp   n187_coerce_numeric_α
n186_coerce_numeric_β:  add              rsp, 16;                             jmp   n185_var_β
                        .size            n186_coerce_numeric_bx, .-n186_coerce_numeric_bx
                        .type            n187_coerce_numeric_bx, @function
n187_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_588_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_588_0
                        mov              eax, dword ptr [rsp + 48]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_588_0
.Lcoerce_numeric_α_588_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n188_cmp_test_α
.Lcoerce_numeric_α_588_0:
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
1:                                                                            jmp   n188_cmp_test_α
n187_coerce_numeric_β:  add              rsp, 16;                             jmp   n186_coerce_numeric_β
                        .size            n187_coerce_numeric_bx, .-n187_coerce_numeric_bx
                        .type            n188_cmp_test_bx, @function
n188_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_590_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_590_239
                        add              rsp, 16;                             jmp   n187_coerce_numeric_β
.Lcmp_test_α_590_239:                                                         jmp   n189_statement_end_α
.Lcmp_test_α_590_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            jg    .Lcmp_test_α_590_240
                        add              rsp, 16;                             jmp   n187_coerce_numeric_β
.Lcmp_test_α_590_240:                                                         jmp   n189_statement_end_α
                        .size            n188_cmp_test_bx, .-n188_cmp_test_bx
                        .type            n189_statement_end_bx, @function
n189_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_statement_end_α:   add              rsp, 80;                             jmp   n190_statement_begin_α
                        .size            n189_statement_end_bx, .-n189_statement_end_bx
                        .type            n190_statement_begin_bx, @function
n190_statement_begin_bx:
#=======================================================================================================================
#                 greater.V = mult.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n190_statement_begin_α:                                                       jmp   n191_var_α
n190_statement_begin_β:                                                       jmp   n194_statement_begin_α
                        .size            n190_statement_begin_bx, .-n190_statement_begin_bx
                        .type            n191_var_bx, @function
n191_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n192_assign_α
                        .size            n191_var_bx, .-n191_var_bx
                        .type            n192_assign_bx, @function
n192_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n193_statement_end_α
                        .size            n192_assign_bx, .-n192_assign_bx
                        .type            n193_statement_end_bx, @function
n193_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_statement_end_α:   add              rsp, 16;                             jmp   n194_statement_begin_α
                        .size            n193_statement_end_bx, .-n193_statement_end_bx
                        .type            n194_statement_begin_bx, @function
n194_statement_begin_bx:
#=======================================================================================================================
#                 OUTPUT = greater.V      :(write2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n194_statement_begin_α:                                                       jmp   n195_var_α
n194_statement_begin_β:                                                       jmp   n218_statement_begin_α
                        .size            n194_statement_begin_bx, .-n194_statement_begin_bx
                        .type            n195_var_bx, @function
n195_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n196_assign_α
                        .size            n195_var_bx, .-n195_var_bx
                        .type            n196_assign_bx, @function
n196_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_602_0]
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
1:                                                                            jmp   n197_statement_end_α
.Lassign_α_602_0:       .quad            .Lassign_α_602_0_s
.Lassign_α_602_0_s:     .string          "OUTPUT"
                        .size            n196_assign_bx, .-n196_assign_bx
                        .type            n197_statement_end_bx, @function
n197_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_statement_end_α:   add              rsp, 16;                             jmp   n218_statement_begin_α
                        .size            n197_statement_end_bx, .-n197_statement_end_bx
                        .type            n198_statement_begin_bx, @function
n198_statement_begin_bx:
#=======================================================================================================================
# main1           OUTPUT =                :(write1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 74 0
n198_statement_begin_α:                                                       jmp   n199_lit_string_α
n198_statement_begin_β:                                                       jmp   n129_statement_begin_α
                        .size            n198_statement_begin_bx, .-n198_statement_begin_bx
                        .type            n199_lit_string_bx, @function
n199_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_607_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n200_assign_α
.Llit_string_α_607_0:   .quad            .Llit_string_α_607_0_s
.Llit_string_α_607_0_s: .string          ""
                        .size            n199_lit_string_bx, .-n199_lit_string_bx
                        .type            n200_assign_bx, @function
n200_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_608_0]
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
1:                                                                            jmp   n201_statement_end_α
.Lassign_α_608_0:       .quad            .Lassign_α_608_0_s
.Lassign_α_608_0_s:     .string          "OUTPUT"
                        .size            n200_assign_bx, .-n200_assign_bx
                        .type            n201_statement_end_bx, @function
n201_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_statement_end_α:   add              rsp, 16;                             jmp   n129_statement_begin_α
                        .size            n201_statement_end_bx, .-n201_statement_end_bx
                        .type            n202_statement_begin_bx, @function
n202_statement_begin_bx:
#=======================================================================================================================
# write1.fail     OUTPUT = "Failure."     :(main2)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n202_statement_begin_α:                                                       jmp   n203_lit_string_α
n202_statement_begin_β:                                                       jmp   n210_statement_begin_α
                        .size            n202_statement_begin_bx, .-n202_statement_begin_bx
                        .type            n203_lit_string_bx, @function
n203_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_613_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_assign_α
.Llit_string_α_613_0:   .quad            .Llit_string_α_613_0_s
.Llit_string_α_613_0_s: .string          "Failure."
                        .size            n203_lit_string_bx, .-n203_lit_string_bx
                        .type            n204_assign_bx, @function
n204_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_614_0]
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
1:                                                                            jmp   n205_statement_end_α
.Lassign_α_614_0:       .quad            .Lassign_α_614_0_s
.Lassign_α_614_0_s:     .string          "OUTPUT"
                        .size            n204_assign_bx, .-n204_assign_bx
                        .type            n205_statement_end_bx, @function
n205_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_statement_end_α:   add              rsp, 16;                             jmp   n210_statement_begin_α
                        .size            n205_statement_end_bx, .-n205_statement_end_bx
                        .type            n206_statement_begin_bx, @function
n206_statement_begin_bx:
#=======================================================================================================================
# write1.succeed  OUTPUT = "Success!"     :(write1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n206_statement_begin_α:                                                       jmp   n207_lit_string_α
n206_statement_begin_β:                                                       jmp   n131_statement_begin_α
                        .size            n206_statement_begin_bx, .-n206_statement_begin_bx
                        .type            n207_lit_string_bx, @function
n207_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_619_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n208_assign_α
.Llit_string_α_619_0:   .quad            .Llit_string_α_619_0_s
.Llit_string_α_619_0_s: .string          "Success!"
                        .size            n207_lit_string_bx, .-n207_lit_string_bx
                        .type            n208_assign_bx, @function
n208_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_620_0]
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
1:                                                                            jmp   n209_statement_end_α
.Lassign_α_620_0:       .quad            .Lassign_α_620_0_s
.Lassign_α_620_0_s:     .string          "OUTPUT"
                        .size            n208_assign_bx, .-n208_assign_bx
                        .type            n209_statement_end_bx, @function
n209_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_statement_end_α:   add              rsp, 16;                             jmp   n131_statement_begin_α
                        .size            n209_statement_end_bx, .-n209_statement_end_bx
                        .type            n210_statement_begin_bx, @function
n210_statement_begin_bx:
#=======================================================================================================================
# main2           OUTPUT =                :(write2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 77 0
n210_statement_begin_α:                                                       jmp   n211_lit_string_α
n210_statement_begin_β:                                                       jmp   n143_statement_begin_α
                        .size            n210_statement_begin_bx, .-n210_statement_begin_bx
                        .type            n211_lit_string_bx, @function
n211_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_625_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n212_assign_α
.Llit_string_α_625_0:   .quad            .Llit_string_α_625_0_s
.Llit_string_α_625_0_s: .string          ""
                        .size            n211_lit_string_bx, .-n211_lit_string_bx
                        .type            n212_assign_bx, @function
n212_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_626_0]
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
1:                                                                            jmp   n213_statement_end_α
.Lassign_α_626_0:       .quad            .Lassign_α_626_0_s
.Lassign_α_626_0_s:     .string          "OUTPUT"
                        .size            n212_assign_bx, .-n212_assign_bx
                        .type            n213_statement_end_bx, @function
n213_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_statement_end_α:   add              rsp, 16;                             jmp   n143_statement_begin_α
                        .size            n213_statement_end_bx, .-n213_statement_end_bx
                        .type            n214_statement_begin_bx, @function
n214_statement_begin_bx:
#=======================================================================================================================
# write2.fail     OUTPUT = "Failure."     :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 78 0
n214_statement_begin_α:                                                       jmp   n215_lit_string_α
n214_statement_begin_β:                                                       jmp   main_γ
                        .size            n214_statement_begin_bx, .-n214_statement_begin_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_631_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_assign_α
.Llit_string_α_631_0:   .quad            .Llit_string_α_631_0_s
.Llit_string_α_631_0_s: .string          "Failure."
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_assign_bx, @function
n216_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_632_0]
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
1:                                                                            jmp   n217_statement_end_α
.Lassign_α_632_0:       .quad            .Lassign_α_632_0_s
.Lassign_α_632_0_s:     .string          "OUTPUT"
                        .size            n216_assign_bx, .-n216_assign_bx
                        .type            n217_statement_end_bx, @function
n217_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n217_statement_end_bx, .-n217_statement_end_bx
                        .type            n218_statement_begin_bx, @function
n218_statement_begin_bx:
#=======================================================================================================================
# write2.succeed  OUTPUT = "Success!"     :(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n218_statement_begin_α:                                                       jmp   n219_lit_string_α
n218_statement_begin_β:                                                       jmp   n164_statement_begin_α
                        .size            n218_statement_begin_bx, .-n218_statement_begin_bx
                        .type            n219_lit_string_bx, @function
n219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_637_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_assign_α
.Llit_string_α_637_0:   .quad            .Llit_string_α_637_0_s
.Llit_string_α_637_0_s: .string          "Success!"
                        .size            n219_lit_string_bx, .-n219_lit_string_bx
                        .type            n220_assign_bx, @function
n220_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_638_0]
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
1:                                                                            jmp   n221_statement_end_α
.Lassign_α_638_0:       .quad            .Lassign_α_638_0_s
.Lassign_α_638_0_s:     .string          "OUTPUT"
                        .size            n220_assign_bx, .-n220_assign_bx
                        .type            n221_statement_end_bx, @function
n221_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_statement_end_α:   add              rsp, 16;                             jmp   n164_statement_begin_α
                        .size            n221_statement_end_bx, .-n221_statement_end_bx
                        .type            n222_statement_begin_bx, @function
n222_statement_begin_bx:
#=======================================================================================================================
# exception       TERMINAL = "Exception!" :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n222_statement_begin_α:                                                       jmp   n223_lit_string_α
n222_statement_begin_β:                                                       jmp   main_γ
                        .size            n222_statement_begin_bx, .-n222_statement_begin_bx
                        .type            n223_lit_string_bx, @function
n223_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_643_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n224_assign_α
.Llit_string_α_643_0:   .quad            .Llit_string_α_643_0_s
.Llit_string_α_643_0_s: .string          "Exception!"
                        .size            n223_lit_string_bx, .-n223_lit_string_bx
                        .type            n224_assign_bx, @function
n224_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_644_0]
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
1:                                                                            jmp   n225_statement_end_α
.Lassign_α_644_0:       .quad            .Lassign_α_644_0_s
.Lassign_α_644_0_s:     .string          "TERMINAL"
                        .size            n224_assign_bx, .-n224_assign_bx
                        .type            n225_statement_end_bx, @function
n225_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n225_statement_end_bx, .-n225_statement_end_bx
                        .type            n226_goto_bx, @function
n226_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_goto_α:                                                                  jmp   n2_statement_begin_α
n226_goto_β:                                                                  jmp   main_ω
                        .size            n226_goto_bx, .-n226_goto_bx
                        .type            n227_goto_bx, @function
n227_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_goto_α:                                                                  jmp   n4_statement_begin_α
n227_goto_β:                                                                  jmp   main_ω
                        .size            n227_goto_bx, .-n227_goto_bx
                        .type            n228_goto_bx, @function
n228_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_goto_α:                                                                  jmp   n8_statement_begin_α
n228_goto_β:                                                                  jmp   main_ω
                        .size            n228_goto_bx, .-n228_goto_bx
                        .type            n229_goto_bx, @function
n229_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_goto_α:                                                                  jmp   n10_statement_begin_α
n229_goto_β:                                                                  jmp   main_ω
                        .size            n229_goto_bx, .-n229_goto_bx
                        .type            n230_goto_bx, @function
n230_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_goto_α:                                                                  jmp   n14_statement_begin_α
n230_goto_β:                                                                  jmp   main_ω
                        .size            n230_goto_bx, .-n230_goto_bx
                        .type            n231_goto_bx, @function
n231_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_goto_α:                                                                  jmp   n16_statement_begin_α
n231_goto_β:                                                                  jmp   main_ω
                        .size            n231_goto_bx, .-n231_goto_bx
                        .type            n232_goto_bx, @function
n232_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_goto_α:                                                                  jmp   n20_statement_begin_α
n232_goto_β:                                                                  jmp   main_ω
                        .size            n232_goto_bx, .-n232_goto_bx
                        .type            n233_goto_bx, @function
n233_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_goto_α:                                                                  jmp   n22_statement_begin_α
n233_goto_β:                                                                  jmp   main_ω
                        .size            n233_goto_bx, .-n233_goto_bx
                        .type            n234_goto_bx, @function
n234_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_goto_α:                                                                  jmp   n24_statement_begin_α
n234_goto_β:                                                                  jmp   main_ω
                        .size            n234_goto_bx, .-n234_goto_bx
                        .type            n235_goto_bx, @function
n235_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_goto_α:                                                                  jmp   n26_statement_begin_α
n235_goto_β:                                                                  jmp   main_ω
                        .size            n235_goto_bx, .-n235_goto_bx
                        .type            n236_goto_bx, @function
n236_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_goto_α:                                                                  jmp   n28_statement_begin_α
n236_goto_β:                                                                  jmp   main_ω
                        .size            n236_goto_bx, .-n236_goto_bx
                        .type            n237_goto_bx, @function
n237_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_goto_α:                                                                  jmp   n39_statement_begin_α
n237_goto_β:                                                                  jmp   main_ω
                        .size            n237_goto_bx, .-n237_goto_bx
                        .type            n238_goto_bx, @function
n238_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_goto_α:                                                                  jmp   n45_statement_begin_α
n238_goto_β:                                                                  jmp   main_ω
                        .size            n238_goto_bx, .-n238_goto_bx
                        .type            n239_goto_bx, @function
n239_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_goto_α:                                                                  jmp   n47_statement_begin_α
n239_goto_β:                                                                  jmp   main_ω
                        .size            n239_goto_bx, .-n239_goto_bx
                        .type            n240_goto_bx, @function
n240_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_goto_α:                                                                  jmp   n51_statement_begin_α
n240_goto_β:                                                                  jmp   main_ω
                        .size            n240_goto_bx, .-n240_goto_bx
                        .type            n241_goto_bx, @function
n241_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_goto_α:                                                                  jmp   n55_statement_begin_α
n241_goto_β:                                                                  jmp   main_ω
                        .size            n241_goto_bx, .-n241_goto_bx
                        .type            n242_goto_bx, @function
n242_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_goto_α:                                                                  jmp   n57_statement_begin_α
n242_goto_β:                                                                  jmp   main_ω
                        .size            n242_goto_bx, .-n242_goto_bx
                        .type            n243_goto_bx, @function
n243_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_goto_α:                                                                  jmp   n61_statement_begin_α
n243_goto_β:                                                                  jmp   main_ω
                        .size            n243_goto_bx, .-n243_goto_bx
                        .type            n244_goto_bx, @function
n244_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_goto_α:                                                                  jmp   n63_statement_begin_α
n244_goto_β:                                                                  jmp   main_ω
                        .size            n244_goto_bx, .-n244_goto_bx
                        .type            n245_goto_bx, @function
n245_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_goto_α:                                                                  jmp   n65_statement_begin_α
n245_goto_β:                                                                  jmp   main_ω
                        .size            n245_goto_bx, .-n245_goto_bx
                        .type            n246_goto_bx, @function
n246_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_goto_α:                                                                  jmp   n67_statement_begin_α
n246_goto_β:                                                                  jmp   main_ω
                        .size            n246_goto_bx, .-n246_goto_bx
                        .type            n247_goto_bx, @function
n247_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_goto_α:                                                                  jmp   n69_statement_begin_α
n247_goto_β:                                                                  jmp   main_ω
                        .size            n247_goto_bx, .-n247_goto_bx
                        .type            n248_goto_bx, @function
n248_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_goto_α:                                                                  jmp   n80_statement_begin_α
n248_goto_β:                                                                  jmp   main_ω
                        .size            n248_goto_bx, .-n248_goto_bx
                        .type            n249_goto_bx, @function
n249_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_goto_α:                                                                  jmp   n86_statement_begin_α
n249_goto_β:                                                                  jmp   main_ω
                        .size            n249_goto_bx, .-n249_goto_bx
                        .type            n250_goto_bx, @function
n250_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_goto_α:                                                                  jmp   n88_statement_begin_α
n250_goto_β:                                                                  jmp   main_ω
                        .size            n250_goto_bx, .-n250_goto_bx
                        .type            n251_goto_bx, @function
n251_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_goto_α:                                                                  jmp   n92_statement_begin_α
n251_goto_β:                                                                  jmp   main_ω
                        .size            n251_goto_bx, .-n251_goto_bx
                        .type            n252_goto_bx, @function
n252_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_goto_α:                                                                  jmp   n94_statement_begin_α
n252_goto_β:                                                                  jmp   main_ω
                        .size            n252_goto_bx, .-n252_goto_bx
                        .type            n253_goto_bx, @function
n253_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_goto_α:                                                                  jmp   n96_statement_begin_α
n253_goto_β:                                                                  jmp   main_ω
                        .size            n253_goto_bx, .-n253_goto_bx
                        .type            n254_goto_bx, @function
n254_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_goto_α:                                                                  jmp   n98_statement_begin_α
n254_goto_β:                                                                  jmp   main_ω
                        .size            n254_goto_bx, .-n254_goto_bx
                        .type            n255_goto_bx, @function
n255_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_goto_α:                                                                  jmp   n100_statement_begin_α
n255_goto_β:                                                                  jmp   main_ω
                        .size            n255_goto_bx, .-n255_goto_bx
                        .type            n256_goto_bx, @function
n256_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_goto_α:                                                                  jmp   n102_statement_begin_α
n256_goto_β:                                                                  jmp   main_ω
                        .size            n256_goto_bx, .-n256_goto_bx
                        .type            n257_goto_bx, @function
n257_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_goto_α:                                                                  jmp   n108_statement_begin_α
n257_goto_β:                                                                  jmp   main_ω
                        .size            n257_goto_bx, .-n257_goto_bx
                        .type            n258_goto_bx, @function
n258_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_goto_α:                                                                  jmp   n110_statement_begin_α
n258_goto_β:                                                                  jmp   main_ω
                        .size            n258_goto_bx, .-n258_goto_bx
                        .type            n259_goto_bx, @function
n259_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_goto_α:                                                                  jmp   n112_statement_begin_α
n259_goto_β:                                                                  jmp   main_ω
                        .size            n259_goto_bx, .-n259_goto_bx
                        .type            n260_goto_bx, @function
n260_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_goto_α:                                                                  jmp   n114_statement_begin_α
n260_goto_β:                                                                  jmp   main_ω
                        .size            n260_goto_bx, .-n260_goto_bx
                        .type            n261_goto_bx, @function
n261_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_goto_α:                                                                  jmp   n116_statement_begin_α
n261_goto_β:                                                                  jmp   main_ω
                        .size            n261_goto_bx, .-n261_goto_bx
                        .type            n262_goto_bx, @function
n262_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_goto_α:                                                                  jmp   n118_statement_begin_α
n262_goto_β:                                                                  jmp   main_ω
                        .size            n262_goto_bx, .-n262_goto_bx
                        .type            n263_goto_bx, @function
n263_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_goto_α:                                                                  jmp   n129_statement_begin_α
n263_goto_β:                                                                  jmp   main_ω
                        .size            n263_goto_bx, .-n263_goto_bx
                        .type            n264_goto_bx, @function
n264_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_goto_α:                                                                  jmp   n131_statement_begin_α
n264_goto_β:                                                                  jmp   main_ω
                        .size            n264_goto_bx, .-n264_goto_bx
                        .type            n265_goto_bx, @function
n265_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_goto_α:                                                                  jmp   n133_statement_begin_α
n265_goto_β:                                                                  jmp   main_ω
                        .size            n265_goto_bx, .-n265_goto_bx
                        .type            n266_goto_bx, @function
n266_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_goto_α:                                                                  jmp   n135_statement_begin_α
n266_goto_β:                                                                  jmp   main_ω
                        .size            n266_goto_bx, .-n266_goto_bx
                        .type            n267_goto_bx, @function
n267_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_goto_α:                                                                  jmp   n143_statement_begin_α
n267_goto_β:                                                                  jmp   main_ω
                        .size            n267_goto_bx, .-n267_goto_bx
                        .type            n268_goto_bx, @function
n268_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_goto_α:                                                                  jmp   n147_statement_begin_α
n268_goto_β:                                                                  jmp   main_ω
                        .size            n268_goto_bx, .-n268_goto_bx
                        .type            n269_goto_bx, @function
n269_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_goto_α:                                                                  jmp   n153_statement_begin_α
n269_goto_β:                                                                  jmp   main_ω
                        .size            n269_goto_bx, .-n269_goto_bx
                        .type            n270_goto_bx, @function
n270_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_goto_α:                                                                  jmp   n164_statement_begin_α
n270_goto_β:                                                                  jmp   main_ω
                        .size            n270_goto_bx, .-n270_goto_bx
                        .type            n271_goto_bx, @function
n271_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_goto_α:                                                                  jmp   n170_statement_begin_α
n271_goto_β:                                                                  jmp   main_ω
                        .size            n271_goto_bx, .-n271_goto_bx
                        .type            n272_goto_bx, @function
n272_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_goto_α:                                                                  jmp   n198_statement_begin_α
n272_goto_β:                                                                  jmp   main_ω
                        .size            n272_goto_bx, .-n272_goto_bx
                        .type            n273_goto_bx, @function
n273_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_goto_α:                                                                  jmp   n202_statement_begin_α
n273_goto_β:                                                                  jmp   main_ω
                        .size            n273_goto_bx, .-n273_goto_bx
                        .type            n274_goto_bx, @function
n274_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_goto_α:                                                                  jmp   n206_statement_begin_α
n274_goto_β:                                                                  jmp   main_ω
                        .size            n274_goto_bx, .-n274_goto_bx
                        .type            n275_goto_bx, @function
n275_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_goto_α:                                                                  jmp   n210_statement_begin_α
n275_goto_β:                                                                  jmp   main_ω
                        .size            n275_goto_bx, .-n275_goto_bx
                        .type            n276_goto_bx, @function
n276_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_goto_α:                                                                  jmp   n214_statement_begin_α
n276_goto_β:                                                                  jmp   main_ω
                        .size            n276_goto_bx, .-n276_goto_bx
                        .type            n277_goto_bx, @function
n277_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_goto_α:                                                                  jmp   n218_statement_begin_α
n277_goto_β:                                                                  jmp   main_ω
                        .size            n277_goto_bx, .-n277_goto_bx
                        .type            n278_goto_bx, @function
n278_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_goto_α:                                                                  jmp   n222_statement_begin_α
n278_goto_β:                                                                  jmp   main_ω
                        .size            n278_goto_bx, .-n278_goto_bx
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
                        .quad            4742990351706
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            1088
                        .quad            1
                        .quad            1196268651020288
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
