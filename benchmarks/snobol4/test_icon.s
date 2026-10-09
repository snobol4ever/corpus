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
                        lea              rdi, [rip + __alpha_cellp_tab]
                        call             rt_ab_cell_bind_table@PLT
                        lea              rdi, [rip + __label_names]
                        mov              esi, 54
                        call             rt_label_table_install@PLT
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
                        mov              qword ptr [rsp + 2088], rax
                        mov              dword ptr [rsp + 2080], 160
                        mov              dword ptr [rsp + 2084], 2096
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
.Lgcsite_main_0:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_1:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_341_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_341_240:       mov              qword ptr [rsp + 0], rax             # result
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
.Lgcsite_main_2:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        push             rax
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_point_arr_probe_c@PLT
.Lgcsite_main_3:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_342_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
.Lcall_α_342_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_statement_begin_α
n1_call_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_statement_begin_bx, @function
n2_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "test_icon.sno"
                        .popsection
.Lstatement_begin_α_343_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_343_stno
                        .long            1
                        .long            1
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# START                                   :(main1)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 1 0
n2_statement_begin_α:                                                         jmp   n3_statement_end_α
n2_statement_begin_β:                                                         jmp   n4_setexit_test_α
                        .size            n2_statement_begin_bx, .-n2_statement_begin_bx
                        .type            n3_statement_end_bx, @function
n3_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_statement_end_α:                                                           jmp   n253_statement_begin_α
                        .size            n3_statement_end_bx, .-n3_statement_end_bx
                        .type            n4_setexit_test_bx, @function
n4_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_setexit_test_α:      mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_347_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_347_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_347_61:
.Lsetexit_test_α_347_1:                                                       jmp   n253_statement_begin_α
                        .size            n4_setexit_test_bx, .-n4_setexit_test_bx
                        .type            n5_statement_begin_bx, @function
n5_statement_begin_bx:
.Lstatement_begin_α_348_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_348_stno
                        .long            2
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x5.start        x5.V = 5                :(x5.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n5_statement_begin_α:                                                         jmp   n6_lit_integer_α
n5_statement_begin_β:                                                         jmp   n9_setexit_test_α
                        .size            n5_statement_begin_bx, .-n5_statement_begin_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_350_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n7_assign_α
.Llit_integer_α_350_0:  .quad            5
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_assign_bx, @function
n7_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # x5.V
                        mov              qword ptr [r9 + 8], rdx;             jmp   n8_statement_end_α
                        .size            n7_assign_bx, .-n7_assign_bx
                        .type            n8_statement_end_bx, @function
n8_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_statement_end_α:     add              rsp, 16;                             jmp   n153_statement_begin_α
                        .size            n8_statement_end_bx, .-n8_statement_end_bx
                        .type            n9_setexit_test_bx, @function
n9_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_setexit_test_α:      mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_354_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_354_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_354_61:
.Lsetexit_test_α_354_1:                                                       jmp   n153_statement_begin_α
                        .size            n9_setexit_test_bx, .-n9_setexit_test_bx
                        .type            n10_statement_begin_bx, @function
n10_statement_begin_bx:
.Lstatement_begin_α_355_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_355_stno
                        .long            3
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x5.resume                               :(x5.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n10_statement_begin_α:                                                        jmp   n11_statement_end_α
n10_statement_begin_β:                                                        jmp   n12_setexit_test_α
                        .size            n10_statement_begin_bx, .-n10_statement_begin_bx
                        .type            n11_statement_end_bx, @function
n11_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_statement_end_α:                                                          jmp   n144_statement_begin_α
                        .size            n11_statement_end_bx, .-n11_statement_end_bx
                        .type            n12_setexit_test_bx, @function
n12_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_359_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_359_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_359_61:
.Lsetexit_test_α_359_1:                                                       jmp   n144_statement_begin_α
                        .size            n12_setexit_test_bx, .-n12_setexit_test_bx
                        .type            n13_statement_begin_bx, @function
n13_statement_begin_bx:
.Lstatement_begin_α_360_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_360_stno
                        .long            4
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x1.start        x1.V = 1                :(x1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n13_statement_begin_α:                                                        jmp   n14_lit_integer_α
n13_statement_begin_β:                                                        jmp   n17_setexit_test_α
                        .size            n13_statement_begin_bx, .-n13_statement_begin_bx
                        .type            n14_lit_integer_bx, @function
n14_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_362_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n15_assign_α
.Llit_integer_α_362_0:  .quad            1
                        .size            n14_lit_integer_bx, .-n14_lit_integer_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # x1.V
                        mov              qword ptr [r9 + 24], rdx;            jmp   n16_statement_end_α
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_statement_end_bx, @function
n16_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    add              rsp, 16;                             jmp   n58_statement_begin_α
                        .size            n16_statement_end_bx, .-n16_statement_end_bx
                        .type            n17_setexit_test_bx, @function
n17_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_366_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_366_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_366_61:
.Lsetexit_test_α_366_1:                                                       jmp   n58_statement_begin_α
                        .size            n17_setexit_test_bx, .-n17_setexit_test_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
.Lstatement_begin_α_367_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_367_stno
                        .long            5
                        .long            10
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x1.resume                               :(x1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n18_statement_begin_α:                                                        jmp   n19_statement_end_α
n18_statement_begin_β:                                                        jmp   n20_setexit_test_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_statement_end_bx, @function
n19_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_statement_end_α:                                                          jmp   n32_statement_begin_α
                        .size            n19_statement_end_bx, .-n19_statement_end_bx
                        .type            n20_setexit_test_bx, @function
n20_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_371_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_371_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_371_61:
.Lsetexit_test_α_371_1:                                                       jmp   n32_statement_begin_α
                        .size            n20_setexit_test_bx, .-n20_setexit_test_bx
                        .type            n21_statement_begin_bx, @function
n21_statement_begin_bx:
.Lstatement_begin_α_372_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_372_stno
                        .long            6
                        .long            12
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x2.start        x2.V = 2                :(x2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n21_statement_begin_α:                                                        jmp   n22_lit_integer_α
n21_statement_begin_β:                                                        jmp   n25_setexit_test_α
                        .size            n21_statement_begin_bx, .-n21_statement_begin_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_374_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n23_assign_α
.Llit_integer_α_374_0:  .quad            2
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_assign_bx, @function
n23_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # x2.V
                        mov              qword ptr [r9 + 40], rdx;            jmp   n24_statement_end_α
                        .size            n23_assign_bx, .-n23_assign_bx
                        .type            n24_statement_end_bx, @function
n24_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_statement_end_α:    add              rsp, 16;                             jmp   n61_statement_begin_α
                        .size            n24_statement_end_bx, .-n24_statement_end_bx
                        .type            n25_setexit_test_bx, @function
n25_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_378_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_378_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_378_61:
.Lsetexit_test_α_378_1:                                                       jmp   n61_statement_begin_α
                        .size            n25_setexit_test_bx, .-n25_setexit_test_bx
                        .type            n26_statement_begin_bx, @function
n26_statement_begin_bx:
.Lstatement_begin_α_379_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_379_stno
                        .long            7
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x2.resume                               :(x2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n26_statement_begin_α:                                                        jmp   n27_statement_end_α
n26_statement_begin_β:                                                        jmp   n28_setexit_test_α
                        .size            n26_statement_begin_bx, .-n26_statement_begin_bx
                        .type            n27_statement_end_bx, @function
n27_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_statement_end_α:                                                          jmp   n35_statement_begin_α
                        .size            n27_statement_end_bx, .-n27_statement_end_bx
                        .type            n28_setexit_test_bx, @function
n28_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_383_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_383_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_383_61:
.Lsetexit_test_α_383_1:                                                       jmp   n35_statement_begin_α
                        .size            n28_setexit_test_bx, .-n28_setexit_test_bx
                        .type            n29_statement_begin_bx, @function
n29_statement_begin_bx:
.Lstatement_begin_α_384_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_384_stno
                        .long            8
                        .long            15
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to1.start                               :(x1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n29_statement_begin_α:                                                        jmp   n30_statement_end_α
n29_statement_begin_β:                                                        jmp   n31_setexit_test_α
                        .size            n29_statement_begin_bx, .-n29_statement_begin_bx
                        .type            n30_statement_end_bx, @function
n30_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_statement_end_α:                                                          jmp   n13_statement_begin_α
                        .size            n30_statement_end_bx, .-n30_statement_end_bx
                        .type            n31_setexit_test_bx, @function
n31_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_388_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_388_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_388_61:
.Lsetexit_test_α_388_1:                                                       jmp   n13_statement_begin_α
                        .size            n31_setexit_test_bx, .-n31_setexit_test_bx
                        .type            n32_statement_begin_bx, @function
n32_statement_begin_bx:
.Lstatement_begin_α_389_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_389_stno
                        .long            9
                        .long            16
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x1.fail                                 :(to1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n32_statement_begin_α:                                                        jmp   n33_statement_end_α
n32_statement_begin_β:                                                        jmp   n34_setexit_test_α
                        .size            n32_statement_begin_bx, .-n32_statement_begin_bx
                        .type            n33_statement_end_bx, @function
n33_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_statement_end_α:                                                          jmp   n122_statement_begin_α
                        .size            n33_statement_end_bx, .-n33_statement_end_bx
                        .type            n34_setexit_test_bx, @function
n34_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_393_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_393_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_393_61:
.Lsetexit_test_α_393_1:                                                       jmp   n122_statement_begin_α
                        .size            n34_setexit_test_bx, .-n34_setexit_test_bx
                        .type            n35_statement_begin_bx, @function
n35_statement_begin_bx:
.Lstatement_begin_α_394_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_394_stno
                        .long            10
                        .long            17
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x2.fail                                 :(x1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n35_statement_begin_α:                                                        jmp   n36_statement_end_α
n35_statement_begin_β:                                                        jmp   n37_setexit_test_α
                        .size            n35_statement_begin_bx, .-n35_statement_begin_bx
                        .type            n36_statement_end_bx, @function
n36_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_statement_end_α:                                                          jmp   n18_statement_begin_α
                        .size            n36_statement_end_bx, .-n36_statement_end_bx
                        .type            n37_setexit_test_bx, @function
n37_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_398_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_398_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_398_61:
.Lsetexit_test_α_398_1:                                                       jmp   n18_statement_begin_α
                        .size            n37_setexit_test_bx, .-n37_setexit_test_bx
                        .type            n38_statement_begin_bx, @function
n38_statement_begin_bx:
.Lstatement_begin_α_399_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_399_stno
                        .long            11
                        .long            18
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to1.code        LE(to1.I, x2.V)         :F(x2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n38_statement_begin_α:                                                        jmp   n39_var_α
n38_statement_begin_β:                                                        jmp   n45_setexit_test_α
                        .size            n38_statement_begin_bx, .-n38_statement_begin_bx
                        .type            n39_var_bx, @function
n39_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n40_var_α
                        .size            n39_var_bx, .-n39_var_bx
                        .type            n40_var_bx, @function
n40_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # x2.V
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_coerce_numeric_α
n40_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n38_statement_begin_β
                        .size            n40_var_bx, .-n40_var_bx
                        .type            n41_coerce_numeric_bx, @function
n41_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_404_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_404_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_404_0
.Lcoerce_numeric_α_404_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_coerce_numeric_α
.Lcoerce_numeric_α_404_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_5:        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_404_240
                        add              rsp, 16;                             jmp   n40_var_β
.Lcoerce_numeric_α_404_240:
                                                                              jmp   n42_coerce_numeric_α
n41_coerce_numeric_β:   add              rsp, 16;                             jmp   n40_var_β
                        .size            n41_coerce_numeric_bx, .-n41_coerce_numeric_bx
                        .type            n42_coerce_numeric_bx, @function
n42_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_406_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_406_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_406_0
.Lcoerce_numeric_α_406_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n43_cmp_test_α
.Lcoerce_numeric_α_406_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_7:        push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_406_240
                        add              rsp, 16;                             jmp   n41_coerce_numeric_β
.Lcoerce_numeric_α_406_240:
                                                                              jmp   n43_cmp_test_α
n42_coerce_numeric_β:   add              rsp, 16;                             jmp   n41_coerce_numeric_β
                        .size            n42_coerce_numeric_bx, .-n42_coerce_numeric_bx
                        .type            n43_cmp_test_bx, @function
n43_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_408_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_408_239
                        add              rsp, 16;                             jmp   n42_coerce_numeric_β
.Lcmp_test_α_408_239:                                                         jmp   n44_statement_end_α
.Lcmp_test_α_408_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_8:        test             eax, eax;                            jle   .Lcmp_test_α_408_240
                        add              rsp, 16;                             jmp   n42_coerce_numeric_β
.Lcmp_test_α_408_240:                                                         jmp   n44_statement_end_α
                        .size            n43_cmp_test_bx, .-n43_cmp_test_bx
                        .type            n44_statement_end_bx, @function
n44_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    add              rsp, 80;                             jmp   n46_statement_begin_α
                        .size            n44_statement_end_bx, .-n44_statement_end_bx
                        .type            n45_setexit_test_bx, @function
n45_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_411_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_411_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_411_61:
.Lsetexit_test_α_411_1:                                                       jmp   n26_statement_begin_α
                        .size            n45_setexit_test_bx, .-n45_setexit_test_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
.Lstatement_begin_α_412_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_412_stno
                        .long            12
                        .long            19
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 to1.V = to1.I           :(to1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n46_statement_begin_α:                                                        jmp   n47_var_α
n46_statement_begin_β:                                                        jmp   n50_setexit_test_α
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_var_bx, @function
n47_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n48_assign_α
                        .size            n47_var_bx, .-n47_var_bx
                        .type            n48_assign_bx, @function
n48_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # to1.V
                        mov              qword ptr [r9 + 72], rdx;            jmp   n49_statement_end_α
                        .size            n48_assign_bx, .-n48_assign_bx
                        .type            n49_statement_end_bx, @function
n49_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    add              rsp, 16;                             jmp   n131_statement_begin_α
                        .size            n49_statement_end_bx, .-n49_statement_end_bx
                        .type            n50_setexit_test_bx, @function
n50_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_418_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_418_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_418_61:
.Lsetexit_test_α_418_1:                                                       jmp   n131_statement_begin_α
                        .size            n50_setexit_test_bx, .-n50_setexit_test_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
.Lstatement_begin_α_419_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_419_stno
                        .long            13
                        .long            20
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to1.resume      to1.I = to1.I + 1       :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n51_statement_begin_α:                                                        jmp   n52_var_α
n51_statement_begin_β:                                                        jmp   n57_setexit_test_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # to1.I
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_lit_integer_α
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_lit_integer_bx, @function
n53_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_422_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_binop_α
n53_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
.Llit_integer_α_422_0:  .quad            1
                        .size            n53_lit_integer_bx, .-n53_lit_integer_bx
                        .type            n54_binop_bx, @function
n54_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_423_2
                        add              rax, 1;                              jo    .Lbinop_α_423_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_423_7
.Lbinop_α_423_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_423_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_423_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_423_4
.Lbinop_α_423_3:        movq             xmm0, rsi
.Lbinop_α_423_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_423_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_423_7:                                                              jmp   n55_assign_α
.Lbinop_α_423_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_add_sno@PLT
.Lgcsite_main_10:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_423_240
                        add              rsp, 16;                             jmp   n53_lit_integer_β
.Lbinop_α_423_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:256
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_9:        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n55_assign_α
n54_binop_β:            add              rsp, 16;                             jmp   n53_lit_integer_β
                        .size            n54_binop_bx, .-n54_binop_bx
                        .type            n55_assign_bx, @function
n55_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_assign_α:           mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n56_statement_end_α
                        .size            n55_assign_bx, .-n55_assign_bx
                        .type            n56_statement_end_bx, @function
n56_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_statement_end_α:    add              rsp, 48;                             jmp   n38_statement_begin_α
                        .size            n56_statement_end_bx, .-n56_statement_end_bx
                        .type            n57_setexit_test_bx, @function
n57_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_427_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_427_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_427_61:
.Lsetexit_test_α_427_1:                                                       jmp   n38_statement_begin_α
                        .size            n57_setexit_test_bx, .-n57_setexit_test_bx
                        .type            n58_statement_begin_bx, @function
n58_statement_begin_bx:
.Lstatement_begin_α_428_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_428_stno
                        .long            14
                        .long            21
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x1.succeed                              :(x2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n58_statement_begin_α:                                                        jmp   n59_statement_end_α
n58_statement_begin_β:                                                        jmp   n60_setexit_test_α
                        .size            n58_statement_begin_bx, .-n58_statement_begin_bx
                        .type            n59_statement_end_bx, @function
n59_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_statement_end_α:                                                          jmp   n21_statement_begin_α
                        .size            n59_statement_end_bx, .-n59_statement_end_bx
                        .type            n60_setexit_test_bx, @function
n60_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_432_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_432_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_432_61:
.Lsetexit_test_α_432_1:                                                       jmp   n21_statement_begin_α
                        .size            n60_setexit_test_bx, .-n60_setexit_test_bx
                        .type            n61_statement_begin_bx, @function
n61_statement_begin_bx:
.Lstatement_begin_α_433_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_433_stno
                        .long            15
                        .long            22
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x2.succeed      to1.I = x1.V            :(to1.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n61_statement_begin_α:                                                        jmp   n62_var_α
n61_statement_begin_β:                                                        jmp   n65_setexit_test_α
                        .size            n61_statement_begin_bx, .-n61_statement_begin_bx
                        .type            n62_var_bx, @function
n62_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # x1.V
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n63_assign_α
                        .size            n62_var_bx, .-n62_var_bx
                        .type            n63_assign_bx, @function
n63_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_assign_α:           mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # to1.I
                        mov              qword ptr [r9 + 56], rdx;            jmp   n64_statement_end_α
                        .size            n63_assign_bx, .-n63_assign_bx
                        .type            n64_statement_end_bx, @function
n64_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_statement_end_α:    add              rsp, 16;                             jmp   n38_statement_begin_α
                        .size            n64_statement_end_bx, .-n64_statement_end_bx
                        .type            n65_setexit_test_bx, @function
n65_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_439_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_439_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_439_61:
.Lsetexit_test_α_439_1:                                                       jmp   n38_statement_begin_α
                        .size            n65_setexit_test_bx, .-n65_setexit_test_bx
                        .type            n66_statement_begin_bx, @function
n66_statement_begin_bx:
.Lstatement_begin_α_440_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_440_stno
                        .long            16
                        .long            24
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x3.start        x3.V = 3                :(x3.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n66_statement_begin_α:                                                        jmp   n67_lit_integer_α
n66_statement_begin_β:                                                        jmp   n70_setexit_test_α
                        .size            n66_statement_begin_bx, .-n66_statement_begin_bx
                        .type            n67_lit_integer_bx, @function
n67_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_442_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n68_assign_α
.Llit_integer_α_442_0:  .quad            3
                        .size            n67_lit_integer_bx, .-n67_lit_integer_bx
                        .type            n68_assign_bx, @function
n68_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # x3.V
                        mov              qword ptr [r9 + 88], rdx;            jmp   n69_statement_end_α
                        .size            n68_assign_bx, .-n68_assign_bx
                        .type            n69_statement_end_bx, @function
n69_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_statement_end_α:    add              rsp, 16;                             jmp   n111_statement_begin_α
                        .size            n69_statement_end_bx, .-n69_statement_end_bx
                        .type            n70_setexit_test_bx, @function
n70_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_446_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_446_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_446_61:
.Lsetexit_test_α_446_1:                                                       jmp   n111_statement_begin_α
                        .size            n70_setexit_test_bx, .-n70_setexit_test_bx
                        .type            n71_statement_begin_bx, @function
n71_statement_begin_bx:
.Lstatement_begin_α_447_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_447_stno
                        .long            17
                        .long            25
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x3.resume                               :(x3.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n71_statement_begin_α:                                                        jmp   n72_statement_end_α
n71_statement_begin_β:                                                        jmp   n73_setexit_test_α
                        .size            n71_statement_begin_bx, .-n71_statement_begin_bx
                        .type            n72_statement_end_bx, @function
n72_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_statement_end_α:                                                          jmp   n85_statement_begin_α
                        .size            n72_statement_end_bx, .-n72_statement_end_bx
                        .type            n73_setexit_test_bx, @function
n73_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_451_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_451_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_451_61:
.Lsetexit_test_α_451_1:                                                       jmp   n85_statement_begin_α
                        .size            n73_setexit_test_bx, .-n73_setexit_test_bx
                        .type            n74_statement_begin_bx, @function
n74_statement_begin_bx:
.Lstatement_begin_α_452_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_452_stno
                        .long            18
                        .long            27
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x4.start        x4.V = 4                :(x4.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n74_statement_begin_α:                                                        jmp   n75_lit_integer_α
n74_statement_begin_β:                                                        jmp   n78_setexit_test_α
                        .size            n74_statement_begin_bx, .-n74_statement_begin_bx
                        .type            n75_lit_integer_bx, @function
n75_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n75_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_454_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n76_assign_α
.Llit_integer_α_454_0:  .quad            4
                        .size            n75_lit_integer_bx, .-n75_lit_integer_bx
                        .type            n76_assign_bx, @function
n76_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 96], rax             # x4.V
                        mov              qword ptr [r9 + 104], rdx;           jmp   n77_statement_end_α
                        .size            n76_assign_bx, .-n76_assign_bx
                        .type            n77_statement_end_bx, @function
n77_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_statement_end_α:    add              rsp, 16;                             jmp   n114_statement_begin_α
                        .size            n77_statement_end_bx, .-n77_statement_end_bx
                        .type            n78_setexit_test_bx, @function
n78_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_458_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_458_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_458_61:
.Lsetexit_test_α_458_1:                                                       jmp   n114_statement_begin_α
                        .size            n78_setexit_test_bx, .-n78_setexit_test_bx
                        .type            n79_statement_begin_bx, @function
n79_statement_begin_bx:
.Lstatement_begin_α_459_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_459_stno
                        .long            19
                        .long            28
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x4.resume                               :(x4.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n79_statement_begin_α:                                                        jmp   n80_statement_end_α
n79_statement_begin_β:                                                        jmp   n81_setexit_test_α
                        .size            n79_statement_begin_bx, .-n79_statement_begin_bx
                        .type            n80_statement_end_bx, @function
n80_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_statement_end_α:                                                          jmp   n88_statement_begin_α
                        .size            n80_statement_end_bx, .-n80_statement_end_bx
                        .type            n81_setexit_test_bx, @function
n81_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_463_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_463_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_463_61:
.Lsetexit_test_α_463_1:                                                       jmp   n88_statement_begin_α
                        .size            n81_setexit_test_bx, .-n81_setexit_test_bx
                        .type            n82_statement_begin_bx, @function
n82_statement_begin_bx:
.Lstatement_begin_α_464_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_464_stno
                        .long            20
                        .long            30
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to2.start                               :(x3.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n82_statement_begin_α:                                                        jmp   n83_statement_end_α
n82_statement_begin_β:                                                        jmp   n84_setexit_test_α
                        .size            n82_statement_begin_bx, .-n82_statement_begin_bx
                        .type            n83_statement_end_bx, @function
n83_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_statement_end_α:                                                          jmp   n66_statement_begin_α
                        .size            n83_statement_end_bx, .-n83_statement_end_bx
                        .type            n84_setexit_test_bx, @function
n84_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_468_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_468_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_468_61:
.Lsetexit_test_α_468_1:                                                       jmp   n66_statement_begin_α
                        .size            n84_setexit_test_bx, .-n84_setexit_test_bx
                        .type            n85_statement_begin_bx, @function
n85_statement_begin_bx:
.Lstatement_begin_α_469_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_469_stno
                        .long            21
                        .long            31
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x3.fail                                 :(to2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n85_statement_begin_α:                                                        jmp   n86_statement_end_α
n85_statement_begin_β:                                                        jmp   n87_setexit_test_α
                        .size            n85_statement_begin_bx, .-n85_statement_begin_bx
                        .type            n86_statement_end_bx, @function
n86_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_statement_end_α:                                                          jmp   n125_statement_begin_α
                        .size            n86_statement_end_bx, .-n86_statement_end_bx
                        .type            n87_setexit_test_bx, @function
n87_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_473_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_473_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_473_61:
.Lsetexit_test_α_473_1:                                                       jmp   n125_statement_begin_α
                        .size            n87_setexit_test_bx, .-n87_setexit_test_bx
                        .type            n88_statement_begin_bx, @function
n88_statement_begin_bx:
.Lstatement_begin_α_474_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_474_stno
                        .long            22
                        .long            32
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x4.fail                                 :(x3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n88_statement_begin_α:                                                        jmp   n89_statement_end_α
n88_statement_begin_β:                                                        jmp   n90_setexit_test_α
                        .size            n88_statement_begin_bx, .-n88_statement_begin_bx
                        .type            n89_statement_end_bx, @function
n89_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_statement_end_α:                                                          jmp   n71_statement_begin_α
                        .size            n89_statement_end_bx, .-n89_statement_end_bx
                        .type            n90_setexit_test_bx, @function
n90_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_478_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_478_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_478_61:
.Lsetexit_test_α_478_1:                                                       jmp   n71_statement_begin_α
                        .size            n90_setexit_test_bx, .-n90_setexit_test_bx
                        .type            n91_statement_begin_bx, @function
n91_statement_begin_bx:
.Lstatement_begin_α_479_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_479_stno
                        .long            23
                        .long            33
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to2.code        LE(to2.I, x4.V)         :F(x4.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n91_statement_begin_α:                                                        jmp   n92_var_α
n91_statement_begin_β:                                                        jmp   n98_setexit_test_α
                        .size            n91_statement_begin_bx, .-n91_statement_begin_bx
                        .type            n92_var_bx, @function
n92_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n93_var_α
                        .size            n92_var_bx, .-n92_var_bx
                        .type            n93_var_bx, @function
n93_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 96]             # x4.V
                        mov              rdx, qword ptr [r9 + 104]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n94_coerce_numeric_α
n93_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n91_statement_begin_β
                        .size            n93_var_bx, .-n93_var_bx
                        .type            n94_coerce_numeric_bx, @function
n94_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_484_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_484_0
.Lcoerce_numeric_α_484_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n95_coerce_numeric_α
.Lcoerce_numeric_α_484_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_12:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_11:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_484_240
                        add              rsp, 16;                             jmp   n93_var_β
.Lcoerce_numeric_α_484_240:
                                                                              jmp   n95_coerce_numeric_α
n94_coerce_numeric_β:   add              rsp, 16;                             jmp   n93_var_β
                        .size            n94_coerce_numeric_bx, .-n94_coerce_numeric_bx
                        .type            n95_coerce_numeric_bx, @function
n95_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_486_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_486_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_486_0
.Lcoerce_numeric_α_486_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n96_cmp_test_α
.Lcoerce_numeric_α_486_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_14:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_13:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_486_240
                        add              rsp, 16;                             jmp   n94_coerce_numeric_β
.Lcoerce_numeric_α_486_240:
                                                                              jmp   n96_cmp_test_α
n95_coerce_numeric_β:   add              rsp, 16;                             jmp   n94_coerce_numeric_β
                        .size            n95_coerce_numeric_bx, .-n95_coerce_numeric_bx
                        .type            n96_cmp_test_bx, @function
n96_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_488_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_488_239
                        add              rsp, 16;                             jmp   n95_coerce_numeric_β
.Lcmp_test_α_488_239:                                                         jmp   n97_statement_end_α
.Lcmp_test_α_488_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_15:       test             eax, eax;                            jle   .Lcmp_test_α_488_240
                        add              rsp, 16;                             jmp   n95_coerce_numeric_β
.Lcmp_test_α_488_240:                                                         jmp   n97_statement_end_α
                        .size            n96_cmp_test_bx, .-n96_cmp_test_bx
                        .type            n97_statement_end_bx, @function
n97_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_statement_end_α:    add              rsp, 80;                             jmp   n99_statement_begin_α
                        .size            n97_statement_end_bx, .-n97_statement_end_bx
                        .type            n98_setexit_test_bx, @function
n98_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_491_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_491_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_491_61:
.Lsetexit_test_α_491_1:                                                       jmp   n79_statement_begin_α
                        .size            n98_setexit_test_bx, .-n98_setexit_test_bx
                        .type            n99_statement_begin_bx, @function
n99_statement_begin_bx:
.Lstatement_begin_α_492_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_492_stno
                        .long            24
                        .long            34
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 to2.V = to2.I           :(to2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n99_statement_begin_α:                                                        jmp   n100_var_α
n99_statement_begin_β:                                                        jmp   n103_setexit_test_α
                        .size            n99_statement_begin_bx, .-n99_statement_begin_bx
                        .type            n100_var_bx, @function
n100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n101_assign_α
                        .size            n100_var_bx, .-n100_var_bx
                        .type            n101_assign_bx, @function
n101_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 128], rax            # to2.V
                        mov              qword ptr [r9 + 136], rdx;           jmp   n102_statement_end_α
                        .size            n101_assign_bx, .-n101_assign_bx
                        .type            n102_statement_end_bx, @function
n102_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_statement_end_α:   add              rsp, 16;                             jmp   n134_statement_begin_α
                        .size            n102_statement_end_bx, .-n102_statement_end_bx
                        .type            n103_setexit_test_bx, @function
n103_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_498_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_498_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_498_61:
.Lsetexit_test_α_498_1:                                                       jmp   n134_statement_begin_α
                        .size            n103_setexit_test_bx, .-n103_setexit_test_bx
                        .type            n104_statement_begin_bx, @function
n104_statement_begin_bx:
.Lstatement_begin_α_499_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_499_stno
                        .long            25
                        .long            35
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to2.resume      to2.I = to2.I + 1       :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n104_statement_begin_α:                                                       jmp   n105_var_α
n104_statement_begin_β:                                                       jmp   n110_setexit_test_α
                        .size            n104_statement_begin_bx, .-n104_statement_begin_bx
                        .type            n105_var_bx, @function
n105_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 112]            # to2.I
                        mov              rdx, qword ptr [r9 + 120]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n106_lit_integer_α
                        .size            n105_var_bx, .-n105_var_bx
                        .type            n106_lit_integer_bx, @function
n106_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_502_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n107_binop_α
n106_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n104_statement_begin_β
.Llit_integer_α_502_0:  .quad            1
                        .size            n106_lit_integer_bx, .-n106_lit_integer_bx
                        .type            n107_binop_bx, @function
n107_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_503_2
                        add              rax, 1;                              jo    .Lbinop_α_503_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_503_7
.Lbinop_α_503_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_503_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_503_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_503_4
.Lbinop_α_503_3:        movq             xmm0, rsi
.Lbinop_α_503_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_503_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_503_7:                                                              jmp   n108_assign_α
.Lbinop_α_503_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_add_sno@PLT
.Lgcsite_main_17:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_503_240
                        add              rsp, 16;                             jmp   n106_lit_integer_β
.Lbinop_α_503_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:256
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n108_assign_α
n107_binop_β:           add              rsp, 16;                             jmp   n106_lit_integer_β
                        .size            n107_binop_bx, .-n107_binop_bx
                        .type            n108_assign_bx, @function
n108_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n109_statement_end_α
                        .size            n108_assign_bx, .-n108_assign_bx
                        .type            n109_statement_end_bx, @function
n109_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_statement_end_α:   add              rsp, 48;                             jmp   n91_statement_begin_α
                        .size            n109_statement_end_bx, .-n109_statement_end_bx
                        .type            n110_setexit_test_bx, @function
n110_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_507_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_507_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_507_61:
.Lsetexit_test_α_507_1:                                                       jmp   n91_statement_begin_α
                        .size            n110_setexit_test_bx, .-n110_setexit_test_bx
                        .type            n111_statement_begin_bx, @function
n111_statement_begin_bx:
.Lstatement_begin_α_508_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_508_stno
                        .long            26
                        .long            36
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x3.succeed                              :(x4.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n111_statement_begin_α:                                                       jmp   n112_statement_end_α
n111_statement_begin_β:                                                       jmp   n113_setexit_test_α
                        .size            n111_statement_begin_bx, .-n111_statement_begin_bx
                        .type            n112_statement_end_bx, @function
n112_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_statement_end_α:                                                         jmp   n74_statement_begin_α
                        .size            n112_statement_end_bx, .-n112_statement_end_bx
                        .type            n113_setexit_test_bx, @function
n113_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_512_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_512_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_512_61:
.Lsetexit_test_α_512_1:                                                       jmp   n74_statement_begin_α
                        .size            n113_setexit_test_bx, .-n113_setexit_test_bx
                        .type            n114_statement_begin_bx, @function
n114_statement_begin_bx:
.Lstatement_begin_α_513_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_513_stno
                        .long            27
                        .long            37
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x4.succeed      to2.I = x3.V            :(to2.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n114_statement_begin_α:                                                       jmp   n115_var_α
n114_statement_begin_β:                                                       jmp   n118_setexit_test_α
                        .size            n114_statement_begin_bx, .-n114_statement_begin_bx
                        .type            n115_var_bx, @function
n115_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # x3.V
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n116_assign_α
                        .size            n115_var_bx, .-n115_var_bx
                        .type            n116_assign_bx, @function
n116_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 112], rax            # to2.I
                        mov              qword ptr [r9 + 120], rdx;           jmp   n117_statement_end_α
                        .size            n116_assign_bx, .-n116_assign_bx
                        .type            n117_statement_end_bx, @function
n117_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_statement_end_α:   add              rsp, 16;                             jmp   n91_statement_begin_α
                        .size            n117_statement_end_bx, .-n117_statement_end_bx
                        .type            n118_setexit_test_bx, @function
n118_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_519_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_519_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_519_61:
.Lsetexit_test_α_519_1:                                                       jmp   n91_statement_begin_α
                        .size            n118_setexit_test_bx, .-n118_setexit_test_bx
                        .type            n119_statement_begin_bx, @function
n119_statement_begin_bx:
.Lstatement_begin_α_520_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_520_stno
                        .long            28
                        .long            39
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# mult.start                              :(to1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 39 0
n119_statement_begin_α:                                                       jmp   n120_statement_end_α
n119_statement_begin_β:                                                       jmp   n121_setexit_test_α
                        .size            n119_statement_begin_bx, .-n119_statement_begin_bx
                        .type            n120_statement_end_bx, @function
n120_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_statement_end_α:                                                         jmp   n29_statement_begin_α
                        .size            n120_statement_end_bx, .-n120_statement_end_bx
                        .type            n121_setexit_test_bx, @function
n121_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_524_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_524_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_524_61:
.Lsetexit_test_α_524_1:                                                       jmp   n29_statement_begin_α
                        .size            n121_setexit_test_bx, .-n121_setexit_test_bx
                        .type            n122_statement_begin_bx, @function
n122_statement_begin_bx:
.Lstatement_begin_α_525_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_525_stno
                        .long            29
                        .long            40
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to1.fail                                :(mult.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 40 0
n122_statement_begin_α:                                                       jmp   n123_statement_end_α
n122_statement_begin_β:                                                       jmp   n124_setexit_test_α
                        .size            n122_statement_begin_bx, .-n122_statement_begin_bx
                        .type            n123_statement_end_bx, @function
n123_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_statement_end_α:                                                         jmp   n147_statement_begin_α
                        .size            n123_statement_end_bx, .-n123_statement_end_bx
                        .type            n124_setexit_test_bx, @function
n124_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_529_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_529_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_529_61:
.Lsetexit_test_α_529_1:                                                       jmp   n147_statement_begin_α
                        .size            n124_setexit_test_bx, .-n124_setexit_test_bx
                        .type            n125_statement_begin_bx, @function
n125_statement_begin_bx:
.Lstatement_begin_α_530_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_530_stno
                        .long            30
                        .long            41
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to2.fail                                :(to1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 41 0
n125_statement_begin_α:                                                       jmp   n126_statement_end_α
n125_statement_begin_β:                                                       jmp   n127_setexit_test_α
                        .size            n125_statement_begin_bx, .-n125_statement_begin_bx
                        .type            n126_statement_end_bx, @function
n126_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_statement_end_α:                                                         jmp   n51_statement_begin_α
                        .size            n126_statement_end_bx, .-n126_statement_end_bx
                        .type            n127_setexit_test_bx, @function
n127_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_534_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_534_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_534_61:
.Lsetexit_test_α_534_1:                                                       jmp   n51_statement_begin_α
                        .size            n127_setexit_test_bx, .-n127_setexit_test_bx
                        .type            n128_statement_begin_bx, @function
n128_statement_begin_bx:
.Lstatement_begin_α_535_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_535_stno
                        .long            31
                        .long            42
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# mult.resume                             :(to2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 42 0
n128_statement_begin_α:                                                       jmp   n129_statement_end_α
n128_statement_begin_β:                                                       jmp   n130_setexit_test_α
                        .size            n128_statement_begin_bx, .-n128_statement_begin_bx
                        .type            n129_statement_end_bx, @function
n129_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_statement_end_α:                                                         jmp   n104_statement_begin_α
                        .size            n129_statement_end_bx, .-n129_statement_end_bx
                        .type            n130_setexit_test_bx, @function
n130_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_539_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_539_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_539_61:
.Lsetexit_test_α_539_1:                                                       jmp   n104_statement_begin_α
                        .size            n130_setexit_test_bx, .-n130_setexit_test_bx
                        .type            n131_statement_begin_bx, @function
n131_statement_begin_bx:
.Lstatement_begin_α_540_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_540_stno
                        .long            32
                        .long            43
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to1.succeed                             :(to2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 43 0
n131_statement_begin_α:                                                       jmp   n132_statement_end_α
n131_statement_begin_β:                                                       jmp   n133_setexit_test_α
                        .size            n131_statement_begin_bx, .-n131_statement_begin_bx
                        .type            n132_statement_end_bx, @function
n132_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_statement_end_α:                                                         jmp   n82_statement_begin_α
                        .size            n132_statement_end_bx, .-n132_statement_end_bx
                        .type            n133_setexit_test_bx, @function
n133_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_544_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_544_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_544_61:
.Lsetexit_test_α_544_1:                                                       jmp   n82_statement_begin_α
                        .size            n133_setexit_test_bx, .-n133_setexit_test_bx
                        .type            n134_statement_begin_bx, @function
n134_statement_begin_bx:
.Lstatement_begin_α_545_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_545_stno
                        .long            33
                        .long            44
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to2.succeed     mult.V = to1.V * to2.V  :S(mult.succeed)F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 44 0
n134_statement_begin_α:                                                       jmp   n135_var_α
n134_statement_begin_β:                                                       jmp   n140_setexit_test_α
                        .size            n134_statement_begin_bx, .-n134_statement_begin_bx
                        .type            n135_var_bx, @function
n135_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # to1.V
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n136_var_α
                        .size            n135_var_bx, .-n135_var_bx
                        .type            n136_var_bx, @function
n136_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 128]            # to2.V
                        mov              rdx, qword ptr [r9 + 136]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n137_binop_α
n136_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n134_statement_begin_β
                        .size            n136_var_bx, .-n136_var_bx
                        .type            n137_binop_bx, @function
n137_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_549_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_549_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_549_7
.Lbinop_α_549_2:        and              edx, 1;                              jz    .Lbinop_α_549_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_549_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_549_4
.Lbinop_α_549_3:        movq             xmm0, rsi
.Lbinop_α_549_4:        cmp              cl, 5;                               je    .Lbinop_α_549_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_549_6
.Lbinop_α_549_5:        movq             xmm1, rdi
.Lbinop_α_549_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_549_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_549_7:                                                              jmp   n138_assign_α
.Lbinop_α_549_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_mul_sno@PLT
.Lgcsite_main_19:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_549_240
                        add              rsp, 16;                             jmp   n136_var_β
.Lbinop_α_549_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:256
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n138_assign_α
n137_binop_β:           add              rsp, 16;                             jmp   n136_var_β
                        .size            n137_binop_bx, .-n137_binop_bx
                        .type            n138_assign_bx, @function
n138_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n139_statement_end_α
                        .size            n138_assign_bx, .-n138_assign_bx
                        .type            n139_statement_end_bx, @function
n139_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_statement_end_α:   add              rsp, 48;                             jmp   n156_statement_begin_α
                        .size            n139_statement_end_bx, .-n139_statement_end_bx
                        .type            n140_setexit_test_bx, @function
n140_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_553_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_553_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_553_61:
.Lsetexit_test_α_553_1:                                                       jmp   n283_statement_begin_α
                        .size            n140_setexit_test_bx, .-n140_setexit_test_bx
                        .type            n141_statement_begin_bx, @function
n141_statement_begin_bx:
.Lstatement_begin_α_554_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_554_stno
                        .long            34
                        .long            46
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# greater.start                           :(x5.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 46 0
n141_statement_begin_α:                                                       jmp   n142_statement_end_α
n141_statement_begin_β:                                                       jmp   n143_setexit_test_α
                        .size            n141_statement_begin_bx, .-n141_statement_begin_bx
                        .type            n142_statement_end_bx, @function
n142_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_statement_end_α:                                                         jmp   n5_statement_begin_α
                        .size            n142_statement_end_bx, .-n142_statement_end_bx
                        .type            n143_setexit_test_bx, @function
n143_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_558_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_558_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_558_61:
.Lsetexit_test_α_558_1:                                                       jmp   n5_statement_begin_α
                        .size            n143_setexit_test_bx, .-n143_setexit_test_bx
                        .type            n144_statement_begin_bx, @function
n144_statement_begin_bx:
.Lstatement_begin_α_559_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_559_stno
                        .long            35
                        .long            47
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x5.fail                                 :(greater.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 47 0
n144_statement_begin_α:                                                       jmp   n145_statement_end_α
n144_statement_begin_β:                                                       jmp   n146_setexit_test_α
                        .size            n144_statement_begin_bx, .-n144_statement_begin_bx
                        .type            n145_statement_end_bx, @function
n145_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_statement_end_α:                                                         jmp   n175_statement_begin_α
                        .size            n145_statement_end_bx, .-n145_statement_end_bx
                        .type            n146_setexit_test_bx, @function
n146_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_563_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_563_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_563_61:
.Lsetexit_test_α_563_1:                                                       jmp   n175_statement_begin_α
                        .size            n146_setexit_test_bx, .-n146_setexit_test_bx
                        .type            n147_statement_begin_bx, @function
n147_statement_begin_bx:
.Lstatement_begin_α_564_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_564_stno
                        .long            36
                        .long            48
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# mult.fail                               :(x5.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 48 0
n147_statement_begin_α:                                                       jmp   n148_statement_end_α
n147_statement_begin_β:                                                       jmp   n149_setexit_test_α
                        .size            n147_statement_begin_bx, .-n147_statement_begin_bx
                        .type            n148_statement_end_bx, @function
n148_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_statement_end_α:                                                         jmp   n10_statement_begin_α
                        .size            n148_statement_end_bx, .-n148_statement_end_bx
                        .type            n149_setexit_test_bx, @function
n149_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_568_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_568_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_568_61:
.Lsetexit_test_α_568_1:                                                       jmp   n10_statement_begin_α
                        .size            n149_setexit_test_bx, .-n149_setexit_test_bx
                        .type            n150_statement_begin_bx, @function
n150_statement_begin_bx:
.Lstatement_begin_α_569_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_569_stno
                        .long            37
                        .long            49
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# greater.resume                          :(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 49 0
n150_statement_begin_α:                                                       jmp   n151_statement_end_α
n150_statement_begin_β:                                                       jmp   n152_setexit_test_α
                        .size            n150_statement_begin_bx, .-n150_statement_begin_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:                                                         jmp   n128_statement_begin_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_setexit_test_bx, @function
n152_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_573_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_573_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_573_61:
.Lsetexit_test_α_573_1:                                                       jmp   n128_statement_begin_α
                        .size            n152_setexit_test_bx, .-n152_setexit_test_bx
                        .type            n153_statement_begin_bx, @function
n153_statement_begin_bx:
.Lstatement_begin_α_574_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_574_stno
                        .long            38
                        .long            50
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# x5.succeed                              :(mult.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 50 0
n153_statement_begin_α:                                                       jmp   n154_statement_end_α
n153_statement_begin_β:                                                       jmp   n155_setexit_test_α
                        .size            n153_statement_begin_bx, .-n153_statement_begin_bx
                        .type            n154_statement_end_bx, @function
n154_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_statement_end_α:                                                         jmp   n119_statement_begin_α
                        .size            n154_statement_end_bx, .-n154_statement_end_bx
                        .type            n155_setexit_test_bx, @function
n155_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_578_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_578_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_578_61:
.Lsetexit_test_α_578_1:                                                       jmp   n119_statement_begin_α
                        .size            n155_setexit_test_bx, .-n155_setexit_test_bx
                        .type            n156_statement_begin_bx, @function
n156_statement_begin_bx:
.Lstatement_begin_α_579_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_579_stno
                        .long            39
                        .long            51
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# mult.succeed    GT(x5.V, mult.V)        :F(mult.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 51 0
n156_statement_begin_α:                                                       jmp   n157_var_α
n156_statement_begin_β:                                                       jmp   n163_setexit_test_α
                        .size            n156_statement_begin_bx, .-n156_statement_begin_bx
                        .type            n157_var_bx, @function
n157_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # x5.V
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n158_var_α
                        .size            n157_var_bx, .-n157_var_bx
                        .type            n158_var_bx, @function
n158_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n159_coerce_numeric_α
n158_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n156_statement_begin_β
                        .size            n158_var_bx, .-n158_var_bx
                        .type            n159_coerce_numeric_bx, @function
n159_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_584_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_584_0
                        mov              eax, dword ptr [rsp + 16]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_584_0
.Lcoerce_numeric_α_584_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n160_coerce_numeric_α
.Lcoerce_numeric_α_584_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_21:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_584_240
                        add              rsp, 16;                             jmp   n158_var_β
.Lcoerce_numeric_α_584_240:
                                                                              jmp   n160_coerce_numeric_α
n159_coerce_numeric_β:  add              rsp, 16;                             jmp   n158_var_β
                        .size            n159_coerce_numeric_bx, .-n159_coerce_numeric_bx
                        .type            n160_coerce_numeric_bx, @function
n160_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_586_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_586_0
                        mov              eax, dword ptr [rsp + 48]
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_586_0
.Lcoerce_numeric_α_586_1:
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n161_cmp_test_α
.Lcoerce_numeric_α_586_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_23:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_586_240
                        add              rsp, 16;                             jmp   n159_coerce_numeric_β
.Lcoerce_numeric_α_586_240:
                                                                              jmp   n161_cmp_test_α
n160_coerce_numeric_β:  add              rsp, 16;                             jmp   n159_coerce_numeric_β
                        .size            n160_coerce_numeric_bx, .-n160_coerce_numeric_bx
                        .type            n161_cmp_test_bx, @function
n161_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_588_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_588_239
                        add              rsp, 16;                             jmp   n160_coerce_numeric_β
.Lcmp_test_α_588_239:                                                         jmp   n162_statement_end_α
.Lcmp_test_α_588_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_24:       test             eax, eax;                            jg    .Lcmp_test_α_588_240
                        add              rsp, 16;                             jmp   n160_coerce_numeric_β
.Lcmp_test_α_588_240:                                                         jmp   n162_statement_end_α
                        .size            n161_cmp_test_bx, .-n161_cmp_test_bx
                        .type            n162_statement_end_bx, @function
n162_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_statement_end_α:   add              rsp, 80;                             jmp   n164_statement_begin_α
                        .size            n162_statement_end_bx, .-n162_statement_end_bx
                        .type            n163_setexit_test_bx, @function
n163_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_591_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_591_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_591_61:
.Lsetexit_test_α_591_1:                                                       jmp   n128_statement_begin_α
                        .size            n163_setexit_test_bx, .-n163_setexit_test_bx
                        .type            n164_statement_begin_bx, @function
n164_statement_begin_bx:
.Lstatement_begin_α_592_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_592_stno
                        .long            40
                        .long            52
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 greater.V = mult.V      :(greater.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 52 0
n164_statement_begin_α:                                                       jmp   n165_var_α
n164_statement_begin_β:                                                       jmp   n168_setexit_test_α
                        .size            n164_statement_begin_bx, .-n164_statement_begin_bx
                        .type            n165_var_bx, @function
n165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n166_assign_α
                        .size            n165_var_bx, .-n165_var_bx
                        .type            n166_assign_bx, @function
n166_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n167_statement_end_α
                        .size            n166_assign_bx, .-n166_assign_bx
                        .type            n167_statement_end_bx, @function
n167_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   add              rsp, 16;                             jmp   n178_statement_begin_α
                        .size            n167_statement_end_bx, .-n167_statement_end_bx
                        .type            n168_setexit_test_bx, @function
n168_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_598_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_598_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_598_61:
.Lsetexit_test_α_598_1:                                                       jmp   n178_statement_begin_α
                        .size            n168_setexit_test_bx, .-n168_setexit_test_bx
                        .type            n169_statement_begin_bx, @function
n169_statement_begin_bx:
.Lstatement_begin_α_599_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_599_stno
                        .long            41
                        .long            54
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# write1.start                            :(greater.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 54 0
n169_statement_begin_α:                                                       jmp   n170_statement_end_α
n169_statement_begin_β:                                                       jmp   n171_setexit_test_α
                        .size            n169_statement_begin_bx, .-n169_statement_begin_bx
                        .type            n170_statement_end_bx, @function
n170_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_statement_end_α:                                                         jmp   n141_statement_begin_α
                        .size            n170_statement_end_bx, .-n170_statement_end_bx
                        .type            n171_setexit_test_bx, @function
n171_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_603_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_603_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_603_61:
.Lsetexit_test_α_603_1:                                                       jmp   n141_statement_begin_α
                        .size            n171_setexit_test_bx, .-n171_setexit_test_bx
                        .type            n172_statement_begin_bx, @function
n172_statement_begin_bx:
.Lstatement_begin_α_604_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_604_stno
                        .long            42
                        .long            55
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# write1.resume                           :(greater.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 55 0
n172_statement_begin_α:                                                       jmp   n173_statement_end_α
n172_statement_begin_β:                                                       jmp   n174_setexit_test_α
                        .size            n172_statement_begin_bx, .-n172_statement_begin_bx
                        .type            n173_statement_end_bx, @function
n173_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_statement_end_α:                                                         jmp   n150_statement_begin_α
                        .size            n173_statement_end_bx, .-n173_statement_end_bx
                        .type            n174_setexit_test_bx, @function
n174_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_608_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_608_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_608_61:
.Lsetexit_test_α_608_1:                                                       jmp   n150_statement_begin_α
                        .size            n174_setexit_test_bx, .-n174_setexit_test_bx
                        .type            n175_statement_begin_bx, @function
n175_statement_begin_bx:
.Lstatement_begin_α_609_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_609_stno
                        .long            43
                        .long            56
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# greater.fail                            :(write1.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 56 0
n175_statement_begin_α:                                                       jmp   n176_statement_end_α
n175_statement_begin_β:                                                       jmp   n177_setexit_test_α
                        .size            n175_statement_begin_bx, .-n175_statement_begin_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:                                                         jmp   n258_statement_begin_α
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_setexit_test_bx, @function
n177_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_613_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_613_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_613_61:
.Lsetexit_test_α_613_1:                                                       jmp   n258_statement_begin_α
                        .size            n177_setexit_test_bx, .-n177_setexit_test_bx
                        .type            n178_statement_begin_bx, @function
n178_statement_begin_bx:
.Lstatement_begin_α_614_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_614_stno
                        .long            44
                        .long            57
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# greater.succeed write.V = greater.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 57 0
n178_statement_begin_α:                                                       jmp   n179_var_α
n178_statement_begin_β:                                                       jmp   n182_setexit_test_α
                        .size            n178_statement_begin_bx, .-n178_statement_begin_bx
                        .type            n179_var_bx, @function
n179_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n180_assign_α
                        .size            n179_var_bx, .-n179_var_bx
                        .type            n180_assign_bx, @function
n180_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 176], rax            # write.V
                        mov              qword ptr [r9 + 184], rdx;           jmp   n181_statement_end_α
                        .size            n180_assign_bx, .-n180_assign_bx
                        .type            n181_statement_end_bx, @function
n181_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_statement_end_α:   add              rsp, 16;                             jmp   n183_statement_begin_α
                        .size            n181_statement_end_bx, .-n181_statement_end_bx
                        .type            n182_setexit_test_bx, @function
n182_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_620_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_620_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_620_61:
.Lsetexit_test_α_620_1:                                                       jmp   n183_statement_begin_α
                        .size            n182_setexit_test_bx, .-n182_setexit_test_bx
                        .type            n183_statement_begin_bx, @function
n183_statement_begin_bx:
.Lstatement_begin_α_621_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_621_stno
                        .long            45
                        .long            58
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 OUTPUT = write.V        :(write1.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 58 0
n183_statement_begin_α:                                                       jmp   n184_var_α
n183_statement_begin_β:                                                       jmp   n187_setexit_test_α
                        .size            n183_statement_begin_bx, .-n183_statement_begin_bx
                        .type            n184_var_bx, @function
n184_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 176]            # write.V
                        mov              rdx, qword ptr [r9 + 184]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n185_assign_α
                        .size            n184_var_bx, .-n184_var_bx
                        .type            n185_assign_bx, @function
n185_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_624_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_26:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_25:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n186_statement_end_α
.Lassign_α_624_0:       .quad            .Lassign_α_624_0_s
.Lassign_α_624_0_s:     .string          "OUTPUT"
                        .size            n185_assign_bx, .-n185_assign_bx
                        .type            n186_statement_end_bx, @function
n186_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_statement_end_α:   add              rsp, 16;                             jmp   n263_statement_begin_α
                        .size            n186_statement_end_bx, .-n186_statement_end_bx
                        .type            n187_setexit_test_bx, @function
n187_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_627_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_627_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_627_61:
.Lsetexit_test_α_627_1:                                                       jmp   n263_statement_begin_α
                        .size            n187_setexit_test_bx, .-n187_setexit_test_bx
                        .type            n188_statement_begin_bx, @function
n188_statement_begin_bx:
.Lstatement_begin_α_628_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_628_stno
                        .long            46
                        .long            63
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# write2.start    to3.I = 1               :(to3.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 63 0
n188_statement_begin_α:                                                       jmp   n189_lit_integer_α
n188_statement_begin_β:                                                       jmp   n192_setexit_test_α
                        .size            n188_statement_begin_bx, .-n188_statement_begin_bx
                        .type            n189_lit_integer_bx, @function
n189_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_630_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n190_assign_α
.Llit_integer_α_630_0:  .quad            1
                        .size            n189_lit_integer_bx, .-n189_lit_integer_bx
                        .type            n190_assign_bx, @function
n190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n191_statement_end_α
                        .size            n190_assign_bx, .-n190_assign_bx
                        .type            n191_statement_end_bx, @function
n191_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   add              rsp, 16;                             jmp   n200_statement_begin_α
                        .size            n191_statement_end_bx, .-n191_statement_end_bx
                        .type            n192_setexit_test_bx, @function
n192_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_634_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_634_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_634_61:
.Lsetexit_test_α_634_1:                                                       jmp   n200_statement_begin_α
                        .size            n192_setexit_test_bx, .-n192_setexit_test_bx
                        .type            n193_statement_begin_bx, @function
n193_statement_begin_bx:
.Lstatement_begin_α_635_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_635_stno
                        .long            47
                        .long            64
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to3.resume      to3.I = to3.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 64 0
n193_statement_begin_α:                                                       jmp   n194_var_α
n193_statement_begin_β:                                                       jmp   n199_setexit_test_α
                        .size            n193_statement_begin_bx, .-n193_statement_begin_bx
                        .type            n194_var_bx, @function
n194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_lit_integer_α
                        .size            n194_var_bx, .-n194_var_bx
                        .type            n195_lit_integer_bx, @function
n195_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_638_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_binop_α
n195_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n193_statement_begin_β
.Llit_integer_α_638_0:  .quad            1
                        .size            n195_lit_integer_bx, .-n195_lit_integer_bx
                        .type            n196_binop_bx, @function
n196_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_639_2
                        add              rax, 1;                              jo    .Lbinop_α_639_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_639_7
.Lbinop_α_639_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_639_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_639_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_639_4
.Lbinop_α_639_3:        movq             xmm0, rsi
.Lbinop_α_639_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_639_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_639_7:                                                              jmp   n197_assign_α
.Lbinop_α_639_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_add_sno@PLT
.Lgcsite_main_28:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_639_240
                        add              rsp, 16;                             jmp   n195_lit_integer_β
.Lbinop_α_639_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:256
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_27:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n197_assign_α
n196_binop_β:           add              rsp, 16;                             jmp   n195_lit_integer_β
                        .size            n196_binop_bx, .-n196_binop_bx
                        .type            n197_assign_bx, @function
n197_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 192], rax            # to3.I
                        mov              qword ptr [r9 + 200], rdx;           jmp   n198_statement_end_α
                        .size            n197_assign_bx, .-n197_assign_bx
                        .type            n198_statement_end_bx, @function
n198_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_statement_end_α:   add              rsp, 48;                             jmp   n200_statement_begin_α
                        .size            n198_statement_end_bx, .-n198_statement_end_bx
                        .type            n199_setexit_test_bx, @function
n199_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_643_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_643_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_643_61:
.Lsetexit_test_α_643_1:                                                       jmp   n200_statement_begin_α
                        .size            n199_setexit_test_bx, .-n199_setexit_test_bx
                        .type            n200_statement_begin_bx, @function
n200_statement_begin_bx:
.Lstatement_begin_α_644_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_644_stno
                        .long            48
                        .long            65
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to3.code        LE(to3.I, 2)            :F(write2.fail)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 65 0
n200_statement_begin_α:                                                       jmp   n201_var_α
n200_statement_begin_β:                                                       jmp   n207_setexit_test_α
                        .size            n200_statement_begin_bx, .-n200_statement_begin_bx
                        .type            n201_var_bx, @function
n201_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n202_lit_integer_α
                        .size            n201_var_bx, .-n201_var_bx
                        .type            n202_lit_integer_bx, @function
n202_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_647_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n203_coerce_numeric_α
n202_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n200_statement_begin_β
.Llit_integer_α_647_0:  .quad            2
                        .size            n202_lit_integer_bx, .-n202_lit_integer_bx
                        .type            n203_coerce_numeric_bx, @function
n203_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_649_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_649_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_649_0
.Lcoerce_numeric_α_649_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n204_coerce_numeric_α
.Lcoerce_numeric_α_649_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_30:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_29:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_649_240
                        add              rsp, 16;                             jmp   n202_lit_integer_β
.Lcoerce_numeric_α_649_240:
                                                                              jmp   n204_coerce_numeric_α
n203_coerce_numeric_β:  add              rsp, 16;                             jmp   n202_lit_integer_β
                        .size            n203_coerce_numeric_bx, .-n203_coerce_numeric_bx
                        .type            n204_coerce_numeric_bx, @function
n204_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_651_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_651_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_651_0
.Lcoerce_numeric_α_651_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n205_cmp_test_α
.Lcoerce_numeric_α_651_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_32:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_31:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_651_240
                        add              rsp, 16;                             jmp   n203_coerce_numeric_β
.Lcoerce_numeric_α_651_240:
                                                                              jmp   n205_cmp_test_α
n204_coerce_numeric_β:  add              rsp, 16;                             jmp   n203_coerce_numeric_β
                        .size            n204_coerce_numeric_bx, .-n204_coerce_numeric_bx
                        .type            n205_cmp_test_bx, @function
n205_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_653_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_653_239
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lcmp_test_α_653_239:                                                         jmp   n206_statement_end_α
.Lcmp_test_α_653_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_33:       test             eax, eax;                            jle   .Lcmp_test_α_653_240
                        add              rsp, 16;                             jmp   n204_coerce_numeric_β
.Lcmp_test_α_653_240:                                                         jmp   n206_statement_end_α
                        .size            n205_cmp_test_bx, .-n205_cmp_test_bx
                        .type            n206_statement_end_bx, @function
n206_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_statement_end_α:   add              rsp, 80;                             jmp   n208_statement_begin_α
                        .size            n206_statement_end_bx, .-n206_statement_end_bx
                        .type            n207_setexit_test_bx, @function
n207_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_656_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_656_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_656_61:
.Lsetexit_test_α_656_1:                                                       jmp   n273_statement_begin_α
                        .size            n207_setexit_test_bx, .-n207_setexit_test_bx
                        .type            n208_statement_begin_bx, @function
n208_statement_begin_bx:
.Lstatement_begin_α_657_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_657_stno
                        .long            49
                        .long            66
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 to4.I = 3               :(to4.code)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 66 0
n208_statement_begin_α:                                                       jmp   n209_lit_integer_α
n208_statement_begin_β:                                                       jmp   n212_setexit_test_α
                        .size            n208_statement_begin_bx, .-n208_statement_begin_bx
                        .type            n209_lit_integer_bx, @function
n209_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_659_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n210_assign_α
.Llit_integer_α_659_0:  .quad            3
                        .size            n209_lit_integer_bx, .-n209_lit_integer_bx
                        .type            n210_assign_bx, @function
n210_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n211_statement_end_α
                        .size            n210_assign_bx, .-n210_assign_bx
                        .type            n211_statement_end_bx, @function
n211_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_statement_end_α:   add              rsp, 16;                             jmp   n220_statement_begin_α
                        .size            n211_statement_end_bx, .-n211_statement_end_bx
                        .type            n212_setexit_test_bx, @function
n212_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_663_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_663_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_663_61:
.Lsetexit_test_α_663_1:                                                       jmp   n220_statement_begin_α
                        .size            n212_setexit_test_bx, .-n212_setexit_test_bx
                        .type            n213_statement_begin_bx, @function
n213_statement_begin_bx:
.Lstatement_begin_α_664_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_664_stno
                        .long            50
                        .long            67
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# write2.resume   to4.I = to4.I + 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 67 0
n213_statement_begin_α:                                                       jmp   n214_var_α
n213_statement_begin_β:                                                       jmp   n219_setexit_test_α
                        .size            n213_statement_begin_bx, .-n213_statement_begin_bx
                        .type            n214_var_bx, @function
n214_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_lit_integer_α
                        .size            n214_var_bx, .-n214_var_bx
                        .type            n215_lit_integer_bx, @function
n215_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_667_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n216_binop_α
n215_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n213_statement_begin_β
.Llit_integer_α_667_0:  .quad            1
                        .size            n215_lit_integer_bx, .-n215_lit_integer_bx
                        .type            n216_binop_bx, @function
n216_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_668_2
                        add              rax, 1;                              jo    .Lbinop_α_668_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_668_7
.Lbinop_α_668_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_668_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_668_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_668_4
.Lbinop_α_668_3:        movq             xmm0, rsi
.Lbinop_α_668_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_668_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_668_7:                                                              jmp   n217_assign_α
.Lbinop_α_668_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_add_sno@PLT
.Lgcsite_main_35:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_668_240
                        add              rsp, 16;                             jmp   n215_lit_integer_β
.Lbinop_α_668_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:256
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n217_assign_α
n216_binop_β:           add              rsp, 16;                             jmp   n215_lit_integer_β
                        .size            n216_binop_bx, .-n216_binop_bx
                        .type            n217_assign_bx, @function
n217_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 208], rax            # to4.I
                        mov              qword ptr [r9 + 216], rdx;           jmp   n218_statement_end_α
                        .size            n217_assign_bx, .-n217_assign_bx
                        .type            n218_statement_end_bx, @function
n218_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_statement_end_α:   add              rsp, 48;                             jmp   n220_statement_begin_α
                        .size            n218_statement_end_bx, .-n218_statement_end_bx
                        .type            n219_setexit_test_bx, @function
n219_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_672_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_672_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_672_61:
.Lsetexit_test_α_672_1:                                                       jmp   n220_statement_begin_α
                        .size            n219_setexit_test_bx, .-n219_setexit_test_bx
                        .type            n220_statement_begin_bx, @function
n220_statement_begin_bx:
.Lstatement_begin_α_673_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_673_stno
                        .long            51
                        .long            68
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# to4.code        LE(to4.I, 4)            :F(to3.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 68 0
n220_statement_begin_α:                                                       jmp   n221_var_α
n220_statement_begin_β:                                                       jmp   n227_setexit_test_α
                        .size            n220_statement_begin_bx, .-n220_statement_begin_bx
                        .type            n221_var_bx, @function
n221_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n222_lit_integer_α
                        .size            n221_var_bx, .-n221_var_bx
                        .type            n222_lit_integer_bx, @function
n222_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_676_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n223_coerce_numeric_α
n222_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n220_statement_begin_β
.Llit_integer_α_676_0:  .quad            4
                        .size            n222_lit_integer_bx, .-n222_lit_integer_bx
                        .type            n223_coerce_numeric_bx, @function
n223_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_678_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_678_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_678_0
.Lcoerce_numeric_α_678_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n224_coerce_numeric_α
.Lcoerce_numeric_α_678_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 118
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_37:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_678_240
                        add              rsp, 16;                             jmp   n222_lit_integer_β
.Lcoerce_numeric_α_678_240:
                                                                              jmp   n224_coerce_numeric_α
n223_coerce_numeric_β:  add              rsp, 16;                             jmp   n222_lit_integer_β
                        .size            n223_coerce_numeric_bx, .-n223_coerce_numeric_bx
                        .type            n224_coerce_numeric_bx, @function
n224_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_680_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_680_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_680_0
.Lcoerce_numeric_α_680_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n225_cmp_test_α
.Lcoerce_numeric_α_680_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 119
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_39:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
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
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_680_240
                        add              rsp, 16;                             jmp   n223_coerce_numeric_β
.Lcoerce_numeric_α_680_240:
                                                                              jmp   n225_cmp_test_α
n224_coerce_numeric_β:  add              rsp, 16;                             jmp   n223_coerce_numeric_β
                        .size            n224_coerce_numeric_bx, .-n224_coerce_numeric_bx
                        .type            n225_cmp_test_bx, @function
n225_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_682_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jle   .Lcmp_test_α_682_239
                        add              rsp, 16;                             jmp   n224_coerce_numeric_β
.Lcmp_test_α_682_239:                                                         jmp   n226_statement_end_α
.Lcmp_test_α_682_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_40:       test             eax, eax;                            jle   .Lcmp_test_α_682_240
                        add              rsp, 16;                             jmp   n224_coerce_numeric_β
.Lcmp_test_α_682_240:                                                         jmp   n226_statement_end_α
                        .size            n225_cmp_test_bx, .-n225_cmp_test_bx
                        .type            n226_statement_end_bx, @function
n226_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_statement_end_α:   add              rsp, 80;                             jmp   n228_statement_begin_α
                        .size            n226_statement_end_bx, .-n226_statement_end_bx
                        .type            n227_setexit_test_bx, @function
n227_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_685_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_685_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_685_61:
.Lsetexit_test_α_685_1:                                                       jmp   n193_statement_begin_α
                        .size            n227_setexit_test_bx, .-n227_setexit_test_bx
                        .type            n228_statement_begin_bx, @function
n228_statement_begin_bx:
.Lstatement_begin_α_686_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_686_stno
                        .long            52
                        .long            69
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 mult.V = to3.I * to4.I  :F(exception)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 69 0
n228_statement_begin_α:                                                       jmp   n229_var_α
n228_statement_begin_β:                                                       jmp   n234_setexit_test_α
                        .size            n228_statement_begin_bx, .-n228_statement_begin_bx
                        .type            n229_var_bx, @function
n229_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 192]            # to3.I
                        mov              rdx, qword ptr [r9 + 200]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n230_var_α
                        .size            n229_var_bx, .-n229_var_bx
                        .type            n230_var_bx, @function
n230_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 208]            # to4.I
                        mov              rdx, qword ptr [r9 + 216]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n231_binop_α
n230_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n228_statement_begin_β
                        .size            n230_var_bx, .-n230_var_bx
                        .type            n231_binop_bx, @function
n231_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_690_2
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        imul             rax, rdx;                            jo    .Lbinop_α_690_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_690_7
.Lbinop_α_690_2:        and              edx, 1;                              jz    .Lbinop_α_690_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, qword ptr [rsp + 24]
                        cmp              al, 5;                               je    .Lbinop_α_690_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_690_4
.Lbinop_α_690_3:        movq             xmm0, rsi
.Lbinop_α_690_4:        cmp              cl, 5;                               je    .Lbinop_α_690_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_690_6
.Lbinop_α_690_5:        movq             xmm1, rdi
.Lbinop_α_690_6:        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_690_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_690_7:                                                              jmp   n232_assign_α
.Lbinop_α_690_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             c_rt_mul_sno@PLT
.Lgcsite_main_42:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        cmp              al, 104;                             jne   .Lbinop_α_690_240
                        add              rsp, 16;                             jmp   n230_var_β
.Lbinop_α_690_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:256
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_41:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                                                                            jmp   n232_assign_α
n231_binop_β:           add              rsp, 16;                             jmp   n230_var_β
                        .size            n231_binop_bx, .-n231_binop_bx
                        .type            n232_assign_bx, @function
n232_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 144], rax            # mult.V
                        mov              qword ptr [r9 + 152], rdx;           jmp   n233_statement_end_α
                        .size            n232_assign_bx, .-n232_assign_bx
                        .type            n233_statement_end_bx, @function
n233_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_statement_end_α:   add              rsp, 48;                             jmp   n235_statement_begin_α
                        .size            n233_statement_end_bx, .-n233_statement_end_bx
                        .type            n234_setexit_test_bx, @function
n234_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_694_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_694_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_694_61:
.Lsetexit_test_α_694_1:                                                       jmp   n283_statement_begin_α
                        .size            n234_setexit_test_bx, .-n234_setexit_test_bx
                        .type            n235_statement_begin_bx, @function
n235_statement_begin_bx:
.Lstatement_begin_α_695_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_695_stno
                        .long            53
                        .long            70
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 GT(5, mult.V)           :F(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 70 0
n235_statement_begin_α:                                                       jmp   n236_lit_integer_α
n235_statement_begin_β:                                                       jmp   n242_setexit_test_α
                        .size            n235_statement_begin_bx, .-n235_statement_begin_bx
                        .type            n236_lit_integer_bx, @function
n236_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_697_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n237_var_α
.Llit_integer_α_697_0:  .quad            5
                        .size            n236_lit_integer_bx, .-n236_lit_integer_bx
                        .type            n237_var_bx, @function
n237_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n238_coerce_numeric_α
n237_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n235_statement_begin_β
                        .size            n237_var_bx, .-n237_var_bx
                        .type            n238_coerce_numeric_bx, @function
n238_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_700_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_700_0
                        mov              eax, dword ptr [rsp + 16]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_700_0
.Lcoerce_numeric_α_700_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n239_coerce_numeric_α
.Lcoerce_numeric_α_700_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]                      # var
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 111
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_44:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_43:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_700_240
                        add              rsp, 16;                             jmp   n237_var_β
.Lcoerce_numeric_α_700_240:
                                                                              jmp   n239_coerce_numeric_α
n238_coerce_numeric_β:  add              rsp, 16;                             jmp   n237_var_β
                        .size            n238_coerce_numeric_bx, .-n238_coerce_numeric_bx
                        .type            n239_coerce_numeric_bx, @function
n239_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_702_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_702_0
                        mov              eax, dword ptr [rsp + 48]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_702_0
.Lcoerce_numeric_α_702_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n240_cmp_test_α
.Lcoerce_numeric_α_702_0:
                        lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 48]                      # lit_integer
                        lea              rdx, [rsp + 0]                       # result
                        mov              rcx, 112
                        call             qword ptr [rip + rt_coerce_num2_d@GOTPCREL]
.Lgcsite_main_46:       push             rax                                  # gc_poll bb_coerce_numeric.cpp:45
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_45:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_702_240
                        add              rsp, 16;                             jmp   n238_coerce_numeric_β
.Lcoerce_numeric_α_702_240:
                                                                              jmp   n240_cmp_test_α
n239_coerce_numeric_β:  add              rsp, 16;                             jmp   n238_coerce_numeric_β
                        .size            n239_coerce_numeric_bx, .-n239_coerce_numeric_bx
                        .type            n240_cmp_test_bx, @function
n240_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_704_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jg    .Lcmp_test_α_704_239
                        add              rsp, 16;                             jmp   n239_coerce_numeric_β
.Lcmp_test_α_704_239:                                                         jmp   n241_statement_end_α
.Lcmp_test_α_704_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
.Lgcsite_main_47:       test             eax, eax;                            jg    .Lcmp_test_α_704_240
                        add              rsp, 16;                             jmp   n239_coerce_numeric_β
.Lcmp_test_α_704_240:                                                         jmp   n241_statement_end_α
                        .size            n240_cmp_test_bx, .-n240_cmp_test_bx
                        .type            n241_statement_end_bx, @function
n241_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_statement_end_α:   add              rsp, 80;                             jmp   n243_statement_begin_α
                        .size            n241_statement_end_bx, .-n241_statement_end_bx
                        .type            n242_setexit_test_bx, @function
n242_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_707_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_707_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_707_61:
.Lsetexit_test_α_707_1:                                                       jmp   n213_statement_begin_α
                        .size            n242_setexit_test_bx, .-n242_setexit_test_bx
                        .type            n243_statement_begin_bx, @function
n243_statement_begin_bx:
.Lstatement_begin_α_708_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_708_stno
                        .long            54
                        .long            71
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 greater.V = mult.V
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 71 0
n243_statement_begin_α:                                                       jmp   n244_var_α
n243_statement_begin_β:                                                       jmp   n247_setexit_test_α
                        .size            n243_statement_begin_bx, .-n243_statement_begin_bx
                        .type            n244_var_bx, @function
n244_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 144]            # mult.V
                        mov              rdx, qword ptr [r9 + 152]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n245_assign_α
                        .size            n244_var_bx, .-n244_var_bx
                        .type            n245_assign_bx, @function
n245_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 160], rax            # greater.V
                        mov              qword ptr [r9 + 168], rdx;           jmp   n246_statement_end_α
                        .size            n245_assign_bx, .-n245_assign_bx
                        .type            n246_statement_end_bx, @function
n246_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_statement_end_α:   add              rsp, 16;                             jmp   n248_statement_begin_α
                        .size            n246_statement_end_bx, .-n246_statement_end_bx
                        .type            n247_setexit_test_bx, @function
n247_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_714_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_714_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_714_61:
.Lsetexit_test_α_714_1:                                                       jmp   n248_statement_begin_α
                        .size            n247_setexit_test_bx, .-n247_setexit_test_bx
                        .type            n248_statement_begin_bx, @function
n248_statement_begin_bx:
.Lstatement_begin_α_715_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_715_stno
                        .long            55
                        .long            72
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#                 OUTPUT = greater.V      :(write2.succeed)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 72 0
n248_statement_begin_α:                                                       jmp   n249_var_α
n248_statement_begin_β:                                                       jmp   n252_setexit_test_α
                        .size            n248_statement_begin_bx, .-n248_statement_begin_bx
                        .type            n249_var_bx, @function
n249_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 160]            # greater.V
                        mov              rdx, qword ptr [r9 + 168]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n250_assign_α
                        .size            n249_var_bx, .-n249_var_bx
                        .type            n250_assign_bx, @function
n250_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_assign_α:          mov              rax, qword ptr [rsp + 0]             # var
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_718_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_49:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_48:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n251_statement_end_α
.Lassign_α_718_0:       .quad            .Lassign_α_718_0_s
.Lassign_α_718_0_s:     .string          "OUTPUT"
                        .size            n250_assign_bx, .-n250_assign_bx
                        .type            n251_statement_end_bx, @function
n251_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_statement_end_α:   add              rsp, 16;                             jmp   n278_statement_begin_α
                        .size            n251_statement_end_bx, .-n251_statement_end_bx
                        .type            n252_setexit_test_bx, @function
n252_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_721_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_721_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_721_61:
.Lsetexit_test_α_721_1:                                                       jmp   n278_statement_begin_α
                        .size            n252_setexit_test_bx, .-n252_setexit_test_bx
                        .type            n253_statement_begin_bx, @function
n253_statement_begin_bx:
.Lstatement_begin_α_722_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_722_stno
                        .long            56
                        .long            74
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# main1           OUTPUT =                :(write1.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 74 0
n253_statement_begin_α:                                                       jmp   n254_lit_string_α
n253_statement_begin_β:                                                       jmp   n257_setexit_test_α
                        .size            n253_statement_begin_bx, .-n253_statement_begin_bx
                        .type            n254_lit_string_bx, @function
n254_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_724_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n255_assign_α
.Llit_string_α_724_0:   .quad            .Llit_string_α_724_0_s
.Llit_string_α_724_0_s: .string          ""
                        .size            n254_lit_string_bx, .-n254_lit_string_bx
                        .type            n255_assign_bx, @function
n255_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_725_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_51:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_50:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n256_statement_end_α
.Lassign_α_725_0:       .quad            .Lassign_α_725_0_s
.Lassign_α_725_0_s:     .string          "OUTPUT"
                        .size            n255_assign_bx, .-n255_assign_bx
                        .type            n256_statement_end_bx, @function
n256_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_statement_end_α:   add              rsp, 16;                             jmp   n169_statement_begin_α
                        .size            n256_statement_end_bx, .-n256_statement_end_bx
                        .type            n257_setexit_test_bx, @function
n257_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_728_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_728_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_728_61:
.Lsetexit_test_α_728_1:                                                       jmp   n169_statement_begin_α
                        .size            n257_setexit_test_bx, .-n257_setexit_test_bx
                        .type            n258_statement_begin_bx, @function
n258_statement_begin_bx:
.Lstatement_begin_α_729_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_729_stno
                        .long            57
                        .long            75
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# write1.fail     OUTPUT = "Failure."     :(main2)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 75 0
n258_statement_begin_α:                                                       jmp   n259_lit_string_α
n258_statement_begin_β:                                                       jmp   n262_setexit_test_α
                        .size            n258_statement_begin_bx, .-n258_statement_begin_bx
                        .type            n259_lit_string_bx, @function
n259_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_731_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n260_assign_α
.Llit_string_α_731_0:   .quad            .Llit_string_α_731_0_s
.Llit_string_α_731_0_s: .string          "Failure."
                        .size            n259_lit_string_bx, .-n259_lit_string_bx
                        .type            n260_assign_bx, @function
n260_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_732_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_53:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_52:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n261_statement_end_α
.Lassign_α_732_0:       .quad            .Lassign_α_732_0_s
.Lassign_α_732_0_s:     .string          "OUTPUT"
                        .size            n260_assign_bx, .-n260_assign_bx
                        .type            n261_statement_end_bx, @function
n261_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_statement_end_α:   add              rsp, 16;                             jmp   n268_statement_begin_α
                        .size            n261_statement_end_bx, .-n261_statement_end_bx
                        .type            n262_setexit_test_bx, @function
n262_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_735_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_735_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_735_61:
.Lsetexit_test_α_735_1:                                                       jmp   n268_statement_begin_α
                        .size            n262_setexit_test_bx, .-n262_setexit_test_bx
                        .type            n263_statement_begin_bx, @function
n263_statement_begin_bx:
.Lstatement_begin_α_736_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_736_stno
                        .long            58
                        .long            76
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# write1.succeed  OUTPUT = "Success!"     :(write1.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 76 0
n263_statement_begin_α:                                                       jmp   n264_lit_string_α
n263_statement_begin_β:                                                       jmp   n267_setexit_test_α
                        .size            n263_statement_begin_bx, .-n263_statement_begin_bx
                        .type            n264_lit_string_bx, @function
n264_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_738_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n265_assign_α
.Llit_string_α_738_0:   .quad            .Llit_string_α_738_0_s
.Llit_string_α_738_0_s: .string          "Success!"
                        .size            n264_lit_string_bx, .-n264_lit_string_bx
                        .type            n265_assign_bx, @function
n265_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_739_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_55:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_54:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n266_statement_end_α
.Lassign_α_739_0:       .quad            .Lassign_α_739_0_s
.Lassign_α_739_0_s:     .string          "OUTPUT"
                        .size            n265_assign_bx, .-n265_assign_bx
                        .type            n266_statement_end_bx, @function
n266_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_statement_end_α:   add              rsp, 16;                             jmp   n172_statement_begin_α
                        .size            n266_statement_end_bx, .-n266_statement_end_bx
                        .type            n267_setexit_test_bx, @function
n267_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_742_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_742_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_742_61:
.Lsetexit_test_α_742_1:                                                       jmp   n172_statement_begin_α
                        .size            n267_setexit_test_bx, .-n267_setexit_test_bx
                        .type            n268_statement_begin_bx, @function
n268_statement_begin_bx:
.Lstatement_begin_α_743_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_743_stno
                        .long            59
                        .long            77
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# main2           OUTPUT =                :(write2.start)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 77 0
n268_statement_begin_α:                                                       jmp   n269_lit_string_α
n268_statement_begin_β:                                                       jmp   n272_setexit_test_α
                        .size            n268_statement_begin_bx, .-n268_statement_begin_bx
                        .type            n269_lit_string_bx, @function
n269_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_745_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n270_assign_α
.Llit_string_α_745_0:   .quad            .Llit_string_α_745_0_s
.Llit_string_α_745_0_s: .string          ""
                        .size            n269_lit_string_bx, .-n269_lit_string_bx
                        .type            n270_assign_bx, @function
n270_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_746_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_57:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_56:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n271_statement_end_α
.Lassign_α_746_0:       .quad            .Lassign_α_746_0_s
.Lassign_α_746_0_s:     .string          "OUTPUT"
                        .size            n270_assign_bx, .-n270_assign_bx
                        .type            n271_statement_end_bx, @function
n271_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_statement_end_α:   add              rsp, 16;                             jmp   n188_statement_begin_α
                        .size            n271_statement_end_bx, .-n271_statement_end_bx
                        .type            n272_setexit_test_bx, @function
n272_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_749_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_749_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_749_61:
.Lsetexit_test_α_749_1:                                                       jmp   n188_statement_begin_α
                        .size            n272_setexit_test_bx, .-n272_setexit_test_bx
                        .type            n273_statement_begin_bx, @function
n273_statement_begin_bx:
.Lstatement_begin_α_750_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_750_stno
                        .long            60
                        .long            78
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# write2.fail     OUTPUT = "Failure."     :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 78 0
n273_statement_begin_α:                                                       jmp   n274_lit_string_α
n273_statement_begin_β:                                                       jmp   n277_setexit_test_α
                        .size            n273_statement_begin_bx, .-n273_statement_begin_bx
                        .type            n274_lit_string_bx, @function
n274_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_752_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n275_assign_α
.Llit_string_α_752_0:   .quad            .Llit_string_α_752_0_s
.Llit_string_α_752_0_s: .string          "Failure."
                        .size            n274_lit_string_bx, .-n274_lit_string_bx
                        .type            n275_assign_bx, @function
n275_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_753_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_59:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_58:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n276_statement_end_α
.Lassign_α_753_0:       .quad            .Lassign_α_753_0_s
.Lassign_α_753_0_s:     .string          "OUTPUT"
                        .size            n275_assign_bx, .-n275_assign_bx
                        .type            n276_statement_end_bx, @function
n276_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n276_statement_end_bx, .-n276_statement_end_bx
                        .type            n277_setexit_test_bx, @function
n277_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_756_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_756_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_756_61:
.Lsetexit_test_α_756_1:                                                       jmp   main_γ
                        .size            n277_setexit_test_bx, .-n277_setexit_test_bx
                        .type            n278_statement_begin_bx, @function
n278_statement_begin_bx:
.Lstatement_begin_α_757_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_757_stno
                        .long            61
                        .long            79
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# write2.succeed  OUTPUT = "Success!"     :(write2.resume)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 79 0
n278_statement_begin_α:                                                       jmp   n279_lit_string_α
n278_statement_begin_β:                                                       jmp   n282_setexit_test_α
                        .size            n278_statement_begin_bx, .-n278_statement_begin_bx
                        .type            n279_lit_string_bx, @function
n279_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 8
                        mov              rax, qword ptr [rip + .Llit_string_α_759_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n280_assign_α
.Llit_string_α_759_0:   .quad            .Llit_string_α_759_0_s
.Llit_string_α_759_0_s: .string          "Success!"
                        .size            n279_lit_string_bx, .-n279_lit_string_bx
                        .type            n280_assign_bx, @function
n280_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_760_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_61:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_60:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n281_statement_end_α
.Lassign_α_760_0:       .quad            .Lassign_α_760_0_s
.Lassign_α_760_0_s:     .string          "OUTPUT"
                        .size            n280_assign_bx, .-n280_assign_bx
                        .type            n281_statement_end_bx, @function
n281_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_statement_end_α:   add              rsp, 16;                             jmp   n213_statement_begin_α
                        .size            n281_statement_end_bx, .-n281_statement_end_bx
                        .type            n282_setexit_test_bx, @function
n282_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_763_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_763_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_763_61:
.Lsetexit_test_α_763_1:                                                       jmp   n213_statement_begin_α
                        .size            n282_setexit_test_bx, .-n282_setexit_test_bx
                        .type            n283_statement_begin_bx, @function
n283_statement_begin_bx:
.Lstatement_begin_α_764_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_764_stno
                        .long            62
                        .long            81
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# exception       TERMINAL = "Exception!" :(END)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 81 0
n283_statement_begin_α:                                                       jmp   n284_lit_string_α
n283_statement_begin_β:                                                       jmp   n287_setexit_test_α
                        .size            n283_statement_begin_bx, .-n283_statement_begin_bx
                        .type            n284_lit_string_bx, @function
n284_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_766_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_assign_α
.Llit_string_α_766_0:   .quad            .Llit_string_α_766_0_s
.Llit_string_α_766_0_s: .string          "Exception!"
                        .size            n284_lit_string_bx, .-n284_lit_string_bx
                        .type            n285_assign_bx, @function
n285_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_string
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_767_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             NV_SET_fn@PLT
.Lgcsite_main_63:       mov              r8,  qword ptr [rip + rtccb+40]
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
.Lgcsite_main_62:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 0]
                        mov              rdx, qword ptr [rsp + 8]
                        add              rsp, 16
1:                                                                            jmp   n286_statement_end_α
.Lassign_α_767_0:       .quad            .Lassign_α_767_0_s
.Lassign_α_767_0_s:     .string          "TERMINAL"
                        .size            n285_assign_bx, .-n285_assign_bx
                        .type            n286_statement_end_bx, @function
n286_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_statement_end_α:   add              rsp, 16;                             jmp   main_γ
                        .size            n286_statement_end_bx, .-n286_statement_end_bx
                        .type            n287_setexit_test_bx, @function
n287_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_770_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_770_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_770_61:
.Lsetexit_test_α_770_1:                                                       jmp   main_γ
                        .size            n287_setexit_test_bx, .-n287_setexit_test_bx
                        .type            n288_goto_bx, @function
n288_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_goto_α:                                                                  jmp   n2_statement_begin_α
n288_goto_β:                                                                  jmp   main_ω
                        .size            n288_goto_bx, .-n288_goto_bx
                        .type            n289_goto_bx, @function
n289_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_goto_α:                                                                  jmp   n5_statement_begin_α
n289_goto_β:                                                                  jmp   main_ω
                        .size            n289_goto_bx, .-n289_goto_bx
                        .type            n290_goto_bx, @function
n290_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_goto_α:                                                                  jmp   n10_statement_begin_α
n290_goto_β:                                                                  jmp   main_ω
                        .size            n290_goto_bx, .-n290_goto_bx
                        .type            n291_goto_bx, @function
n291_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_goto_α:                                                                  jmp   n13_statement_begin_α
n291_goto_β:                                                                  jmp   main_ω
                        .size            n291_goto_bx, .-n291_goto_bx
                        .type            n292_goto_bx, @function
n292_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_goto_α:                                                                  jmp   n18_statement_begin_α
n292_goto_β:                                                                  jmp   main_ω
                        .size            n292_goto_bx, .-n292_goto_bx
                        .type            n293_goto_bx, @function
n293_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_goto_α:                                                                  jmp   n21_statement_begin_α
n293_goto_β:                                                                  jmp   main_ω
                        .size            n293_goto_bx, .-n293_goto_bx
                        .type            n294_goto_bx, @function
n294_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_goto_α:                                                                  jmp   n26_statement_begin_α
n294_goto_β:                                                                  jmp   main_ω
                        .size            n294_goto_bx, .-n294_goto_bx
                        .type            n295_goto_bx, @function
n295_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_goto_α:                                                                  jmp   n29_statement_begin_α
n295_goto_β:                                                                  jmp   main_ω
                        .size            n295_goto_bx, .-n295_goto_bx
                        .type            n296_goto_bx, @function
n296_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_goto_α:                                                                  jmp   n32_statement_begin_α
n296_goto_β:                                                                  jmp   main_ω
                        .size            n296_goto_bx, .-n296_goto_bx
                        .type            n297_goto_bx, @function
n297_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_goto_α:                                                                  jmp   n35_statement_begin_α
n297_goto_β:                                                                  jmp   main_ω
                        .size            n297_goto_bx, .-n297_goto_bx
                        .type            n298_goto_bx, @function
n298_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_goto_α:                                                                  jmp   n38_statement_begin_α
n298_goto_β:                                                                  jmp   main_ω
                        .size            n298_goto_bx, .-n298_goto_bx
                        .type            n299_goto_bx, @function
n299_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_goto_α:                                                                  jmp   n51_statement_begin_α
n299_goto_β:                                                                  jmp   main_ω
                        .size            n299_goto_bx, .-n299_goto_bx
                        .type            n300_goto_bx, @function
n300_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_goto_α:                                                                  jmp   n58_statement_begin_α
n300_goto_β:                                                                  jmp   main_ω
                        .size            n300_goto_bx, .-n300_goto_bx
                        .type            n301_goto_bx, @function
n301_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_goto_α:                                                                  jmp   n61_statement_begin_α
n301_goto_β:                                                                  jmp   main_ω
                        .size            n301_goto_bx, .-n301_goto_bx
                        .type            n302_goto_bx, @function
n302_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_goto_α:                                                                  jmp   n66_statement_begin_α
n302_goto_β:                                                                  jmp   main_ω
                        .size            n302_goto_bx, .-n302_goto_bx
                        .type            n303_goto_bx, @function
n303_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_goto_α:                                                                  jmp   n71_statement_begin_α
n303_goto_β:                                                                  jmp   main_ω
                        .size            n303_goto_bx, .-n303_goto_bx
                        .type            n304_goto_bx, @function
n304_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_goto_α:                                                                  jmp   n74_statement_begin_α
n304_goto_β:                                                                  jmp   main_ω
                        .size            n304_goto_bx, .-n304_goto_bx
                        .type            n305_goto_bx, @function
n305_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_goto_α:                                                                  jmp   n79_statement_begin_α
n305_goto_β:                                                                  jmp   main_ω
                        .size            n305_goto_bx, .-n305_goto_bx
                        .type            n306_goto_bx, @function
n306_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_goto_α:                                                                  jmp   n82_statement_begin_α
n306_goto_β:                                                                  jmp   main_ω
                        .size            n306_goto_bx, .-n306_goto_bx
                        .type            n307_goto_bx, @function
n307_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_goto_α:                                                                  jmp   n85_statement_begin_α
n307_goto_β:                                                                  jmp   main_ω
                        .size            n307_goto_bx, .-n307_goto_bx
                        .type            n308_goto_bx, @function
n308_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_goto_α:                                                                  jmp   n88_statement_begin_α
n308_goto_β:                                                                  jmp   main_ω
                        .size            n308_goto_bx, .-n308_goto_bx
                        .type            n309_goto_bx, @function
n309_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_goto_α:                                                                  jmp   n91_statement_begin_α
n309_goto_β:                                                                  jmp   main_ω
                        .size            n309_goto_bx, .-n309_goto_bx
                        .type            n310_goto_bx, @function
n310_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_goto_α:                                                                  jmp   n104_statement_begin_α
n310_goto_β:                                                                  jmp   main_ω
                        .size            n310_goto_bx, .-n310_goto_bx
                        .type            n311_goto_bx, @function
n311_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_goto_α:                                                                  jmp   n111_statement_begin_α
n311_goto_β:                                                                  jmp   main_ω
                        .size            n311_goto_bx, .-n311_goto_bx
                        .type            n312_goto_bx, @function
n312_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_goto_α:                                                                  jmp   n114_statement_begin_α
n312_goto_β:                                                                  jmp   main_ω
                        .size            n312_goto_bx, .-n312_goto_bx
                        .type            n313_goto_bx, @function
n313_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_goto_α:                                                                  jmp   n119_statement_begin_α
n313_goto_β:                                                                  jmp   main_ω
                        .size            n313_goto_bx, .-n313_goto_bx
                        .type            n314_goto_bx, @function
n314_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_goto_α:                                                                  jmp   n122_statement_begin_α
n314_goto_β:                                                                  jmp   main_ω
                        .size            n314_goto_bx, .-n314_goto_bx
                        .type            n315_goto_bx, @function
n315_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_goto_α:                                                                  jmp   n125_statement_begin_α
n315_goto_β:                                                                  jmp   main_ω
                        .size            n315_goto_bx, .-n315_goto_bx
                        .type            n316_goto_bx, @function
n316_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_goto_α:                                                                  jmp   n128_statement_begin_α
n316_goto_β:                                                                  jmp   main_ω
                        .size            n316_goto_bx, .-n316_goto_bx
                        .type            n317_goto_bx, @function
n317_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_goto_α:                                                                  jmp   n131_statement_begin_α
n317_goto_β:                                                                  jmp   main_ω
                        .size            n317_goto_bx, .-n317_goto_bx
                        .type            n318_goto_bx, @function
n318_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_goto_α:                                                                  jmp   n134_statement_begin_α
n318_goto_β:                                                                  jmp   main_ω
                        .size            n318_goto_bx, .-n318_goto_bx
                        .type            n319_goto_bx, @function
n319_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_goto_α:                                                                  jmp   n141_statement_begin_α
n319_goto_β:                                                                  jmp   main_ω
                        .size            n319_goto_bx, .-n319_goto_bx
                        .type            n320_goto_bx, @function
n320_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_goto_α:                                                                  jmp   n144_statement_begin_α
n320_goto_β:                                                                  jmp   main_ω
                        .size            n320_goto_bx, .-n320_goto_bx
                        .type            n321_goto_bx, @function
n321_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_goto_α:                                                                  jmp   n147_statement_begin_α
n321_goto_β:                                                                  jmp   main_ω
                        .size            n321_goto_bx, .-n321_goto_bx
                        .type            n322_goto_bx, @function
n322_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_goto_α:                                                                  jmp   n150_statement_begin_α
n322_goto_β:                                                                  jmp   main_ω
                        .size            n322_goto_bx, .-n322_goto_bx
                        .type            n323_goto_bx, @function
n323_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_goto_α:                                                                  jmp   n153_statement_begin_α
n323_goto_β:                                                                  jmp   main_ω
                        .size            n323_goto_bx, .-n323_goto_bx
                        .type            n324_goto_bx, @function
n324_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_goto_α:                                                                  jmp   n156_statement_begin_α
n324_goto_β:                                                                  jmp   main_ω
                        .size            n324_goto_bx, .-n324_goto_bx
                        .type            n325_goto_bx, @function
n325_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_goto_α:                                                                  jmp   n169_statement_begin_α
n325_goto_β:                                                                  jmp   main_ω
                        .size            n325_goto_bx, .-n325_goto_bx
                        .type            n326_goto_bx, @function
n326_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_goto_α:                                                                  jmp   n172_statement_begin_α
n326_goto_β:                                                                  jmp   main_ω
                        .size            n326_goto_bx, .-n326_goto_bx
                        .type            n327_goto_bx, @function
n327_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_goto_α:                                                                  jmp   n175_statement_begin_α
n327_goto_β:                                                                  jmp   main_ω
                        .size            n327_goto_bx, .-n327_goto_bx
                        .type            n328_goto_bx, @function
n328_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_goto_α:                                                                  jmp   n178_statement_begin_α
n328_goto_β:                                                                  jmp   main_ω
                        .size            n328_goto_bx, .-n328_goto_bx
                        .type            n329_goto_bx, @function
n329_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_goto_α:                                                                  jmp   n188_statement_begin_α
n329_goto_β:                                                                  jmp   main_ω
                        .size            n329_goto_bx, .-n329_goto_bx
                        .type            n330_goto_bx, @function
n330_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_goto_α:                                                                  jmp   n193_statement_begin_α
n330_goto_β:                                                                  jmp   main_ω
                        .size            n330_goto_bx, .-n330_goto_bx
                        .type            n331_goto_bx, @function
n331_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_goto_α:                                                                  jmp   n200_statement_begin_α
n331_goto_β:                                                                  jmp   main_ω
                        .size            n331_goto_bx, .-n331_goto_bx
                        .type            n332_goto_bx, @function
n332_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_goto_α:                                                                  jmp   n213_statement_begin_α
n332_goto_β:                                                                  jmp   main_ω
                        .size            n332_goto_bx, .-n332_goto_bx
                        .type            n333_goto_bx, @function
n333_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_goto_α:                                                                  jmp   n220_statement_begin_α
n333_goto_β:                                                                  jmp   main_ω
                        .size            n333_goto_bx, .-n333_goto_bx
                        .type            n334_goto_bx, @function
n334_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_goto_α:                                                                  jmp   n253_statement_begin_α
n334_goto_β:                                                                  jmp   main_ω
                        .size            n334_goto_bx, .-n334_goto_bx
                        .type            n335_goto_bx, @function
n335_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_goto_α:                                                                  jmp   n258_statement_begin_α
n335_goto_β:                                                                  jmp   main_ω
                        .size            n335_goto_bx, .-n335_goto_bx
                        .type            n336_goto_bx, @function
n336_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_goto_α:                                                                  jmp   n263_statement_begin_α
n336_goto_β:                                                                  jmp   main_ω
                        .size            n336_goto_bx, .-n336_goto_bx
                        .type            n337_goto_bx, @function
n337_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:                                                                  jmp   n268_statement_begin_α
n337_goto_β:                                                                  jmp   main_ω
                        .size            n337_goto_bx, .-n337_goto_bx
                        .type            n338_goto_bx, @function
n338_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:                                                                  jmp   n273_statement_begin_α
n338_goto_β:                                                                  jmp   main_ω
                        .size            n338_goto_bx, .-n338_goto_bx
                        .type            n339_goto_bx, @function
n339_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_goto_α:                                                                  jmp   n278_statement_begin_α
n339_goto_β:                                                                  jmp   main_ω
                        .size            n339_goto_bx, .-n339_goto_bx
                        .type            n340_goto_bx, @function
n340_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_goto_α:                                                                  jmp   n283_statement_begin_α
n340_goto_β:                                                                  jmp   main_ω
                        .size            n340_goto_bx, .-n340_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
.Lgcsite_main_66:       push             rax                                  # gc_poll bb_glue_flat.cpp:44
                        mov              rax, qword ptr [rip + g_gc_pending@GOTPCREL]
                        mov              eax, dword ptr [rax + 0]
                        test             eax, eax
                        pop              rax
                                                                              je 1f
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_gc_poll_asm@PLT
.Lgcsite_main_65:       mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
1:                      xor              edi, edi
                        call             exit@PLT
.Lgcsite_main_64:
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              edi, 1
                        call             exit@PLT
.Lgcsite_main_67:
#-----------------------------------------------------------------------------------------------------------------------
.Lgcmap_main:
                        .quad            9003597909338
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            2080
                        .quad            1
                        .quad            2286984185774080
.Lgcmap_main_s:         .string          "main"
.Lgcsites_main_0:       .quad            68
                        .quad            .Lgcmap_main
                        .quad            0
                        .quad            .Lgcsite_main_0
                        .quad            68719476737
                        .quad            .Lgcsite_main_1
                        .quad            206158430209
                        .quad            .Lgcsite_main_2
                        .quad            137438953473
                        .quad            .Lgcsite_main_3
                        .quad            274877906945
                        .quad            .Lgcsite_main_4
                        .quad            206158430209
                        .quad            .Lgcsite_main_5
                        .quad            206158430209
                        .quad            .Lgcsite_main_6
                        .quad            274877906945
                        .quad            .Lgcsite_main_7
                        .quad            274877906945
                        .quad            .Lgcsite_main_8
                        .quad            343597383681
                        .quad            .Lgcsite_main_9
                        .quad            206158430209
                        .quad            .Lgcsite_main_10
                        .quad            206158430209
                        .quad            .Lgcsite_main_11
                        .quad            206158430209
                        .quad            .Lgcsite_main_12
                        .quad            206158430209
                        .quad            .Lgcsite_main_13
                        .quad            274877906945
                        .quad            .Lgcsite_main_14
                        .quad            274877906945
                        .quad            .Lgcsite_main_15
                        .quad            343597383681
                        .quad            .Lgcsite_main_16
                        .quad            206158430209
                        .quad            .Lgcsite_main_17
                        .quad            206158430209
                        .quad            .Lgcsite_main_18
                        .quad            206158430209
                        .quad            .Lgcsite_main_19
                        .quad            206158430209
                        .quad            .Lgcsite_main_20
                        .quad            206158430209
                        .quad            .Lgcsite_main_21
                        .quad            206158430209
                        .quad            .Lgcsite_main_22
                        .quad            274877906945
                        .quad            .Lgcsite_main_23
                        .quad            274877906945
                        .quad            .Lgcsite_main_24
                        .quad            343597383681
                        .quad            .Lgcsite_main_25
                        .quad            137438953473
                        .quad            .Lgcsite_main_26
                        .quad            68719476737
                        .quad            .Lgcsite_main_27
                        .quad            206158430209
                        .quad            .Lgcsite_main_28
                        .quad            206158430209
                        .quad            .Lgcsite_main_29
                        .quad            206158430209
                        .quad            .Lgcsite_main_30
                        .quad            206158430209
                        .quad            .Lgcsite_main_31
                        .quad            274877906945
                        .quad            .Lgcsite_main_32
                        .quad            274877906945
                        .quad            .Lgcsite_main_33
                        .quad            343597383681
                        .quad            .Lgcsite_main_34
                        .quad            206158430209
                        .quad            .Lgcsite_main_35
                        .quad            206158430209
                        .quad            .Lgcsite_main_36
                        .quad            206158430209
                        .quad            .Lgcsite_main_37
                        .quad            206158430209
                        .quad            .Lgcsite_main_38
                        .quad            274877906945
                        .quad            .Lgcsite_main_39
                        .quad            274877906945
                        .quad            .Lgcsite_main_40
                        .quad            343597383681
                        .quad            .Lgcsite_main_41
                        .quad            206158430209
                        .quad            .Lgcsite_main_42
                        .quad            206158430209
                        .quad            .Lgcsite_main_43
                        .quad            206158430209
                        .quad            .Lgcsite_main_44
                        .quad            206158430209
                        .quad            .Lgcsite_main_45
                        .quad            274877906945
                        .quad            .Lgcsite_main_46
                        .quad            274877906945
                        .quad            .Lgcsite_main_47
                        .quad            343597383681
                        .quad            .Lgcsite_main_48
                        .quad            137438953473
                        .quad            .Lgcsite_main_49
                        .quad            68719476737
                        .quad            .Lgcsite_main_50
                        .quad            137438953473
                        .quad            .Lgcsite_main_51
                        .quad            68719476737
                        .quad            .Lgcsite_main_52
                        .quad            137438953473
                        .quad            .Lgcsite_main_53
                        .quad            68719476737
                        .quad            .Lgcsite_main_54
                        .quad            137438953473
                        .quad            .Lgcsite_main_55
                        .quad            68719476737
                        .quad            .Lgcsite_main_56
                        .quad            137438953473
                        .quad            .Lgcsite_main_57
                        .quad            68719476737
                        .quad            .Lgcsite_main_58
                        .quad            137438953473
                        .quad            .Lgcsite_main_59
                        .quad            68719476737
                        .quad            .Lgcsite_main_60
                        .quad            137438953473
                        .quad            .Lgcsite_main_61
                        .quad            68719476737
                        .quad            .Lgcsite_main_62
                        .quad            137438953473
                        .quad            .Lgcsite_main_63
                        .quad            68719476737
                        .quad            .Lgcsite_main_64
                        .quad            1
                        .quad            .Lgcsite_main_65
                        .quad            1
                        .quad            .Lgcsite_main_66
                        .quad            1
                        .quad            .Lgcsite_main_67
                        .quad            1
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
