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
                        mov              qword ptr [rsp + 3880], rax
                        mov              dword ptr [rsp + 3872], 160
                        mov              dword ptr [rsp + 3876], 3888
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_344_240
                        add              rsp, 16
                        add              rsp, -16;                            jmp   n1_call_α
.Lcall_α_344_240:       mov              qword ptr [rsp + 0], rax             # result
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      cmp              al, 104;                             jne   .Lcall_α_345_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
.Lcall_α_345_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        add              rsp, 32;                             jmp   n2_statement_begin_α
n1_call_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n2_statement_begin_α
                        .size            n1_call_bx, .-n1_call_bx
                        .type            n2_statement_begin_bx, @function
n2_statement_begin_bx:
                        .pushsection     .rodata
.Lstnof1:               .string          "table_variety.sno"
                        .popsection
.Lstatement_begin_α_346_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_346_stno
                        .long            1
                        .long            5
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         census = 0
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 5 0
n2_statement_begin_α:                                                         jmp   n3_lit_integer_α
n2_statement_begin_β:                                                         jmp   n6_setexit_test_α
                        .size            n2_statement_begin_bx, .-n2_statement_begin_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_348_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n4_assign_α
.Llit_integer_α_348_0:  .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_assign_bx, @function
n4_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n5_statement_end_α
                        .size            n4_assign_bx, .-n4_assign_bx
                        .type            n5_statement_end_bx, @function
n5_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_statement_end_α:     add              rsp, 16;                             jmp   n7_statement_begin_α
                        .size            n5_statement_end_bx, .-n5_statement_end_bx
                        .type            n6_setexit_test_bx, @function
n6_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_setexit_test_α:      mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_352_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_352_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_352_61:
.Lsetexit_test_α_352_1:                                                       jmp   n7_statement_begin_α
                        .size            n6_setexit_test_bx, .-n6_setexit_test_bx
                        .type            n7_statement_begin_bx, @function
n7_statement_begin_bx:
.Lstatement_begin_α_353_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_353_stno
                        .long            2
                        .long            6
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         pass = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 6 0
n7_statement_begin_α:                                                         jmp   n8_lit_integer_α
n7_statement_begin_β:                                                         jmp   n11_setexit_test_α
                        .size            n7_statement_begin_bx, .-n7_statement_begin_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_355_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n9_assign_α
.Llit_integer_α_355_0:  .quad            1
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_assign_bx, @function
n9_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_assign_α:            mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pass
                        mov              qword ptr [r9 + 24], rdx;            jmp   n10_statement_end_α
                        .size            n9_assign_bx, .-n9_assign_bx
                        .type            n10_statement_end_bx, @function
n10_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_statement_end_α:    add              rsp, 16;                             jmp   n12_statement_begin_α
                        .size            n10_statement_end_bx, .-n10_statement_end_bx
                        .type            n11_setexit_test_bx, @function
n11_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_359_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_359_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_359_61:
.Lsetexit_test_α_359_1:                                                       jmp   n12_statement_begin_α
                        .size            n11_setexit_test_bx, .-n11_setexit_test_bx
                        .type            n12_statement_begin_bx, @function
n12_statement_begin_bx:
.Lstatement_begin_α_360_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_360_stno
                        .long            3
                        .long            7
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# round   tab = TABLE(64)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 7 0
n12_statement_begin_α:                                                        jmp   n13_lit_integer_α
n12_statement_begin_β:                                                        jmp   n17_setexit_test_α
                        .size            n12_statement_begin_bx, .-n12_statement_begin_bx
                        .type            n13_lit_integer_bx, @function
n13_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_362_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n14_call_α
.Llit_integer_α_362_0:  .quad            64
                        .size            n13_lit_integer_bx, .-n13_lit_integer_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             sub              rsp, 16
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_363_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
.Lcall_α_363_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n15_assign_α
n14_call_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n12_statement_begin_β
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_assign_bx, @function
n15_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_assign_α:           mov              rax, qword ptr [rsp + 0]             # call
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 32], rax             # tab
                        mov              qword ptr [r9 + 40], rdx;            jmp   n16_statement_end_α
                        .size            n15_assign_bx, .-n15_assign_bx
                        .type            n16_statement_end_bx, @function
n16_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_statement_end_α:    add              rsp, 32;                             jmp   n18_statement_begin_α
                        .size            n16_statement_end_bx, .-n16_statement_end_bx
                        .type            n17_setexit_test_bx, @function
n17_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_368_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_368_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_368_61:
.Lsetexit_test_α_368_1:                                                       jmp   n18_statement_begin_α
                        .size            n17_setexit_test_bx, .-n17_setexit_test_bx
                        .type            n18_statement_begin_bx, @function
n18_statement_begin_bx:
.Lstatement_begin_α_369_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_369_stno
                        .long            4
                        .long            8
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 8 0
n18_statement_begin_α:                                                        jmp   n19_lit_integer_α
n18_statement_begin_β:                                                        jmp   n23_setexit_test_α
                        .size            n18_statement_begin_bx, .-n18_statement_begin_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_371_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n20_unop_α
.Llit_integer_α_371_0:  .quad            30
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_unop_bx, @function
n20_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_unop_α:             sub              rsp, 16
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
1:                      mov              rax, qword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lunop_α_372_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
.Lunop_α_372_240:                                                             jmp   n21_assign_α
n20_unop_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n18_statement_begin_β
                        .size            n20_unop_bx, .-n20_unop_bx
                        .type            n21_assign_bx, @function
n21_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_assign_α:           mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n22_statement_end_α
                        .size            n21_assign_bx, .-n21_assign_bx
                        .type            n22_statement_end_bx, @function
n22_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_statement_end_α:    add              rsp, 32;                             jmp   n24_statement_begin_α
                        .size            n22_statement_end_bx, .-n22_statement_end_bx
                        .type            n23_setexit_test_bx, @function
n23_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_376_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_376_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_376_61:
.Lsetexit_test_α_376_1:                                                       jmp   n24_statement_begin_α
                        .size            n23_setexit_test_bx, .-n23_setexit_test_bx
                        .type            n24_statement_begin_bx, @function
n24_statement_begin_bx:
.Lstatement_begin_α_377_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_377_stno
                        .long            5
                        .long            9
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# intfill tab[ix] = ix * 3
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 9 0
n24_statement_begin_α:                                                        jmp   n25_var_α
n24_statement_begin_β:                                                        jmp   n33_setexit_test_α
                        .size            n24_statement_begin_bx, .-n24_statement_begin_bx
                        .type            n25_var_bx, @function
n25_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n26_var_α
                        .size            n25_var_bx, .-n25_var_bx
                        .type            n26_var_bx, @function
n26_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n27_subscript_α
n26_var_β:              add              rsp, 16
                        add              rsp, 16;                             jmp   n24_statement_begin_β
                        .size            n26_var_bx, .-n26_var_bx
                        .type            n27_subscript_bx, @function
n27_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_381_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_381_2
                                                                              jmp   .Lsubscript_α_381_1
.Lsubscript_α_381_0:    cmp              dil, 16;                             jne   .Lsubscript_α_381_1
                        test             rsi, rsi;                            je    .Lsubscript_α_381_1
                        mov              rdx, qword ptr [rsp + 16]
                        cmp              dl, 3;                               jne   .Lsubscript_α_381_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_381_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_381_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_381_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_381_1
                                                                              jmp   .Lsubscript_α_381_2
.Lsubscript_α_381_1:    mov              rdi, qword ptr [rsp + 32]
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_381_240
                        add              rsp, 16;                             jmp   n26_var_β
.Lsubscript_α_381_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
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
1:
.Lsubscript_α_381_2:    mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n28_var_α
n27_subscript_β:        add              rsp, 16;                             jmp   n26_var_β
                        .size            n27_subscript_bx, .-n27_subscript_bx
                        .type            n28_var_bx, @function
n28_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n29_lit_integer_α
n28_var_β:              add              rsp, 16;                             jmp   n27_subscript_β
                        .size            n28_var_bx, .-n28_var_bx
                        .type            n29_lit_integer_bx, @function
n29_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_383_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n30_binop_α
n29_lit_integer_β:      add              rsp, 16;                             jmp   n28_var_β
.Llit_integer_α_383_0:  .quad            3
                        .size            n29_lit_integer_bx, .-n29_lit_integer_bx
                        .type            n30_binop_bx, @function
n30_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_384_2
                        mov              rdx, 3
                        imul             rax, rdx;                            jo    .Lbinop_α_384_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_384_7
.Lbinop_α_384_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_384_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 3
                        cmp              al, 5;                               je    .Lbinop_α_384_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_384_4
.Lbinop_α_384_3:        movq             xmm0, rsi
.Lbinop_α_384_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_384_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_384_7:                                                              jmp   n31_assign_var_α
.Lbinop_α_384_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_384_240
                        add              rsp, 16;                             jmp   n29_lit_integer_β
.Lbinop_α_384_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n31_assign_var_α
n30_binop_β:            add              rsp, 16;                             jmp   n29_lit_integer_β
                        .size            n30_binop_bx, .-n30_binop_bx
                        .type            n31_assign_var_bx, @function
n31_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 80]            # var
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              dil, 24;                             je    .Lassign_var_α_386_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_386_0
.Lassign_var_α_386_1:   test             rsi, rsi;                            je    .Lassign_var_α_386_0
                        mov              r8, qword ptr [rsp + 16]             # binop
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_386_238
                        add              rsp, 16;                             jmp   n30_binop_β
.Lassign_var_α_386_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n32_statement_end_α
.Lassign_var_α_386_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_386_239
                        add              rsp, 16;                             jmp   n30_binop_β
.Lassign_var_α_386_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_386_240
                        add              rsp, 16;                             jmp   n30_binop_β
.Lassign_var_α_386_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n32_statement_end_α
                        .size            n31_assign_var_bx, .-n31_assign_var_bx
                        .type            n32_statement_end_bx, @function
n32_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_statement_end_α:    add              rsp, 112;                            jmp   n34_statement_begin_α
                        .size            n32_statement_end_bx, .-n32_statement_end_bx
                        .type            n33_setexit_test_bx, @function
n33_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_389_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_389_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_389_61:
.Lsetexit_test_α_389_1:                                                       jmp   n34_statement_begin_α
                        .size            n33_setexit_test_bx, .-n33_setexit_test_bx
                        .type            n34_statement_begin_bx, @function
n34_statement_begin_bx:
.Lstatement_begin_α_390_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_390_stno
                        .long            6
                        .long            10
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(intfill)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 10 0
n34_statement_begin_α:                                                        jmp   n35_var_α
n34_statement_begin_β:                                                        jmp   n45_setexit_test_α
                        .size            n34_statement_begin_bx, .-n34_statement_begin_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n36_lit_integer_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_393_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n37_coerce_numeric_α
n36_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n34_statement_begin_β
.Llit_integer_α_393_0:  .quad            30
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_coerce_numeric_bx, @function
n37_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_395_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_395_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_395_0
.Lcoerce_numeric_α_395_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n38_coerce_numeric_α
.Lcoerce_numeric_α_395_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_395_240
                        add              rsp, 16;                             jmp   n36_lit_integer_β
.Lcoerce_numeric_α_395_240:
                                                                              jmp   n38_coerce_numeric_α
n37_coerce_numeric_β:   add              rsp, 16;                             jmp   n36_lit_integer_β
                        .size            n37_coerce_numeric_bx, .-n37_coerce_numeric_bx
                        .type            n38_coerce_numeric_bx, @function
n38_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_397_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_397_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_397_0
.Lcoerce_numeric_α_397_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n39_cmp_test_α
.Lcoerce_numeric_α_397_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_397_240
                        add              rsp, 16;                             jmp   n37_coerce_numeric_β
.Lcoerce_numeric_α_397_240:
                                                                              jmp   n39_cmp_test_α
n38_coerce_numeric_β:   add              rsp, 16;                             jmp   n37_coerce_numeric_β
                        .size            n38_coerce_numeric_bx, .-n38_coerce_numeric_bx
                        .type            n39_cmp_test_bx, @function
n39_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_399_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_399_239
                        add              rsp, 16;                             jmp   n38_coerce_numeric_β
.Lcmp_test_α_399_239:                                                         jmp   n40_var_α
.Lcmp_test_α_399_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_399_240
                        add              rsp, 16;                             jmp   n38_coerce_numeric_β
.Lcmp_test_α_399_240:                                                         jmp   n40_var_α
n39_cmp_test_β:         add              rsp, 16;                             jmp   n38_coerce_numeric_β
                        .size            n39_cmp_test_bx, .-n39_cmp_test_bx
                        .type            n40_var_bx, @function
n40_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n41_lit_integer_α
n40_var_β:              add              rsp, 16;                             jmp   n39_cmp_test_β
                        .size            n40_var_bx, .-n40_var_bx
                        .type            n41_lit_integer_bx, @function
n41_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_401_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n42_binop_α
n41_lit_integer_β:      add              rsp, 16;                             jmp   n40_var_β
.Llit_integer_α_401_0:  .quad            1
                        .size            n41_lit_integer_bx, .-n41_lit_integer_bx
                        .type            n42_binop_bx, @function
n42_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_402_2
                        add              rax, 1;                              jo    .Lbinop_α_402_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_402_7
.Lbinop_α_402_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_402_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_402_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_402_4
.Lbinop_α_402_3:        movq             xmm0, rsi
.Lbinop_α_402_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_402_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_402_7:                                                              jmp   n43_assign_α
.Lbinop_α_402_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_402_240
                        add              rsp, 16;                             jmp   n41_lit_integer_β
.Lbinop_α_402_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n44_statement_end_α
                        .size            n43_assign_bx, .-n43_assign_bx
                        .type            n44_statement_end_bx, @function
n44_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_statement_end_α:    add              rsp, 128;                            jmp   n24_statement_begin_α
                        .size            n44_statement_end_bx, .-n44_statement_end_bx
                        .type            n45_setexit_test_bx, @function
n45_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_406_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_406_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_406_61:
.Lsetexit_test_α_406_1:                                                       jmp   n46_statement_begin_α
                        .size            n45_setexit_test_bx, .-n45_setexit_test_bx
                        .type            n46_statement_begin_bx, @function
n46_statement_begin_bx:
.Lstatement_begin_α_407_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_407_stno
                        .long            7
                        .long            11
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 11 0
n46_statement_begin_α:                                                        jmp   n47_lit_integer_α
n46_statement_begin_β:                                                        jmp   n50_setexit_test_α
                        .size            n46_statement_begin_bx, .-n46_statement_begin_bx
                        .type            n47_lit_integer_bx, @function
n47_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_409_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n48_assign_α
.Llit_integer_α_409_0:  .quad            1
                        .size            n47_lit_integer_bx, .-n47_lit_integer_bx
                        .type            n48_assign_bx, @function
n48_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n49_statement_end_α
                        .size            n48_assign_bx, .-n48_assign_bx
                        .type            n49_statement_end_bx, @function
n49_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_statement_end_α:    add              rsp, 16;                             jmp   n51_statement_begin_α
                        .size            n49_statement_end_bx, .-n49_statement_end_bx
                        .type            n50_setexit_test_bx, @function
n50_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_413_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_413_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_413_61:
.Lsetexit_test_α_413_1:                                                       jmp   n51_statement_begin_α
                        .size            n50_setexit_test_bx, .-n50_setexit_test_bx
                        .type            n51_statement_begin_bx, @function
n51_statement_begin_bx:
.Lstatement_begin_α_414_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_414_stno
                        .long            8
                        .long            12
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# strfill tab['k' sx] = sx * 5
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 12 0
n51_statement_begin_α:                                                        jmp   n52_var_α
n51_statement_begin_β:                                                        jmp   n62_setexit_test_α
                        .size            n51_statement_begin_bx, .-n51_statement_begin_bx
                        .type            n52_var_bx, @function
n52_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n53_lit_string_α
                        .size            n52_var_bx, .-n52_var_bx
                        .type            n53_lit_string_bx, @function
n53_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_417_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n54_var_α
n53_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n51_statement_begin_β
.Llit_string_α_417_0:   .quad            .Llit_string_α_417_0_s
.Llit_string_α_417_0_s: .string          "k"
                        .size            n53_lit_string_bx, .-n53_lit_string_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n55_binop_α
n54_var_β:              add              rsp, 16;                             jmp   n53_lit_string_β
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_binop_bx, @function
n55_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
1:                                                                            jmp   n56_subscript_α
n55_binop_β:            add              rsp, 16;                             jmp   n54_var_β
                        .size            n55_binop_bx, .-n55_binop_bx
                        .type            n56_subscript_bx, @function
n56_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lsubscript_α_420_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_420_2
                                                                              jmp   .Lsubscript_α_420_1
.Lsubscript_α_420_0:    cmp              dil, 16;                             jne   .Lsubscript_α_420_1
                        test             rsi, rsi;                            je    .Lsubscript_α_420_1
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        cmp              dl, 3;                               jne   .Lsubscript_α_420_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_420_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_420_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_420_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_420_1
                                                                              jmp   .Lsubscript_α_420_2
.Lsubscript_α_420_1:    mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_420_240
                        add              rsp, 16;                             jmp   n55_binop_β
.Lsubscript_α_420_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
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
1:
.Lsubscript_α_420_2:    mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n57_var_α
n56_subscript_β:        add              rsp, 16;                             jmp   n55_binop_β
                        .size            n56_subscript_bx, .-n56_subscript_bx
                        .type            n57_var_bx, @function
n57_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n58_lit_integer_α
n57_var_β:              add              rsp, 16;                             jmp   n56_subscript_β
                        .size            n57_var_bx, .-n57_var_bx
                        .type            n58_lit_integer_bx, @function
n58_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_422_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n59_binop_α
n58_lit_integer_β:      add              rsp, 16;                             jmp   n57_var_β
.Llit_integer_α_422_0:  .quad            5
                        .size            n58_lit_integer_bx, .-n58_lit_integer_bx
                        .type            n59_binop_bx, @function
n59_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_423_2
                        mov              rdx, 5
                        imul             rax, rdx;                            jo    .Lbinop_α_423_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_423_7
.Lbinop_α_423_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_423_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 5
                        cmp              al, 5;                               je    .Lbinop_α_423_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_423_4
.Lbinop_α_423_3:        movq             xmm0, rsi
.Lbinop_α_423_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_423_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_423_7:                                                              jmp   n60_assign_var_α
.Lbinop_α_423_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_423_240
                        add              rsp, 16;                             jmp   n58_lit_integer_β
.Lbinop_α_423_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n60_assign_var_α
n59_binop_β:            add              rsp, 16;                             jmp   n58_lit_integer_β
                        .size            n59_binop_bx, .-n59_binop_bx
                        .type            n60_assign_var_bx, @function
n60_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 80]            # binop
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              dil, 24;                             je    .Lassign_var_α_425_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_425_0
.Lassign_var_α_425_1:   test             rsi, rsi;                            je    .Lassign_var_α_425_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_425_238
                        add              rsp, 16;                             jmp   n59_binop_β
.Lassign_var_α_425_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n61_statement_end_α
.Lassign_var_α_425_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_425_239
                        add              rsp, 16;                             jmp   n59_binop_β
.Lassign_var_α_425_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_425_240
                        add              rsp, 16;                             jmp   n59_binop_β
.Lassign_var_α_425_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n61_statement_end_α
                        .size            n60_assign_var_bx, .-n60_assign_var_bx
                        .type            n61_statement_end_bx, @function
n61_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_statement_end_α:    add              rsp, 144;                            jmp   n63_statement_begin_α
                        .size            n61_statement_end_bx, .-n61_statement_end_bx
                        .type            n62_setexit_test_bx, @function
n62_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_428_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_428_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_428_61:
.Lsetexit_test_α_428_1:                                                       jmp   n63_statement_begin_α
                        .size            n62_setexit_test_bx, .-n62_setexit_test_bx
                        .type            n63_statement_begin_bx, @function
n63_statement_begin_bx:
.Lstatement_begin_α_429_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_429_stno
                        .long            9
                        .long            13
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         tab['a_much_longer_key_' sx] = sx * 7
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 13 0
n63_statement_begin_α:                                                        jmp   n64_var_α
n63_statement_begin_β:                                                        jmp   n74_setexit_test_α
                        .size            n63_statement_begin_bx, .-n63_statement_begin_bx
                        .type            n64_var_bx, @function
n64_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n65_lit_string_α
                        .size            n64_var_bx, .-n64_var_bx
                        .type            n65_lit_string_bx, @function
n65_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_432_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n66_var_α
n65_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n63_statement_begin_β
.Llit_string_α_432_0:   .quad            .Llit_string_α_432_0_s
.Llit_string_α_432_0_s: .string          "a_much_longer_key_"
                        .size            n65_lit_string_bx, .-n65_lit_string_bx
                        .type            n66_var_bx, @function
n66_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n67_binop_α
n66_var_β:              add              rsp, 16;                             jmp   n65_lit_string_β
                        .size            n66_var_bx, .-n66_var_bx
                        .type            n67_binop_bx, @function
n67_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_binop_α:            sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
1:                                                                            jmp   n68_subscript_α
n67_binop_β:            add              rsp, 16;                             jmp   n66_var_β
                        .size            n67_binop_bx, .-n67_binop_bx
                        .type            n68_subscript_bx, @function
n68_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lsubscript_α_435_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_435_2
                                                                              jmp   .Lsubscript_α_435_1
.Lsubscript_α_435_0:    cmp              dil, 16;                             jne   .Lsubscript_α_435_1
                        test             rsi, rsi;                            je    .Lsubscript_α_435_1
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        cmp              dl, 3;                               jne   .Lsubscript_α_435_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_435_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_435_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_435_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_435_1
                                                                              jmp   .Lsubscript_α_435_2
.Lsubscript_α_435_1:    mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_435_240
                        add              rsp, 16;                             jmp   n67_binop_β
.Lsubscript_α_435_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
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
1:
.Lsubscript_α_435_2:    mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n69_var_α
n68_subscript_β:        add              rsp, 16;                             jmp   n67_binop_β
                        .size            n68_subscript_bx, .-n68_subscript_bx
                        .type            n69_var_bx, @function
n69_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n70_lit_integer_α
n69_var_β:              add              rsp, 16;                             jmp   n68_subscript_β
                        .size            n69_var_bx, .-n69_var_bx
                        .type            n70_lit_integer_bx, @function
n70_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_437_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n71_binop_α
n70_lit_integer_β:      add              rsp, 16;                             jmp   n69_var_β
.Llit_integer_α_437_0:  .quad            7
                        .size            n70_lit_integer_bx, .-n70_lit_integer_bx
                        .type            n71_binop_bx, @function
n71_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_438_2
                        mov              rdx, 7
                        imul             rax, rdx;                            jo    .Lbinop_α_438_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_438_7
.Lbinop_α_438_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_438_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 7
                        cmp              al, 5;                               je    .Lbinop_α_438_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_438_4
.Lbinop_α_438_3:        movq             xmm0, rsi
.Lbinop_α_438_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_438_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_438_7:                                                              jmp   n72_assign_var_α
.Lbinop_α_438_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_438_240
                        add              rsp, 16;                             jmp   n70_lit_integer_β
.Lbinop_α_438_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
n71_binop_β:            add              rsp, 16;                             jmp   n70_lit_integer_β
                        .size            n71_binop_bx, .-n71_binop_bx
                        .type            n72_assign_var_bx, @function
n72_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 80]            # binop
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              dil, 24;                             je    .Lassign_var_α_440_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_440_0
.Lassign_var_α_440_1:   test             rsi, rsi;                            je    .Lassign_var_α_440_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_440_238
                        add              rsp, 16;                             jmp   n71_binop_β
.Lassign_var_α_440_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n73_statement_end_α
.Lassign_var_α_440_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_440_239
                        add              rsp, 16;                             jmp   n71_binop_β
.Lassign_var_α_440_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_440_240
                        add              rsp, 16;                             jmp   n71_binop_β
.Lassign_var_α_440_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n73_statement_end_α
                        .size            n72_assign_var_bx, .-n72_assign_var_bx
                        .type            n73_statement_end_bx, @function
n73_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_statement_end_α:    add              rsp, 144;                            jmp   n75_statement_begin_α
                        .size            n73_statement_end_bx, .-n73_statement_end_bx
                        .type            n74_setexit_test_bx, @function
n74_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n74_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_443_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_443_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_443_61:
.Lsetexit_test_α_443_1:                                                       jmp   n75_statement_begin_α
                        .size            n74_setexit_test_bx, .-n74_setexit_test_bx
                        .type            n75_statement_begin_bx, @function
n75_statement_begin_bx:
.Lstatement_begin_α_444_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_444_stno
                        .long            10
                        .long            14
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(strfill)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 14 0
n75_statement_begin_α:                                                        jmp   n76_var_α
n75_statement_begin_β:                                                        jmp   n86_setexit_test_α
                        .size            n75_statement_begin_bx, .-n75_statement_begin_bx
                        .type            n76_var_bx, @function
n76_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n76_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n77_lit_integer_α
                        .size            n76_var_bx, .-n76_var_bx
                        .type            n77_lit_integer_bx, @function
n77_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n77_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_447_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n78_coerce_numeric_α
n77_lit_integer_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n75_statement_begin_β
.Llit_integer_α_447_0:  .quad            20
                        .size            n77_lit_integer_bx, .-n77_lit_integer_bx
                        .type            n78_coerce_numeric_bx, @function
n78_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n78_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_449_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_449_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_449_0
.Lcoerce_numeric_α_449_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n79_coerce_numeric_α
.Lcoerce_numeric_α_449_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_449_240
                        add              rsp, 16;                             jmp   n77_lit_integer_β
.Lcoerce_numeric_α_449_240:
                                                                              jmp   n79_coerce_numeric_α
n78_coerce_numeric_β:   add              rsp, 16;                             jmp   n77_lit_integer_β
                        .size            n78_coerce_numeric_bx, .-n78_coerce_numeric_bx
                        .type            n79_coerce_numeric_bx, @function
n79_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n79_coerce_numeric_α:   sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_451_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_451_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_451_0
.Lcoerce_numeric_α_451_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n80_cmp_test_α
.Lcoerce_numeric_α_451_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_451_240
                        add              rsp, 16;                             jmp   n78_coerce_numeric_β
.Lcoerce_numeric_α_451_240:
                                                                              jmp   n80_cmp_test_α
n79_coerce_numeric_β:   add              rsp, 16;                             jmp   n78_coerce_numeric_β
                        .size            n79_coerce_numeric_bx, .-n79_coerce_numeric_bx
                        .type            n80_cmp_test_bx, @function
n80_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n80_cmp_test_α:         sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_453_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_453_239
                        add              rsp, 16;                             jmp   n79_coerce_numeric_β
.Lcmp_test_α_453_239:                                                         jmp   n81_var_α
.Lcmp_test_α_453_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_453_240
                        add              rsp, 16;                             jmp   n79_coerce_numeric_β
.Lcmp_test_α_453_240:                                                         jmp   n81_var_α
n80_cmp_test_β:         add              rsp, 16;                             jmp   n79_coerce_numeric_β
                        .size            n80_cmp_test_bx, .-n80_cmp_test_bx
                        .type            n81_var_bx, @function
n81_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n82_lit_integer_α
n81_var_β:              add              rsp, 16;                             jmp   n80_cmp_test_β
                        .size            n81_var_bx, .-n81_var_bx
                        .type            n82_lit_integer_bx, @function
n82_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_455_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n83_binop_α
n82_lit_integer_β:      add              rsp, 16;                             jmp   n81_var_β
.Llit_integer_α_455_0:  .quad            1
                        .size            n82_lit_integer_bx, .-n82_lit_integer_bx
                        .type            n83_binop_bx, @function
n83_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_binop_α:            sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_456_2
                        add              rax, 1;                              jo    .Lbinop_α_456_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_456_7
.Lbinop_α_456_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_456_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_456_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_456_4
.Lbinop_α_456_3:        movq             xmm0, rsi
.Lbinop_α_456_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_456_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_456_7:                                                              jmp   n84_assign_α
.Lbinop_α_456_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_456_240
                        add              rsp, 16;                             jmp   n82_lit_integer_β
.Lbinop_α_456_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n85_statement_end_α
                        .size            n84_assign_bx, .-n84_assign_bx
                        .type            n85_statement_end_bx, @function
n85_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_statement_end_α:    add              rsp, 128;                            jmp   n51_statement_begin_α
                        .size            n85_statement_end_bx, .-n85_statement_end_bx
                        .type            n86_setexit_test_bx, @function
n86_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_460_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_460_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_460_61:
.Lsetexit_test_α_460_1:                                                       jmp   n87_statement_begin_α
                        .size            n86_setexit_test_bx, .-n86_setexit_test_bx
                        .type            n87_statement_begin_bx, @function
n87_statement_begin_bx:
.Lstatement_begin_α_461_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_461_stno
                        .long            11
                        .long            15
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         tab['17'] = 1700
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 15 0
n87_statement_begin_α:                                                        jmp   n88_var_α
n87_statement_begin_β:                                                        jmp   n94_setexit_test_α
                        .size            n87_statement_begin_bx, .-n87_statement_begin_bx
                        .type            n88_var_bx, @function
n88_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_var_α:              sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n89_lit_string_α
                        .size            n88_var_bx, .-n88_var_bx
                        .type            n89_lit_string_bx, @function
n89_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:       sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_464_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n90_subscript_α
n89_lit_string_β:       add              rsp, 16
                        add              rsp, 16;                             jmp   n87_statement_begin_β
.Llit_string_α_464_0:   .quad            .Llit_string_α_464_0_s
.Llit_string_α_464_0_s: .string          "17"
                        .size            n89_lit_string_bx, .-n89_lit_string_bx
                        .type            n90_subscript_bx, @function
n90_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_subscript_α:        sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_465_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_465_2
                                                                              jmp   .Lsubscript_α_465_1
.Lsubscript_α_465_0:    cmp              dil, 16;                             jne   .Lsubscript_α_465_1
                        test             rsi, rsi;                            je    .Lsubscript_α_465_1
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        cmp              dl, 3;                               jne   .Lsubscript_α_465_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_465_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_465_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_465_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_465_1
                                                                              jmp   .Lsubscript_α_465_2
.Lsubscript_α_465_1:    mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_465_240
                        add              rsp, 16;                             jmp   n89_lit_string_β
.Lsubscript_α_465_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
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
1:
.Lsubscript_α_465_2:    mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n91_lit_integer_α
n90_subscript_β:        add              rsp, 16;                             jmp   n89_lit_string_β
                        .size            n90_subscript_bx, .-n90_subscript_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_466_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n92_assign_var_α
n91_lit_integer_β:      add              rsp, 16;                             jmp   n90_subscript_β
.Llit_integer_α_466_0:  .quad            1700
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_assign_var_bx, @function
n92_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_assign_var_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 48]            # lit_string
                        mov              rcx, qword ptr [rsp + 56]
                        cmp              dil, 24;                             je    .Lassign_var_α_468_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_468_0
.Lassign_var_α_468_1:   test             rsi, rsi;                            je    .Lassign_var_α_468_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_468_238
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lassign_var_α_468_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n93_statement_end_α
.Lassign_var_α_468_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_468_239
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lassign_var_α_468_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_468_240
                        add              rsp, 16;                             jmp   n91_lit_integer_β
.Lassign_var_α_468_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n93_statement_end_α
                        .size            n92_assign_var_bx, .-n92_assign_var_bx
                        .type            n93_statement_end_bx, @function
n93_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_statement_end_α:    add              rsp, 80;                             jmp   n95_statement_begin_α
                        .size            n93_statement_end_bx, .-n93_statement_end_bx
                        .type            n94_setexit_test_bx, @function
n94_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_471_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_471_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_471_61:
.Lsetexit_test_α_471_1:                                                       jmp   n95_statement_begin_α
                        .size            n94_setexit_test_bx, .-n94_setexit_test_bx
                        .type            n95_statement_begin_bx, @function
n95_statement_begin_bx:
.Lstatement_begin_α_472_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_472_stno
                        .long            12
                        .long            16
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 16 0
n95_statement_begin_α:                                                        jmp   n96_lit_integer_α
n95_statement_begin_β:                                                        jmp   n99_setexit_test_α
                        .size            n95_statement_begin_bx, .-n95_statement_begin_bx
                        .type            n96_lit_integer_bx, @function
n96_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n97_assign_α
.Llit_integer_α_474_0:  .quad            1
                        .size            n96_lit_integer_bx, .-n96_lit_integer_bx
                        .type            n97_assign_bx, @function
n97_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_assign_α:           mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n98_statement_end_α
                        .size            n97_assign_bx, .-n97_assign_bx
                        .type            n98_statement_end_bx, @function
n98_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_statement_end_α:    add              rsp, 16;                             jmp   n100_statement_begin_α
                        .size            n98_statement_end_bx, .-n98_statement_end_bx
                        .type            n99_setexit_test_bx, @function
n99_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_setexit_test_α:     mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_478_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_478_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_478_61:
.Lsetexit_test_α_478_1:                                                       jmp   n100_statement_begin_α
                        .size            n99_setexit_test_bx, .-n99_setexit_test_bx
                        .type            n100_statement_begin_bx, @function
n100_statement_begin_bx:
.Lstatement_begin_α_479_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_479_stno
                        .long            13
                        .long            17
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# realfil tab[rx / 2.0] = rx * 11
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 17 0
n100_statement_begin_α:                                                       jmp   n101_var_α
n100_statement_begin_β:                                                       jmp   n111_setexit_test_α
                        .size            n100_statement_begin_bx, .-n100_statement_begin_bx
                        .type            n101_var_bx, @function
n101_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n102_var_α
                        .size            n101_var_bx, .-n101_var_bx
                        .type            n102_var_bx, @function
n102_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n103_lit_real_α
n102_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n100_statement_begin_β
                        .size            n102_var_bx, .-n102_var_bx
                        .type            n103_lit_real_bx, @function
n103_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_real_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_483_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n104_binop_α
.Llit_real_α_483_0:     .quad            4611686018427387904
                        .size            n103_lit_real_bx, .-n103_lit_real_bx
                        .type            n104_binop_bx, @function
n104_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_binop_α:           sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lbinop_α_484_240
                        add              rsp, 32;                             jmp   n102_var_β
.Lbinop_α_484_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n105_subscript_α
n104_binop_β:           add              rsp, 32;                             jmp   n102_var_β
                        .size            n104_binop_bx, .-n104_binop_bx
                        .type            n105_subscript_bx, @function
n105_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        cmp              dil, 24;                             jne   .Lsubscript_α_485_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_485_2
                                                                              jmp   .Lsubscript_α_485_1
.Lsubscript_α_485_0:    cmp              dil, 16;                             jne   .Lsubscript_α_485_1
                        test             rsi, rsi;                            je    .Lsubscript_α_485_1
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        cmp              dl, 3;                               jne   .Lsubscript_α_485_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_485_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_485_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_485_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_485_1
                                                                              jmp   .Lsubscript_α_485_2
.Lsubscript_α_485_1:    mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_485_240
                        add              rsp, 16;                             jmp   n104_binop_β
.Lsubscript_α_485_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
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
1:
.Lsubscript_α_485_2:    mov              rax, qword ptr [rsp + 64]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n106_var_α
n105_subscript_β:       add              rsp, 16;                             jmp   n104_binop_β
                        .size            n105_subscript_bx, .-n105_subscript_bx
                        .type            n106_var_bx, @function
n106_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n107_lit_integer_α
n106_var_β:             add              rsp, 16;                             jmp   n105_subscript_β
                        .size            n106_var_bx, .-n106_var_bx
                        .type            n107_lit_integer_bx, @function
n107_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_487_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n108_binop_α
n107_lit_integer_β:     add              rsp, 16;                             jmp   n106_var_β
.Llit_integer_α_487_0:  .quad            11
                        .size            n107_lit_integer_bx, .-n107_lit_integer_bx
                        .type            n108_binop_bx, @function
n108_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_488_2
                        mov              rdx, 11
                        imul             rax, rdx;                            jo    .Lbinop_α_488_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_488_7
.Lbinop_α_488_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_488_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 11
                        cmp              al, 5;                               je    .Lbinop_α_488_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_488_4
.Lbinop_α_488_3:        movq             xmm0, rsi
.Lbinop_α_488_4:        cvtsi2sd         xmm1, rdi
                        mulsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_488_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_488_7:                                                              jmp   n109_assign_var_α
.Lbinop_α_488_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_mul_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_488_240
                        add              rsp, 16;                             jmp   n107_lit_integer_β
.Lbinop_α_488_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
n108_binop_β:           add              rsp, 16;                             jmp   n107_lit_integer_β
                        .size            n108_binop_bx, .-n108_binop_bx
                        .type            n109_assign_var_bx, @function
n109_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # subscript
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 80]            # binop
                        mov              rcx, qword ptr [rsp + 88]
                        cmp              dil, 24;                             je    .Lassign_var_α_490_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_490_0
.Lassign_var_α_490_1:   test             rsi, rsi;                            je    .Lassign_var_α_490_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_490_238
                        add              rsp, 16;                             jmp   n108_binop_β
.Lassign_var_α_490_238: mov              qword ptr [rsp + 0], rax             # result
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
.Lassign_var_α_490_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_490_239
                        add              rsp, 16;                             jmp   n108_binop_β
.Lassign_var_α_490_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # binop
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_490_240
                        add              rsp, 16;                             jmp   n108_binop_β
.Lassign_var_α_490_240: mov              qword ptr [rsp + 0], rax             # result
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
n110_statement_end_α:   add              rsp, 144;                            jmp   n112_statement_begin_α
                        .size            n110_statement_end_bx, .-n110_statement_end_bx
                        .type            n111_setexit_test_bx, @function
n111_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_493_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_493_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_493_61:
.Lsetexit_test_α_493_1:                                                       jmp   n112_statement_begin_α
                        .size            n111_setexit_test_bx, .-n111_setexit_test_bx
                        .type            n112_statement_begin_bx, @function
n112_statement_begin_bx:
.Lstatement_begin_α_494_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_494_stno
                        .long            14
                        .long            18
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(realfil)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 18 0
n112_statement_begin_α:                                                       jmp   n113_var_α
n112_statement_begin_β:                                                       jmp   n123_setexit_test_α
                        .size            n112_statement_begin_bx, .-n112_statement_begin_bx
                        .type            n113_var_bx, @function
n113_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n114_lit_integer_α
                        .size            n113_var_bx, .-n113_var_bx
                        .type            n114_lit_integer_bx, @function
n114_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_497_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n115_coerce_numeric_α
n114_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n112_statement_begin_β
.Llit_integer_α_497_0:  .quad            12
                        .size            n114_lit_integer_bx, .-n114_lit_integer_bx
                        .type            n115_coerce_numeric_bx, @function
n115_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_499_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_499_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_499_0
.Lcoerce_numeric_α_499_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n116_coerce_numeric_α
.Lcoerce_numeric_α_499_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_499_240
                        add              rsp, 16;                             jmp   n114_lit_integer_β
.Lcoerce_numeric_α_499_240:
                                                                              jmp   n116_coerce_numeric_α
n115_coerce_numeric_β:  add              rsp, 16;                             jmp   n114_lit_integer_β
                        .size            n115_coerce_numeric_bx, .-n115_coerce_numeric_bx
                        .type            n116_coerce_numeric_bx, @function
n116_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_501_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_501_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_501_0
.Lcoerce_numeric_α_501_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n117_cmp_test_α
.Lcoerce_numeric_α_501_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_501_240
                        add              rsp, 16;                             jmp   n115_coerce_numeric_β
.Lcoerce_numeric_α_501_240:
                                                                              jmp   n117_cmp_test_α
n116_coerce_numeric_β:  add              rsp, 16;                             jmp   n115_coerce_numeric_β
                        .size            n116_coerce_numeric_bx, .-n116_coerce_numeric_bx
                        .type            n117_cmp_test_bx, @function
n117_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_503_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_503_239
                        add              rsp, 16;                             jmp   n116_coerce_numeric_β
.Lcmp_test_α_503_239:                                                         jmp   n118_var_α
.Lcmp_test_α_503_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_503_240
                        add              rsp, 16;                             jmp   n116_coerce_numeric_β
.Lcmp_test_α_503_240:                                                         jmp   n118_var_α
n117_cmp_test_β:        add              rsp, 16;                             jmp   n116_coerce_numeric_β
                        .size            n117_cmp_test_bx, .-n117_cmp_test_bx
                        .type            n118_var_bx, @function
n118_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n119_lit_integer_α
n118_var_β:             add              rsp, 16;                             jmp   n117_cmp_test_β
                        .size            n118_var_bx, .-n118_var_bx
                        .type            n119_lit_integer_bx, @function
n119_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_505_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n120_binop_α
n119_lit_integer_β:     add              rsp, 16;                             jmp   n118_var_β
.Llit_integer_α_505_0:  .quad            1
                        .size            n119_lit_integer_bx, .-n119_lit_integer_bx
                        .type            n120_binop_bx, @function
n120_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_506_2
                        add              rax, 1;                              jo    .Lbinop_α_506_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_506_7
.Lbinop_α_506_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_506_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_506_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_506_4
.Lbinop_α_506_3:        movq             xmm0, rsi
.Lbinop_α_506_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_506_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_506_7:                                                              jmp   n121_assign_α
.Lbinop_α_506_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_506_240
                        add              rsp, 16;                             jmp   n119_lit_integer_β
.Lbinop_α_506_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
n120_binop_β:           add              rsp, 16;                             jmp   n119_lit_integer_β
                        .size            n120_binop_bx, .-n120_binop_bx
                        .type            n121_assign_bx, @function
n121_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n122_statement_end_α
                        .size            n121_assign_bx, .-n121_assign_bx
                        .type            n122_statement_end_bx, @function
n122_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_statement_end_α:   add              rsp, 128;                            jmp   n100_statement_begin_α
                        .size            n122_statement_end_bx, .-n122_statement_end_bx
                        .type            n123_setexit_test_bx, @function
n123_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_510_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_510_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_510_61:
.Lsetexit_test_α_510_1:                                                       jmp   n124_statement_begin_α
                        .size            n123_setexit_test_bx, .-n123_setexit_test_bx
                        .type            n124_statement_begin_bx, @function
n124_statement_begin_bx:
.Lstatement_begin_α_511_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_511_stno
                        .long            15
                        .long            19
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         tab[''] = 99
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 19 0
n124_statement_begin_α:                                                       jmp   n125_var_α
n124_statement_begin_β:                                                       jmp   n131_setexit_test_α
                        .size            n124_statement_begin_bx, .-n124_statement_begin_bx
                        .type            n125_var_bx, @function
n125_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n126_lit_string_α
                        .size            n125_var_bx, .-n125_var_bx
                        .type            n126_lit_string_bx, @function
n126_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_514_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n127_subscript_α
n126_lit_string_β:      add              rsp, 16
                        add              rsp, 16;                             jmp   n124_statement_begin_β
.Llit_string_α_514_0:   .quad            .Llit_string_α_514_0_s
.Llit_string_α_514_0_s: .string          ""
                        .size            n126_lit_string_bx, .-n126_lit_string_bx
                        .type            n127_subscript_bx, @function
n127_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_515_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_515_2
                                                                              jmp   .Lsubscript_α_515_1
.Lsubscript_α_515_0:    cmp              dil, 16;                             jne   .Lsubscript_α_515_1
                        test             rsi, rsi;                            je    .Lsubscript_α_515_1
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        cmp              dl, 3;                               jne   .Lsubscript_α_515_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_515_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_515_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_515_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_515_1
                                                                              jmp   .Lsubscript_α_515_2
.Lsubscript_α_515_1:    mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_515_240
                        add              rsp, 16;                             jmp   n126_lit_string_β
.Lsubscript_α_515_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
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
1:
.Lsubscript_α_515_2:    mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n128_lit_integer_α
n127_subscript_β:       add              rsp, 16;                             jmp   n126_lit_string_β
                        .size            n127_subscript_bx, .-n127_subscript_bx
                        .type            n128_lit_integer_bx, @function
n128_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_516_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n129_assign_var_α
n128_lit_integer_β:     add              rsp, 16;                             jmp   n127_subscript_β
.Llit_integer_α_516_0:  .quad            99
                        .size            n128_lit_integer_bx, .-n128_lit_integer_bx
                        .type            n129_assign_var_bx, @function
n129_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 48]            # lit_string
                        mov              rcx, qword ptr [rsp + 56]
                        cmp              dil, 24;                             je    .Lassign_var_α_518_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_518_0
.Lassign_var_α_518_1:   test             rsi, rsi;                            je    .Lassign_var_α_518_0
                        mov              r8, qword ptr [rsp + 16]             # lit_integer
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_518_238
                        add              rsp, 16;                             jmp   n128_lit_integer_β
.Lassign_var_α_518_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n130_statement_end_α
.Lassign_var_α_518_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_518_239
                        add              rsp, 16;                             jmp   n128_lit_integer_β
.Lassign_var_α_518_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_518_240
                        add              rsp, 16;                             jmp   n128_lit_integer_β
.Lassign_var_α_518_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n130_statement_end_α
                        .size            n129_assign_var_bx, .-n129_assign_var_bx
                        .type            n130_statement_end_bx, @function
n130_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_statement_end_α:   add              rsp, 80;                             jmp   n132_statement_begin_α
                        .size            n130_statement_end_bx, .-n130_statement_end_bx
                        .type            n131_setexit_test_bx, @function
n131_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_521_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_521_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_521_61:
.Lsetexit_test_α_521_1:                                                       jmp   n132_statement_begin_α
                        .size            n131_setexit_test_bx, .-n131_setexit_test_bx
                        .type            n132_statement_begin_bx, @function
n132_statement_begin_bx:
.Lstatement_begin_α_522_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_522_stno
                        .long            16
                        .long            20
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         tab[17] = 1717
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 20 0
n132_statement_begin_α:                                                       jmp   n133_var_α
n132_statement_begin_β:                                                       jmp   n139_setexit_test_α
                        .size            n132_statement_begin_bx, .-n132_statement_begin_bx
                        .type            n133_var_bx, @function
n133_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n134_lit_integer_α
                        .size            n133_var_bx, .-n133_var_bx
                        .type            n134_lit_integer_bx, @function
n134_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_525_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n135_subscript_α
n134_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n132_statement_begin_β
.Llit_integer_α_525_0:  .quad            17
                        .size            n134_lit_integer_bx, .-n134_lit_integer_bx
                        .type            n135_subscript_bx, @function
n135_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_526_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_526_2
                                                                              jmp   .Lsubscript_α_526_1
.Lsubscript_α_526_0:    cmp              dil, 16;                             jne   .Lsubscript_α_526_1
                        test             rsi, rsi;                            je    .Lsubscript_α_526_1
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        cmp              dl, 3;                               jne   .Lsubscript_α_526_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_526_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_526_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_526_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_526_1
                                                                              jmp   .Lsubscript_α_526_2
.Lsubscript_α_526_1:    mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_526_240
                        add              rsp, 16;                             jmp   n134_lit_integer_β
.Lsubscript_α_526_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
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
1:
.Lsubscript_α_526_2:    mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n136_lit_integer_α
n135_subscript_β:       add              rsp, 16;                             jmp   n134_lit_integer_β
                        .size            n135_subscript_bx, .-n135_subscript_bx
                        .type            n136_lit_integer_bx, @function
n136_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_527_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n137_assign_var_α
n136_lit_integer_β:     add              rsp, 16;                             jmp   n135_subscript_β
.Llit_integer_α_527_0:  .quad            1717
                        .size            n136_lit_integer_bx, .-n136_lit_integer_bx
                        .type            n137_assign_var_bx, @function
n137_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 48]            # lit_integer
                        mov              rcx, qword ptr [rsp + 56]
                        cmp              dil, 24;                             je    .Lassign_var_α_529_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_529_0
.Lassign_var_α_529_1:   test             rsi, rsi;                            je    .Lassign_var_α_529_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_529_238
                        add              rsp, 16;                             jmp   n136_lit_integer_β
.Lassign_var_α_529_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n138_statement_end_α
.Lassign_var_α_529_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_529_239
                        add              rsp, 16;                             jmp   n136_lit_integer_β
.Lassign_var_α_529_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_529_240
                        add              rsp, 16;                             jmp   n136_lit_integer_β
.Lassign_var_α_529_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n138_statement_end_α
                        .size            n137_assign_var_bx, .-n137_assign_var_bx
                        .type            n138_statement_end_bx, @function
n138_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_statement_end_α:   add              rsp, 80;                             jmp   n140_statement_begin_α
                        .size            n138_statement_end_bx, .-n138_statement_end_bx
                        .type            n139_setexit_test_bx, @function
n139_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_532_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_532_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_532_61:
.Lsetexit_test_α_532_1:                                                       jmp   n140_statement_begin_α
                        .size            n139_setexit_test_bx, .-n139_setexit_test_bx
                        .type            n140_statement_begin_bx, @function
n140_statement_begin_bx:
.Lstatement_begin_α_533_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_533_stno
                        .long            17
                        .long            21
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         census = census + tab[17] + tab['17']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 21 0
n140_statement_begin_α:                                                       jmp   n141_var_α
n140_statement_begin_β:                                                       jmp   n152_setexit_test_α
                        .size            n140_statement_begin_bx, .-n140_statement_begin_bx
                        .type            n141_var_bx, @function
n141_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n142_var_α
                        .size            n141_var_bx, .-n141_var_bx
                        .type            n142_var_bx, @function
n142_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n143_lit_integer_α
n142_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n140_statement_begin_β
                        .size            n142_var_bx, .-n142_var_bx
                        .type            n143_lit_integer_bx, @function
n143_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n144_subscript_α
n143_lit_integer_β:     add              rsp, 16;                             jmp   n142_var_β
.Llit_integer_α_537_0:  .quad            17
                        .size            n143_lit_integer_bx, .-n143_lit_integer_bx
                        .type            n144_subscript_bx, @function
n144_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_538_240
                        add              rsp, 16;                             jmp   n143_lit_integer_β
.Lsubscript_α_538_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
n144_subscript_β:       add              rsp, 16;                             jmp   n143_lit_integer_β
                        .size            n144_subscript_bx, .-n144_subscript_bx
                        .type            n145_binop_bx, @function
n145_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_539_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_539_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_539_7
.Lbinop_α_539_2:        and              edx, 1;                              jz    .Lbinop_α_539_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_539_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_539_4
.Lbinop_α_539_3:        movq             xmm0, rsi
.Lbinop_α_539_4:        cmp              cl, 5;                               je    .Lbinop_α_539_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_539_6
.Lbinop_α_539_5:        movq             xmm1, rdi
.Lbinop_α_539_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_539_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_539_7:                                                              jmp   n146_var_α
.Lbinop_α_539_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_539_240
                        add              rsp, 16;                             jmp   n144_subscript_β
.Lbinop_α_539_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n146_var_α
n145_binop_β:           add              rsp, 16;                             jmp   n144_subscript_β
                        .size            n145_binop_bx, .-n145_binop_bx
                        .type            n146_var_bx, @function
n146_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n147_lit_string_α
n146_var_β:             add              rsp, 16;                             jmp   n145_binop_β
                        .size            n146_var_bx, .-n146_var_bx
                        .type            n147_lit_string_bx, @function
n147_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_541_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n148_subscript_α
n147_lit_string_β:      add              rsp, 16;                             jmp   n146_var_β
.Llit_string_α_541_0:   .quad            .Llit_string_α_541_0_s
.Llit_string_α_541_0_s: .string          "17"
                        .size            n147_lit_string_bx, .-n147_lit_string_bx
                        .type            n148_subscript_bx, @function
n148_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_542_240
                        add              rsp, 16;                             jmp   n147_lit_string_β
.Lsubscript_α_542_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
1:                                                                            jmp   n149_binop_α
n148_subscript_β:       add              rsp, 16;                             jmp   n147_lit_string_β
                        .size            n148_subscript_bx, .-n148_subscript_bx
                        .type            n149_binop_bx, @function
n149_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_543_2
                        mov              rax, qword ptr [rsp + 72]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_543_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_543_7
.Lbinop_α_543_2:        and              edx, 1;                              jz    .Lbinop_α_543_0
                        mov              rsi, qword ptr [rsp + 72]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_543_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_543_4
.Lbinop_α_543_3:        movq             xmm0, rsi
.Lbinop_α_543_4:        cmp              cl, 5;                               je    .Lbinop_α_543_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_543_6
.Lbinop_α_543_5:        movq             xmm1, rdi
.Lbinop_α_543_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_543_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_543_7:                                                              jmp   n150_assign_α
.Lbinop_α_543_0:        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_543_240
                        add              rsp, 16;                             jmp   n148_subscript_β
.Lbinop_α_543_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n150_assign_α
n149_binop_β:           add              rsp, 16;                             jmp   n148_subscript_β
                        .size            n149_binop_bx, .-n149_binop_bx
                        .type            n150_assign_bx, @function
n150_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n151_statement_end_α
                        .size            n150_assign_bx, .-n150_assign_bx
                        .type            n151_statement_end_bx, @function
n151_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_statement_end_α:   add              rsp, 144;                            jmp   n153_statement_begin_α
                        .size            n151_statement_end_bx, .-n151_statement_end_bx
                        .type            n152_setexit_test_bx, @function
n152_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_547_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_547_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_547_61:
.Lsetexit_test_α_547_1:                                                       jmp   n153_statement_begin_α
                        .size            n152_setexit_test_bx, .-n152_setexit_test_bx
                        .type            n153_statement_begin_bx, @function
n153_statement_begin_bx:
.Lstatement_begin_α_548_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_548_stno
                        .long            18
                        .long            22
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         tab[5] = 500
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 22 0
n153_statement_begin_α:                                                       jmp   n154_var_α
n153_statement_begin_β:                                                       jmp   n160_setexit_test_α
                        .size            n153_statement_begin_bx, .-n153_statement_begin_bx
                        .type            n154_var_bx, @function
n154_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n155_lit_integer_α
                        .size            n154_var_bx, .-n154_var_bx
                        .type            n155_lit_integer_bx, @function
n155_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_551_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n156_subscript_α
n155_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n153_statement_begin_β
.Llit_integer_α_551_0:  .quad            5
                        .size            n155_lit_integer_bx, .-n155_lit_integer_bx
                        .type            n156_subscript_bx, @function
n156_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_552_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_552_2
                                                                              jmp   .Lsubscript_α_552_1
.Lsubscript_α_552_0:    cmp              dil, 16;                             jne   .Lsubscript_α_552_1
                        test             rsi, rsi;                            je    .Lsubscript_α_552_1
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        cmp              dl, 3;                               jne   .Lsubscript_α_552_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_552_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_552_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_552_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_552_1
                                                                              jmp   .Lsubscript_α_552_2
.Lsubscript_α_552_1:    mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_552_240
                        add              rsp, 16;                             jmp   n155_lit_integer_β
.Lsubscript_α_552_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
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
1:
.Lsubscript_α_552_2:    mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n157_lit_integer_α
n156_subscript_β:       add              rsp, 16;                             jmp   n155_lit_integer_β
                        .size            n156_subscript_bx, .-n156_subscript_bx
                        .type            n157_lit_integer_bx, @function
n157_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_553_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n158_assign_var_α
n157_lit_integer_β:     add              rsp, 16;                             jmp   n156_subscript_β
.Llit_integer_α_553_0:  .quad            500
                        .size            n157_lit_integer_bx, .-n157_lit_integer_bx
                        .type            n158_assign_var_bx, @function
n158_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 48]            # lit_integer
                        mov              rcx, qword ptr [rsp + 56]
                        cmp              dil, 24;                             je    .Lassign_var_α_555_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_555_0
.Lassign_var_α_555_1:   test             rsi, rsi;                            je    .Lassign_var_α_555_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_555_238
                        add              rsp, 16;                             jmp   n157_lit_integer_β
.Lassign_var_α_555_238: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n159_statement_end_α
.Lassign_var_α_555_0:   call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
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
1:                      cmp              al, 104;                             jne   .Lassign_var_α_555_239
                        add              rsp, 16;                             jmp   n157_lit_integer_β
.Lassign_var_α_555_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_555_240
                        add              rsp, 16;                             jmp   n157_lit_integer_β
.Lassign_var_α_555_240: mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n159_statement_end_α
                        .size            n158_assign_var_bx, .-n158_assign_var_bx
                        .type            n159_statement_end_bx, @function
n159_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_statement_end_α:   add              rsp, 80;                             jmp   n161_statement_begin_α
                        .size            n159_statement_end_bx, .-n159_statement_end_bx
                        .type            n160_setexit_test_bx, @function
n160_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_558_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_558_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_558_61:
.Lsetexit_test_α_558_1:                                                       jmp   n161_statement_begin_α
                        .size            n160_setexit_test_bx, .-n160_setexit_test_bx
                        .type            n161_statement_begin_bx, @function
n161_statement_begin_bx:
.Lstatement_begin_α_559_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_559_stno
                        .long            19
                        .long            23
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         tab[5] = 501
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 23 0
n161_statement_begin_α:                                                       jmp   n162_var_α
n161_statement_begin_β:                                                       jmp   n168_setexit_test_α
                        .size            n161_statement_begin_bx, .-n161_statement_begin_bx
                        .type            n162_var_bx, @function
n162_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n163_lit_integer_α
                        .size            n162_var_bx, .-n162_var_bx
                        .type            n163_lit_integer_bx, @function
n163_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_562_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n164_subscript_α
n163_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n161_statement_begin_β
.Llit_integer_α_562_0:  .quad            5
                        .size            n163_lit_integer_bx, .-n163_lit_integer_bx
                        .type            n164_subscript_bx, @function
n164_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_subscript_α:       sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        cmp              dil, 24;                             jne   .Lsubscript_α_563_0
                        test             rsi, rsi;                            jne   .Lsubscript_α_563_2
                                                                              jmp   .Lsubscript_α_563_1
.Lsubscript_α_563_0:    cmp              dil, 16;                             jne   .Lsubscript_α_563_1
                        test             rsi, rsi;                            je    .Lsubscript_α_563_1
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        cmp              dl, 3;                               jne   .Lsubscript_α_563_1
                        mov              eax, dword ptr [rsi + 8]
                        cmp              eax, 1;                              jne   .Lsubscript_α_563_1
                        mov              rax, qword ptr [rsi + 32]
                        test             rax, rax;                            je    .Lsubscript_α_563_1
                        mov              rcx, qword ptr [rsp + 24]
                        mov              eax, dword ptr [rsi + 0]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jl    .Lsubscript_α_563_1
                        mov              eax, dword ptr [rsi + 4]
                        movsxd           rax, eax
                        cmp              rcx, rax;                            jg    .Lsubscript_α_563_1
                                                                              jmp   .Lsubscript_α_563_2
.Lsubscript_α_563_1:    mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_subscript_var_container_only@GOTPCREL]
                        cmp              al, 104;                             jne   .Lsubscript_α_563_240
                        add              rsp, 16;                             jmp   n163_lit_integer_β
.Lsubscript_α_563_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript_lvck.cpp:94
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
1:
.Lsubscript_α_563_2:    mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n165_lit_integer_α
n164_subscript_β:       add              rsp, 16;                             jmp   n163_lit_integer_β
                        .size            n164_subscript_bx, .-n164_subscript_bx
                        .type            n165_lit_integer_bx, @function
n165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_564_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n166_assign_var_α
n165_lit_integer_β:     add              rsp, 16;                             jmp   n164_subscript_β
.Llit_integer_α_564_0:  .quad            501
                        .size            n165_lit_integer_bx, .-n165_lit_integer_bx
                        .type            n166_assign_var_bx, @function
n166_assign_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_assign_var_α:      sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # subscript
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 48]            # lit_integer
                        mov              rcx, qword ptr [rsp + 56]
                        cmp              dil, 24;                             je    .Lassign_var_α_566_1
                        cmp              dil, 16;                             jne   .Lassign_var_α_566_0
.Lassign_var_α_566_1:   test             rsi, rsi;                            je    .Lassign_var_α_566_0
                        mov              r8, qword ptr [rsp + 16]
                        mov              r9, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_table_assign_fast@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_566_238
                        add              rsp, 16;                             jmp   n165_lit_integer_β
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
1:                                                                            jmp   n167_statement_end_α
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
                        add              rsp, 16;                             jmp   n165_lit_integer_β
.Lassign_var_α_566_239: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_assign_var@GOTPCREL]
                        cmp              al, 104;                             jne   .Lassign_var_α_566_240
                        add              rsp, 16;                             jmp   n165_lit_integer_β
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
1:                                                                            jmp   n167_statement_end_α
                        .size            n166_assign_var_bx, .-n166_assign_var_bx
                        .type            n167_statement_end_bx, @function
n167_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_statement_end_α:   add              rsp, 80;                             jmp   n169_statement_begin_α
                        .size            n167_statement_end_bx, .-n167_statement_end_bx
                        .type            n168_setexit_test_bx, @function
n168_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_569_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_569_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_569_61:
.Lsetexit_test_α_569_1:                                                       jmp   n169_statement_begin_α
                        .size            n168_setexit_test_bx, .-n168_setexit_test_bx
                        .type            n169_statement_begin_bx, @function
n169_statement_begin_bx:
.Lstatement_begin_α_570_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_570_stno
                        .long            20
                        .long            24
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         census = census + tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 24 0
n169_statement_begin_α:                                                       jmp   n170_var_α
n169_statement_begin_β:                                                       jmp   n177_setexit_test_α
                        .size            n169_statement_begin_bx, .-n169_statement_begin_bx
                        .type            n170_var_bx, @function
n170_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n171_var_α
                        .size            n170_var_bx, .-n170_var_bx
                        .type            n171_var_bx, @function
n171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n172_lit_integer_α
n171_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n169_statement_begin_β
                        .size            n171_var_bx, .-n171_var_bx
                        .type            n172_lit_integer_bx, @function
n172_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_574_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n173_subscript_α
n172_lit_integer_β:     add              rsp, 16;                             jmp   n171_var_β
.Llit_integer_α_574_0:  .quad            5
                        .size            n172_lit_integer_bx, .-n172_lit_integer_bx
                        .type            n173_subscript_bx, @function
n173_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_575_240
                        add              rsp, 16;                             jmp   n172_lit_integer_β
.Lsubscript_α_575_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
1:                                                                            jmp   n174_binop_α
n173_subscript_β:       add              rsp, 16;                             jmp   n172_lit_integer_β
                        .size            n173_subscript_bx, .-n173_subscript_bx
                        .type            n174_binop_bx, @function
n174_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_576_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_576_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_576_7
.Lbinop_α_576_2:        and              edx, 1;                              jz    .Lbinop_α_576_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_576_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_576_4
.Lbinop_α_576_3:        movq             xmm0, rsi
.Lbinop_α_576_4:        cmp              cl, 5;                               je    .Lbinop_α_576_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_576_6
.Lbinop_α_576_5:        movq             xmm1, rdi
.Lbinop_α_576_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_576_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_576_7:                                                              jmp   n175_assign_α
.Lbinop_α_576_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_576_240
                        add              rsp, 16;                             jmp   n173_subscript_β
.Lbinop_α_576_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
n174_binop_β:           add              rsp, 16;                             jmp   n173_subscript_β
                        .size            n174_binop_bx, .-n174_binop_bx
                        .type            n175_assign_bx, @function
n175_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n176_statement_end_α
                        .size            n175_assign_bx, .-n175_assign_bx
                        .type            n176_statement_end_bx, @function
n176_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_statement_end_α:   add              rsp, 80;                             jmp   n178_statement_begin_α
                        .size            n176_statement_end_bx, .-n176_statement_end_bx
                        .type            n177_setexit_test_bx, @function
n177_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_580_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_580_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_580_61:
.Lsetexit_test_α_580_1:                                                       jmp   n178_statement_begin_α
                        .size            n177_setexit_test_bx, .-n177_setexit_test_bx
                        .type            n178_statement_begin_bx, @function
n178_statement_begin_bx:
.Lstatement_begin_α_581_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_581_stno
                        .long            21
                        .long            25
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         ix = -30
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 25 0
n178_statement_begin_α:                                                       jmp   n179_lit_integer_α
n178_statement_begin_β:                                                       jmp   n183_setexit_test_α
                        .size            n178_statement_begin_bx, .-n178_statement_begin_bx
                        .type            n179_lit_integer_bx, @function
n179_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_583_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n180_unop_α
.Llit_integer_α_583_0:  .quad            30
                        .size            n179_lit_integer_bx, .-n179_lit_integer_bx
                        .type            n180_unop_bx, @function
n180_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_unop_α:            sub              rsp, 16
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
1:                      mov              rax, qword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lunop_α_584_240
                        add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
.Lunop_α_584_240:                                                             jmp   n181_assign_α
n180_unop_β:            add              rsp, 16
                        add              rsp, 16;                             jmp   n178_statement_begin_β
                        .size            n180_unop_bx, .-n180_unop_bx
                        .type            n181_assign_bx, @function
n181_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_assign_α:          mov              rax, qword ptr [rsp + 0]             # unop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n182_statement_end_α
                        .size            n181_assign_bx, .-n181_assign_bx
                        .type            n182_statement_end_bx, @function
n182_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_statement_end_α:   add              rsp, 32;                             jmp   n184_statement_begin_α
                        .size            n182_statement_end_bx, .-n182_statement_end_bx
                        .type            n183_setexit_test_bx, @function
n183_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_588_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_588_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_588_61:
.Lsetexit_test_α_588_1:                                                       jmp   n184_statement_begin_α
                        .size            n183_setexit_test_bx, .-n183_setexit_test_bx
                        .type            n184_statement_begin_bx, @function
n184_statement_begin_bx:
.Lstatement_begin_α_589_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_589_stno
                        .long            22
                        .long            26
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# intread census = census + tab[ix]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 26 0
n184_statement_begin_α:                                                       jmp   n185_var_α
n184_statement_begin_β:                                                       jmp   n192_setexit_test_α
                        .size            n184_statement_begin_bx, .-n184_statement_begin_bx
                        .type            n185_var_bx, @function
n185_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n186_var_α
                        .size            n185_var_bx, .-n185_var_bx
                        .type            n186_var_bx, @function
n186_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n187_var_α
n186_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n184_statement_begin_β
                        .size            n186_var_bx, .-n186_var_bx
                        .type            n187_var_bx, @function
n187_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n188_subscript_α
n187_var_β:             add              rsp, 16;                             jmp   n186_var_β
                        .size            n187_var_bx, .-n187_var_bx
                        .type            n188_subscript_bx, @function
n188_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_594_240
                        add              rsp, 16;                             jmp   n187_var_β
.Lsubscript_α_594_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
1:                                                                            jmp   n189_binop_α
n188_subscript_β:       add              rsp, 16;                             jmp   n187_var_β
                        .size            n188_subscript_bx, .-n188_subscript_bx
                        .type            n189_binop_bx, @function
n189_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_595_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_595_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_595_7
.Lbinop_α_595_2:        and              edx, 1;                              jz    .Lbinop_α_595_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_595_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_595_4
.Lbinop_α_595_3:        movq             xmm0, rsi
.Lbinop_α_595_4:        cmp              cl, 5;                               je    .Lbinop_α_595_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_595_6
.Lbinop_α_595_5:        movq             xmm1, rdi
.Lbinop_α_595_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_595_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_595_7:                                                              jmp   n190_assign_α
.Lbinop_α_595_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_595_240
                        add              rsp, 16;                             jmp   n188_subscript_β
.Lbinop_α_595_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n190_assign_α
n189_binop_β:           add              rsp, 16;                             jmp   n188_subscript_β
                        .size            n189_binop_bx, .-n189_binop_bx
                        .type            n190_assign_bx, @function
n190_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n191_statement_end_α
                        .size            n190_assign_bx, .-n190_assign_bx
                        .type            n191_statement_end_bx, @function
n191_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_statement_end_α:   add              rsp, 80;                             jmp   n193_statement_begin_α
                        .size            n191_statement_end_bx, .-n191_statement_end_bx
                        .type            n192_setexit_test_bx, @function
n192_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_599_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_599_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_599_61:
.Lsetexit_test_α_599_1:                                                       jmp   n193_statement_begin_α
                        .size            n192_setexit_test_bx, .-n192_setexit_test_bx
                        .type            n193_statement_begin_bx, @function
n193_statement_begin_bx:
.Lstatement_begin_α_600_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_600_stno
                        .long            23
                        .long            27
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         ix = LT(ix, 30) ix + 1                          :S(intread)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 27 0
n193_statement_begin_α:                                                       jmp   n194_var_α
n193_statement_begin_β:                                                       jmp   n204_setexit_test_α
                        .size            n193_statement_begin_bx, .-n193_statement_begin_bx
                        .type            n194_var_bx, @function
n194_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n195_lit_integer_α
                        .size            n194_var_bx, .-n194_var_bx
                        .type            n195_lit_integer_bx, @function
n195_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_603_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n196_coerce_numeric_α
n195_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n193_statement_begin_β
.Llit_integer_α_603_0:  .quad            30
                        .size            n195_lit_integer_bx, .-n195_lit_integer_bx
                        .type            n196_coerce_numeric_bx, @function
n196_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_605_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_605_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_605_0
.Lcoerce_numeric_α_605_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n197_coerce_numeric_α
.Lcoerce_numeric_α_605_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_605_240
                        add              rsp, 16;                             jmp   n195_lit_integer_β
.Lcoerce_numeric_α_605_240:
                                                                              jmp   n197_coerce_numeric_α
n196_coerce_numeric_β:  add              rsp, 16;                             jmp   n195_lit_integer_β
                        .size            n196_coerce_numeric_bx, .-n196_coerce_numeric_bx
                        .type            n197_coerce_numeric_bx, @function
n197_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_607_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_607_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_607_0
.Lcoerce_numeric_α_607_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n198_cmp_test_α
.Lcoerce_numeric_α_607_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_607_240
                        add              rsp, 16;                             jmp   n196_coerce_numeric_β
.Lcoerce_numeric_α_607_240:
                                                                              jmp   n198_cmp_test_α
n197_coerce_numeric_β:  add              rsp, 16;                             jmp   n196_coerce_numeric_β
                        .size            n197_coerce_numeric_bx, .-n197_coerce_numeric_bx
                        .type            n198_cmp_test_bx, @function
n198_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_609_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_609_239
                        add              rsp, 16;                             jmp   n197_coerce_numeric_β
.Lcmp_test_α_609_239:                                                         jmp   n199_var_α
.Lcmp_test_α_609_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_609_240
                        add              rsp, 16;                             jmp   n197_coerce_numeric_β
.Lcmp_test_α_609_240:                                                         jmp   n199_var_α
n198_cmp_test_β:        add              rsp, 16;                             jmp   n197_coerce_numeric_β
                        .size            n198_cmp_test_bx, .-n198_cmp_test_bx
                        .type            n199_var_bx, @function
n199_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 48]             # ix
                        mov              rdx, qword ptr [r9 + 56]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n200_lit_integer_α
n199_var_β:             add              rsp, 16;                             jmp   n198_cmp_test_β
                        .size            n199_var_bx, .-n199_var_bx
                        .type            n200_lit_integer_bx, @function
n200_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_611_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n201_binop_α
n200_lit_integer_β:     add              rsp, 16;                             jmp   n199_var_β
.Llit_integer_α_611_0:  .quad            1
                        .size            n200_lit_integer_bx, .-n200_lit_integer_bx
                        .type            n201_binop_bx, @function
n201_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_612_2
                        add              rax, 1;                              jo    .Lbinop_α_612_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_612_7
.Lbinop_α_612_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_612_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_612_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_612_4
.Lbinop_α_612_3:        movq             xmm0, rsi
.Lbinop_α_612_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_612_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_612_7:                                                              jmp   n202_assign_α
.Lbinop_α_612_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_612_240
                        add              rsp, 16;                             jmp   n200_lit_integer_β
.Lbinop_α_612_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
n201_binop_β:           add              rsp, 16;                             jmp   n200_lit_integer_β
                        .size            n201_binop_bx, .-n201_binop_bx
                        .type            n202_assign_bx, @function
n202_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 48], rax             # ix
                        mov              qword ptr [r9 + 56], rdx;            jmp   n203_statement_end_α
                        .size            n202_assign_bx, .-n202_assign_bx
                        .type            n203_statement_end_bx, @function
n203_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_statement_end_α:   add              rsp, 128;                            jmp   n184_statement_begin_α
                        .size            n203_statement_end_bx, .-n203_statement_end_bx
                        .type            n204_setexit_test_bx, @function
n204_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_616_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_616_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_616_61:
.Lsetexit_test_α_616_1:                                                       jmp   n205_statement_begin_α
                        .size            n204_setexit_test_bx, .-n204_setexit_test_bx
                        .type            n205_statement_begin_bx, @function
n205_statement_begin_bx:
.Lstatement_begin_α_617_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_617_stno
                        .long            24
                        .long            28
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         sx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 28 0
n205_statement_begin_α:                                                       jmp   n206_lit_integer_α
n205_statement_begin_β:                                                       jmp   n209_setexit_test_α
                        .size            n205_statement_begin_bx, .-n205_statement_begin_bx
                        .type            n206_lit_integer_bx, @function
n206_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_619_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n207_assign_α
.Llit_integer_α_619_0:  .quad            1
                        .size            n206_lit_integer_bx, .-n206_lit_integer_bx
                        .type            n207_assign_bx, @function
n207_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n208_statement_end_α
                        .size            n207_assign_bx, .-n207_assign_bx
                        .type            n208_statement_end_bx, @function
n208_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_statement_end_α:   add              rsp, 16;                             jmp   n210_statement_begin_α
                        .size            n208_statement_end_bx, .-n208_statement_end_bx
                        .type            n209_setexit_test_bx, @function
n209_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_623_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_623_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_623_61:
.Lsetexit_test_α_623_1:                                                       jmp   n210_statement_begin_α
                        .size            n209_setexit_test_bx, .-n209_setexit_test_bx
                        .type            n210_statement_begin_bx, @function
n210_statement_begin_bx:
.Lstatement_begin_α_624_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_624_stno
                        .long            25
                        .long            29
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# strread census = census + tab['k' sx] + tab['a_much_longer_key_' sx]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 29 0
n210_statement_begin_α:                                                       jmp   n211_var_α
n210_statement_begin_β:                                                       jmp   n226_setexit_test_α
                        .size            n210_statement_begin_bx, .-n210_statement_begin_bx
                        .type            n211_var_bx, @function
n211_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n212_var_α
                        .size            n211_var_bx, .-n211_var_bx
                        .type            n212_var_bx, @function
n212_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n213_lit_string_α
n212_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n210_statement_begin_β
                        .size            n212_var_bx, .-n212_var_bx
                        .type            n213_lit_string_bx, @function
n213_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_628_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n214_var_α
n213_lit_string_β:      add              rsp, 16;                             jmp   n212_var_β
.Llit_string_α_628_0:   .quad            .Llit_string_α_628_0_s
.Llit_string_α_628_0_s: .string          "k"
                        .size            n213_lit_string_bx, .-n213_lit_string_bx
                        .type            n214_var_bx, @function
n214_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n215_binop_α
n214_var_β:             add              rsp, 16;                             jmp   n213_lit_string_β
                        .size            n214_var_bx, .-n214_var_bx
                        .type            n215_binop_bx, @function
n215_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
n215_binop_β:           add              rsp, 16;                             jmp   n214_var_β
                        .size            n215_binop_bx, .-n215_binop_bx
                        .type            n216_subscript_bx, @function
n216_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_631_240
                        add              rsp, 16;                             jmp   n215_binop_β
.Lsubscript_α_631_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
n216_subscript_β:       add              rsp, 16;                             jmp   n215_binop_β
                        .size            n216_subscript_bx, .-n216_subscript_bx
                        .type            n217_binop_bx, @function
n217_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_632_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_632_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_632_7
.Lbinop_α_632_2:        and              edx, 1;                              jz    .Lbinop_α_632_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_632_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_632_4
.Lbinop_α_632_3:        movq             xmm0, rsi
.Lbinop_α_632_4:        cmp              cl, 5;                               je    .Lbinop_α_632_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_632_6
.Lbinop_α_632_5:        movq             xmm1, rdi
.Lbinop_α_632_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_632_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_632_7:                                                              jmp   n218_var_α
.Lbinop_α_632_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_632_240
                        add              rsp, 16;                             jmp   n216_subscript_β
.Lbinop_α_632_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n218_var_α
n217_binop_β:           add              rsp, 16;                             jmp   n216_subscript_β
                        .size            n217_binop_bx, .-n217_binop_bx
                        .type            n218_var_bx, @function
n218_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n219_lit_string_α
n218_var_β:             add              rsp, 16;                             jmp   n217_binop_β
                        .size            n218_var_bx, .-n218_var_bx
                        .type            n219_lit_string_bx, @function
n219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 18
                        mov              rax, qword ptr [rip + .Llit_string_α_634_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n220_var_α
n219_lit_string_β:      add              rsp, 16;                             jmp   n218_var_β
.Llit_string_α_634_0:   .quad            .Llit_string_α_634_0_s
.Llit_string_α_634_0_s: .string          "a_much_longer_key_"
                        .size            n219_lit_string_bx, .-n219_lit_string_bx
                        .type            n220_var_bx, @function
n220_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n221_binop_α
n220_var_β:             add              rsp, 16;                             jmp   n219_lit_string_β
                        .size            n220_var_bx, .-n220_var_bx
                        .type            n221_binop_bx, @function
n221_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
1:                                                                            jmp   n222_subscript_α
n221_binop_β:           add              rsp, 16;                             jmp   n220_var_β
                        .size            n221_binop_bx, .-n221_binop_bx
                        .type            n222_subscript_bx, @function
n222_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_637_240
                        add              rsp, 16;                             jmp   n221_binop_β
.Lsubscript_α_637_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
1:                                                                            jmp   n223_binop_α
n222_subscript_β:       add              rsp, 16;                             jmp   n221_binop_β
                        .size            n222_subscript_bx, .-n222_subscript_bx
                        .type            n223_binop_bx, @function
n223_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_638_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_638_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_638_7
.Lbinop_α_638_2:        and              edx, 1;                              jz    .Lbinop_α_638_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_638_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_638_4
.Lbinop_α_638_3:        movq             xmm0, rsi
.Lbinop_α_638_4:        cmp              cl, 5;                               je    .Lbinop_α_638_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_638_6
.Lbinop_α_638_5:        movq             xmm1, rdi
.Lbinop_α_638_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_638_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_638_7:                                                              jmp   n224_assign_α
.Lbinop_α_638_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_638_240
                        add              rsp, 16;                             jmp   n222_subscript_β
.Lbinop_α_638_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n224_assign_α
n223_binop_β:           add              rsp, 16;                             jmp   n222_subscript_β
                        .size            n223_binop_bx, .-n223_binop_bx
                        .type            n224_assign_bx, @function
n224_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n225_statement_end_α
                        .size            n224_assign_bx, .-n224_assign_bx
                        .type            n225_statement_end_bx, @function
n225_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_statement_end_α:   add              rsp, 208;                            jmp   n227_statement_begin_α
                        .size            n225_statement_end_bx, .-n225_statement_end_bx
                        .type            n226_setexit_test_bx, @function
n226_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_642_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_642_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_642_61:
.Lsetexit_test_α_642_1:                                                       jmp   n227_statement_begin_α
                        .size            n226_setexit_test_bx, .-n226_setexit_test_bx
                        .type            n227_statement_begin_bx, @function
n227_statement_begin_bx:
.Lstatement_begin_α_643_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_643_stno
                        .long            26
                        .long            30
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         sx = LT(sx, 20) sx + 1                          :S(strread)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 30 0
n227_statement_begin_α:                                                       jmp   n228_var_α
n227_statement_begin_β:                                                       jmp   n238_setexit_test_α
                        .size            n227_statement_begin_bx, .-n227_statement_begin_bx
                        .type            n228_var_bx, @function
n228_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n229_lit_integer_α
                        .size            n228_var_bx, .-n228_var_bx
                        .type            n229_lit_integer_bx, @function
n229_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_646_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n230_coerce_numeric_α
n229_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n227_statement_begin_β
.Llit_integer_α_646_0:  .quad            20
                        .size            n229_lit_integer_bx, .-n229_lit_integer_bx
                        .type            n230_coerce_numeric_bx, @function
n230_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_648_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_648_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_648_0
.Lcoerce_numeric_α_648_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n231_coerce_numeric_α
.Lcoerce_numeric_α_648_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_648_240
                        add              rsp, 16;                             jmp   n229_lit_integer_β
.Lcoerce_numeric_α_648_240:
                                                                              jmp   n231_coerce_numeric_α
n230_coerce_numeric_β:  add              rsp, 16;                             jmp   n229_lit_integer_β
                        .size            n230_coerce_numeric_bx, .-n230_coerce_numeric_bx
                        .type            n231_coerce_numeric_bx, @function
n231_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_650_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_650_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_650_0
.Lcoerce_numeric_α_650_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n232_cmp_test_α
.Lcoerce_numeric_α_650_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_650_240
                        add              rsp, 16;                             jmp   n230_coerce_numeric_β
.Lcoerce_numeric_α_650_240:
                                                                              jmp   n232_cmp_test_α
n231_coerce_numeric_β:  add              rsp, 16;                             jmp   n230_coerce_numeric_β
                        .size            n231_coerce_numeric_bx, .-n231_coerce_numeric_bx
                        .type            n232_cmp_test_bx, @function
n232_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_652_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_652_239
                        add              rsp, 16;                             jmp   n231_coerce_numeric_β
.Lcmp_test_α_652_239:                                                         jmp   n233_var_α
.Lcmp_test_α_652_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_652_240
                        add              rsp, 16;                             jmp   n231_coerce_numeric_β
.Lcmp_test_α_652_240:                                                         jmp   n233_var_α
n232_cmp_test_β:        add              rsp, 16;                             jmp   n231_coerce_numeric_β
                        .size            n232_cmp_test_bx, .-n232_cmp_test_bx
                        .type            n233_var_bx, @function
n233_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 64]             # sx
                        mov              rdx, qword ptr [r9 + 72]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n234_lit_integer_α
n233_var_β:             add              rsp, 16;                             jmp   n232_cmp_test_β
                        .size            n233_var_bx, .-n233_var_bx
                        .type            n234_lit_integer_bx, @function
n234_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_654_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n235_binop_α
n234_lit_integer_β:     add              rsp, 16;                             jmp   n233_var_β
.Llit_integer_α_654_0:  .quad            1
                        .size            n234_lit_integer_bx, .-n234_lit_integer_bx
                        .type            n235_binop_bx, @function
n235_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_655_2
                        add              rax, 1;                              jo    .Lbinop_α_655_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_655_7
.Lbinop_α_655_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_655_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_655_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_655_4
.Lbinop_α_655_3:        movq             xmm0, rsi
.Lbinop_α_655_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_655_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_655_7:                                                              jmp   n236_assign_α
.Lbinop_α_655_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_655_240
                        add              rsp, 16;                             jmp   n234_lit_integer_β
.Lbinop_α_655_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n236_assign_α
n235_binop_β:           add              rsp, 16;                             jmp   n234_lit_integer_β
                        .size            n235_binop_bx, .-n235_binop_bx
                        .type            n236_assign_bx, @function
n236_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 64], rax             # sx
                        mov              qword ptr [r9 + 72], rdx;            jmp   n237_statement_end_α
                        .size            n236_assign_bx, .-n236_assign_bx
                        .type            n237_statement_end_bx, @function
n237_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_statement_end_α:   add              rsp, 128;                            jmp   n210_statement_begin_α
                        .size            n237_statement_end_bx, .-n237_statement_end_bx
                        .type            n238_setexit_test_bx, @function
n238_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_659_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_659_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_659_61:
.Lsetexit_test_α_659_1:                                                       jmp   n239_statement_begin_α
                        .size            n238_setexit_test_bx, .-n238_setexit_test_bx
                        .type            n239_statement_begin_bx, @function
n239_statement_begin_bx:
.Lstatement_begin_α_660_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_660_stno
                        .long            27
                        .long            31
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         rx = 1
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 31 0
n239_statement_begin_α:                                                       jmp   n240_lit_integer_α
n239_statement_begin_β:                                                       jmp   n243_setexit_test_α
                        .size            n239_statement_begin_bx, .-n239_statement_begin_bx
                        .type            n240_lit_integer_bx, @function
n240_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_662_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n241_assign_α
.Llit_integer_α_662_0:  .quad            1
                        .size            n240_lit_integer_bx, .-n240_lit_integer_bx
                        .type            n241_assign_bx, @function
n241_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_assign_α:          mov              rax, qword ptr [rsp + 0]             # lit_integer
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n242_statement_end_α
                        .size            n241_assign_bx, .-n241_assign_bx
                        .type            n242_statement_end_bx, @function
n242_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_statement_end_α:   add              rsp, 16;                             jmp   n244_statement_begin_α
                        .size            n242_statement_end_bx, .-n242_statement_end_bx
                        .type            n243_setexit_test_bx, @function
n243_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_666_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_666_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_666_61:
.Lsetexit_test_α_666_1:                                                       jmp   n244_statement_begin_α
                        .size            n243_setexit_test_bx, .-n243_setexit_test_bx
                        .type            n244_statement_begin_bx, @function
n244_statement_begin_bx:
.Lstatement_begin_α_667_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_667_stno
                        .long            28
                        .long            32
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
# realrd  census = census + tab[rx / 2.0]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 32 0
n244_statement_begin_α:                                                       jmp   n245_var_α
n244_statement_begin_β:                                                       jmp   n254_setexit_test_α
                        .size            n244_statement_begin_bx, .-n244_statement_begin_bx
                        .type            n245_var_bx, @function
n245_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n246_var_α
                        .size            n245_var_bx, .-n245_var_bx
                        .type            n246_var_bx, @function
n246_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n247_var_α
n246_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n244_statement_begin_β
                        .size            n246_var_bx, .-n246_var_bx
                        .type            n247_var_bx, @function
n247_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n248_lit_real_α
n247_var_β:             add              rsp, 16;                             jmp   n246_var_β
                        .size            n247_var_bx, .-n247_var_bx
                        .type            n248_lit_real_bx, @function
n248_lit_real_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_real_α:        sub              rsp, 16
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              rax, qword ptr [rip + .Llit_real_α_672_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n249_binop_α
.Llit_real_α_672_0:     .quad            4611686018427387904
                        .size            n248_lit_real_bx, .-n248_lit_real_bx
                        .type            n249_binop_bx, @function
n249_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_binop_α:           sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lbinop_α_673_240
                        add              rsp, 32;                             jmp   n247_var_β
.Lbinop_α_673_240:      mov              qword ptr [rsp + 0], rax             # result
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
1:                                                                            jmp   n250_subscript_α
n249_binop_β:           add              rsp, 32;                             jmp   n247_var_β
                        .size            n249_binop_bx, .-n249_binop_bx
                        .type            n250_subscript_bx, @function
n250_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_674_240
                        add              rsp, 16;                             jmp   n249_binop_β
.Lsubscript_α_674_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
1:                                                                            jmp   n251_binop_α
n250_subscript_β:       add              rsp, 16;                             jmp   n249_binop_β
                        .size            n250_subscript_bx, .-n250_subscript_bx
                        .type            n251_binop_bx, @function
n251_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 96]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_675_2
                        mov              rax, qword ptr [rsp + 104]           # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_675_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_675_7
.Lbinop_α_675_2:        and              edx, 1;                              jz    .Lbinop_α_675_0
                        mov              rsi, qword ptr [rsp + 104]           # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_675_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_675_4
.Lbinop_α_675_3:        movq             xmm0, rsi
.Lbinop_α_675_4:        cmp              cl, 5;                               je    .Lbinop_α_675_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_675_6
.Lbinop_α_675_5:        movq             xmm1, rdi
.Lbinop_α_675_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_675_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_675_7:                                                              jmp   n252_assign_α
.Lbinop_α_675_0:        mov              rdi, qword ptr [rsp + 96]            # var
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_675_240
                        add              rsp, 16;                             jmp   n250_subscript_β
.Lbinop_α_675_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n252_assign_α
n251_binop_β:           add              rsp, 16;                             jmp   n250_subscript_β
                        .size            n251_binop_bx, .-n251_binop_bx
                        .type            n252_assign_bx, @function
n252_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n253_statement_end_α
                        .size            n252_assign_bx, .-n252_assign_bx
                        .type            n253_statement_end_bx, @function
n253_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_statement_end_α:   add              rsp, 112;                            jmp   n255_statement_begin_α
                        .size            n253_statement_end_bx, .-n253_statement_end_bx
                        .type            n254_setexit_test_bx, @function
n254_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_679_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_679_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_679_61:
.Lsetexit_test_α_679_1:                                                       jmp   n255_statement_begin_α
                        .size            n254_setexit_test_bx, .-n254_setexit_test_bx
                        .type            n255_statement_begin_bx, @function
n255_statement_begin_bx:
.Lstatement_begin_α_680_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_680_stno
                        .long            29
                        .long            33
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         rx = LT(rx, 12) rx + 1                          :S(realrd)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 33 0
n255_statement_begin_α:                                                       jmp   n256_var_α
n255_statement_begin_β:                                                       jmp   n266_setexit_test_α
                        .size            n255_statement_begin_bx, .-n255_statement_begin_bx
                        .type            n256_var_bx, @function
n256_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n257_lit_integer_α
                        .size            n256_var_bx, .-n256_var_bx
                        .type            n257_lit_integer_bx, @function
n257_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_683_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n258_coerce_numeric_α
n257_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n255_statement_begin_β
.Llit_integer_α_683_0:  .quad            12
                        .size            n257_lit_integer_bx, .-n257_lit_integer_bx
                        .type            n258_coerce_numeric_bx, @function
n258_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_685_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_685_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_685_0
.Lcoerce_numeric_α_685_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n259_coerce_numeric_α
.Lcoerce_numeric_α_685_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_685_240
                        add              rsp, 16;                             jmp   n257_lit_integer_β
.Lcoerce_numeric_α_685_240:
                                                                              jmp   n259_coerce_numeric_α
n258_coerce_numeric_β:  add              rsp, 16;                             jmp   n257_lit_integer_β
                        .size            n258_coerce_numeric_bx, .-n258_coerce_numeric_bx
                        .type            n259_coerce_numeric_bx, @function
n259_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_687_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_687_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_687_0
.Lcoerce_numeric_α_687_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n260_cmp_test_α
.Lcoerce_numeric_α_687_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_687_240
                        add              rsp, 16;                             jmp   n258_coerce_numeric_β
.Lcoerce_numeric_α_687_240:
                                                                              jmp   n260_cmp_test_α
n259_coerce_numeric_β:  add              rsp, 16;                             jmp   n258_coerce_numeric_β
                        .size            n259_coerce_numeric_bx, .-n259_coerce_numeric_bx
                        .type            n260_cmp_test_bx, @function
n260_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_689_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_689_239
                        add              rsp, 16;                             jmp   n259_coerce_numeric_β
.Lcmp_test_α_689_239:                                                         jmp   n261_var_α
.Lcmp_test_α_689_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_689_240
                        add              rsp, 16;                             jmp   n259_coerce_numeric_β
.Lcmp_test_α_689_240:                                                         jmp   n261_var_α
n260_cmp_test_β:        add              rsp, 16;                             jmp   n259_coerce_numeric_β
                        .size            n260_cmp_test_bx, .-n260_cmp_test_bx
                        .type            n261_var_bx, @function
n261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 80]             # rx
                        mov              rdx, qword ptr [r9 + 88]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n262_lit_integer_α
n261_var_β:             add              rsp, 16;                             jmp   n260_cmp_test_β
                        .size            n261_var_bx, .-n261_var_bx
                        .type            n262_lit_integer_bx, @function
n262_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_691_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n263_binop_α
n262_lit_integer_β:     add              rsp, 16;                             jmp   n261_var_β
.Llit_integer_α_691_0:  .quad            1
                        .size            n262_lit_integer_bx, .-n262_lit_integer_bx
                        .type            n263_binop_bx, @function
n263_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_binop_α:           sub              rsp, 16
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
.Lbinop_α_692_7:                                                              jmp   n264_assign_α
.Lbinop_α_692_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_692_240
                        add              rsp, 16;                             jmp   n262_lit_integer_β
.Lbinop_α_692_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n264_assign_α
n263_binop_β:           add              rsp, 16;                             jmp   n262_lit_integer_β
                        .size            n263_binop_bx, .-n263_binop_bx
                        .type            n264_assign_bx, @function
n264_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 80], rax             # rx
                        mov              qword ptr [r9 + 88], rdx;            jmp   n265_statement_end_α
                        .size            n264_assign_bx, .-n264_assign_bx
                        .type            n265_statement_end_bx, @function
n265_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_statement_end_α:   add              rsp, 128;                            jmp   n244_statement_begin_α
                        .size            n265_statement_end_bx, .-n265_statement_end_bx
                        .type            n266_setexit_test_bx, @function
n266_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_696_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_696_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_696_61:
.Lsetexit_test_α_696_1:                                                       jmp   n267_statement_begin_α
                        .size            n266_setexit_test_bx, .-n266_setexit_test_bx
                        .type            n267_statement_begin_bx, @function
n267_statement_begin_bx:
.Lstatement_begin_α_697_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_697_stno
                        .long            30
                        .long            34
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         census = census + tab['']
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 34 0
n267_statement_begin_α:                                                       jmp   n268_var_α
n267_statement_begin_β:                                                       jmp   n275_setexit_test_α
                        .size            n267_statement_begin_bx, .-n267_statement_begin_bx
                        .type            n268_var_bx, @function
n268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n269_var_α
                        .size            n268_var_bx, .-n268_var_bx
                        .type            n269_var_bx, @function
n269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n270_lit_string_α
n269_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n267_statement_begin_β
                        .size            n269_var_bx, .-n269_var_bx
                        .type            n270_lit_string_bx, @function
n270_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_701_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n271_subscript_α
n270_lit_string_β:      add              rsp, 16;                             jmp   n269_var_β
.Llit_string_α_701_0:   .quad            .Llit_string_α_701_0_s
.Llit_string_α_701_0_s: .string          ""
                        .size            n270_lit_string_bx, .-n270_lit_string_bx
                        .type            n271_subscript_bx, @function
n271_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_702_240
                        add              rsp, 16;                             jmp   n270_lit_string_β
.Lsubscript_α_702_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
1:                                                                            jmp   n272_binop_α
n271_subscript_β:       add              rsp, 16;                             jmp   n270_lit_string_β
                        .size            n271_subscript_bx, .-n271_subscript_bx
                        .type            n272_binop_bx, @function
n272_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 64]            # var
                        mov              ecx, dword ptr [rsp + 16]            # subscript
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_703_2
                        mov              rax, qword ptr [rsp + 72]            # var
                        mov              rdx, qword ptr [rsp + 24]            # subscript
                        add              rax, rdx;                            jo    .Lbinop_α_703_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_703_7
.Lbinop_α_703_2:        and              edx, 1;                              jz    .Lbinop_α_703_0
                        mov              rsi, qword ptr [rsp + 72]            # var
                        mov              rdi, qword ptr [rsp + 24]            # subscript
                        cmp              al, 5;                               je    .Lbinop_α_703_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_703_4
.Lbinop_α_703_3:        movq             xmm0, rsi
.Lbinop_α_703_4:        cmp              cl, 5;                               je    .Lbinop_α_703_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_703_6
.Lbinop_α_703_5:        movq             xmm1, rdi
.Lbinop_α_703_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_703_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_703_7:                                                              jmp   n273_assign_α
.Lbinop_α_703_0:        mov              rdi, qword ptr [rsp + 64]            # var
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_703_240
                        add              rsp, 16;                             jmp   n271_subscript_β
.Lbinop_α_703_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n273_assign_α
n272_binop_β:           add              rsp, 16;                             jmp   n271_subscript_β
                        .size            n272_binop_bx, .-n272_binop_bx
                        .type            n273_assign_bx, @function
n273_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n274_statement_end_α
                        .size            n273_assign_bx, .-n273_assign_bx
                        .type            n274_statement_end_bx, @function
n274_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_statement_end_α:   add              rsp, 80;                             jmp   n276_statement_begin_α
                        .size            n274_statement_end_bx, .-n274_statement_end_bx
                        .type            n275_setexit_test_bx, @function
n275_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_707_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_707_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_707_61:
.Lsetexit_test_α_707_1:                                                       jmp   n276_statement_begin_α
                        .size            n275_setexit_test_bx, .-n275_setexit_test_bx
                        .type            n276_statement_begin_bx, @function
n276_statement_begin_bx:
.Lstatement_begin_α_708_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_708_stno
                        .long            31
                        .long            35
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         census = census + SIZE(tab[9999]) + SIZE(tab['absent']) + SIZE(tab[-9999])
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 35 0
n276_statement_begin_α:                                                       jmp   n277_var_α
n276_statement_begin_β:                                                       jmp   n296_setexit_test_α
                        .size            n276_statement_begin_bx, .-n276_statement_begin_bx
                        .type            n277_var_bx, @function
n277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n278_var_α
                        .size            n277_var_bx, .-n277_var_bx
                        .type            n278_var_bx, @function
n278_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n279_lit_integer_α
n278_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n276_statement_begin_β
                        .size            n278_var_bx, .-n278_var_bx
                        .type            n279_lit_integer_bx, @function
n279_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_712_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n280_subscript_α
n279_lit_integer_β:     add              rsp, 16;                             jmp   n278_var_β
.Llit_integer_α_712_0:  .quad            9999
                        .size            n279_lit_integer_bx, .-n279_lit_integer_bx
                        .type            n280_subscript_bx, @function
n280_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_713_240
                        add              rsp, 16;                             jmp   n279_lit_integer_β
.Lsubscript_α_713_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
1:                                                                            jmp   n281_call_α
n280_subscript_β:       add              rsp, 16;                             jmp   n279_lit_integer_β
                        .size            n280_subscript_bx, .-n280_subscript_bx
                        .type            n281_call_bx, @function
n281_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd715:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd715]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_714_240
                        add              rsp, 16;                             jmp   n280_subscript_β
.Lcall_α_714_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n282_binop_α
n281_call_β:            add              rsp, 16;                             jmp   n280_subscript_β
                        .size            n281_call_bx, .-n281_call_bx
                        .type            n282_binop_bx, @function
n282_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # var
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_716_2
                        mov              rax, qword ptr [rsp + 88]            # var
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_716_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_716_7
.Lbinop_α_716_2:        and              edx, 1;                              jz    .Lbinop_α_716_0
                        mov              rsi, qword ptr [rsp + 88]            # var
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_716_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_716_4
.Lbinop_α_716_3:        movq             xmm0, rsi
.Lbinop_α_716_4:        cmp              cl, 5;                               je    .Lbinop_α_716_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_716_6
.Lbinop_α_716_5:        movq             xmm1, rdi
.Lbinop_α_716_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_716_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_716_7:                                                              jmp   n283_var_α
.Lbinop_α_716_0:        mov              rdi, qword ptr [rsp + 80]            # var
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_716_240
                        add              rsp, 32;                             jmp   n280_subscript_β
.Lbinop_α_716_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n283_var_α
n282_binop_β:           add              rsp, 32;                             jmp   n280_subscript_β
                        .size            n282_binop_bx, .-n282_binop_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n284_lit_string_α
n283_var_β:             add              rsp, 16;                             jmp   n282_binop_β
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_lit_string_bx, @function
n284_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 6
                        mov              rax, qword ptr [rip + .Llit_string_α_718_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n285_subscript_α
n284_lit_string_β:      add              rsp, 16;                             jmp   n283_var_β
.Llit_string_α_718_0:   .quad            .Llit_string_α_718_0_s
.Llit_string_α_718_0_s: .string          "absent"
                        .size            n284_lit_string_bx, .-n284_lit_string_bx
                        .type            n285_subscript_bx, @function
n285_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_719_240
                        add              rsp, 16;                             jmp   n284_lit_string_β
.Lsubscript_α_719_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
n285_subscript_β:       add              rsp, 16;                             jmp   n284_lit_string_β
                        .size            n285_subscript_bx, .-n285_subscript_bx
                        .type            n286_call_bx, @function
n286_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd721:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd721]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_720_240
                        add              rsp, 16;                             jmp   n285_subscript_β
.Lcall_α_720_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n287_binop_α
n286_call_β:            add              rsp, 16;                             jmp   n285_subscript_β
                        .size            n286_call_bx, .-n286_call_bx
                        .type            n287_binop_bx, @function
n287_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 80]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_722_2
                        mov              rax, qword ptr [rsp + 88]            # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_722_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_722_7
.Lbinop_α_722_2:        and              edx, 1;                              jz    .Lbinop_α_722_0
                        mov              rsi, qword ptr [rsp + 88]            # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_722_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_722_4
.Lbinop_α_722_3:        movq             xmm0, rsi
.Lbinop_α_722_4:        cmp              cl, 5;                               je    .Lbinop_α_722_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_722_6
.Lbinop_α_722_5:        movq             xmm1, rdi
.Lbinop_α_722_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_722_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_722_7:                                                              jmp   n288_var_α
.Lbinop_α_722_0:        mov              rdi, qword ptr [rsp + 80]            # binop
                        mov              rsi, qword ptr [rsp + 88]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_722_240
                        add              rsp, 32;                             jmp   n285_subscript_β
.Lbinop_α_722_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n288_var_α
n287_binop_β:           add              rsp, 32;                             jmp   n285_subscript_β
                        .size            n287_binop_bx, .-n287_binop_bx
                        .type            n288_var_bx, @function
n288_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n289_lit_integer_α
n288_var_β:             add              rsp, 16;                             jmp   n287_binop_β
                        .size            n288_var_bx, .-n288_var_bx
                        .type            n289_lit_integer_bx, @function
n289_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_724_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n290_unop_α
n289_lit_integer_β:     add              rsp, 16;                             jmp   n288_var_β
.Llit_integer_α_724_0:  .quad            9999
                        .size            n289_lit_integer_bx, .-n289_lit_integer_bx
                        .type            n290_unop_bx, @function
n290_unop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_unop_α:            sub              rsp, 16
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
1:                      mov              rax, qword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lunop_α_725_240
                        add              rsp, 16;                             jmp   n289_lit_integer_β
.Lunop_α_725_240:                                                             jmp   n291_subscript_α
n290_unop_β:            add              rsp, 16;                             jmp   n289_lit_integer_β
                        .size            n290_unop_bx, .-n290_unop_bx
                        .type            n291_subscript_bx, @function
n291_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_726_240
                        add              rsp, 16;                             jmp   n290_unop_β
.Lsubscript_α_726_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
1:                                                                            jmp   n292_call_α
n291_subscript_β:       add              rsp, 16;                             jmp   n290_unop_β
                        .size            n291_subscript_bx, .-n291_subscript_bx
                        .type            n292_call_bx, @function
n292_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            sub              rsp, 16
                        sub              rsp, 16
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 8], rax
                        .section         .rodata
.Lcall_α_rkfnzd728:     .string          "SIZE"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_α_rkfnzd728]
                        lea              rsi, [rsp + 0]
                        mov              edx, 1
                        mov              ecx, 311345
                        call             qword ptr [rip + rt_call_bid_sn4@GOTPCREL]
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
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r13, qword ptr [rsp + 0]
                        mov              rax, qword ptr [rsp + 16]
                        mov              rdx, qword ptr [rsp + 24]
                        add              rsp, 32
1:                      add              rsp, 16
                        cmp              al, 104;                             jne   .Lcall_α_727_240
                        add              rsp, 16;                             jmp   n291_subscript_β
.Lcall_α_727_240:       mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n293_binop_α
n292_call_β:            add              rsp, 16;                             jmp   n291_subscript_β
                        .size            n292_call_bx, .-n292_call_bx
                        .type            n293_binop_bx, @function
n293_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_binop_α:           sub              rsp, 16
                        mov              eax, dword ptr [rsp + 96]            # binop
                        mov              ecx, dword ptr [rsp + 16]            # call
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lbinop_α_729_2
                        mov              rax, qword ptr [rsp + 104]           # binop
                        mov              rdx, qword ptr [rsp + 24]            # call
                        add              rax, rdx;                            jo    .Lbinop_α_729_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_729_7
.Lbinop_α_729_2:        and              edx, 1;                              jz    .Lbinop_α_729_0
                        mov              rsi, qword ptr [rsp + 104]           # binop
                        mov              rdi, qword ptr [rsp + 24]            # call
                        cmp              al, 5;                               je    .Lbinop_α_729_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_729_4
.Lbinop_α_729_3:        movq             xmm0, rsi
.Lbinop_α_729_4:        cmp              cl, 5;                               je    .Lbinop_α_729_5
                        cvtsi2sd         xmm1, rdi;                           jmp   .Lbinop_α_729_6
.Lbinop_α_729_5:        movq             xmm1, rdi
.Lbinop_α_729_6:        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_729_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_729_7:                                                              jmp   n294_assign_α
.Lbinop_α_729_0:        mov              rdi, qword ptr [rsp + 96]            # binop
                        mov              rsi, qword ptr [rsp + 104]
                        mov              rdx, qword ptr [rsp + 16]            # call
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_729_240
                        add              rsp, 32;                             jmp   n291_subscript_β
.Lbinop_α_729_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n294_assign_α
n293_binop_β:           add              rsp, 32;                             jmp   n291_subscript_β
                        .size            n293_binop_bx, .-n293_binop_bx
                        .type            n294_assign_bx, @function
n294_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 0], rax              # census
                        mov              qword ptr [r9 + 8], rdx;             jmp   n295_statement_end_α
                        .size            n294_assign_bx, .-n294_assign_bx
                        .type            n295_statement_end_bx, @function
n295_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_statement_end_α:   add              rsp, 272;                            jmp   n297_statement_begin_α
                        .size            n295_statement_end_bx, .-n295_statement_end_bx
                        .type            n296_setexit_test_bx, @function
n296_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_733_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_733_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_733_61:
.Lsetexit_test_α_733_1:                                                       jmp   n297_statement_begin_α
                        .size            n296_setexit_test_bx, .-n296_setexit_test_bx
                        .type            n297_statement_begin_bx, @function
n297_statement_begin_bx:
.Lstatement_begin_α_734_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_734_stno
                        .long            32
                        .long            36
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         pass = LT(pass, 40) pass + 1                    :S(round)
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 36 0
n297_statement_begin_α:                                                       jmp   n298_var_α
n297_statement_begin_β:                                                       jmp   n308_setexit_test_α
                        .size            n297_statement_begin_bx, .-n297_statement_begin_bx
                        .type            n298_var_bx, @function
n298_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # pass
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n299_lit_integer_α
                        .size            n298_var_bx, .-n298_var_bx
                        .type            n299_lit_integer_bx, @function
n299_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_737_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n300_coerce_numeric_α
n299_lit_integer_β:     add              rsp, 16
                        add              rsp, 16;                             jmp   n297_statement_begin_β
.Llit_integer_α_737_0:  .quad            40
                        .size            n299_lit_integer_bx, .-n299_lit_integer_bx
                        .type            n300_coerce_numeric_bx, @function
n300_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # var
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_739_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_739_0
                        mov              eax, dword ptr [rsp + 16]            # lit_integer
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_739_0
.Lcoerce_numeric_α_739_1:
                        mov              rax, qword ptr [rsp + 32]            # var
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # var
                        mov              qword ptr [rsp + 8], rax;            jmp   n301_coerce_numeric_α
.Lcoerce_numeric_α_739_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_739_240
                        add              rsp, 16;                             jmp   n299_lit_integer_β
.Lcoerce_numeric_α_739_240:
                                                                              jmp   n301_coerce_numeric_α
n300_coerce_numeric_β:  add              rsp, 16;                             jmp   n299_lit_integer_β
                        .size            n300_coerce_numeric_bx, .-n300_coerce_numeric_bx
                        .type            n301_coerce_numeric_bx, @function
n301_coerce_numeric_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_coerce_numeric_α:  sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # lit_integer
                        cmp              al, 5;                               je    .Lcoerce_numeric_α_741_1
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_741_0
                        mov              eax, dword ptr [rsp + 48]            # var
                        cmp              al, 3;                               jne   .Lcoerce_numeric_α_741_0
.Lcoerce_numeric_α_741_1:
                        mov              rax, qword ptr [rsp + 32]            # lit_integer
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              rax, qword ptr [rsp + 40]            # lit_integer
                        mov              qword ptr [rsp + 8], rax;            jmp   n302_cmp_test_α
.Lcoerce_numeric_α_741_0:
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
1:                      mov              eax, dword ptr [rsp + 0]             # result
                        cmp              al, 104;                             jne   .Lcoerce_numeric_α_741_240
                        add              rsp, 16;                             jmp   n300_coerce_numeric_β
.Lcoerce_numeric_α_741_240:
                                                                              jmp   n302_cmp_test_α
n301_coerce_numeric_β:  add              rsp, 16;                             jmp   n300_coerce_numeric_β
                        .size            n301_coerce_numeric_bx, .-n301_coerce_numeric_bx
                        .type            n302_cmp_test_bx, @function
n302_cmp_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_cmp_test_α:        sub              rsp, 16
                        mov              eax, dword ptr [rsp + 32]            # coerce_numeric
                        mov              ecx, dword ptr [rsp + 16]
                        mov              edx, eax
                        and              edx, ecx
                        cmp              dl, 3;                               jne   .Lcmp_test_α_743_0
                        mov              rax, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 24]
                        cmp              rax, rdx;                            jl    .Lcmp_test_α_743_239
                        add              rsp, 16;                             jmp   n301_coerce_numeric_β
.Lcmp_test_α_743_239:                                                         jmp   n303_var_α
.Lcmp_test_α_743_0:     lea              rdi, [rsp + 32]
                        lea              rsi, [rsp + 16]
                        call             qword ptr [rip + rt_cmp_d@GOTPCREL]
                        test             eax, eax;                            js    .Lcmp_test_α_743_240
                        add              rsp, 16;                             jmp   n301_coerce_numeric_β
.Lcmp_test_α_743_240:                                                         jmp   n303_var_α
n302_cmp_test_β:        add              rsp, 16;                             jmp   n301_coerce_numeric_β
                        .size            n302_cmp_test_bx, .-n302_cmp_test_bx
                        .type            n303_var_bx, @function
n303_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 16]             # pass
                        mov              rdx, qword ptr [r9 + 24]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n304_lit_integer_α
n303_var_β:             add              rsp, 16;                             jmp   n302_cmp_test_β
                        .size            n303_var_bx, .-n303_var_bx
                        .type            n304_lit_integer_bx, @function
n304_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_745_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n305_binop_α
n304_lit_integer_β:     add              rsp, 16;                             jmp   n303_var_β
.Llit_integer_α_745_0:  .quad            1
                        .size            n304_lit_integer_bx, .-n304_lit_integer_bx
                        .type            n305_binop_bx, @function
n305_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_binop_α:           sub              rsp, 16
                        mov              ecx, dword ptr [rsp + 32]            # var
                        mov              rax, qword ptr [rsp + 40]
                        cmp              cl, 3;                               jne   .Lbinop_α_746_2
                        add              rax, 1;                              jo    .Lbinop_α_746_0
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              qword ptr [rsp + 8], rax;            jmp   .Lbinop_α_746_7
.Lbinop_α_746_2:        mov              eax, ecx
                        mov              edx, ecx
                        and              edx, 1;                              jz    .Lbinop_α_746_0
                        mov              rsi, qword ptr [rsp + 40]            # var
                        mov              rdi, 1
                        cmp              al, 5;                               je    .Lbinop_α_746_3
                        cvtsi2sd         xmm0, rsi;                           jmp   .Lbinop_α_746_4
.Lbinop_α_746_3:        movq             xmm0, rsi
.Lbinop_α_746_4:        cvtsi2sd         xmm1, rdi
                        addsd            xmm0, xmm1
                        movq             rax, xmm0
                        mov              rdx, rax
                        add              rdx, rdx
                        movabs           rcx, 18437736874454810624
                        cmp              rdx, rcx;                            jae   .Lbinop_α_746_0
                        mov              qword ptr [rsp + 0], 5               # result
                        mov              qword ptr [rsp + 8], rax
.Lbinop_α_746_7:                                                              jmp   n306_assign_α
.Lbinop_α_746_0:        mov              rdi, qword ptr [rsp + 32]            # var
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_integer
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + rt_add_sno@GOTPCREL]
                        cmp              al, 104;                             jne   .Lbinop_α_746_240
                        add              rsp, 16;                             jmp   n304_lit_integer_β
.Lbinop_α_746_240:      mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_arith.cpp:240
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
1:                                                                            jmp   n306_assign_α
n305_binop_β:           add              rsp, 16;                             jmp   n304_lit_integer_β
                        .size            n305_binop_bx, .-n305_binop_bx
                        .type            n306_assign_bx, @function
n306_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              qword ptr [r9 + 16], rax             # pass
                        mov              qword ptr [r9 + 24], rdx;            jmp   n307_statement_end_α
                        .size            n306_assign_bx, .-n306_assign_bx
                        .type            n307_statement_end_bx, @function
n307_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_statement_end_α:   add              rsp, 128;                            jmp   n12_statement_begin_α
                        .size            n307_statement_end_bx, .-n307_statement_end_bx
                        .type            n308_setexit_test_bx, @function
n308_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_750_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_750_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_750_61:
.Lsetexit_test_α_750_1:                                                       jmp   n309_statement_begin_α
                        .size            n308_setexit_test_bx, .-n308_setexit_test_bx
                        .type            n309_statement_begin_bx, @function
n309_statement_begin_bx:
.Lstatement_begin_α_751_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_751_stno
                        .long            33
                        .long            37
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT = 'census of 40 passes = ' census
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 37 0
n309_statement_begin_α:                                                       jmp   n310_lit_string_α
n309_statement_begin_β:                                                       jmp   n315_setexit_test_α
                        .size            n309_statement_begin_bx, .-n309_statement_begin_bx
                        .type            n310_lit_string_bx, @function
n310_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 22
                        mov              rax, qword ptr [rip + .Llit_string_α_753_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n311_var_α
.Llit_string_α_753_0:   .quad            .Llit_string_α_753_0_s
.Llit_string_α_753_0_s: .string          "census of 40 passes = "
                        .size            n310_lit_string_bx, .-n310_lit_string_bx
                        .type            n311_var_bx, @function
n311_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 0]              # census
                        mov              rdx, qword ptr [r9 + 8]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n312_binop_α
n311_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n309_statement_begin_β
                        .size            n311_var_bx, .-n311_var_bx
                        .type            n312_binop_bx, @function
n312_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # lit_string
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # var
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
1:                                                                            jmp   n313_assign_α
n312_binop_β:           add              rsp, 16;                             jmp   n311_var_β
                        .size            n312_binop_bx, .-n312_binop_bx
                        .type            n313_assign_bx, @function
n313_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_756_0]
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
1:                                                                            jmp   n314_statement_end_α
.Lassign_α_756_0:       .quad            .Lassign_α_756_0_s
.Lassign_α_756_0_s:     .string          "OUTPUT"
                        .size            n313_assign_bx, .-n313_assign_bx
                        .type            n314_statement_end_bx, @function
n314_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_statement_end_α:   add              rsp, 48;                             jmp   n316_statement_begin_α
                        .size            n314_statement_end_bx, .-n314_statement_end_bx
                        .type            n315_setexit_test_bx, @function
n315_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_759_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_759_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_759_61:
.Lsetexit_test_α_759_1:                                                       jmp   n316_statement_begin_α
                        .size            n315_setexit_test_bx, .-n315_setexit_test_bx
                        .type            n316_statement_begin_bx, @function
n316_statement_begin_bx:
.Lstatement_begin_α_760_stno:
                        .pushsection     scrip_stno_map,"a",@progbits
                        .quad            .Lstatement_begin_α_760_stno
                        .long            34
                        .long            38
                        .quad            .Lstnof1
                        .popsection
#=======================================================================================================================
#         OUTPUT = 'tab[17] = ' tab[17] '   tab["17"] = ' tab['17'] '   tab[5] = ' tab[5]
#-----------------------------------------------------------------------------------------------------------------------
                        .loc             1 38 0
n316_statement_begin_α:                                                       jmp   n317_lit_string_α
n316_statement_begin_β:                                                       jmp   n336_setexit_test_α
                        .size            n316_statement_begin_bx, .-n316_statement_begin_bx
                        .type            n317_lit_string_bx, @function
n317_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_762_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n318_var_α
.Llit_string_α_762_0:   .quad            .Llit_string_α_762_0_s
.Llit_string_α_762_0_s: .string          "tab[17] = "
                        .size            n317_lit_string_bx, .-n317_lit_string_bx
                        .type            n318_var_bx, @function
n318_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n319_lit_integer_α
n318_var_β:             add              rsp, 16
                        add              rsp, 16;                             jmp   n316_statement_begin_β
                        .size            n318_var_bx, .-n318_var_bx
                        .type            n319_lit_integer_bx, @function
n319_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_764_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n320_subscript_α
n319_lit_integer_β:     add              rsp, 16;                             jmp   n318_var_β
.Llit_integer_α_764_0:  .quad            17
                        .size            n319_lit_integer_bx, .-n319_lit_integer_bx
                        .type            n320_subscript_bx, @function
n320_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_765_240
                        add              rsp, 16;                             jmp   n319_lit_integer_β
.Lsubscript_α_765_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
n320_subscript_β:       add              rsp, 16;                             jmp   n319_lit_integer_β
                        .size            n320_subscript_bx, .-n320_subscript_bx
                        .type            n321_binop_bx, @function
n321_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # lit_string
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
n321_binop_β:           add              rsp, 16;                             jmp   n320_subscript_β
                        .size            n321_binop_bx, .-n321_binop_bx
                        .type            n322_lit_string_bx, @function
n322_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 15
                        mov              rax, qword ptr [rip + .Llit_string_α_767_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n323_binop_α
n322_lit_string_β:      add              rsp, 16;                             jmp   n321_binop_β
.Llit_string_α_767_0:   .quad            .Llit_string_α_767_0_s
.Llit_string_α_767_0_s: .string          "   tab[\"17\"] = "
                        .size            n322_lit_string_bx, .-n322_lit_string_bx
                        .type            n323_binop_bx, @function
n323_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
n323_binop_β:           add              rsp, 16;                             jmp   n322_lit_string_β
                        .size            n323_binop_bx, .-n323_binop_bx
                        .type            n324_var_bx, @function
n324_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n325_lit_string_α
n324_var_β:             add              rsp, 16;                             jmp   n323_binop_β
                        .size            n324_var_bx, .-n324_var_bx
                        .type            n325_lit_string_bx, @function
n325_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_770_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n326_subscript_α
n325_lit_string_β:      add              rsp, 16;                             jmp   n324_var_β
.Llit_string_α_770_0:   .quad            .Llit_string_α_770_0_s
.Llit_string_α_770_0_s: .string          "17"
                        .size            n325_lit_string_bx, .-n325_lit_string_bx
                        .type            n326_subscript_bx, @function
n326_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_771_240
                        add              rsp, 16;                             jmp   n325_lit_string_β
.Lsubscript_α_771_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
n326_subscript_β:       add              rsp, 16;                             jmp   n325_lit_string_β
                        .size            n326_subscript_bx, .-n326_subscript_bx
                        .type            n327_binop_bx, @function
n327_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
1:                                                                            jmp   n328_lit_string_α
n327_binop_β:           add              rsp, 16;                             jmp   n326_subscript_β
                        .size            n327_binop_bx, .-n327_binop_bx
                        .type            n328_lit_string_bx, @function
n328_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      sub              rsp, 16
                        mov              qword ptr [rsp + 0], 2               # result
                        mov              dword ptr [rsp + 4], 12
                        mov              rax, qword ptr [rip + .Llit_string_α_773_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n329_binop_α
n328_lit_string_β:      add              rsp, 16;                             jmp   n327_binop_β
.Llit_string_α_773_0:   .quad            .Llit_string_α_773_0_s
.Llit_string_α_773_0_s: .string          "   tab[5] = "
                        .size            n328_lit_string_bx, .-n328_lit_string_bx
                        .type            n329_binop_bx, @function
n329_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 32]            # binop
                        mov              rsi, qword ptr [rsp + 40]
                        mov              rdx, qword ptr [rsp + 16]            # lit_string
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
1:                                                                            jmp   n330_var_α
n329_binop_β:           add              rsp, 16;                             jmp   n328_lit_string_β
                        .size            n329_binop_bx, .-n329_binop_bx
                        .type            n330_var_bx, @function
n330_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_var_α:             sub              rsp, 16
                        mov              rax, qword ptr [r9 + 32]             # tab
                        mov              rdx, qword ptr [r9 + 40]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx;            jmp   n331_lit_integer_α
n330_var_β:             add              rsp, 16;                             jmp   n329_binop_β
                        .size            n330_var_bx, .-n330_var_bx
                        .type            n331_lit_integer_bx, @function
n331_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_integer_α:     sub              rsp, 16
                        mov              qword ptr [rsp + 0], 3               # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_776_0]
                        mov              qword ptr [rsp + 8], rax;            jmp   n332_subscript_α
n331_lit_integer_β:     add              rsp, 16;                             jmp   n330_var_β
.Llit_integer_α_776_0:  .quad            5
                        .size            n331_lit_integer_bx, .-n331_lit_integer_bx
                        .type            n332_subscript_bx, @function
n332_subscript_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_subscript_α:       sub              rsp, 16
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
                        cmp              al, 104;                             jne   .Lsubscript_α_777_240
                        add              rsp, 16;                             jmp   n331_lit_integer_β
.Lsubscript_α_777_240:  mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_subscript.cpp:50
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
1:                                                                            jmp   n333_binop_α
n332_subscript_β:       add              rsp, 16;                             jmp   n331_lit_integer_β
                        .size            n332_subscript_bx, .-n332_subscript_bx
                        .type            n333_binop_bx, @function
n333_binop_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_binop_α:           sub              rsp, 16
                        mov              rdi, qword ptr [rsp + 64]            # binop
                        mov              rsi, qword ptr [rsp + 72]
                        mov              rdx, qword ptr [rsp + 16]            # subscript
                        mov              rcx, qword ptr [rsp + 24]
                        call             qword ptr [rip + str_concat_d@GOTPCREL]
                        mov              qword ptr [rsp + 0], rax             # result
                        mov              qword ptr [rsp + 8], rdx
                        push             rax                                  # gc_poll bb_binop_concat_slot.cpp:67
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
1:                                                                            jmp   n334_assign_α
n333_binop_β:           add              rsp, 16;                             jmp   n332_subscript_β
                        .size            n333_binop_bx, .-n333_binop_bx
                        .type            n334_assign_bx, @function
n334_assign_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_assign_α:          mov              rax, qword ptr [rsp + 0]             # binop
                        mov              rdx, qword ptr [rsp + 8]
                        mov              rsi, rax
                        mov              rdi, qword ptr [rip + .Lassign_α_779_0]
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
1:                                                                            jmp   n335_statement_end_α
.Lassign_α_779_0:       .quad            .Lassign_α_779_0_s
.Lassign_α_779_0_s:     .string          "OUTPUT"
                        .size            n334_assign_bx, .-n334_assign_bx
                        .type            n335_statement_end_bx, @function
n335_statement_end_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_statement_end_α:   add              rsp, 272;                            jmp   main_γ
                        .size            n335_statement_end_bx, .-n335_statement_end_bx
                        .type            n336_setexit_test_bx, @function
n336_setexit_test_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_setexit_test_α:    mov              rcx, qword ptr [rip + rtccb@GOTPCREL]
                        mov              rax, qword ptr [rcx + 200]
                        test             rax, rax;                            jz    .Lsetexit_test_α_782_1
                        mov              qword ptr [rcx + 200], 0
                        lea              rdx, [rip + .Lsetexit_test_α_782_61]
                        mov              qword ptr [rcx + 208], rdx
                        mov              qword ptr [rcx + 216], rsp
                        mov              qword ptr [rcx + 224], rbp
                        mov              qword ptr [rcx + 232], r12;          jmp   rax
.Lsetexit_test_α_782_61:
.Lsetexit_test_α_782_1:                                                       jmp   main_γ
                        .size            n336_setexit_test_bx, .-n336_setexit_test_bx
                        .type            n337_goto_bx, @function
n337_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_goto_α:                                                                  jmp   n12_statement_begin_α
n337_goto_β:                                                                  jmp   main_ω
                        .size            n337_goto_bx, .-n337_goto_bx
                        .type            n338_goto_bx, @function
n338_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_goto_α:                                                                  jmp   n24_statement_begin_α
n338_goto_β:                                                                  jmp   main_ω
                        .size            n338_goto_bx, .-n338_goto_bx
                        .type            n339_goto_bx, @function
n339_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_goto_α:                                                                  jmp   n51_statement_begin_α
n339_goto_β:                                                                  jmp   main_ω
                        .size            n339_goto_bx, .-n339_goto_bx
                        .type            n340_goto_bx, @function
n340_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_goto_α:                                                                  jmp   n100_statement_begin_α
n340_goto_β:                                                                  jmp   main_ω
                        .size            n340_goto_bx, .-n340_goto_bx
                        .type            n341_goto_bx, @function
n341_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_goto_α:                                                                  jmp   n184_statement_begin_α
n341_goto_β:                                                                  jmp   main_ω
                        .size            n341_goto_bx, .-n341_goto_bx
                        .type            n342_goto_bx, @function
n342_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_goto_α:                                                                  jmp   n210_statement_begin_α
n342_goto_β:                                                                  jmp   main_ω
                        .size            n342_goto_bx, .-n342_goto_bx
                        .type            n343_goto_bx, @function
n343_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_goto_α:                                                                  jmp   n244_statement_begin_α
n343_goto_β:                                                                  jmp   main_ω
                        .size            n343_goto_bx, .-n343_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        call             sno_setexit_fire_on_end@PLT
                        push             rax                                  # gc_poll bb_glue_flat.cpp:45
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
                        .quad            16700179303770
                        .quad            38654705664
                        .quad            .Lgcmap_main_s
                        .quad            3872
                        .quad            1
                        .quad            4257309022748672
.Lgcmap_main_s:         .string          "main"
                        .section         .rodata
                        .align           8
__gc_frame_maps:        .quad            1
                        .quad            .Lgcmap_main
                        .section         .text
                        .intel_syntax    noprefix
                        .section         .note.GNU-stack,"",@progbits
